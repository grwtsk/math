# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Squarefree.Variant6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7244fe857e511161daccc80a7d17cd308f51e0b2` · SHA-256 `6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.NumberTheory.FactorizationRebuild
import Mathlib.Data.Nat.Squarefree

/-!
# Folder.Rebuild.NumberTheory.Squarefree

Squarefree naturals repackaged through the project factorization map.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open Folder.NumberTheory

def SquarefreeByFactorization (n : PositiveNat) : Prop :=
  ∀ p, FactorizationMap n p ≤ 1

/--
A positive natural is squarefree exactly when all project factorization
exponents are at most one.
-/
theorem squarefree_iff_factorization_le_one
    (n : PositiveNat) :
    Squarefree n.val ↔ SquarefreeByFactorization n := by
  simpa [SquarefreeByFactorization, FactorizationMap, PositiveNat.val] using
    Nat.squarefree_iff_factorization_le_one (Nat.ne_of_gt n.2)

end NumberTheory
end Rebuild
end Folder
```
