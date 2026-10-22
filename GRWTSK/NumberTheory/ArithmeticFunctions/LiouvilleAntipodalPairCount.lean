/- Copyright (c) 2026 grwtsk contributors. MIT.
Finite character-count proof draft assistance: OpenAI.
Mathlib upstream definitions retain their respective licenses. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleDyadicSignedPairing
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact antipodal source/odd-residual pair count

Owners: grwtsk/math #630 and #441. Parent head:
2a86837aefd51a55f0031d4ab12584cbf85bb008.

A source-only Lean formalization of the finite paper identity
  X(M,H) = 2^|H| * A(M,H) / M^2 - 1,
where A counts ordered source and odd-residual roots whose Liouville
signs disagree at every selected shift. All samples use positive
arguments. The finite theorem requires M>0; no arithmetic
cancellation or kernel verification is claimed.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.LiouvilleWalshSourceBridge

open scoped BigOperators

/-- A full antipodal pair of actual positive-index Liouville words. -/
def IsAntipodalPair (H : Finset ℕ) (m t : ℕ) : Prop :=
  ∀ h ∈ H,
    ArithmeticFunction.liouville (m + h + 1) =
      -ArithmeticFunction.liouville (2 * t + 2 * h + 3)

/-- Exact number of ordered antipodal pairs among M² root pairs. -/
noncomputable def antipodalPairCount (M : ℕ) (H : Finset ℕ) : ℕ :=
  ((Finset.range M).product (Finset.range M)).filter
    (fun p => IsAntipodalPair H p.1 p.2) |>.card

/-- The empty shift set makes every ordered root pair antipodal. -/
theorem antipodalPairCount_empty (M : ℕ) :
    antipodalPairCount M ∅ = M * M := by
  classical
  simp [antipodalPairCount, IsAntipodalPair]

/-- Coordinatewise signed character factor: 1-a*b is two exactly
when a and b are opposite unit signs, otherwise zero. -/
theorem antipodal_factor (a b : ℤ)
    (ha : a = 1 ∨ a = -1) (hb : b = 1 ∨ b = -1) :
    (1 : ℤ) - a * b = if a = -b then 2 else 0 := by
  rcases ha with ha | ha <;> rcases hb with hb | hb
  all_goals simp [ha, hb]

/-- Finite product of signed character factors detects exactly the
full antipodal condition, including H empty. -/
theorem antipodal_character_product (H : Finset ℕ) (m t : ℕ) :
    (∏ h ∈ H,
      ((1 : ℤ) -
        ArithmeticFunction.liouville (m + h + 1) *
          ArithmeticFunction.liouville (2 * t + 2 * h + 3))) =
      if IsAntipodalPair H m t then (2 : ℤ) ^ H.card else 0 := by
  classical
  induction H using Finset.induction_on with
  | empty =>
      simp [IsAntipodalPair]
  | @insert h H hh ih =>
      have ha := liouville_positive_pm_one (m + h + 1) (by omega)
      have hb := liouville_positive_pm_one (2 * t + 2 * h + 3) (by omega)
      rw [Finset.prod_insert hh, ih, antipodal_factor _ _ ha hb]
      by_cases he : ArithmeticFunction.liouville (m + h + 1) =
          -ArithmeticFunction.liouville (2 * t + 2 * h + 3)
      · by_cases hrest : IsAntipodalPair H m t
        · simp [IsAntipodalPair, Finset.forall_mem_insert, he, hrest,
            Finset.card_insert_of_not_mem hh, pow_succ, mul_comm]
        · simp [IsAntipodalPair, Finset.forall_mem_insert, he, hrest]
      · simp [IsAntipodalPair, Finset.forall_mem_insert, he]

/-- The finite signed interaction equals the normalized count of
antipodal root pairs. This theorem uses the complete Walsh character
expansion, including the empty character, before subtracting one.
No asymptotic estimate is asserted. -/
theorem dyadicSignedMixedEnergy_eq_antipodal_count
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M) :
    dyadicSignedMixedEnergy M H =
      (((2 : ℚ) ^ H.card * (antipodalPairCount M H : ℚ)) /
        ((M : ℚ) ^ 2)) - 1 := by
  classical
  have hM0 : (M : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt hM
  -- Reassociate the two finite root sums and expand the full powerset
  -- via the finite product-of-sums identity. The nonempty sum is the
  -- complete expansion minus its empty-character contribution.
  simp only [dyadicSignedMixedEnergy, antipodalPairCount]
  sorry

end GRWTSK.NumberTheory.LiouvilleWalshSourceBridge
