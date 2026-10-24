# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Observation.Variant595e24b7640562452951ea271e2bf6d6b2694b8951fbb8495950491b88dc9ebe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b59870d012821e699c0585cbef7b023f592f986` · SHA-256 `ea5bf9a137869c53106c3992b0264c3b58b9918b73a68f138e988928f43aa3bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MotifAuthority.Variant92163677934d6d681e36c20ef4909ef696f1d9f7b1a38d8efffa12c57f502882","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92163677934d6d681e36c20ef4909ef696f1d9f7b1a38d8efffa12c57f502882","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MotifAuthority.Variant92163677934d6d681e36c20ef4909ef696f1d9f7b1a38d8efffa12c57f502882","mathematical_subject":"Computation.DataStructures","original_sha256":"92163677934d6d681e36c20ef4909ef696f1d9f7b1a38d8efffa12c57f502882","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/ProofStrategy/Observation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.ProofStrategy.Kind
import MathDiscovery.Extractor.Schema

/-! # Exact structural proof observations -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MotifAuthority.Variant92163677934d6d681e36c20ef4909ef696f1d9f7b1a38d8efffa12c57f502882

namespace MathDiscovery.ProofStrategy

open MathDiscovery MathDiscovery.Extractor

inductive MotifAuthority
  | compiledProofTerm
  | elaboratorInformationTree
  | sourceAnnotation
  deriving DecidableEq, Inhabited

structure MotifObservation where
  id : ProofObservationId
  theoremId : DeclarationId
  motifId : ProofMotifId
  proofPath : List Nat
  witnessConstants : List Lean.Name
  dependencies : List DependencyEdgeId
  authority : MotifAuthority
  proofDigest : Digest
  digest : Digest
  deriving DecidableEq

namespace MotifObservation

def Valid (observation : MotifObservation) : Prop :=
  observation.id.Valid ∧
  observation.theoremId.Valid ∧
  observation.motifId.Valid ∧
  observation.witnessConstants.Nodup ∧
  observation.dependencies.Nodup ∧
  (∀ dependency ∈ observation.dependencies, dependency.Valid) ∧
  observation.proofDigest.Valid ∧
  observation.digest.Valid

end MotifObservation

end MathDiscovery.ProofStrategy
```
