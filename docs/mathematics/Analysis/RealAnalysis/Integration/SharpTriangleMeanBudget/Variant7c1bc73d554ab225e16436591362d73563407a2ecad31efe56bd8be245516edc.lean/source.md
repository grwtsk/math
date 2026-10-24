# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SharpTriangleMeanBudget.Variant7c1bc73d554ab225e16436591362d73563407a2ecad31efe56bd8be245516edc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85f8b1de7232d5ee08d320d0d3a5d9fb64d8cbb5` · SHA-256 `9ba55246902c9a0b864d05caf3a3be2c18adfd7a33aa8bfae595e7111b495ada`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Cumulative.Variant5e376a7fec66799843babdd370069f90b3c4170d36da68c280958855aa005ed2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e376a7fec66799843babdd370069f90b3c4170d36da68c280958855aa005ed2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Cumulative.Variant5e376a7fec66799843babdd370069f90b3c4170d36da68c280958855aa005ed2","mathematical_subject":"Analysis.Integration","original_sha256":"5e376a7fec66799843babdd370069f90b3c4170d36da68c280958855aa005ed2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/triangle-native/attempt02/SharpTriangleMeanBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.Tactic

/-!
Sharp triangular cost for a cumulative absolute-mean envelope. This proves
an analytic budget only; it supplies no arithmetic mean witness.
Direction, theorem selection, corrections and evaluation: grwtsk contributors.
New quantitative calculation and scratch formalization: OpenAI Codex assistance.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.Cumulative.Variant5e376a7fec66799843babdd370069f90b3c4170d36da68c280958855aa005ed2

set_option autoImplicit false
noncomputable section
namespace RH16SharpTriangleMeanBudget
open MeasureTheory Set

def cumulative (f : ℝ → ℝ) (T : ℝ) : ℝ := ∫ t in 0..T, f t

private theorem cumulative_hasDerivAt (f : ℝ → ℝ) (hf : Continuous f) (T : ℝ) :
    HasDerivAt (cumulative f) (f T) T := by
  exact intervalIntegral.integral_hasDerivAt_right (hf.intervalIntegrable 0 T)
    hf.aestronglyMeasurable.stronglyMeasurableAtFilter hf.continuousAt

private theorem cumulative_continuous (f : ℝ → ℝ) (hf : Continuous f) :
    Continuous (cumulative f) :=
  continuous_iff_continuousAt.mpr fun T => (cumulative_hasDerivAt f hf T).continuousAt

theorem triangle_integral_eq (f : ℝ → ℝ) (hf : Continuous f) (A : ℝ) (hA : 0 ≤ A) :
    (∫ t in 0..2*A, f t * min t (2*A-t)) =
      (∫ t in A..2*A, cumulative f t) - (∫ t in 0..A, cumulative f t) := by
  have hH := cumulative_continuous f hf
  have hleft := intervalIntegral.integral_deriv_mul_eq_sub_of_hasDerivAt
    (u := cumulative f) (u' := f) (v := fun t : ℝ => t) (v' := fun _ => (1 : ℝ))
    (a := 0) (b := A) hH.continuousOn continuous_id.continuousOn
    (fun t _ => cumulative_hasDerivAt f hf t) (fun t _ => hasDerivAt_id t)
    (hf.intervalIntegrable _ _) (continuous_const.intervalIntegrable _ _)
  have hright := intervalIntegral.integral_deriv_mul_eq_sub_of_hasDerivAt
    (u := cumulative f) (u' := f) (v := fun t : ℝ => 2*A-t) (v' := fun _ => (-1 : ℝ))
    (a := A) (b := 2*A) hH.continuousOn
    (continuous_const.sub continuous_id).continuousOn
    (fun t _ => cumulative_hasDerivAt f hf t)
    (fun t _ => by simpa only [Pi.sub_apply, id_eq, zero_sub] using
      (hasDerivAt_const t (2*A)).sub (hasDerivAt_id t))
    (hf.intervalIntegrable _ _) (continuous_const.intervalIntegrable _ _)
  have hl : (∫ t in 0..A, f t * t + cumulative f t * 1) =
      (∫ t in 0..A, f t * t) + (∫ t in 0..A, cumulative f t) := by
    simp only [mul_one]
    exact intervalIntegral.integral_add ((hf.mul continuous_id).intervalIntegrable _ _)
      (hH.intervalIntegrable _ _)
  have hr : (∫ t in A..2*A, f t * (2*A-t) + cumulative f t * (-1)) =
      (∫ t in A..2*A, f t * (2*A-t)) - (∫ t in A..2*A, cumulative f t) := by
    simp only [mul_neg_one]
    exact intervalIntegral.integral_sub
      ((hf.mul (continuous_const.sub continuous_id)).intervalIntegrable _ _)
      (hH.intervalIntegrable _ _)
  rw [hl] at hleft
  rw [hr] at hright
  have hcont : Continuous (fun t => f t * min t (2*A-t)) :=
    hf.mul (continuous_id.min (continuous_const.sub continuous_id))
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (hcont.intervalIntegrable 0 A) (hcont.intervalIntegrable A (2*A))
  have hsmall : (∫ t in 0..A, f t * min t (2*A-t)) = ∫ t in 0..A, f t * t := by
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le hA] at ht
    rw [min_eq_left (by linarith [ht.2])]
  have hlarge : (∫ t in A..2*A, f t * min t (2*A-t)) =
      ∫ t in A..2*A, f t * (2*A-t) := by
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le (by linarith : A ≤ 2*A)] at ht
    rw [min_eq_right (by linarith [ht.1])]
  rw [hsmall, hlarge] at hsplit
  simp only [mul_zero, sub_self, zero_sub, sub_zero, zero_mul] at hleft hright
  have he : 2*A-A = A := by ring
  rw [he] at hright
  linarith

/-- Only the cumulative mean on [A,2A] is needed; an early prefix is subtracted. -/
theorem triangle_integral_le (f : ℝ → ℝ) (hf : Continuous f)
    (hf0 : ∀ t : ℝ, 0 ≤ f t) (A M : ℝ) (hA : 0 ≤ A)
    (hmean : ∀ T ∈ Icc A (2*A), cumulative f T ≤ M*T^2) :
    (∫ t in 0..2*A, f t * min t (2*A-t)) ≤ (7/3 : ℝ)*M*A^3 := by
  have hH := cumulative_continuous f hf
  have hnonneg : 0 ≤ ∫ t in 0..A, cumulative f t := by
    apply intervalIntegral.integral_nonneg hA
    intro t ht
    exact intervalIntegral.integral_nonneg (by linarith [ht.1]) (fun x _ => hf0 x)
  have hm := intervalIntegral.integral_mono_on (μ := volume) (by linarith : A ≤ 2*A)
    (hH.intervalIntegrable A (2*A))
    ((by fun_prop : Continuous (fun T : ℝ => M*T^2)).intervalIntegrable A (2*A)) hmean
  have hd (t : ℝ) : HasDerivAt (fun u : ℝ => M/3*u^3) (M*t^2) t := by
    exact (((hasDerivAt_id t).pow 3).const_mul (M/3)).congr_deriv (by ring)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => M*t^2)).intervalIntegrable A (2*A))
  rw [triangle_integral_eq f hf A hA]
  calc
    _ ≤ ∫ t in A..2*A, M*t^2 := by linarith
    _ = (7/3 : ℝ)*M*A^3 := by rw [hi]; ring

#print axioms triangle_integral_eq
#print axioms triangle_integral_le
end RH16SharpTriangleMeanBudget
```
