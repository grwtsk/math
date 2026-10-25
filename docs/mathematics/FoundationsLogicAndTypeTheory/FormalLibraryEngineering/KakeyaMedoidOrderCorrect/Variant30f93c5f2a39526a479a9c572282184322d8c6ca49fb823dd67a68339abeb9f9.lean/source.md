# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KakeyaMedoidOrderCorrect.Variant30f93c5f2a39526a479a9c572282184322d8c6ca49fb823dd67a68339abeb9f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f312e6fc52a635b3201352d3385a6b0febef871` · SHA-256 `b4ade9e4499f3ee624b163ab5e3e79cc2e044ecee767c3a4387a445b1585864b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Phase.Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Phase.Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602","mathematical_subject":"Foundations.Unclassified","original_sha256":"cc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/Validation/KakeyaMedoidOrderCorrect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Pipeline.Center.KakeyaMedoid


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Phase.Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602

set_option autoImplicit false

namespace Think.Validation.KakeyaMedoidOrderCorrect

abbrev Phase := Think.PhaseId

theorem preceqK_total_over_finite_phases
    (graphDistance : Phase -> Phase -> Nat)
    (m p q : Phase) :
    Think.Pipeline.Center.KakeyaMedoid.preceqK graphDistance m p q ∨
      Think.Pipeline.Center.KakeyaMedoid.preceqK graphDistance m q p :=
  Think.Pipeline.Center.KakeyaMedoid.preceqK_total graphDistance m p q

theorem medoid_order_preserves_61_phase_spine :
    Think.centerSpine.length = 61 :=
  Think.Pipeline.Center.KakeyaMedoid.centerSpine_preserved

theorem medoid_order_marks_nonTheorem :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.kakeyaMedoidNotKakeyaTheorem ∈
      Think.Pipeline.Center.KakeyaMedoid.medoidResidues :=
  Think.Pipeline.Center.KakeyaMedoid.medoidResidues_contains_nonTheorem

end Think.Validation.KakeyaMedoidOrderCorrect
```
