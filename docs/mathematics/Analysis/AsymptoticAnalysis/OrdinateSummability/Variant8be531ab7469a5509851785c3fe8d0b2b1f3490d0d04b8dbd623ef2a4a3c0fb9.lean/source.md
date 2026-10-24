# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.OrdinateSummability.Variant8be531ab7469a5509851785c3fe8d0b2b1f3490d0d04b8dbd623ef2a4a3c0fb9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a1f89f32dbd3ffd44d6292540614cc969aa0abc` · SHA-256 `8be531ab7469a5509851785c3fe8d0b2b1f3490d0d04b8dbd623ef2a4a3c0fb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_20261004.FiveModeZeroTailInputs
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount

/-!
Unconditional actual positive-ordinate sixth-power summability. Analytic
multiplicity occurrences and the actual open zero strip are retained. The
accepted radial sixth-weight theorem is compared to ordinates; neither RH nor
the corrected sharp counting theorem is assumed.
Originating direction: grwtsk contributors. Lean assistance: OpenAI Codex.
-/
set_option autoImplicit false
set_option maxHeartbeats 1000000
noncomputable section
namespace CommonMeanStieltjes
open CommonMeanScratch
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

theorem ordinate_weight_comparison (T : ℝ) (hT : 3/2 ≤ T)
    (o : ZeroObject.ZeroOccurrence) (ho : 0 < (ZeroObject.shiftedValue o).im) :
    1/(max T (ZeroObject.shiftedValue o).im)^6 ≤
      64*(1+‖ZeroObject.shiftedValue o‖)^(-6 : ℝ) := by
  let z := ZeroObject.shiftedValue o
  have hr : |z.re| ≤ (1/2 : ℝ) := by
    rw [abs_le]
    exact ⟨(ZeroObject.shiftedValue_strip o).1.le, (ZeroObject.shiftedValue_strip o).2.le⟩
  have hn : ‖z‖ ≤ 1/2+z.im := by
    have h := Complex.norm_le_abs_re_add_abs_im z
    rw [abs_of_pos ho] at h
    linarith
  have hp : 0 < max T z.im := ho.trans_le (le_max_right _ _)
  have hm : 1+‖z‖ ≤ 2*max T z.im := by
    have ht := hT.trans (le_max_left T z.im)
    have hi := le_max_right T z.im
    linarith
  have hs := pow_le_pow_left₀ (by positivity : (0 : ℝ) ≤ 1+‖z‖) hm 6
  have hw : (1+‖z‖)^(-6 : ℝ) = 1/(1+‖z‖)^6 := by
    rw [show (-6 : ℝ) = -((6 : ℕ) : ℝ) by norm_num,
      Real.rpow_neg (by positivity), Real.rpow_natCast]
    simp only [one_div]
  change 1/(max T z.im)^6 ≤ 64*(1+‖z‖)^(-6 : ℝ)
  rw [hw, ← mul_div_assoc, mul_one]
  apply (div_le_div_iff₀ (pow_pos hp _) (by positivity : (0 : ℝ) < (1+‖z‖)^6)).2
  simpa only [mul_pow, one_mul, show (2 : ℝ)^6=64 by norm_num] using hs

theorem actual_positive_max_sixth_summable (T : ℝ) (hT : 3/2 ≤ T) :
    Summable (fun o : {o : ZeroObject.ZeroOccurrence //
      0 < (ZeroObject.shiftedValue o).im} =>
        1/(max T (ZeroObject.shiftedValue o.val).im)^6) := by
  have hm : Summable (fun o : {o : ZeroObject.ZeroOccurrence //
      0 < (ZeroObject.shiftedValue o).im} =>
        64*(1+‖ZeroObject.shiftedValue o.val‖)^(-6 : ℝ)) :=
    (ZeroShellCount.zero_summability.subtype
      (fun o => 0 < (ZeroObject.shiftedValue o).im)).mul_left 64
  exact Summable.of_nonneg_of_le (fun _ => by positivity)
    (fun o => ordinate_weight_comparison T hT o.val o.property) hm

/-- The actual strict positive-ordinate sixth-power sum has no sharp-count
or verified-height premise. The cutoff assumption holds at T=3e12. -/
theorem actual_positive_sixth_summable (T : ℝ) (hT : 3/2 ≤ T) :
    Summable (positiveSixthPowerWeight T) := by
  have h := (ZeroShellCount.zero_summability.subtype
    (fun o => o ∈ zeroPositiveStrictTailSet T)).mul_left 64
  apply Summable.of_nonneg_of_le (fun _ => by unfold positiveSixthPowerWeight; positivity) ?_ h
  intro o
  have hp : 0 < (ZeroObject.shiftedValue o.val).im := by
    have ho : T < (ZeroObject.shiftedValue o.val).im := o.property
    linarith
  have hc := ordinate_weight_comparison T hT o.val hp
  have ht : T ≤ (ZeroObject.shiftedValue o.val).im := o.property.le
  rw [max_eq_right ht] at hc
  exact hc

end CommonMeanStieltjes
```
