# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectColoringAsHodgePositive.Variant9ac63e78dc52e7805fb63332c94c57107b65dc0b2bd51c03d51a2930fb421f68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9241c24770558493e6c5b05fa571e0bf7cdec55b` · SHA-256 `9ac63e78dc52e7805fb63332c94c57107b65dc0b2bd51c03d51a2930fb421f68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.MoserColorHodgeSeparation
open GRWTSK.Geometry.Hodge.FiniteGraphCellular
example (c : ℝ) : Moser.energy (fun _ => c) = 0 :=
  (Moser.energy_eq_zero_iff_constant _).2 ⟨c, rfl⟩
```
