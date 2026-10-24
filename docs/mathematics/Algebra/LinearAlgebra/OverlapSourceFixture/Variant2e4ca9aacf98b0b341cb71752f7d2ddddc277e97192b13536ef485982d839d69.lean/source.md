# Complete source: GRWTSK.Algebra.LinearAlgebra.OverlapSourceFixture.Variant2e4ca9aacf98b0b341cb71752f7d2ddddc277e97192b13536ef485982d839d69

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82d593815cdb38895b07c85bb1c7f356e2bc2d3e` · SHA-256 `db84353ce7e09f531c33105dff9598cb8505b09740963ce1e5861741731016a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SingletonOriginalProfile.Variantee835b9831619ad88825f7ac357ca6d273ef80c52c81d920ddc30cfab78947be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee835b9831619ad88825f7ac357ca6d273ef80c52c81d920ddc30cfab78947be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SingletonOriginalProfile.Variantee835b9831619ad88825f7ac357ca6d273ef80c52c81d920ddc30cfab78947be","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"ee835b9831619ad88825f7ac357ca6d273ef80c52c81d920ddc30cfab78947be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mutation-d4-e8/continuation/OverlapSourceFixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceOverlapTransport

/-!
A controlled actual-L2 fixture for the competing claim that identical retained
labels transport the source state unchanged. The inventory {1} is this fixture's
declared carrier; it is not a replacement for either actual long arithmetic
inventory. The existing literal source-scale obstruction supplies non-equality.
Direction: grwtsk contributors; construction: OpenAI Codex.
-/


namespace GRWTSK.Algebra.LinearAlgebra.SingletonOriginalProfile.Variantee835b9831619ad88825f7ac357ca6d273ef80c52c81d920ddc30cfab78947be

noncomputable section
namespace FormalResearch.MutationGame.OverlapSourceFixture
open Matrix SourceRefinement SourceOverlapTransport
open FormalResearch.RiemannHypothesis
open SourceArithmeticOrbit SourceOrbitCoordinates SourceReflectionDuality
open SourcePureRotationObstruction

/-- A single unshifted original channel synthesizes precisely its source. -/
theorem singleton_original_profile (q : ComplexL2) :
    finiteProfile q {1} false false (fun _ => (1 : ℂ)) = q := by
  simp [finiteProfile, orbitAtom, signedLog]
  apply MeasureTheory.Lp.ext
  filter_upwards [translation_coe_ae 0 q] with x hx
  simpa using hx

/-- Identical labels preserve coefficient coordinates, while a changed source
remains an exact separate ambient term. -/
theorem same_labels_source_increment (qB qA : ComplexL2) :
    synthesis qB {1} (retentionMatrix {1} {1} *ᵥ
        embedChannel {1} false false (fun _ => (1 : ℂ))) -
      synthesis qA {1} (embedChannel {1} false false (fun _ => (1 : ℂ))) =
      qB - qA := by
  rw [retentionMatrix_self, Matrix.one_mulVec, synthesis_embedChannel,
    synthesis_embedChannel, singleton_original_profile, singleton_original_profile]

/-- The actual normalized sources at scales two and one give nonzero retained
source work even with exactly the same coordinate labels. This refutes dropping
that term; it does not refute an arithmetic estimate or assert a norm budget. -/
theorem actual_same_labels_increment_ne_zero :
    synthesis (originalSourceL2 2 (by norm_num)) {1}
        (retentionMatrix {1} {1} *ᵥ embedChannel {1} false false (fun _ => (1 : ℂ))) -
      synthesis (originalSourceL2 1 (by norm_num)) {1}
        (embedChannel {1} false false (fun _ => (1 : ℂ))) ≠ 0 := by
  rw [same_labels_source_increment]
  exact sub_ne_zero.mpr originalSourceL2_two_ne_one

end FormalResearch.MutationGame.OverlapSourceFixture
```
