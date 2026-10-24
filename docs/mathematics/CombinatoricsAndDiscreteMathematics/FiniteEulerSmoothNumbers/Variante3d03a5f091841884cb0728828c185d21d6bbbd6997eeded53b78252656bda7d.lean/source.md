# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteEulerSmoothNumbers.Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f54a1f9ebfe586f26319ef8beb87a1ba89b1b74` · SHA-256 `e3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.FiniteEulerExponentVectors

/-!
# Folder.Rebuild.AnalyticNumberTheory.FiniteEulerSmoothNumbers

Finite smooth-number encoding by bounded exponent vectors.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def exponentVectorNat
    (S : Finset Nat)
    (K : Nat)
    (e : ExponentVector S K) : Nat :=
  ∏ p : {p : Nat // p ∈ S}, p.val ^ (e p).val

theorem exponentVectorNat_pos
    (S : Finset Nat)
    (K : Nat)
    (hS : ∀ p ∈ S, 0 < p)
    (e : ExponentVector S K) :
    0 < exponentVectorNat S K e := by
  unfold exponentVectorNat
  exact Finset.prod_pos (fun p _hp => pow_pos (hS p.val p.property) _)

noncomputable def boundedSmoothNumbers
    (S : Finset Nat)
    (K : Nat) : Finset Nat :=
  Finset.image
    (fun e : ExponentVector S K => exponentVectorNat S K e)
    Finset.univ

theorem exponentVectorNat_mem_boundedSmoothNumbers
    (S : Finset Nat)
    (K : Nat)
    (e : ExponentVector S K) :
    exponentVectorNat S K e ∈ boundedSmoothNumbers S K := by
  simp [boundedSmoothNumbers]

end AnalyticNumberTheory
end Rebuild
end Folder
```
