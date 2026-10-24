# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.WeightedResidualNorm.Variant05650e4e24b9ee5b1a1aa7ff4654d6d22208be48c4b025dbd8d815c40bbd26f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54b0ede56fbf7fde751128145fd26633a8c47dd2` · SHA-256 `05650e4e24b9ee5b1a1aa7ff4654d6d22208be48c4b025dbd8d815c40bbd26f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit
import FormalResearch.RiemannHypothesis.SourceComparison.CorrectedCutoffIncrement
import FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Forward
import FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel
import FormalResearch.RiemannHypothesis.SourceComparison.SourceTailSchedule

/-! Exact source-weighted L2 realization of the full signed arithmetic error. -/
set_option autoImplicit false
namespace WeightedResidualNormScratch
open MeasureTheory FourierTransform
open FormalResearch.RiemannHypothesis.SourceComparison
open LogarithmicResidual LogarithmicResidualTail CoreTailSplit SourceWeightedMultiplier
open HalfLineExtension CorrectedCutoffIncrement ArithmeticErrorIntegrability
open FullLinePlancherel MobiusEndpointBudget MobiusPoleNumerator
noncomputable section

private theorem l2_angular_square (f : FullH) (G : ℝ → ℂ)
    (hF : (𝓕 f : FullH) =ᵐ[volume] (fun ξ : ℝ => G (2 * Real.pi * ξ))) :
    Integrable (fun t : ℝ => ‖G t‖ ^ 2) ∧
      ‖f‖ ^ 2 = (1 / (2 * Real.pi)) * ∫ t : ℝ, ‖G t‖ ^ 2 := by
  have hπ : 0 < 2 * Real.pi := by positivity
  have hm : MemLp (fun ξ : ℝ => G (2 * Real.pi * ξ)) 2 volume :=
    MemLp.ae_eq hF (Lp.memLp _)
  have hi := (memLp_two_iff_integrable_sq_norm hm.aestronglyMeasurable).mp hm
  have he (t : ℝ) : G (2 * Real.pi * ((2 * Real.pi)⁻¹ * t)) = G t := by
    congr 1
    field_simp
  have hGi : Integrable (fun t : ℝ => ‖G t‖ ^ 2) := by
    simpa only [he] using hi.comp_mul_left' (inv_ne_zero hπ.ne')
  refine ⟨hGi, ?_⟩
  calc
    ‖f‖ ^ 2 = ‖(𝓕 f : FullH)‖ ^ 2 := by rw [Lp.norm_fourier_eq]
    _ = ∫ ξ : ℝ, ‖(𝓕 f : FullH) ξ‖ ^ 2 := by
      simpa only [Lp.toLp_coeFn] using norm_sq_toLp _ (Lp.memLp (𝓕 f : FullH))
    _ = ∫ ξ : ℝ, ‖G (2 * Real.pi * ξ)‖ ^ 2 :=
      integral_congr_ae (hF.fun_comp (fun z : ℂ => ‖z‖ ^ 2))
    _ = _ := by
      simpa only [smul_eq_mul, one_div, abs_of_pos (inv_pos.mpr hπ)] using
        Measure.integral_comp_mul_left (fun t : ℝ => ‖G t‖ ^ 2) (2 * Real.pi)

/-- The actual multiplier of the complete logarithmic vector has the original signed error trace. -/
theorem weightedResidual_fourier_ae (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    (𝓕 (sourceMultiplier ε h hε hsmall hh (fullResidualVector X ε hX)) : FullH) =ᵐ[volume]
      (fun ξ : ℝ => boundaryResidual X ε h (2 * Real.pi * ξ)) := by
  have hg := FourierL1L2Forward.fourier_toLp_ae (logResidual X ε)
    (logResidual_integrable X ε) (logResidual_memLp X ε hX)
  filter_upwards [sourceMultiplier_fourier_ae ε h hε hsmall hh
    (fullResidualVector X ε hX), hg] with ξ hm hf
  rw [hm]
  change boundaryMultiplier ε h (2 * Real.pi * ξ) *
    (𝓕 ((logResidual_memLp X ε hX).toLp (logResidual X ε)) : FullH) ξ = _
  rw [hf, logResidual_fourier X hX ε ξ]
  have hs : (1 / 2 + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I : ℂ) ≠ 0 := by
    intro he
    have hr := congrArg Complex.re he
    norm_num at hr
  unfold boundaryMultiplier boundaryResidual
  rw [mul_comm (1 / 2 + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) _,
    mul_assoc, ← mul_div_assoc, mul_div_cancel_left₀ _ hs]

/-- The complete original arithmetic error is genuinely integrable and equals the weighted norm. -/
theorem weightedResidual_norm_sq (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    Integrable (fun t : ℝ => ‖boundaryResidual X ε h t‖ ^ 2) ∧
      ‖sourceMultiplier ε h hε hsmall hh (fullResidualVector X ε hX)‖ ^ 2 =
        arithmeticErrorSq X ε h := by
  exact l2_angular_square _ _ (weightedResidual_fourier_ae X ε hX h hε hsmall hh)

/-- The full error retains the filtered core and the two complete admitted tail budgets. -/
theorem arithmeticError_le_core_tails (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) (Y : ℝ) (hY : 1 ≤ Y) :
    Real.sqrt (arithmeticErrorSq X ε h) ≤
      ‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y := by
  rw [← (weightedResidual_norm_sq X ε hX h hε hsmall hh).2,
    Real.sqrt_sq (norm_nonneg _)]
  exact filtered_full_norm_le_core_tails X ε hX h hε hsmall hh Y hY

/-- The original signed error has the explicit vanishing tails and the actual filtered growing core. -/
theorem arithmeticError_le_scheduled_core (X : ℕ) (hX : 2 ≤ X) (h : ℝ) (hh : 0 ≤ h) :
    Real.sqrt (arithmeticErrorSq X (SourceTailSchedule.epsilonSchedule X) h) ≤
      ‖sourceMultiplier (SourceTailSchedule.epsilonSchedule X) h
        (SourceTailSchedule.schedule_admissible X hX).1
        (SourceTailSchedule.schedule_admissible X hX).2.1 hh
        (coreResidualVector X (SourceTailSchedule.epsilonSchedule X) (by omega)
          (SourceTailSchedule.cutoffSchedule X))‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) / (4 * SourceTailSchedule.logScale X) +
        3 * ((4 / 3 : ℝ) * Real.exp (1 / 4)) / Real.sqrt (X : ℝ) := by
  obtain ⟨he, hes, hY⟩ := SourceTailSchedule.schedule_admissible X hX
  obtain ⟨hn, hp⟩ := SourceTailSchedule.scheduled_endpoint_bounds X hX
  have hB : 0 ≤ (4 / 3 : ℝ) * Real.exp (1 / 4) := by positivity
  have hn' := mul_le_mul_of_nonneg_left hn hB
  have hp' := mul_le_mul_of_nonneg_left hp hB
  have hb := arithmeticError_le_core_tails X (SourceTailSchedule.epsilonSchedule X)
    (by omega) h he hes hh (SourceTailSchedule.cutoffSchedule X) hY
  simp only [← mul_div_assoc, mul_one] at hn' hp'
  rw [mul_comm ((4 / 3 : ℝ) * Real.exp (1 / 4)) 3] at hp'
  exact hb.trans (add_le_add (add_le_add le_rfl hn') hp')

end
end WeightedResidualNormScratch
```
