-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LineChartLayout.Variant797e741b1a18436bda0966b07f07f1de458fd2eca67a0e5276e4edb7f636c7fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"797e741b1a18436bda0966b07f07f1de458fd2eca67a0e5276e4edb7f636c7fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LineChartLayout.Variant797e741b1a18436bda0966b07f07f1de458fd2eca67a0e5276e4edb7f636c7fb","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"797e741b1a18436bda0966b07f07f1de458fd2eca67a0e5276e4edb7f636c7fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Component/Recharts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import ProofWidgets.Component.Basic


namespace GRWTSK.Algebra.LinearAlgebra.LineChartLayout.Variant797e741b1a18436bda0966b07f07f1de458fd2eca67a0e5276e4edb7f636c7fb

public meta section

namespace ProofWidgets.Recharts
open Lean

@[widget_module]
def Recharts : Widget.Module where
  javascript := include_str ".." / ".." / "widget" / "js" / "recharts.js"

inductive LineChartLayout where
  | horizontal
  | vertical
  deriving FromJson, ToJson

inductive LineChartSyncMethod where
  | index | value
  deriving FromJson, ToJson

structure LineChartMargin where
  top : Nat := 5
  right : Nat := 5
  bottom : Nat := 5
  left : Nat := 5
  deriving FromJson, ToJson

structure LineChartProps where
  layout : LineChartLayout := .horizontal
  syncId? : Option String := none
  syncMethod? : Option LineChartSyncMethod := some .index
  width : Nat
  height : Nat
  data : Array Json
  margin : LineChartMargin := {}
  deriving FromJson, ToJson

/-- See https://recharts.org/en-US/api/LineChart. -/
def LineChart : Component LineChartProps where
  javascript := Recharts.javascript
  «export» := "LineChart"

inductive AxisType where
  /-- Treat values as numbers: spacing on axis by numeric difference. -/
  | number
  /-- Treat values as categorical: equal spacing between values. -/
  | category
  deriving FromJson, ToJson

structure AxisProps where
  dataKey? : Option Json := none
  domain? : Option (Array Json) := none
  allowDataOverflow : Bool := false
  /-- How values along this axis should be interpreted.
  The Recharts default is `category`. -/
  type : AxisType := .number
  -- TODO: There are many more props
  deriving FromJson, ToJson

/-- See https://recharts.org/en-US/api/XAxis. -/
def XAxis : Component AxisProps where
  javascript := Recharts.javascript
  «export» := "XAxis"

/-- See https://recharts.org/en-US/api/YAxis. -/
def YAxis : Component AxisProps where
  javascript := Recharts.javascript
  «export» := "YAxis"

inductive LineType where
  | basis | basisClosed | basisOpen | linear | linearClosed | natural | monotoneX | monotoneY
  | monotone | step | stepBefore | stepAfter
  deriving FromJson, ToJson

structure LineProps where
  type : LineType := .linear
  dataKey : Json
  stroke : String
  dot? : Option Bool := none
  -- TODO: There are many more props
  deriving FromJson, ToJson

/-- See https://recharts.org/en-US/api/Line. -/
def Line : Component LineProps where
  javascript := Recharts.javascript
  «export» := "Line"

end ProofWidgets.Recharts
