/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachExcludedMassSupportBound

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Explicit actual excluded-support normalized moment bound. No estimate
for the regular-prime centered error is supplied. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachExcludedSupportWindowBudget
open GoldbachSieveCorrectedEvenSource GoldbachExcludedMassSupportBound

theorem actual_excluded_normalized_square_bound (S : Finset ℕ) (X N : ℕ) (D : ℝ) :
    (2*excludedMass S X N/D)^2 ≤
      (2*Real.log ((N+1 : ℕ) : ℝ)*(∑ ℓ ∈ S, Real.log (ℓ : ℝ))/D)^2 := by
  have he := excluded_mass_nonneg S X N
  have hu := actual_excluded_mass_support_bound S X N
  rw [div_pow,div_pow]
  apply div_le_div_of_nonneg_right _ (sq_nonneg D)
  nlinarith

theorem actual_excluded_weighted_window (S : Finset ℕ) (X : ℕ) (W : Finset ℕ)
    (ω D : ℕ → ℝ) (hω : ∀ N ∈ W, 0≤ω N) :
    (∑ N ∈ W, ω N*(2*excludedMass S X N/D N)^2) ≤
      4*(∑ ℓ ∈ S, Real.log (ℓ : ℝ))^2*
        (∑ N ∈ W, ω N*(Real.log ((N+1 : ℕ) : ℝ)/D N)^2) := by
  calc
    _ ≤ ∑ N ∈ W, ω N*
        (2*Real.log ((N+1 : ℕ) : ℝ)*(∑ ℓ ∈ S, Real.log (ℓ : ℝ))/D N)^2 := by
      apply Finset.sum_le_sum
      intro N hN
      exact mul_le_mul_of_nonneg_left
        (actual_excluded_normalized_square_bound S X N (D N)) (hω N hN)
    _ = _ := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro N _
      ring

/- This remains valid for Lean's totalized real division. Using it as a
relative-error statement requires a genuinely positive supplied baseline.
The exact corrected source moment retains its mixed regular/interior
term; this excluded correction budget alone cannot control that term or
force prime pairs at every target. -/
end GRWTSK.NumberTheory.Primes.GoldbachExcludedSupportWindowBudget
