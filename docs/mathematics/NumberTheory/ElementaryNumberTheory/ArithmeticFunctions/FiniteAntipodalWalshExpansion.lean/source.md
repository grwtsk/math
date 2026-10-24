# Complete source: GRWTSK.NumberTheory.ArithmeticFunctions.FiniteAntipodalWalshExpansion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `741bd4ed545637891c2edd55e416224e2c5936b6` · SHA-256 `1088820aa3f57d304ab12dc1790155931880482d7288a48a23fae41989fdec2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite product expansion for antipodal Walsh characters

A separate, arithmetic-independent proof draft. The result is purely
finite commutative-ring algebra and does not establish Chowla.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.FiniteAntipodalWalshExpansion

open scoped BigOperators

/-- Expand a finite product of (1-f(h)) into all subset characters,
including the empty subset. -/
theorem product_one_sub_eq_powerset_sum
    {R : Type*} [CommRing R] (H : Finset ℕ) (f : ℕ → R) :
    (∏ h ∈ H, (1 - f h)) =
      ∑ S ∈ H.powerset, (-1 : R) ^ S.card * ∏ h ∈ S, f h := by
  classical
  induction H using Finset.induction_on with
  | empty =>
      simp
  | @insert h H hh ih =>
      rw [Finset.prod_insert hh, ih, Finset.powerset_insert]
      rw [Finset.sum_disjUnion]
      have hmap :
          (∑ S ∈ H.powerset.image (Finset.insert h),
            (-1 : R) ^ S.card * ∏ j ∈ S, f j) =
          ∑ S ∈ H.powerset,
            (-1 : R) ^ (S.card + 1) * (f h * ∏ j ∈ S, f j) := by
        rw [Finset.sum_image]
        · apply Finset.sum_congr rfl
          intro S hS
          have hnot : h ∉ S := by
            have hsub := Finset.mem_powerset.mp hS
            exact fun hs => hh (hsub hs)
          simp [Finset.card_insert_of_not_mem hnot,
            Finset.prod_insert hnot, mul_assoc, mul_comm, mul_left_comm]
        · intro S hS T hT heq
          exact Finset.insert_inj hh hh |>.mp heq
      rw [hmap]
      simp only [Finset.sum_add_distrib, Finset.mul_sum]
      ring

end GRWTSK.NumberTheory.FiniteAntipodalWalshExpansion
```
