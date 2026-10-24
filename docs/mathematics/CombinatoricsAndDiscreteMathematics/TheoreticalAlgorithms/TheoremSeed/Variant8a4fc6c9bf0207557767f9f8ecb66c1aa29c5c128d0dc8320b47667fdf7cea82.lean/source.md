# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremSeed.Variant8a4fc6c9bf0207557767f9f8ecb66c1aa29c5c128d0dc8320b47667fdf7cea82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8bcf6cd5d9bd2d5a05a8781c16935c615d86d56` · SHA-256 `ec028f2b680bdb57d221a93efd41223615957d8473a5999915bf1a317aeb72af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremCellSeedAuthority.Variant1ddea6fd81a687a24101d953034dec64a277e9ceb35a87a2bc083bd65fb7f2ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ddea6fd81a687a24101d953034dec64a277e9ceb35a87a2bc083bd65fb7f2ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TheoremCellSeedAuthority.Variant1ddea6fd81a687a24101d953034dec64a277e9ceb35a87a2bc083bd65fb7f2ae","mathematical_subject":"Computation.DataStructures","original_sha256":"1ddea6fd81a687a24101d953034dec64a277e9ceb35a87a2bc083bd65fb7f2ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Extractor/TheoremSeed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Extractor.Core

/-!
# Theorem-cell seed emitted from an extracted theorem declaration

A seed records compiled statement, proof, dependency, trust, source, and module
identities.  It is evidence for theorem-cell axes; it is not itself a closed
cell and does not promote an external extraction artifact to theorem authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremCellSeedAuthority.Variant1ddea6fd81a687a24101d953034dec64a277e9ceb35a87a2bc083bd65fb7f2ae

namespace MathDiscovery.Extractor

open MathDiscovery

/-- The only authority available to an extracted theorem-cell seed. There is
deliberately no constructor that promotes a seed to a closed theorem cell. -/
inductive TheoremCellSeedAuthority
  | extractedEvidenceOnly
  deriving DecidableEq, Repr, Inhabited

structure TheoremCellSeed where
  declarationId : DeclarationId
  theoremName : Lean.Name
  statementDigest : Digest
  proofDigest : Option Digest
  dependencyDigest : Digest
  trustClosureDigest : Digest
  sourceDigest : Option Digest
  owningModuleDigest : Digest
  directDependencies : Array Lean.Name
  transitiveConeDigest : Digest
  authorityEvidence : TrustClosure
  authority : TheoremCellSeedAuthority := .extractedEvidenceOnly
  deriving DecidableEq, Repr, Inhabited

namespace TheoremCellSeed

/-- A seed is aligned when its trust record describes the same declaration. -/
def TrustAligned (seed : TheoremCellSeed) : Prop :=
  seed.authorityEvidence.declarationId = seed.declarationId ∧
  seed.authorityEvidence.declaration = seed.theoremName

end TheoremCellSeed

end MathDiscovery.Extractor
```
