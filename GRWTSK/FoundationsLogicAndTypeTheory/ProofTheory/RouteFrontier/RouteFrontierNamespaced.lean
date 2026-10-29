-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.RemainderShape.Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.RemainderShape.Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82","mathematical_subject":"Logic.ProofTheory","original_sha256":"b25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ProofStrategy/RouteFrontier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ProofStrategy.FrontierAntichain
import Mathematics.ProofStrategy.WitnessDischarge

/-!
# Certified route-frontier fixed points

Raw frontier classification is representational only.  An authoritative
frontier is indexed by an active snapshot, records an exact optional
derivation for completion, and proves that every represented open leaf is
genuinely undischarged.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.RemainderShape.Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82

namespace Mathematics.ProofStrategy

open Mathematics.Projection

universe u v

inductive RemainderShape
    (Obligation : Type u)
    [DecidableEq Obligation]
  | noRoute
  | complete
  | open (frontiers : FrontierFamily Obligation)

/-- Pure classification only; authority is supplied by `CertifiedRouteFrontier`. -/
def classifyFrontier
    {Obligation : Type u}
    [DecidableEq Obligation]
    (family : FrontierFamily Obligation) :
    RemainderShape Obligation :=
  if family = frontierZero Obligation then
    .noRoute
  else if (∅ : Requirement Obligation) ∈ family then
    .complete
  else
    .open family

@[simp] theorem classifyFrontier_zero
    (Obligation : Type u)
    [DecidableEq Obligation] :
    classifyFrontier (frontierZero Obligation) = .noRoute := by
  simp [classifyFrontier]

@[simp] theorem classifyFrontier_one
    (Obligation : Type u)
    [DecidableEq Obligation] :
    classifyFrontier (frontierOne Obligation) = .complete := by
  simp [classifyFrontier, frontierOne, frontierZero]

structure CertifiedRouteFrontier
    (Obligation : Type u)
    (Certificate : Type v)
    [DecidableEq Obligation]
    (snapshot : ProjectionSnapshot)
    (Statement : Obligation → Prop)
    (Seeds : AcceptedSeedRegistry Obligation Statement)
    (Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop)
    (target : Obligation) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  family : FrontierFamily Obligation
  completion : Option (Derivation Statement Seeds Usable target)
  completion_exact :
    completion.isSome ↔ Discharged Statement Seeds Usable target
  complete_family_exact :
    completion.isSome ↔ family = frontierOne Obligation
  unresolved : Finset Obligation
  unresolved_exact :
    ∀ obligation, obligation ∈ unresolved ↔
      (∃ requirement ∈ family, obligation ∈ requirement) ∧
      ¬ Discharged Statement Seeds Usable obligation

namespace CertifiedRouteFrontier

/-- Any completion retained by a certified frontier proves its target. -/
theorem completion_proves
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {target : Obligation}
    (frontier :
      CertifiedRouteFrontier
        Obligation Certificate snapshot Statement Seeds Usable target)
    {derivation : Derivation Statement Seeds Usable target}
    (_retained : frontier.completion = some derivation) :
    Statement target :=
  derivation.proves

/-- A represented unresolved leaf cannot also possess a derivation. -/
theorem unresolved_not_discharged
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {target obligation : Obligation}
    (frontier :
      CertifiedRouteFrontier
        Obligation Certificate snapshot Statement Seeds Usable target)
    (member : obligation ∈ frontier.unresolved) :
    ¬ Discharged Statement Seeds Usable obligation :=
  (frontier.unresolved_exact obligation).mp member |>.2

end CertifiedRouteFrontier

structure LeastFrontierFixedPoint
    {State : Type u}
    (snapshot : ProjectionSnapshot)
    (step : State → State)
    (Below : State → State → Prop) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  value : State
  fixed : step value = value
  least :
    ∀ candidate, step candidate = candidate →
      Below value candidate

end Mathematics.ProofStrategy
