# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeBruijnNewmanBridge.Variantc1e97fcfc265ad23fb8d26e8a98231e6de6fe2bbc8e9c84d346a11e4d51a69e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78997d97f00facc44c0fa0bddddb096a1c5d1f38` · SHA-256 `c1e97fcfc265ad23fb8d26e8a98231e6de6fe2bbc8e9c84d346a11e4d51a69e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Core.ZeroTypology
import Folder.Research.LFunctionZero
import Folder.Research.HeatEnergyBounds

/-!
# Folder.Research.DeBruijnNewmanBridge

Radiation role: research-boundary
BinaryMatrix spine: This module keeps de Bruijn-Newman heat-flow data separate from finite GraphHeat and BinaryMatrix carriers.
Ontology: research.rh.debruijn_newman_bridge
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: contract
Composite stack role: research
-/

namespace Folder
namespace Research
namespace DeBruijnNewmanBridge

structure DeBruijnNewmanZeroData where
  zero : Core.TypedZero
  kind_debruijn : zero.kind = Core.ZeroKind.deBruijnNewmanZero
  time : ℝ
  realPart : ℝ
  imagPart : ℝ

structure DeBruijnNewmanContract where
  HFunctionFamily : Type _
  Lambda : ℝ
  backwardsHeatEquation : Prop
  zerosRealForTimeGeLambda : Prop
  lambdaNonnegative : Prop

structure DeBruijnToLFunctionBridge where
  dbn : DeBruijnNewmanContract
  mapsDBNZerosToLFunctionZeros : Prop
  preservesCriticalLine : Prop
  note : String

theorem debruijn_newman_not_lfunction_zero_kind :
    Core.ZeroKind.deBruijnNewmanZero ≠ Core.ZeroKind.lFunctionZero := by
  decide

end DeBruijnNewmanBridge
end Research
end Folder
```
