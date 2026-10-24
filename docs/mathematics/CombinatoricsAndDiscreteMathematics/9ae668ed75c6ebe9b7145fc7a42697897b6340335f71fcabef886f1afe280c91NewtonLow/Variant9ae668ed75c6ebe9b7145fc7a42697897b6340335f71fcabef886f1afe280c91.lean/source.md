# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow.Variant9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c521e1acd75a18a5c984e480e55232f104fa3acc` · SHA-256 `9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.RingTheory.Polynomial.Vieta
namespace FixedPointScratch
open Multiset
variable {R : Type*} [CommRing R]
lemma esymm_cons_succ (s : Multiset R) (x : R) (n : ℕ) :
    (x ::ₘ s).esymm (n + 1) = x * s.esymm n + s.esymm (n + 1) := by
  simp [Multiset.esymm, Multiset.powersetCard_cons, Multiset.sum_map_mul_left, add_comm]
lemma esymm_zero (s : Multiset R) : s.esymm 0 = 1 := by
  simp [Multiset.esymm]
lemma newton_low (s : Multiset R) :
    (s.map (· ^ 1)).sum = s.esymm 1 ∧
    (s.map (· ^ 2)).sum = s.esymm 1 ^ 2 - 2 * s.esymm 2 ∧
    (s.map (· ^ 3)).sum = s.esymm 1 ^ 3 - 3 * s.esymm 1 * s.esymm 2 + 3 * s.esymm 3 ∧
    (s.map (· ^ 4)).sum = s.esymm 1 ^ 4 - 4 * s.esymm 1 ^ 2 * s.esymm 2 +
      4 * s.esymm 1 * s.esymm 3 + 2 * s.esymm 2 ^ 2 - 4 * s.esymm 4 := by
  induction s using Multiset.induction_on with
  | empty => norm_num [Multiset.esymm, Multiset.powersetCard_zero_right]
  | cons x s ih =>
    rcases ih with ⟨h1,h2,h3,h4⟩
    simp only [Multiset.map_cons, Multiset.sum_cons, h1, h2, h3, h4]
    norm_num only [show 1 = 0 + 1 from rfl, show 2 = 1 + 1 from rfl,
      show 3 = 2 + 1 from rfl, show 4 = 3 + 1 from rfl,
      esymm_cons_succ, esymm_zero]
    constructor
    · ring
    constructor
    · ring
    constructor <;> ring
end FixedPointScratch
```
