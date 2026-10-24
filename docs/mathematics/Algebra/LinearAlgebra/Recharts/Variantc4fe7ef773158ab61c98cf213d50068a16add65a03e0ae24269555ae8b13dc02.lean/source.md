# Complete source: GRWTSK.Algebra.LinearAlgebra.Recharts.Variantc4fe7ef773158ab61c98cf213d50068a16add65a03e0ae24269555ae8b13dc02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8dd78ab8f6947c7b77054a1a38e37dff58e17905` · SHA-256 `c4fe7ef773158ab61c98cf213d50068a16add65a03e0ae24269555ae8b13dc02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ProofWidgets.Component.Basic

namespace ProofWidgets.Recharts
open Lean

@[widget_module]
def Recharts : Module where
  javascript := include_str "../../build/js/recharts.js"

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

structure AxisProps where
  dataKey? : Option Json := none
  domain? : Option (Array Json) := none
  allowDataOverflow : Bool := false
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
```
