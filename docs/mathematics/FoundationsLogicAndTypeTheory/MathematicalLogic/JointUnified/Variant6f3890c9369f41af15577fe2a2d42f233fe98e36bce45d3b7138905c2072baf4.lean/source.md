# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.JointUnified.Variant6f3890c9369f41af15577fe2a2d42f233fe98e36bce45d3b7138905c2072baf4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1469553e457b3be8c382aebe3d8080a391efb443` · SHA-256 `49127369256f640f56ddb6ac24c2973c3558d73b3d3dd8036c837e38aac54a32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.JointCutBinding.Variant690fb391c7602741cbb919dbb79efdf45e353ab880ab749e2360b1f0c0fccb20","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"690fb391c7602741cbb919dbb79efdf45e353ab880ab749e2360b1f0c0fccb20","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.JointCutBinding.Variant690fb391c7602741cbb919dbb79efdf45e353ab880ab749e2360b1f0c0fccb20","mathematical_subject":"Logic.Foundations","original_sha256":"690fb391c7602741cbb919dbb79efdf45e353ab880ab749e2360b1f0c0fccb20","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/JointUnified.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.JointFocus
import Mathematics.AbelReynolds.Unified

/-!
# Total joint tensor--Abel--Reynolds resolver

The finite resolver keeps the arithmetic candidate, semantic candidate, and
bridge certificate separately typed.  A positive constructor contains all
three; every incomplete combination remains a conservative `Unknown` with
its already certified partial candidates intact.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.JointCutBinding.Variant690fb391c7602741cbb919dbb79efdf45e353ab880ab749e2360b1f0c0fccb20

namespace Mathematics.AbelReynolds

open Mathematics.TensorNetwork

universe u v

structure JointCutBinding where
  cutDigest : String
  snapshotDigest : String
  contextDigest : String
  seaCut : UnifiedCutBinding
  semanticCutDigest : String
  bridgeCutDigest : String
  runtimeCutDigest : String
  deriving DecidableEq, Repr

structure JointCandidate
    (cut : JointCutBinding)
    (Context : Type u) (N D : Nat) where
  sea : UnifiedCandidate cut.seaCut
  semantic : SemanticRecoveryCandidate Context N D
  bridge : SEAContextBridgeCertificate sea semantic
  cost : ExactJointCost
  replayDigest : String
  expectedReplayDigest : String
  replayExact : replayDigest = expectedReplayDigest

def CertifiedJointTensorAbelReynoldsSEAReuse
    {cut : JointCutBinding}
    (candidate : JointCandidate cut Context N D) : Prop :=
  CertifiedSymmetryFixedTallyLiftedSEAReuse
      cut.seaCut candidate.sea.payload ∧
  CertifiedSemanticTensorContinuity candidate.semantic ∧
  CertifiedSEAContextBridge candidate.bridge ∧
  candidate.cost.seaCostDigest ≠ "" ∧
  candidate.cost.semanticCostDigest ≠ "" ∧
  candidate.cost.bridgeCostDigest ≠ "" ∧
  candidate.cost.commitCostDigest ≠ "" ∧
  candidate.replayDigest = candidate.expectedReplayDigest

theorem JointCandidate.certified
    {cut : JointCutBinding}
    (candidate : JointCandidate cut Context N D) :
    CertifiedJointTensorAbelReynoldsSEAReuse candidate :=
  ⟨candidate.sea.certificate,
    candidate.semantic.certified,
    candidate.bridge.certified,
    candidate.cost.seaCostCertified,
    candidate.cost.semanticCostCertified,
    candidate.cost.bridgeCostCertified,
    candidate.cost.commitCostCertified,
    candidate.replayExact⟩

structure JointPartialCandidates
    (cut : JointCutBinding)
    (Context : Type u) (N D : Nat) where
  sea : Option (UnifiedCandidate cut.seaCut)
  semantic : Option (SemanticRecoveryCandidate Context N D)
  bridgeDigest : Option String

structure JointResolverProfile
    (cut : JointCutBinding)
    (Context : Type u) (N D : Nat)
    (Packet : Type v) where
  Valid : Prop
  decidableValid : Decidable Valid
  AuthorityClosed : Prop
  decidableAuthorityClosed : Decidable AuthorityClosed
  seaCandidate : Option (UnifiedCandidate cut.seaCut)
  semanticCandidate : Option (SemanticRecoveryCandidate Context N D)
  bridgeCandidate :
    ∀ (sea : UnifiedCandidate cut.seaCut)
      (semantic : SemanticRecoveryCandidate Context N D),
      Option
        (SEAContextBridgeCertificate
          (cut := cut.seaCut) sea semantic)
  cost : ExactJointCost
  replayDigest : String
  expectedReplayDigest : String
  replayExact : replayDigest = expectedReplayDigest
  packet : JointUnknownKind → Packet
  semanticMissingKind : JointUnknownKind
  rejectionReason : String

inductive JointResolution
    {cut : JointCutBinding}
    (profile : JointResolverProfile cut Context N D Packet)
  | solved
      (valid : profile.Valid)
      (authorityClosed : profile.AuthorityClosed)
      (candidate : JointCandidate cut Context N D)
  | unknown
      (valid : profile.Valid)
      (kind : JointUnknownKind)
      (packet : Packet)
      (partialCandidates : JointPartialCandidates cut Context N D)
  | rejected
      (reason : String)
      (invalid : ¬ profile.Valid)

def JointResolution.IsPositive :
    JointResolution profile → Prop
  | .solved _ _ _ => True
  | .unknown _ _ _ _ => False
  | .rejected _ _ => False

def jointResolve
    {cut : JointCutBinding}
    (profile : JointResolverProfile cut Context N D Packet) :
    JointResolution profile :=
  letI : Decidable profile.Valid := profile.decidableValid
  letI : Decidable profile.AuthorityClosed :=
    profile.decidableAuthorityClosed
  if valid : profile.Valid then
    if authorityClosed : profile.AuthorityClosed then
      match profile.seaCandidate with
      | none =>
          .unknown valid .seaEvidenceBoundary
            (profile.packet .seaEvidenceBoundary)
            ⟨none, profile.semanticCandidate, none⟩
      | some seaCandidate =>
          match profile.semanticCandidate with
          | none =>
              .unknown valid profile.semanticMissingKind
                (profile.packet profile.semanticMissingKind)
                ⟨some seaCandidate, none, none⟩
          | some semanticCandidate =>
              match
                  profile.bridgeCandidate seaCandidate semanticCandidate with
              | none =>
                  .unknown valid .bridgeBoundary
                    (profile.packet .bridgeBoundary)
                    ⟨some seaCandidate, some semanticCandidate, none⟩
              | some bridgeCertificate =>
                  .solved valid authorityClosed
                    ⟨seaCandidate, semanticCandidate,
                      bridgeCertificate, profile.cost,
                      profile.replayDigest,
                      profile.expectedReplayDigest,
                      profile.replayExact⟩
    else
      .unknown valid .authorityBoundary
        (profile.packet .authorityBoundary)
        ⟨none, none, none⟩
  else
    .rejected profile.rejectionReason valid

theorem jointResolve_total
    {cut : JointCutBinding}
    (profile : JointResolverProfile cut Context N D Packet) :
    ∃ result, result = jointResolve profile :=
  ⟨jointResolve profile, rfl⟩

theorem joint_solved_sound
    {cut : JointCutBinding}
    {profile : JointResolverProfile cut Context N D Packet}
    (result : JointResolution profile)
    (positive : result.IsPositive) :
    ∃ candidate : JointCandidate cut Context N D,
      CertifiedJointTensorAbelReynoldsSEAReuse candidate := by
  cases result with
  | solved _ _ candidate =>
      exact ⟨candidate, candidate.certified⟩
  | unknown =>
      exact positive.elim
  | rejected =>
      exact positive.elim

theorem joint_solved_projects_to_sea
    {cut : JointCutBinding}
    (candidate : JointCandidate cut Context N D) :
    CertifiedSymmetryFixedTallyLiftedSEAReuse
      cut.seaCut candidate.sea.payload :=
  candidate.sea.certificate

theorem joint_solved_projects_to_semantic
    {cut : JointCutBinding}
    (candidate : JointCandidate cut Context N D) :
    CertifiedSemanticTensorContinuity candidate.semantic :=
  candidate.semantic.certified

end Mathematics.AbelReynolds
```
