# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Block.Variantb2aa5af8abbab76e6c4405fbb4d19d07c18f7fb7fe287640fb5853108b88cfc8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe52d97845f3964b981561613d05fdc68f8decd1` · SHA-256 `d4027e4ca8d5661fb908ce85bdd4f5db1877390b2c7ea8f7f83b60a916c63d0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnitSemanticReceipt.Variant16e02bbacba7039c2dfc2a2decee03ce88f947609bb1dc25dc226e0e2b84d3ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16e02bbacba7039c2dfc2a2decee03ce88f947609bb1dc25dc226e0e2b84d3ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.UnitSemanticReceipt.Variant16e02bbacba7039c2dfc2a2decee03ce88f947609bb1dc25dc226e0e2b84d3ad","mathematical_subject":"Computation.DataStructures","original_sha256":"16e02bbacba7039c2dfc2a2decee03ce88f947609bb1dc25dc226e0e2b84d3ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-04463a67b33c2e29/MathDiscovery/Atom/Block.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Atom.Reason
import MathDiscovery.Oracle.Naming.Name

/-! # Certified source atoms and semantic receipts -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnitSemanticReceipt.Variant16e02bbacba7039c2dfc2a2decee03ce88f947609bb1dc25dc226e0e2b84d3ad

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
  name? : Option MathDiscovery.Oracle.Naming.AtomName := none
  probeValidated : Bool
  deriving DecidableEq, Repr

def SourceAtom.Valid (atom : SourceAtom) : Prop :=
  atom.id.Valid ∧ atom.commands.size > 0 ∧ atom.probeValidated = true ∧
    atom.barriers.all (fun barrier ↦ barrier.state != .unresolved) = true

end MathDiscovery.Atom
```
