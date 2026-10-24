# Complete source: GRWTSK.Analysis.FunctionalAnalysis.FiveModeEndpointEnvelope.Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99466a3e5461282fdeb9d1e5e7753901ee0701a5` · SHA-256 `4c68792a99b9d1a6884ad41e311727a1a2fc000639fa7d67447c3a3a9d835fdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.EndpointEnvelope.Variantb10077edb23aa5b89b9b3b8011051075587a10d7410080e33af38c35b59a7eb2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b10077edb23aa5b89b9b3b8011051075587a10d7410080e33af38c35b59a7eb2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ConvexAnalysis.SourceCorpus.EndpointEnvelope.Variantb10077edb23aa5b89b9b3b8011051075587a10d7410080e33af38c35b59a7eb2","mathematical_subject":"Analysis.ConvexAnalysis","original_sha256":"b10077edb23aa5b89b9b3b8011051075587a10d7410080e33af38c35b59a7eb2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiveModeEndpointEnvelope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Convex.Deriv
import Mathlib.Analysis.Convex.Jensen
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic

/-!
The finite tail envelope is bounded on the complete real interval, without
sampling scales. This is only the continuum endpoint step of the finite
certificate: no actual zero tail is bounded by the envelope in this module.
Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean assistance: OpenAI Codex.
-/

namespace GRWTSK.Analysis.FunctionalAnalysis.EndpointEnvelope.Variantb10077edb23aa5b89b9b3b8011051075587a10d7410080e33af38c35b59a7eb2

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open Set

def endpointEnvelope (A : ℝ) : ℝ := (Real.exp A + 3)/A^9
def endpointEnvelopeFirst (A : ℝ) : ℝ := (Real.exp A*(A-9)-27)/A^10
def endpointEnvelopeSecond (A : ℝ) : ℝ :=
  (Real.exp A*((A-9)^2+9)+270)/A^11

theorem endpointEnvelope_hasDerivAt (A : ℝ) (hA : A ≠ 0) :
    HasDerivAt endpointEnvelope (endpointEnvelopeFirst A) A := by
  unfold endpointEnvelope endpointEnvelopeFirst
  apply (((Real.hasDerivAt_exp A).add_const 3).div
    ((hasDerivAt_id A).pow 9) (pow_ne_zero 9 hA)).congr_deriv
  simp only [Pi.pow_apply, id_eq]
  field_simp
  ring

theorem endpointEnvelopeFirst_hasDerivAt (A : ℝ) (hA : A ≠ 0) :
    HasDerivAt endpointEnvelopeFirst (endpointEnvelopeSecond A) A := by
  unfold endpointEnvelopeFirst endpointEnvelopeSecond
  apply ((((Real.hasDerivAt_exp A).mul ((hasDerivAt_id A).sub_const 9)).sub_const 27).div
    ((hasDerivAt_id A).pow 10) (pow_ne_zero 10 hA)).congr_deriv
  simp only [Pi.pow_apply, Pi.mul_apply, id_eq]
  field_simp
  ring

theorem endpointEnvelope_convex : ConvexOn ℝ (Icc 1 160) endpointEnvelope := by
  apply convexOn_of_hasDerivWithinAt2_nonneg (f' := endpointEnvelopeFirst)
    (f'' := endpointEnvelopeSecond) (convex_Icc _ _)
  · intro A hA
    exact (endpointEnvelope_hasDerivAt A (by linarith [hA.1])).continuousAt.continuousWithinAt
  · intro A hA
    exact (endpointEnvelope_hasDerivAt A
      (by have hm := interior_subset hA; linarith [hm.1])).hasDerivWithinAt
  · intro A hA
    exact (endpointEnvelopeFirst_hasDerivAt A
      (by have hm := interior_subset hA; linarith [hm.1])).hasDerivWithinAt
  · intro A hA
    have hp : 0 < A := by have hm := interior_subset hA; linarith [hm.1]
    unfold endpointEnvelopeSecond
    positivity

/-- The maximum is at one of the two endpoints on the entire continuum. -/
theorem endpointEnvelope_le_endpoint_max (A : ℝ) (hA : 1 ≤ A) (hA160 : A ≤ 160) :
    endpointEnvelope A ≤ max (endpointEnvelope 1) (endpointEnvelope 160) := by
  exact endpointEnvelope_convex.le_max_of_mem_Icc (by norm_num) (by norm_num) ⟨hA,hA160⟩

/-- Exact rational endpoint envelope used by the archived checker. -/
theorem endpointEnvelope_le_rational_max (A : ℝ) (hA : 1 ≤ A) (hA160 : A ≤ 160) :
    endpointEnvelope A ≤ max (6 : ℝ) (((2719/1000 : ℝ)^160+3)/160^9) := by
  apply (endpointEnvelope_le_endpoint_max A hA hA160).trans
  apply max_le_max
  · unfold endpointEnvelope
    norm_num only [one_pow, div_one]
    linarith [Real.exp_one_lt_three]
  · unfold endpointEnvelope
    apply div_le_div_of_nonneg_right _ (by positivity)
    refine add_le_add ?_ (le_refl (3 : ℝ))
    have he : Real.exp (160 : ℝ) = (Real.exp 1)^160 := by
      rw [← Real.exp_nat_mul]
      congr 1
      norm_num
    rw [he]
    apply pow_le_pow_left₀ (Real.exp_pos 1).le
    have h := Real.exp_one_lt_d9
    norm_num at h ⊢
    linarith

end CommonMeanScratch
```
