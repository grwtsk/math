# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CompactTailPairingV3Source.Variantc760550ce7cda1907f6ea25a2226e317b83fc7ace90b9191956715e1bb5405b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `074705dd46f1910d71be9ce133f1b290f91fa9df` · SHA-256 `c760550ce7cda1907f6ea25a2226e317b83fc7ace90b9191956715e1bb5405b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
import Mathlib.MeasureTheory.Integral.Prod

/-! # Scratch: actual continuous-half source transport -/

namespace FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy

open MeasureTheory Set Function
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

noncomputable section

/-- Compact two-variable kernel of the literal negative half moment. -/
def forwardHalfKernel (A : ℝ) (p : ℝ × ℝ) : ℝ :=
  Real.exp (-p.1 / 2) * normalizedTest explicitSecondDerivative A p.2 *
    normalizedTest explicitSecondDerivative A (p.2 + p.1)

/-- Continuity uses the actual zero-extended source. -/
theorem forwardHalfKernel_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (forwardHalfKernel A) := by
  unfold forwardHalfKernel
  have hc := (normalizedTest_contDiff A hA).continuous
  exact ((Real.continuous_exp.comp (continuous_fst.neg.div_const 2)).mul
    (hc.comp continuous_snd)).mul (hc.comp (continuous_snd.add continuous_fst))

/-- Its compact rectangle follows from both source factors, including the moving seam. -/
theorem forwardHalfKernel_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (forwardHalfKernel A) := by
  refine exists_compact_iff_hasCompactSupport.mp
    ⟨(Icc (-(2 * A)) (2 * A)) ×ˢ (Icc (-A) A), isCompact_Icc.prod isCompact_Icc, ?_⟩
  rintro ⟨t,x⟩ hp
  dsimp only [forwardHalfKernel]
  by_cases hx : A ≤ |x|
  · rw [normalizedTest_zero_of_le_abs A x hA hx]
    ring
  · have hx' : x ∈ Icc (-A) A := abs_le.mp (le_of_lt (lt_of_not_ge hx))
    have ht : t ∉ Icc (-(2 * A)) (2 * A) := fun ht ↦ hp ⟨ht, hx'⟩
    have hxt : A ≤ |x + t| := by
      have hbounds := abs_le.mp (le_of_lt (lt_of_not_ge hx))
      simp only [mem_Icc, not_and_or, not_le] at ht
      rcases ht with ht | ht
      · rw [abs_of_nonpos (by linarith : x + t ≤ 0)]
        linarith
      · exact (show A ≤ x + t by linarith).trans (le_abs_self _)
    rw [normalizedTest_zero_of_le_abs A (x + t) hA hxt]
    ring

/-- Every Fubini premise is an actual integrability theorem. -/
theorem forwardHalfKernel_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (forwardHalfKernel A) (volume.prod volume) :=
  (forwardHalfKernel_continuous hA).integrable_of_hasCompactSupport
    (forwardHalfKernel_hasCompactSupport hA)

/-- Freeze the plus-shift convention using the proved even autocorrelation. -/
theorem sourceCorrelation_eq_plus_shift (A t : ℝ) :
    sourceCorrelation explicitSecondDerivative A t =
      ∫ x : ℝ, normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x + t) := by
  simpa only [sourceCorrelation, sub_neg_eq_add] using
    (sourceCorrelation_even A t).symm

/-- The whole negative half interval is swapped without absolute arithmetic estimates. -/
theorem negativeSmoothMoment_eq_forward_integral {A : ℝ} (hA : 0 < A) :
    negativeSmoothMoment A = ∫ x : ℝ, ∫ t in 0..2*A, forwardHalfKernel A (t,x) := by
  unfold negativeSmoothMoment
  simp_rw [sourceCorrelation_eq_plus_shift, ← integral_const_mul]
  have hi : Integrable (Function.uncurry (fun t x : ℝ ↦ forwardHalfKernel A (t,x)))
      ((volume.restrict (uIoc 0 (2*A))).prod volume) := by
    exact (forwardHalfKernel_integrable hA).mono_measure
      (Measure.prod_mono Measure.restrict_le_self le_rfl)
  simpa only [forwardHalfKernel, Function.uncurry, mul_assoc] using
    intervalIntegral_integral_swap hi

/-- Only a nonzero first source factor requires replacing the shifted finite interval by a tail. -/
theorem forwardHalfKernel_interval_eq_tail_pairing {A : ℝ} (hA : 0 < A) (x : ℝ) :
    (∫ t in 0..2*A, forwardHalfKernel A (t,x)) =
      normalizedTest explicitSecondDerivative A x * (Real.exp (x/2) *
        ∫ u in Ici x, Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u) := by
  by_cases hx : normalizedTest explicitSecondDerivative A x = 0
  · simp [forwardHalfKernel, hx]
  have hxx : |x| < A := by
    by_contra h
    exact hx (normalizedTest_zero_of_le_abs A x hA (le_of_not_gt h))
  have hcut : (∫ u in Ici x, Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u) =
      ∫ u in Ioc x (x+2*A), Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u := by
    rw [integral_Ici_eq_integral_Ioi]
    apply setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
      (fun _ hu ↦ hu.1)
    intro u hu
    have hup : x + 2*A < u := by
      have := hu.1
      simp only [mem_Ioi, mem_Ioc, not_and_or, not_lt, not_le] at hu ⊢
      rcases hu.2 with hux | hup
      · exact False.elim (not_le_of_gt this hux)
      · exact hup
    have hux := (abs_lt.mp hxx).1
    rw [normalizedTest_zero_of_le_abs A u hA
      ((show A ≤ u by linarith).trans (le_abs_self u)), mul_zero]
  have hfactor : (fun t : ℝ ↦ forwardHalfKernel A (t,x)) =
      fun t : ℝ ↦ (normalizedTest explicitSecondDerivative A x * Real.exp (x/2)) *
        (Real.exp (-(x+t)/2) * normalizedTest explicitSecondDerivative A (x+t)) := by
    funext t
    have he : Real.exp (-t/2) = Real.exp (x/2) * Real.exp (-(x+t)/2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    dsimp only [forwardHalfKernel]
    rw [he]
    ring
  rw [hfactor, intervalIntegral.integral_const_mul]
  have htranslate := intervalIntegral.integral_comp_add_left
    (fun u : ℝ ↦ Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u) x
    (a := (0 : ℝ)) (b := 2*A)
  rw [htranslate, add_zero, intervalIntegral.integral_of_le (by linarith : x ≤ x+2*A), ← hcut]
  ring

/-- Exact double-integral factorization of the actual negative half moment. -/
theorem negativeSmoothMoment_eq_tail_pairing {A : ℝ} (hA : 0 < A) :
    negativeSmoothMoment A = ∫ x : ℝ, normalizedTest explicitSecondDerivative A x *
      (Real.exp (x/2) * ∫ u in Ici x, Real.exp (-u/2) *
        normalizedTest explicitSecondDerivative A u) := by
  rw [negativeSmoothMoment_eq_forward_integral hA]
  apply integral_congr_ae
  filter_upwards [] with x
  exact forwardHalfKernel_interval_eq_tail_pairing hA x

end

end FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
```
