# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SharpTriangleMeanBudget.Variant271969aa4128de37af4c6d73d9bf00dfd52f018cbf2fe1f6132919ff465b1862

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a07ec14b2883a1bd2442a64f6e50ad2a2da6effe` · SHA-256 `6d1fed06d3919fb8c8702ba6521138e7f3bfd301f8a4db7d2c32e2b89a6b016a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Cumulative.Variant03c34da9e52eea6d60977ebe951601a5926051723f4bc070485c9d56f175c0d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03c34da9e52eea6d60977ebe951601a5926051723f4bc070485c9d56f175c0d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Cumulative.Variant03c34da9e52eea6d60977ebe951601a5926051723f4bc070485c9d56f175c0d3","mathematical_subject":"Analysis.Integration","original_sha256":"03c34da9e52eea6d60977ebe951601a5926051723f4bc070485c9d56f175c0d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/triangle-native/attempt01/SharpTriangleMeanBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.Tactic

/-!
Sharp triangular cost for a cumulative absolute-mean envelope. This proves
an analytic budget only; it supplies no arithmetic mean witness.
Direction, theorem selection, corrections and evaluation: grwtsk contributors.
New quantitative calculation and scratch formalization: OpenAI Codex assistance.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.Cumulative.Variant03c34da9e52eea6d60977ebe951601a5926051723f4bc070485c9d56f175c0d3

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
    (fun t _ => (hasDerivAt_const t (2*A)).sub (hasDerivAt_id t))
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
  have hm := intervalIntegral.integral_mono_on (by linarith : A ≤ 2*A)
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
