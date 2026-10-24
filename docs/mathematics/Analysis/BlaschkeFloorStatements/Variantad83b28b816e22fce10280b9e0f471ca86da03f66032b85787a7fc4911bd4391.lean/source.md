# Complete source: GRWTSK.Analysis.BlaschkeFloorStatements.Variantad83b28b816e22fce10280b9e0f471ca86da03f66032b85787a7fc4911bd4391

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `933171cd926edab02b1ba71257ecaa78e2e3be5f` · SHA-256 `20acfb006d4cd5c66b5ce9669c4c156cdbf24ed3ee6f21013413f6e36fdd0337`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.BlaschkeAtOne.Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.BlaschkeAtOne.Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-zero-energy/BlaschkeFloorStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Complex.Norm
import Mathlib.Tactic


namespace GRWTSK.Analysis.BlaschkeAtOne.Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7

set_option autoImplicit false
namespace BlaschkeFloorScratch
noncomputable section

/-- The elementary right-half-plane Blaschke factor evaluated at the reference point one. -/
def blaschkeAtOne (z : ℂ) : ℂ := (1 - z) / (1 + starRingEnd ℂ z)

/-- The reference denominator cannot vanish for a zero in the open right half-plane. -/
theorem reference_denominator_ne_zero (z : ℂ) (hz : 0 < z.re) :
    1 + z ≠ 0 := by
  intro h
  have hr := congrArg Complex.re h
  simp only [Complex.add_re, Complex.one_re, Complex.zero_re] at hr
  linarith

/-- The conjugated reference denominator has the same squared modulus. -/
theorem reference_denominator_normSq (z : ℂ) :
    Complex.normSq (1 + starRingEnd ℂ z) = Complex.normSq (1 + z) := by
  simp only [Complex.normSq_apply, Complex.add_re, Complex.one_re,
    Complex.conj_re, Complex.add_im, Complex.one_im, Complex.conj_im]
  ring

/-- The exact one-zero deficit, with the Hardy reference-vector factor one half retained. -/
theorem blaschke_deficit (z : ℂ) (hz : 0 < z.re) :
    (1 - ‖blaschkeAtOne z‖ ^ 2) / 2 = 2 * z.re / ‖1 + z‖ ^ 2 := by
  have hd : Complex.normSq (1 + z) ≠ 0 :=
    (Complex.normSq_pos.mpr (reference_denominator_ne_zero z hz)).ne'
  rw [← Complex.normSq_eq_norm_sq, ← Complex.normSq_eq_norm_sq]
  simp only [blaschkeAtOne, Complex.normSq_div, reference_denominator_normSq]
  field_simp
  simp only [Complex.normSq_apply, Complex.add_re, Complex.sub_re, Complex.one_re,
    Complex.add_im, Complex.sub_im, Complex.one_im]
  ring

/-- A remaining inner factor of modulus at most one can only increase the deficit. -/
theorem factor_deficit_lower (z q : ℂ) (hz : 0 < z.re) (hq : ‖q‖ ≤ 1) :
    2 * z.re / ‖1 + z‖ ^ 2 ≤ (1 - ‖blaschkeAtOne z * q‖ ^ 2) / 2 := by
  rw [← blaschke_deficit z hz, norm_mul, mul_pow]
  have hq2 : ‖q‖ ^ 2 ≤ 1 := by nlinarith [norm_nonneg q]
  have hh := mul_le_mul_of_nonneg_left hq2 (sq_nonneg ‖blaschkeAtOne z‖)
  nlinarith

/-- The algebraic tracking floor is strictly positive for a right-half-plane zero. -/
theorem blaschke_floor_pos (z : ℂ) (hz : 0 < z.re) :
    0 < 2 * z.re / ‖1 + z‖ ^ 2 := by
  exact div_pos (mul_pos (by norm_num) hz)
    (sq_pos_of_pos (norm_pos_iff.mpr (reference_denominator_ne_zero z hz)))

end
end BlaschkeFloorScratch

namespace BlaschkeFloorExactStatements
open BlaschkeFloorScratch
noncomputable section
example (z : ℂ) : blaschkeAtOne z = (1 - z) / (1 + starRingEnd ℂ z) := rfl

example (z : ℂ) (hz : 0 < z.re) :
    1 + z ≠ 0 :=
  reference_denominator_ne_zero z hz

example (z : ℂ) :
    Complex.normSq (1 + starRingEnd ℂ z) = Complex.normSq (1 + z) :=
  reference_denominator_normSq z

example (z : ℂ) (hz : 0 < z.re) :
    (1 - ‖blaschkeAtOne z‖ ^ 2) / 2 = 2 * z.re / ‖1 + z‖ ^ 2 :=
  blaschke_deficit z hz

example (z q : ℂ) (hz : 0 < z.re) (hq : ‖q‖ ≤ 1) :
    2 * z.re / ‖1 + z‖ ^ 2 ≤ (1 - ‖blaschkeAtOne z * q‖ ^ 2) / 2 :=
  factor_deficit_lower z q hz hq

example (z : ℂ) (hz : 0 < z.re) :
    0 < 2 * z.re / ‖1 + z‖ ^ 2 :=
  blaschke_floor_pos z hz


end
end BlaschkeFloorExactStatements
```
