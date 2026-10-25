# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certificate.Varianta09fddf917e73410be1d63ddc434bb5b1c4503ce79b8f71c187e28d2e4543921

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d30a9aa2e2202e5dfe68f681bb25bd31508fcbc5` · SHA-256 `528a39a441a7005ba6fce9dca1ebceea67415706a40b23960358bb03e483e544`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogicKnowledgeAuthorityCertificate.Variant114fad6f708ae7c1d06633ec1cba30669d604ccfee6282c547b45f2b490193c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"114fad6f708ae7c1d06633ec1cba30669d604ccfee6282c547b45f2b490193c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LogicKnowledgeAuthorityCertificate.Variant114fad6f708ae7c1d06633ec1cba30669d604ccfee6282c547b45f2b490193c6","mathematical_subject":"Foundations.Unclassified","original_sha256":"114fad6f708ae7c1d06633ec1cba30669d604ccfee6282c547b45f2b490193c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Logic/Category/Certificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Logic.Category.Bridge


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogicKnowledgeAuthorityCertificate.Variant114fad6f708ae7c1d06633ec1cba30669d604ccfee6282c547b45f2b490193c6

namespace Think.Logic

structure LogicKnowledgeAuthorityCertificate where
  bridge : CategoricalBridgeEquivalence
  kernelStatus : Bool
  semanticPreservationReceiptHash : String
  roundTripReceiptHash : String
  visualAuthority : Bool
  claimBearing : Bool

def LogicKnowledgeAuthorityCertificate.accepted
  (cert : LogicKnowledgeAuthorityCertificate) : Prop :=
  cert.kernelStatus = true ∧ cert.claimBearing = true ∧ cert.visualAuthority = false

theorem LogicKnowledgeAuthorityCertificate.sound_object_bijection
  (cert : LogicKnowledgeAuthorityCertificate) :
  Bijective cert.bridge.toKnowledge.obj :=
by
  exact CategoricalBridgeEquivalence.object_bijective cert.bridge

theorem LogicKnowledgeAuthorityCertificate.no_visual_authority_if_accepted
  (cert : LogicKnowledgeAuthorityCertificate) :
  cert.accepted → cert.visualAuthority = false :=
by
  intro h
  exact h.right.right

theorem LogicKnowledgeAuthorityCertificate.kernel_checked_if_accepted
  (cert : LogicKnowledgeAuthorityCertificate) :
  cert.accepted → cert.kernelStatus = true :=
by
  intro h
  exact h.left

end Think.Logic
```
