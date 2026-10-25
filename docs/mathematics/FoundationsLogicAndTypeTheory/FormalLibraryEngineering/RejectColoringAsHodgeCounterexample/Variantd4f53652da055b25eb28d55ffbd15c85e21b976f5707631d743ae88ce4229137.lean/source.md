# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectColoringAsHodgeCounterexample.Variantd4f53652da055b25eb28d55ffbd15c85e21b976f5707631d743ae88ce4229137

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3df88ef82a85e7cdd34879fb3f8b9bb183a76fe` · SHA-256 `d4f53652da055b25eb28d55ffbd15c85e21b976f5707631d743ae88ce4229137`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.MoserColorHodgeSeparation
open GRWTSK.Geometry.Hodge.FiniteGraphCellular
open GRWTSK.Combinatorics.GraphTheory
open GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
example : ProperColoring moserAdj moserFourColor :=
  (properColoring_moserAdj_iff moserFourColor).2
    (fun _ _ hedge => moserFourColor_proper hedge)

-- The exact proper four-color witness has positive energy, so cannot be harmonic/zero-energy.
example : 0 < Moser.energy colorCochain := colorCochain_energy_pos
example : Moser.energy colorCochain ≠ 0 := ne_of_gt colorCochain_energy_pos
example : ¬ ∃ c : ℝ, colorCochain = fun _ => c := colorCochain_not_constant
```
