/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachWindowSecondMoment
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachModThreeCompleteSource

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact between-stratum calibration cost. The diagnostic two-level model
is not asserted to equal actual Goldbach masses or their asymptotics.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachResidueBaselineDispersion

theorem between_stratum_variance {ι : Type*} (S : Finset ι) (H κr : ι → ℝ)
    (κ : ℝ) (hcal : (∑ r ∈ S, H r*κr r) = κ*(∑ r ∈ S, H r)) :
    (∑ r ∈ S, H r*(κr r-κ)^2) =
      (∑ r ∈ S, H r*(κr r)^2)-κ^2*(∑ r ∈ S, H r) := by
  have he : (∑ r ∈ S, H r*(κr r-κ)^2) =
      (∑ r ∈ S, H r*(κr r)^2) -
        2*κ*(∑ r ∈ S, H r*κr r)+κ^2*(∑ r ∈ S, H r) := by
    simp only [Finset.mul_sum, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro r _
    ring
  rw [he, hcal]
  ring

theorem stratified_moment_decomposition {ι : Type*} (S : Finset ι)
    (H κr Q : ι → ℝ) (κ : ℝ)
    (hcal : (∑ r ∈ S, H r*κr r) = κ*(∑ r ∈ S, H r)) :
    (∑ r ∈ S, Q r)-κ^2*(∑ r ∈ S, H r) =
      (∑ r ∈ S, (Q r-H r*(κr r)^2)) +
        ∑ r ∈ S, H r*(κr r-κ)^2 := by
  rw [between_stratum_variance S H κr κ hcal, Finset.sum_sub_distrib]
  ring

/-- m targets at level 2, and 2m at level 1, have global mean 4/3.
This is a finite baseline diagnostic only, not an arithmetic estimate. -/
theorem two_level_normalized_error (m : ℝ) :
    m*(2/(4/3 : ℝ)-1)^2 + 2*m*(1/(4/3 : ℝ)-1)^2 = 3*m/8 := by ring

end GRWTSK.NumberTheory.Primes.GoldbachResidueBaselineDispersion
