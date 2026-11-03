/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ActualPrefixMatchErrorMass
import Mathlib.Algebra.Order.BigOperators.Ring.Finset

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact signed quadratic error envelope after full prefix matching.
The mixed term is bounded, never assumed zero. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualPrefixMatchedQuadraticError
open CyclicConstantModeSignedPrefixObstruction CyclicActualMertensPrefixSource
open ActualPrefixMatchedVector ActualMobiusQuadraticPerturbation
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
variable (N : ℕ) [NeZero N]

theorem zero_prefix_quadratic_error_envelope (x h : ZMod N → ℝ)
    (hzero : (∑ i, h i)=0) :
    (signedPrefixStatistic N (x+h)-signedPrefixStatistic N x+(∑ i, h i^2))^2 ≤
      4*(∑ i, x i^2)*(∑ i, h i^2) := by
  have he : (signedPrefixStatistic N (x+h)-signedPrefixStatistic N x+(∑ i, h i^2))^2 =
      4*(∑ i, x i*h i)^2 := by
    rw [signed_statistic_full_perturbation,hzero]
    ring
  rw [he]
  have hc := Finset.sum_mul_sq_le_sq_mul_sq (Finset.univ : Finset (ZMod N)) x h
  nlinarith

theorem actual_matched_quadratic_error_envelope (e : ZMod N ≃ Fin N) (z : ZMod N → ℝ) :
    (signedPrefixStatistic N (matchActualPrefix N z)-sampleSignedMixedPrefix N+
      (∑ i, (matchActualPrefix N z i-actualIncrement N e i)^2))^2 ≤
      4*sampleUnweightedDiagonal N*
        (∑ i, (matchActualPrefix N z i-actualIncrement N e i)^2) := by
  have hh := zero_prefix_quadratic_error_envelope N (actualIncrement N e)
    (fun i => matchActualPrefix N z i-actualIncrement N e i) (matched_error_sum_zero N e z)
  have hv : actualIncrement N e+(fun i => matchActualPrefix N z i-actualIncrement N e i) =
      matchActualPrefix N z := by funext i; simp; ring
  rw [hv,actual_signed_prefix_statistic,actual_full_diagonal] at hh
  exact hh

end GRWTSK.NumberTheory.Zeta.Riemann.ActualPrefixMatchedQuadraticError
