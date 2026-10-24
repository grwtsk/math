# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Block.Variant21c9d9d3c10d1fb2a28013c374e768112228e107f14fe9555218ae977bc513fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b698e895a350ab391e355964e6aeb18dd1591db4` · SHA-256 `701197d8f570e1e691c044d2b14fa67146badc29d702964bac7ff6f0999a13a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnitSemanticReceipt.Variant97648548bffc1463ef72813a5ae4c96cb2e872ec8c91e411d726d58ec4a16563","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97648548bffc1463ef72813a5ae4c96cb2e872ec8c91e411d726d58ec4a16563","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.UnitSemanticReceipt.Variant97648548bffc1463ef72813a5ae4c96cb2e872ec8c91e411d726d58ec4a16563","mathematical_subject":"Computation.DataStructures","original_sha256":"97648548bffc1463ef72813a5ae4c96cb2e872ec8c91e411d726d58ec4a16563","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Element/Block.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Element.Reason
import Mathematics.Oracle.Naming.Name

/-! # Certified source elements and semantic receipts -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnitSemanticReceipt.Variant97648548bffc1463ef72813a5ae4c96cb2e872ec8c91e411d726d58ec4a16563

namespace Mathematics.Element

open Mathematics

structure UnitSemanticReceipt where
  publicNamesDigest : Digest
  declarationKindsDigest : Digest
  statementDigest : Digest
  implementationDigest : Digest
  generatedFamilyDigest : Digest
  dependencyDigest : Digest
  trustClosureDigest : Digest
  safetyDigest : Digest
  deriving DecidableEq, Repr

structure SourceElement where
  id : SourceElementId
  commands : Array SourceCommandId
  emittedDeclarations : Array ExtractorDeclarationId
  contextCapsule : ContextCapsule
  imports : Array String
  mustLinkReasons : Array CollapseReasonKind
  barriers : Array RefactorBarrier
  baselineReceipt : UnitSemanticReceipt
  name? : Option Mathematics.Oracle.Naming.ElementName := none
  probeValidated : Bool
  deriving DecidableEq, Repr

def SourceElement.Valid (element : SourceElement) : Prop :=
  element.id.Valid ∧ element.commands.size > 0 ∧ element.probeValidated = true ∧
    element.barriers.all (fun barrier ↦ barrier.state != .unresolved) = true

end Mathematics.Element
```
