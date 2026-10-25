# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectCycleClassRetargetingCounterexample.Variant9df8f6044579238415278330f82776d25b62cbfdd810b8d3939ab70bc4e2eba0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a1c9b8ab44fb70def7ef5b4e184871b9654839a` · SHA-256 `9df8f6044579238415278330f82776d25b62cbfdd810b8d3939ab70bc4e2eba0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
open GRWTSK.Geometry.Hodge.RationalHodgeTransport
def zeroCycleClass : RationalHodgeData ℚ ℚ := ⟨0⟩
example : ¬ zeroCycleClass.IsSurjective := by
  intro h
  obtain ⟨z, hz⟩ := h 1
  norm_num [zeroCycleClass] at hz
example : ¬ Nonempty (CycleClassEquiv Examples.lineHodgeData zeroCycleClass) := by
  rintro ⟨E⟩
  obtain ⟨z, hz⟩ := E.surjective_forward Examples.lineHodgeData_surjective 1
  norm_num [zeroCycleClass] at hz
```
