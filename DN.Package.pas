unit DN.Package;

interface

uses
  Graphics,
  DN.Package.Intf;

type
  TDNPackage = class(TInterfacedObject, IDNPackage)
  private
    FName: string;
    FAuthor: string;
    FDescription: string;
    FPicture: TPicture;
    FDownloadLocation: string;
    function GetDownloadLocation: string;
    procedure SetDownloadLocation(const Value: string);
    function GetAuthor: string;
    function GetDescription: string;
    function GetName: string;
    function GetPicture: TPicture;
    procedure SetAuthor(const Value: string);
    procedure SetDescription(const Value: string);
    procedure SetName(const Value: string);
  public
    constructor Create();
    destructor Destroy(); override;
    property Author: string read GetAuthor write SetAuthor;
    property Name: string read GetName write SetName;
    property Description: string read GetDescription write SetDescription;
    property Picture: TPicture read GetPicture;
    property DownloadLoaction: string read GetDownloadLocation write SetDownloadLocation;
  end;

implementation

{ TDCPMPackage }

constructor TDNPackage.Create;
begin
  inherited;
  FPicture := TPicture.Create();
end;

destructor TDNPackage.Destroy;
begin
  FPicture.Free;
  inherited;
end;

function TDNPackage.GetAuthor: string;
begin
  Result := FAuthor;
end;

function TDNPackage.GetDescription: string;
begin
  Result := FDescription;
end;

function TDNPackage.GetDownloadLocation: string;
begin
  Result := FDownloadLocation;
end;

function TDNPackage.GetName: string;
begin
  Result := FName;
end;

function TDNPackage.GetPicture: TPicture;
begin
  Result := FPicture;
end;

procedure TDNPackage.SetAuthor(const Value: string);
begin
  FAuthor := Value;
end;

procedure TDNPackage.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

procedure TDNPackage.SetDownloadLocation(const Value: string);
begin
  FDownloadLocation := Value;
end;

procedure TDNPackage.SetName(const Value: string);
begin
  FName := Value;
end;

end.