# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualXiLogStepDiscretization.Variantb86eea59eb2e4f3c64d2a8b0300da284d3cd772a51692cd1b41a7a0df0c8d4d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bfd1b8345065f7d564e36bf38bd665a1c7c4bca` · SHA-256 `260d3400295c17b8ec2184e57fc737c962df6ebe2b549de1d20c67c20ec2feee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualIntegerXiTailLogStep.Variant0a144893b46541fe4dad2962e4a39e989b437fa66814946a20ad57cd5138a5c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a144893b46541fe4dad2962e4a39e989b437fa66814946a20ad57cd5138a5c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualIntegerXiTailLogStep.Variant0a144893b46541fe4dad2962e4a39e989b437fa66814946a20ad57cd5138a5c3","mathematical_subject":"Analysis.Integration","original_sha256":"0a144893b46541fe4dad2962e4a39e989b437fa66814946a20ad57cd5138a5c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-critical-complement/actual-xi-log-step/native03/SourceActualXiLogStepDiscretization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiClosedCellOscillation

/-!
The actual anchored Xi primitive is compared with its exact integer logarithmic
readout at every real time. All fractional final cells and the complete closed
prime-power inventory remain. A finite discretization cost supplies no average
witness for the actual signed primitive.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualIntegerXiTailLogStep.Variant0a144893b46541fe4dad2962e4a39e989b437fa66814946a20ad57cd5138a5c3

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiLogStepDiscretization
open MeasureTheory Set
open scoped Interval
open RootActualXiTailPrimitive SourceActualXiClosedCellOscillation
noncomputable section

/-- Literal integer readout of the actual anchored primitive at the real moving floor. -/
def actualIntegerXiTailLogStep (t : ℝ) : ℝ :=
  actualAnchoredXiTailPrimitive (Real.log (Nat.floor (Real.exp t) : ℝ))

/-- The exact source single-cell constant, including its actual gamma offset. -/
def actualXiCellOscillationConstant : ℝ :=
  2 * (Real.log 4 + 5 + |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)|)

/-- Explicit finite cost for the full logarithmic discretization tail. -/
def actualXiLogStepErrorConstant : ℝ :=
  2 * Real.sqrt 2 * actualXiCellOscillationConstant / Real.sqrt 7

/-- Countable natural readouts are measurable without assuming global primitive continuity. -/
theorem actualIntegerXiTailLogStep_measurable : Measurable actualIntegerXiTailLogStep := by
  exact (measurable_of_countable (fun n : ℕ =>
    actualAnchoredXiTailPrimitive (Real.log (n : ℝ)))).comp
      (Nat.measurable_floor.comp Real.measurable_exp)

/-- The actual logarithmic floor is at least seven and at least half the real scale. -/
theorem actualXiLogStep_floor_guards {t : ℝ} (ht : Real.log 7 ≤ t) :
    7 ≤ Nat.floor (Real.exp t) ∧
      Real.exp t / 2 ≤ (Nat.floor (Real.exp t) : ℝ) := by
  have he : (7 : ℝ) ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr ht
  have hn : 7 ≤ Nat.floor (Real.exp t) := Nat.le_floor he
  have hnr : (1 : ℝ) ≤ Nat.floor (Real.exp t) := by
    exact_mod_cast (show 1 ≤ Nat.floor (Real.exp t) by omega)
  have hh := Nat.lt_floor_add_one (Real.exp t)
  refine ⟨hn, ?_⟩
  nlinarith

private theorem cell_constant_nonneg : 0 ≤ actualXiCellOscillationConstant := by
  unfold actualXiCellOscillationConstant
  positivity

private theorem sqrt_exp_half (t : ℝ) : Real.sqrt (Real.exp t) = Real.exp (t / 2) := by
  have hs := Real.sq_sqrt (Real.exp_pos t).le
  have he : (Real.exp (t / 2)) ^ 2 = Real.exp t := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hp := Real.exp_pos (t / 2)
  have hn := Real.sqrt_nonneg (Real.exp t)
  nlinarith

/-- Genuine all-real source oscillation is bounded by the integrable exponential tail. -/
theorem actualXiLogStep_error_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |actualAnchoredXiTailPrimitive t - actualIntegerXiTailLogStep t| ≤
      Real.sqrt 2 * actualXiCellOscillationConstant * Real.exp (-t / 2) := by
  obtain ⟨hn, hh⟩ := actualXiLogStep_floor_guards ht
  have hnp : 0 < (Nat.floor (Real.exp t) : ℝ) := by
    exact_mod_cast (show 0 < Nat.floor (Real.exp t) by omega)
  have hsp : 0 < Real.sqrt (Nat.floor (Real.exp t) : ℝ) := Real.sqrt_pos.2 hnp
  have h2p : 0 < Real.sqrt 2 := Real.sqrt_pos.2 (by norm_num)
  have hb := actualAnchoredXiTailPrimitive_cell_abs_le hn
    (Nat.floor_le (Real.exp_pos t).le)
    (by simpa only [Nat.cast_add, Nat.cast_one] using
      (Nat.lt_floor_add_one (Real.exp t)).le)
  rw [Real.log_exp] at hb
  change |actualAnchoredXiTailPrimitive t - actualIntegerXiTailLogStep t| ≤
    actualXiCellOscillationConstant / Real.sqrt (Nat.floor (Real.exp t) : ℝ) at hb
  have hs := Real.sqrt_le_sqrt hh
  rw [Real.sqrt_div (Real.exp_pos t).le, sqrt_exp_half] at hs
  have hlo : Real.exp (t / 2) ≤ Real.sqrt 2 * Real.sqrt (Nat.floor (Real.exp t) : ℝ) := by
    simpa only [mul_comm] using (div_le_iff₀ h2p).1 hs
  apply hb.trans
  calc
    _ = (Real.sqrt 2 * actualXiCellOscillationConstant) /
        (Real.sqrt 2 * Real.sqrt (Nat.floor (Real.exp t) : ℝ)) := by field_simp
    _ ≤ (Real.sqrt 2 * actualXiCellOscillationConstant) / Real.exp (t / 2) :=
      div_le_div_of_nonneg_left (mul_nonneg h2p.le cell_constant_nonneg)
        (Real.exp_pos _) hlo
    _ = _ := by
      rw [show -t / 2 = -(t / 2) by ring, Real.exp_neg]
      ring

/-- Genuine finite primitive L1 follows from its proved absolute continuity. -/
theorem actualXiTailPrimitive_intervalIntegrable {T : ℝ} (hT : Real.log 7 ≤ T) :
    IntervalIntegrable actualAnchoredXiTailPrimitive volume (Real.log 7) T := by
  exact (actualAnchoredXiTailPrimitive_absolutelyContinuous hT).continuousOn.intervalIntegrable

/-- The genuine difference is L1 before comparing any integral or arithmetic readout. -/
theorem actualXiLogStep_error_intervalIntegrable {T : ℝ} (hT : Real.log 7 ≤ T) :
    IntervalIntegrable (fun t => actualAnchoredXiTailPrimitive t -
      actualIntegerXiTailLogStep t) volume (Real.log 7) T := by
  have hp := actualXiTailPrimitive_intervalIntegrable hT
  have he : IntervalIntegrable (fun t => Real.sqrt 2 * actualXiCellOscillationConstant *
      Real.exp (-t / 2)) volume (Real.log 7) T := by
    exact (by fun_prop : Continuous (fun t : ℝ => Real.sqrt 2 *
      actualXiCellOscillationConstant * Real.exp (-t / 2))).intervalIntegrable _ _
  apply he.mono_fun' (hp.def'.aestronglyMeasurable.sub
    actualIntegerXiTailLogStep_measurable.aestronglyMeasurable)
  filter_upwards [ae_restrict_mem measurableSet_uIoc] with t ht
  rw [uIoc_of_le hT] at ht
  change |actualAnchoredXiTailPrimitive t - actualIntegerXiTailLogStep t| ≤ _
  exact actualXiLogStep_error_abs_le ht.1.le

/-- The actual integer step has finite L1, retaining every fractional last cell. -/
theorem actualIntegerXiTailLogStep_intervalIntegrable {T : ℝ} (hT : Real.log 7 ≤ T) :
    IntervalIntegrable actualIntegerXiTailLogStep volume (Real.log 7) T := by
  have h := (actualXiTailPrimitive_intervalIntegrable hT).sub
    (actualXiLogStep_error_intervalIntegrable hT)
  convert h using 1
  funext t
  ring

private theorem error_envelope_integral {T : ℝ} :
    (∫ t in Real.log 7..T, Real.sqrt 2 * actualXiCellOscillationConstant *
      Real.exp (-t / 2)) =
      2 * Real.sqrt 2 * actualXiCellOscillationConstant *
        (Real.exp (-Real.log 7 / 2) - Real.exp (-T / 2)) := by
  have hd (t : ℝ) : HasDerivAt
      (fun x => -2 * Real.sqrt 2 * actualXiCellOscillationConstant * Real.exp (-x / 2))
      (Real.sqrt 2 * actualXiCellOscillationConstant * Real.exp (-t / 2)) t := by
    have hl : HasDerivAt (fun x : ℝ => -x / 2) (-1 / 2) t := by
      simpa only [Pi.neg_apply, id_eq] using (hasDerivAt_id t).neg.div_const (2 : ℝ)
    convert hl.exp.const_mul (-2 * Real.sqrt 2 * actualXiCellOscillationConstant)
      using 1 <;> try rfl <;> ring
  have hc : Continuous (fun t : ℝ => Real.sqrt 2 * actualXiCellOscillationConstant *
      Real.exp (-t / 2)) := by fun_prop
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    (hc.intervalIntegrable _ _)]
  ring

/-- Uniform finite discretization cost for every real terminal time, with no omitted cell. -/
theorem actualXiLogStep_error_integral_abs_le {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t -
      actualIntegerXiTailLogStep t|) ≤ actualXiLogStepErrorConstant := by
  have he : IntervalIntegrable (fun t => Real.sqrt 2 * actualXiCellOscillationConstant *
      Real.exp (-t / 2)) volume (Real.log 7) T := by
    exact (by fun_prop : Continuous (fun t : ℝ => Real.sqrt 2 *
      actualXiCellOscillationConstant * Real.exp (-t / 2))).intervalIntegrable _ _
  have h := intervalIntegral.integral_mono_on hT
    (actualXiLogStep_error_intervalIntegrable hT).abs he (fun t ht =>
      actualXiLogStep_error_abs_le ht.1)
  rw [error_envelope_integral] at h
  have hse : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    have hh := sqrt_exp_half (Real.log 7)
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using hh.symm
  have he7 : Real.exp (-Real.log 7 / 2) = 1 / Real.sqrt 7 := by
    rw [show -Real.log 7 / 2 = -(Real.log 7 / 2) by ring, Real.exp_neg, hse]
    simp only [one_div]
  rw [he7] at h
  apply h.trans
  unfold actualXiLogStepErrorConstant
  calc
    _ ≤ 2 * Real.sqrt 2 * actualXiCellOscillationConstant * (1 / Real.sqrt 7) :=
      mul_le_mul_of_nonneg_left (sub_le_self _ (Real.exp_pos _).le)
        (mul_nonneg (mul_nonneg (by norm_num) (Real.sqrt_nonneg _)) cell_constant_nonneg)
    _ = _ := by ring

/-- Absolute primitive averages differ by only the genuine finite discretization cost. -/
theorem actualXiLogStep_absolute_average_difference {T : ℝ} (hT : Real.log 7 ≤ T) :
    |(∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) -
      (∫ t in Real.log 7..T, |actualIntegerXiTailLogStep t|)| ≤
      actualXiLogStepErrorConstant := by
  have hp := actualXiTailPrimitive_intervalIntegrable hT
  have hs := actualIntegerXiTailLogStep_intervalIntegrable hT
  rw [← intervalIntegral.integral_sub hp.abs hs.abs]
  apply (intervalIntegral.abs_integral_le_integral_abs hT).trans
  apply (intervalIntegral.integral_mono_on hT (hp.abs.sub hs.abs).abs
    (actualXiLogStep_error_intervalIntegrable hT).abs
      (fun t _ => abs_abs_sub_abs_le_abs_sub _ _)).trans
  exact actualXiLogStep_error_integral_abs_le hT

end
end FormalResearch.RiemannHypothesis.SourceActualXiLogStepDiscretization
```
