# Complete source: GRWTSK.Topology.BoundsV2Input.Variante723f9dc21d04b0b8c5cd792fc747b617e18b279807cf81526f1caf64e5b465a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3478c17044f2184da3bc795d63510ff5e224d59f` · SHA-256 `76c067285b7492d216169479937e8cfbd0004de1d971efc75de6c44d72685bc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.SourceMangoldtStorage.Variant48631f1fe00d0342dd38d851d47dc372a930f42b3834bdb6c57dfaab78875b97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48631f1fe00d0342dd38d851d47dc372a930f42b3834bdb6c57dfaab78875b97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SourceMangoldtStorage.Variant48631f1fe00d0342dd38d851d47dc372a930f42b3834bdb6c57dfaab78875b97","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"48631f1fe00d0342dd38d851d47dc372a930f42b3834bdb6c57dfaab78875b97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle9/higher-storage/bounds-v2-input.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtStorage
import Mathlib.Topology.Algebra.InfiniteSum.Real

namespace GRWTSK.Topology.SourceMangoldtStorage.Variant48631f1fe00d0342dd38d851d47dc372a930f42b3834bdb6c57dfaab78875b97

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
  convert (hsum.mul_right (‖f‖ ^ 2)).sub hsq using 1
  ext i
  rw [translationStorage_eq]
  ring
```
