# Complete source: GRWTSK.Topology.BoundsV3Input.Variant4eb2c06854ab178bfdd423b0f65afa27127caa7770b1b1cca1263987b9530b40

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `909675956c4094e7e56e1039d4f01719d8e45e74` · SHA-256 `eabb8017078c00bfe82bc06ecd7d0126afbb481bceda2135f7e656b96a0971f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.SourceMangoldtStorage.Variant7aadec70ba31cdb11ee4e21fb9fe4d93ef46a3dab79a6fe71011d73380f1a3f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7aadec70ba31cdb11ee4e21fb9fe4d93ef46a3dab79a6fe71011d73380f1a3f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SourceMangoldtStorage.Variant7aadec70ba31cdb11ee4e21fb9fe4d93ef46a3dab79a6fe71011d73380f1a3f8","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"7aadec70ba31cdb11ee4e21fb9fe4d93ef46a3dab79a6fe71011d73380f1a3f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle9/higher-storage/bounds-v3-input.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtStorage
import Mathlib.Topology.Algebra.InfiniteSum.Real

namespace GRWTSK.Topology.SourceMangoldtStorage.Variant7aadec70ba31cdb11ee4e21fb9fe4d93ef46a3dab79a6fe71011d73380f1a3f8

set_option autoImplicit false
noncomputable section
open MeasureTheory Filter Set
open scoped InnerProductSpace
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceMangoldtStorage

example (s : ℝ) (f : ComplexL2) : translationStorage s f ≤ 2 * ‖f‖ ^ 2 := by
  have h := norm_sub_le f (translation s f)
  rw [(translation s).norm_map] at h
  have h0 : 0 ≤ ‖f - translation s f‖ := norm_nonneg _
  have h1 : 0 ≤ ‖f‖ := norm_nonneg _
  unfold translationStorage
  nlinarith

example {ι : Type} (w : ι → ℝ) (s : ι → ℝ) (hw : ∀ i, 0 ≤ w i)
    (hsum : Summable w) (f : ComplexL2) :
    Summable (fun i => w i * translationStorage (s i) f) := by
  apply Summable.of_nonneg_of_le (fun i => mul_nonneg (hw i) (translationStorage_nonneg _ _))
    (fun i => ?_) (hsum.mul_right (2 * ‖f‖ ^ 2))
  apply mul_le_mul_of_nonneg_left _ (hw i)
  have h := norm_sub_le f (translation (s i) f)
  rw [(translation (s i)).norm_map] at h
  unfold translationStorage
  nlinarith [norm_nonneg (f - translation (s i) f), norm_nonneg f]

example {ι : Type} (w : ι → ℝ) (s : ι → ℝ) (hw : ∀ i, 0 ≤ w i)
    (hsum : Summable w) (f : ComplexL2) :
    Summable (fun i => w i * (⟪f, translation (s i) f⟫_ℂ).re) := by
  have hsq : Summable (fun i => w i * translationStorage (s i) f) := by
    apply Summable.of_nonneg_of_le (fun i => mul_nonneg (hw i) (translationStorage_nonneg _ _))
      (fun i => ?_) (hsum.mul_right (2 * ‖f‖ ^ 2))
    apply mul_le_mul_of_nonneg_left _ (hw i)
    have h := norm_sub_le f (translation (s i) f)
    rw [(translation (s i)).norm_map] at h
    unfold translationStorage
    nlinarith [norm_nonneg (f - translation (s i) f), norm_nonneg f]
  apply ((hsum.mul_right (‖f‖ ^ 2)).sub hsq).congr
  intro i
  rw [translationStorage_eq]
  ring
```
