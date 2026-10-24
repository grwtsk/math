# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Block.Varianta790b51ff703c8ca37781a864b770974448fbb26cba3df29d1bfa0a5cdc97bb1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abb9d045f8814630cf6f5e47b419196ffc97ed77` · SHA-256 `845ecacfa1b2681c8a157aea8d0f245fb6d8068a19cfdda16e1da741b1bd5311`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnitSemanticReceipt.Variante2701d0ab1fbae5b528bcb9c7fe529ba2332e5bcf098a8a5dc4cd7bdcdc8a6c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2701d0ab1fbae5b528bcb9c7fe529ba2332e5bcf098a8a5dc4cd7bdcdc8a6c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.UnitSemanticReceipt.Variante2701d0ab1fbae5b528bcb9c7fe529ba2332e5bcf098a8a5dc4cd7bdcdc8a6c0","mathematical_subject":"Computation.DataStructures","original_sha256":"e2701d0ab1fbae5b528bcb9c7fe529ba2332e5bcf098a8a5dc4cd7bdcdc8a6c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Atom/Block.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Atom.Reason

/-! # Certified source atoms and semantic receipts -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnitSemanticReceipt.Variante2701d0ab1fbae5b528bcb9c7fe529ba2332e5bcf098a8a5dc4cd7bdcdc8a6c0

namespace MathDiscovery.Atom

open MathDiscovery

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

structure SourceAtom where
  id : SourceAtomId
  commands : Array SourceCommandId
  emittedDeclarations : Array ExtractorDeclarationId
  contextCapsule : ContextCapsule
  imports : Array String
  mustLinkReasons : Array CollapseReasonKind
  barriers : Array RefactorBarrier
  baselineReceipt : UnitSemanticReceipt
  probeValidated : Bool
  deriving DecidableEq, Repr

def SourceAtom.Valid (atom : SourceAtom) : Prop :=
  atom.id.Valid ∧ atom.commands.size > 0 ∧ atom.probeValidated = true ∧
    atom.barriers.all (fun barrier ↦ barrier.state != .unresolved) = true

end MathDiscovery.Atom
```
