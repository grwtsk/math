/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensSignedAbelDyadicPrimeRange

/-!
# The existing single prime band does not meet a reciprocal-mass expansion gate

Helfgott--Radziwill, arXiv:2103.06853, Main Theorem requires reciprocal prime
mass at least e; its Corollary 1.3 requires at least one. The current source
band Q<p<=2Q has mass strictly below one by interval cardinality alone.
This excludes direct substitution into those stated hypotheses, NOT every
possible expansion theorem or an estimate for a different prime range.
No upstream analytic theorem or prime-counting estimate is imported.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.MertensPrimeBandExpansionObstruction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicPrimeRange

/-- This is the prime reciprocal mass used in the cited expansion hypotheses. -/
def bandReciprocalMass (j : ℕ) : ℝ := ∑ p ∈ primeBand j, (1 : ℝ) / (p : ℝ)

theorem bandReciprocalMass_nonneg (j : ℕ) : 0 ≤ bandReciprocalMass j := by
  exact Finset.sum_nonneg (fun _ _ => by positivity)

/-- The bound uses only the already established cardinality and interval support. -/
theorem bandReciprocalMass_le (j : ℕ) :
    bandReciprocalMass j ≤ (bandScale j : ℝ) / ((bandScale j : ℝ) + 1) := by
  have hQ : (0 : ℝ) < (bandScale j : ℝ) + 1 := by positivity
  unfold bandReciprocalMass
  calc
    _ ≤ ∑ _p ∈ primeBand j, (1 : ℝ) / ((bandScale j : ℝ) + 1) := by
      apply Finset.sum_le_sum
      intro p hp
      have hqp : (bandScale j : ℝ) + 1 ≤ (p : ℝ) := by
        exact_mod_cast (primeBand_bounds hp).1
      exact div_le_div_of_nonneg_left zero_le_one hQ hqp
    _ = ((primeBand j).card : ℝ) / ((bandScale j : ℝ) + 1) := by simp [div_eq_mul_inv]
    _ ≤ _ := div_le_div_of_nonneg_right (by exact_mod_cast primeBand_card_le j) hQ.le

/-- Strict at every dyadic scale, including the small scales containing 2. -/
theorem bandReciprocalMass_lt_one (j : ℕ) : bandReciprocalMass j < 1 := by
  apply (bandReciprocalMass_le j).trans_lt
  apply (div_lt_iff₀ (show (0 : ℝ) < (bandScale j : ℝ) + 1 by positivity)).mpr
  linarith

/-- Directly rules out the weaker mass hypothesis of the cited Corollary 1.3. -/
theorem not_expansion_mass_gate (j : ℕ) : ¬ 1 ≤ bandReciprocalMass j :=
  not_le_of_gt (bandReciprocalMass_lt_one j)

/-- Any stronger lower gate, including e, fails for this unchanged source band. -/
theorem not_expansion_mass_gate_of_one_le (j : ℕ) {A : ℝ} (hA : 1 ≤ A) :
    ¬ A ≤ bandReciprocalMass j := by
  intro h
  exact not_expansion_mass_gate j (hA.trans h)

end GRWTSK.NumberTheory.Moebius.MertensPrimeBandExpansionObstruction
