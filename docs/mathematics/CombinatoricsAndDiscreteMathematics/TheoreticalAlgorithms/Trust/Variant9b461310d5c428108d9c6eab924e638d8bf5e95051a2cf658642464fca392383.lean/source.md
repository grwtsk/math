# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Trust.Variant9b461310d5c428108d9c6eab924e638d8bf5e95051a2cf658642464fca392383

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4ba9ac006c1e588e8d1d656637a8e7ee916fbcd` · SHA-256 `dc09d726d339d570fa6b11a0ecc691b7919a475ee5c09de108da834d67ff814e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TrustAssumption.Variant5bb2999d2ff88a8fcb4a388597a73752320ceb5d26ac42bc4f509738513b8c91","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5bb2999d2ff88a8fcb4a388597a73752320ceb5d26ac42bc4f509738513b8c91","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TrustAssumption.Variant5bb2999d2ff88a8fcb4a388597a73752320ceb5d26ac42bc4f509738513b8c91","mathematical_subject":"Computation.DataStructures","original_sha256":"5bb2999d2ff88a8fcb4a388597a73752320ceb5d26ac42bc4f509738513b8c91","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Extractor/Trust.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Extractor.Dependency

/-!
# Explicit trust and axiom closure
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TrustAssumption.Variant5bb2999d2ff88a8fcb4a388597a73752320ceb5d26ac42bc4f509738513b8c91

namespace MathDiscovery.Extractor

open MathDiscovery

structure TrustAssumption where
  declaration : Lean.Name
  kind : TrustAssumptionKind
  authority : ExtractionAuthority
  deriving DecidableEq, Repr, Inhabited

structure TrustClosure where
  closureId : TrustClosureId
  declarationId : DeclarationId
  declaration : Lean.Name
  assumptions : Array TrustAssumption
  unsafeDependencies : Array Lean.Name
  partialDependencies : Array Lean.Name
  unresolvedDependencies : Array Lean.Name
  closureDigest : Digest
  deriving DecidableEq, Repr, Inhabited

namespace TrustClosure

/-- A closure with no unresolved dependencies is exact relative to its policy. -/
def Resolved (closure : TrustClosure) : Prop :=
  closure.unresolvedDependencies.isEmpty = true

end TrustClosure

end MathDiscovery.Extractor
```
