import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.PrimePhaseMultiplierBounds
import Mathlib

/-!
Source-specific normalization of the existing primeField for a dyadic
Dirichlet-polynomial large-value theorem. The source phases and finite labels
are unchanged; the native Narrow predicate only implies large modulus.
This does not bound narrow spectral energy, produce a detector, or prove RH.
External source: Guth--Maynard, Theorem 1.1, arXiv:2405.20552v2.
Research direction: grwtsk contributors. Kernel compilation is pending.
-/
noncomputable section
namespace GRWTSK.Analysis.PrimePhaseLargeValueAdapter
open scoped BigOperators

/-- Coefficients are supported on the declared B; zero padding is explicit at use. -/
def coefficient (M : ℝ) (p : ℕ) : ℝ := Real.sqrt M * PPNC.primeWeight p

def polynomial (B : Finset ℕ) (M ξ : ℝ) : ℂ :=
  ∑ p ∈ B, (coefficient M p : ℂ)*PPNC.primePhase p ξ

theorem source_identity (B : Finset ℕ) (M ξ : ℝ) :
    polynomial B M ξ = (Real.sqrt M : ℂ)*PPNC.primeField B ξ := by
  simp only [polynomial, coefficient, PPNC.primeField, Complex.ofReal_mul,
    Finset.mul_sum, mul_assoc]

theorem coefficient_square (M : ℝ) (hM : 0 ≤ M) (p : ℕ) :
    coefficient M p ^ 2 = M*(p:ℝ)⁻¹ := by
  simp only [coefficient, mul_pow, Real.sq_sqrt hM, PPNC.primeWeight_sq]

theorem coefficient_bound (M : ℝ) (hM : 0 ≤ M) (p : ℕ)
    (hp : 0 < (p:ℝ)) (hMp : M ≤ p) : |coefficient M p| ≤ 1 := by
  have hsq : coefficient M p ^ 2 ≤ 1 := by
    rw [coefficient_square M hM p, ← div_eq_mul_inv]
    exact (div_le_one hp).mpr hMp
  have hnon : 0 ≤ coefficient M p := by
    unfold coefficient
    exact mul_nonneg (Real.sqrt_nonneg _) (PPNC.primeWeight_nonneg _)
  rw [abs_of_nonneg hnon]
  nlinarith

/-- Only this implication is available: no converse sign recovery is claimed. -/
theorem narrow_implies_large_modulus (B : Finset ℕ) (κ ξ : ℝ)
    (h : PPNC.Narrow B κ ξ) :
    κ*Real.sqrt (PPNC.harmonicMass B) < ‖PPNC.primeField B ξ‖ := by
  have hn : -(PPNC.primeField B ξ).re ≤ ‖PPNC.primeField B ξ‖ := by
    simpa using Complex.re_le_norm (-(PPNC.primeField B ξ))
  exact h.trans_le hn

/-- Scaling is charged at the readout, not silently discarded. -/
theorem squared_readout (B : Finset ℕ) (M ξ : ℝ) (hM : 0 ≤ M) :
    ‖polynomial B M ξ‖^2 = M*‖PPNC.primeField B ξ‖^2 := by
  rw [source_identity, norm_mul, mul_pow, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (Real.sqrt_nonneg _), Real.sq_sqrt hM]

end GRWTSK.Analysis.PrimePhaseLargeValueAdapter
#print axioms GRWTSK.Analysis.PrimePhaseLargeValueAdapter.source_identity
#print axioms GRWTSK.Analysis.PrimePhaseLargeValueAdapter.coefficient_square
#print axioms GRWTSK.Analysis.PrimePhaseLargeValueAdapter.coefficient_bound
#print axioms GRWTSK.Analysis.PrimePhaseLargeValueAdapter.narrow_implies_large_modulus
#print axioms GRWTSK.Analysis.PrimePhaseLargeValueAdapter.squared_readout
