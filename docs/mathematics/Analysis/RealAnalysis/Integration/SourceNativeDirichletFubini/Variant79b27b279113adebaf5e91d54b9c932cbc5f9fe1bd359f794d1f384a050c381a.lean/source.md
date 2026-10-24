# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceNativeDirichletFubini.Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ba5914f877134ce9f1293110f707401f9495e4d` · SHA-256 `79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceNativeReadout
import FormalResearch.RiemannHypothesis.SourcePrimePowerPartition
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-!
# Native initial-line Dirichlet Fubini

All prime powers use the literal Mangoldt function. Interchange uses the actual
height-integrable transform and the genuinely summable fixed-line Dirichlet
majorant. The native transform is never replaced by a modulus square.

AI attribution: developed with OpenAI Codex; checked locally by Lean.
-/

namespace FormalResearch.RiemannHypothesis.SourceNativeDirichletFubini

open MeasureTheory Set ArithmeticFunction
open SourcePairing SourceNativeMellin SourceNativeDirichlet SourceNativeReadout
open SourceNativeAngularTail
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent

noncomputable section

/-- Literal negative logarithmic Dirichlet phase on the positive angular contour. -/
def dirichletPhase (n : ℕ) (t : ℝ) : ℂ :=
  Complex.exp (-Complex.I * (t : ℂ) * (Real.log n : ℂ))

/-- The physical source term at fixed initial abscissa two. -/
def dirichletSourceTerm (A : ℝ) (n : ℕ) (t : ℝ) : ℂ :=
  LSeries.term (fun n ↦ (vonMangoldt n : ℂ)) (2 : ℂ) n *
    (nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) * dirichletPhase n t)

/-- Every Dirichlet oscillation has exact modulus one. -/
theorem dirichletPhase_norm (n : ℕ) (t : ℝ) : ‖dirichletPhase n t‖ = 1 := by
  unfold dirichletPhase
  rw [Complex.norm_exp]
  simp only [Complex.mul_re, Complex.neg_re, Complex.neg_im, Complex.ofReal_re,
    Complex.ofReal_im, Complex.I_re, Complex.I_im, zero_mul, mul_zero, sub_zero,
    neg_zero, Real.exp_zero]

/-- The initial-line Dirichlet term keeps its exact negative angular phase. -/
theorem mangoldt_term_phase (n : ℕ) (t : ℝ) :
    LSeries.term (fun n ↦ (vonMangoldt n : ℂ)) ((2 : ℂ) + Complex.I * (t : ℂ)) n =
      LSeries.term (fun n ↦ (vonMangoldt n : ℂ)) (2 : ℂ) n * dirichletPhase n t := by
  by_cases hn : n = 0
  · simp [hn]
  have hnC : (n : ℂ) ≠ 0 := by exact_mod_cast hn
  rw [LSeries.term_of_ne_zero hn, LSeries.term_of_ne_zero hn, Complex.cpow_add _ _ hnC,
    Complex.cpow_def_of_ne_zero hnC (Complex.I * (t : ℂ))]
  have hlog : Complex.log (n : ℂ) = (Real.log (n : ℝ) : ℂ) := by
    simpa only [Complex.ofReal_natCast] using (Complex.ofReal_log (Nat.cast_nonneg n)).symm
  rw [hlog]
  have he : (Real.log n : ℂ) * (Complex.I * (t : ℂ)) =
      Complex.I * (t : ℂ) * (Real.log n : ℂ) := by ring
  rw [he]
  unfold dirichletPhase
  rw [show -Complex.I * (t : ℂ) * (Real.log n : ℂ) =
    -(Complex.I * (t : ℂ) * (Real.log n : ℂ)) by ring, Complex.exp_neg]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- Each actual native Dirichlet source term is genuinely integrable in height. -/
theorem dirichletSourceTerm_integrable (A : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    Integrable (dirichletSourceTerm A n) := by
  unfold dirichletSourceTerm
  apply Integrable.const_mul
  apply (nativeMellin_two_integrable A hA).mul_bdd (c := 1)
  · have hc : Continuous (dirichletPhase n) := by unfold dirichletPhase; fun_prop
    exact hc.aestronglyMeasurable
  · filter_upwards [] with t
    rw [dirichletPhase_norm]

/-- Exact norm integral majorant, preserving the original fixed-line coefficient. -/
theorem dirichletSourceTerm_integral_norm (A : ℝ) (n : ℕ) :
    (∫ t : ℝ, ‖dirichletSourceTerm A n t‖) =
      ‖LSeries.term (fun n ↦ (vonMangoldt n : ℂ)) (2 : ℂ) n‖ *
        ∫ t : ℝ, ‖nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))‖ := by
  unfold dirichletSourceTerm
  simp only [norm_mul, dirichletPhase_norm, mul_one]
  exact integral_const_mul _ _

/-- Genuine summability of every norm-integral cost in the Dirichlet interchange. -/
theorem dirichletSourceTerm_norm_integrals_summable (A : ℝ) :
    Summable (fun n : ℕ ↦ ∫ t : ℝ, ‖dirichletSourceTerm A n t‖) := by
  simp_rw [dirichletSourceTerm_integral_norm]
  exact (LSeriesSummable_vonMangoldt (s := (2 : ℂ)) (by norm_num)).norm.mul_right _

/-- Actual combined angular source integrand equals the full prime-power Dirichlet family. -/
theorem angularIntegrand_eq_dirichlet_tsum (A t : ℝ) :
    angularIntegrand A t = ∑' n : ℕ, dirichletSourceTerm A n t := by
  unfold angularIntegrand combinedMultiplier
  rw [← LSeries_vonMangoldt_eq_deriv_riemannZeta_div (by norm_num :
    1 < ((2 : ℂ) + Complex.I * (t : ℂ)).re)]
  unfold LSeries
  rw [← tsum_mul_right]
  apply tsum_congr
  intro n
  rw [mangoldt_term_phase]
  unfold dirichletSourceTerm
  ring

/-- Actual initial-contour Dirichlet Fubini, with its complete signed transform. -/
theorem angularContour_eq_dirichlet_integral_tsum (A : ℝ) (hA : 1 ≤ A) :
    angularContour A = (1 / (2 * Real.pi) : ℝ) *
      ∑' n : ℕ, (∫ t : ℝ, dirichletSourceTerm A n t) := by
  unfold angularContour
  simp_rw [angularIntegrand_eq_dirichlet_tsum]
  rw [← integral_tsum_of_summable_integral_norm
    (dirichletSourceTerm_integrable A hA) (dirichletSourceTerm_norm_integrals_summable A)]

/-- Literal second-abscissa coefficient, including the zero-index convention. -/
theorem mangoldt_term_two (n : ℕ) :
    LSeries.term (fun n ↦ (vonMangoldt n : ℂ)) (2 : ℂ) n =
      (vonMangoldt n / (n : ℝ) ^ 2 : ℝ) := by
  by_cases hn : n = 0
  · simp [hn]
  rw [LSeries.term_of_ne_zero hn, Complex.cpow_two]
  push_cast
  rfl

/-- Angular inversion computes each physical prime-power term with the exact normalization. -/
theorem dirichletSourceTerm_scalar_integral (A : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    (1 / (2 * Real.pi) : ℝ) * (∫ t : ℝ, dirichletSourceTerm A n t) =
      (vonMangoldt n / (n : ℝ) ^ 2 * weightedCorrelation A (Real.log n) : ℝ) := by
  have hi := weightedCorrelation_eq_native_inverse A hA (Real.log n)
  unfold dirichletSourceTerm dirichletPhase
  rw [integral_const_mul]
  calc
    _ = LSeries.term (fun n ↦ (vonMangoldt n : ℂ)) (2 : ℂ) n *
        ((1 / (2 * Real.pi) : ℝ) * ∫ t : ℝ,
          nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
            Complex.exp (-Complex.I * (t : ℂ) * (Real.log n : ℂ))) := by ring
    _ = _ := by rw [← hi, mangoldt_term_two]; push_cast; rfl

/-- The inverted literal coefficient is the original closed prime-power weight. -/
theorem inverted_coefficient_eq_source (A : ℝ) (n : ℕ) :
    vonMangoldt n / (n : ℝ) ^ 2 * weightedCorrelation A (Real.log n) =
      vonMangoldt n * exponentialTest (sourceCorrelation explicitSecondDerivative A)
        (Real.log n) := by
  by_cases hn : n = 0
  · simp [hn]
  have hnp : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  have he : Real.exp (3 * Real.log (n : ℝ) / 2) / (n : ℝ) ^ 2 =
      Real.exp (-Real.log (n : ℝ) / 2) := by
    have hs : (n : ℝ) ^ 2 = Real.exp (2 * Real.log (n : ℝ)) := by
      rw [show 2 * Real.log (n : ℝ) = Real.log (n : ℝ) + Real.log (n : ℝ) by ring,
        Real.exp_add, Real.exp_log hnp]
      ring
    rw [hs, ← Real.exp_sub]
    congr 1
    ring
  unfold weightedCorrelation exponentialTest
  calc
    _ = vonMangoldt n *
        (Real.exp (3 * Real.log (n : ℝ) / 2) / (n : ℝ) ^ 2) *
          sourceCorrelation explicitSecondDerivative A (Real.log n) := by ring
    _ = _ := by rw [he]; ring

/-- The genuine infinite family vanishes outside the literal closed floor inventory. -/
theorem source_coefficient_zero_outside_inventory (A : ℝ) (hA : 1 ≤ A)
    (n : ℕ) (hn : n ∉ primePowerInventory (2 * A)) :
    vonMangoldt n * exponentialTest (sourceCorrelation explicitSecondDerivative A)
      (Real.log n) = 0 := by
  by_cases htwo : 2 ≤ n
  · have hN : ⌊Real.exp (2 * A)⌋₊ < n := by
      simp only [primePowerInventory, Finset.mem_Icc, not_and] at hn
      exact Nat.lt_of_not_ge (hn htwo)
    have hnpos : 0 < (n : ℝ) := by exact_mod_cast lt_of_lt_of_le (by norm_num : 0 < 2) htwo
    have hx : Real.exp (2 * A) < (n : ℝ) := (Nat.floor_lt (Real.exp_pos _).le).mp hN
    have ht : 2 * A < Real.log (n : ℝ) := (Real.lt_log_iff_exp_lt hnpos).mpr hx
    have hC := sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log n)
      (by linarith : 0 < A) (le_trans ht.le (le_abs_self _))
    simp [exponentialTest, hC]
  · have hnsmall : n = 0 ∨ n = 1 := by omega
    rcases hnsmall with rfl | rfl <;> simp

/-- The actual initial right contour equals the exact current closed prime-power moment. -/
theorem angularContour_eq_closedPrimeMoment (A : ℝ) (hA : 1 ≤ A) :
    angularContour A = (closedPrimeMoment A : ℂ) := by
  rw [angularContour_eq_dirichlet_integral_tsum A hA, ← tsum_mul_left]
  simp_rw [dirichletSourceTerm_scalar_integral A hA, inverted_coefficient_eq_source]
  calc
    _ = ∑ n ∈ primePowerInventory (2 * A),
        ((vonMangoldt n * exponentialTest (sourceCorrelation explicitSecondDerivative A)
          (Real.log n) : ℝ) : ℂ) := by
      apply tsum_eq_sum
      intro n hn
      exact_mod_cast source_coefficient_zero_outside_inventory A hA n hn
    _ = (closedPrimeMoment A : ℂ) := by
      unfold closedPrimeMoment
      push_cast
      rfl

/-- The literal prime-power readout has the actual analytic initial-line truncation bound. -/
theorem closedPrimeMoment_sub_head_norm_bound (A T : ℝ) (hA : 1 ≤ A) (hT : 1 ≤ T) :
    ‖(closedPrimeMoment A : ℂ) - angularHead A T‖ ≤
      twoLineTailConstant * Real.exp (3 * A) / (A ^ 9 * T ^ 5) := by
  rw [← angularContour_eq_closedPrimeMoment A hA]
  exact angularContour_sub_head_norm_bound A T hA hT

/-- The literal prime-power readout has an all-real growing-height remainder. -/
theorem closedPrimeMoment_growing_tail_bound (A : ℝ) (hA : 1 ≤ A) :
    ‖(closedPrimeMoment A : ℂ) - angularHead A (growingHeight A)‖ ≤
      twoLineTailConstant / A ^ 9 := by
  rw [← angularContour_eq_closedPrimeMoment A hA]
  exact angularContour_growing_tail_bound A hA

end
end FormalResearch.RiemannHypothesis.SourceNativeDirichletFubini
```
