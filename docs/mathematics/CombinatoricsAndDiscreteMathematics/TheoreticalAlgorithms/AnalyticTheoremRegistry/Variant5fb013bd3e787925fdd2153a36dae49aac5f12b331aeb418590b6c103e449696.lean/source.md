# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AnalyticTheoremRegistry.Variant5fb013bd3e787925fdd2153a36dae49aac5f12b331aeb418590b6c103e449696

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6b7249dfec0691d97b3c98464306e8e12ef0208` · SHA-256 `9da58f2c61c45e5cf57df6c719ab5c7d7187eb569537898b1d0c6c6a3006b9dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AnalyticTheoremRole.Variantb1e690c99f5016d7058c9bf944b95dc3379c163af78e7184e32db347dcc3dd45","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1e690c99f5016d7058c9bf944b95dc3379c163af78e7184e32db347dcc3dd45","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AnalyticTheoremRole.Variantb1e690c99f5016d7058c9bf944b95dc3379c163af78e7184e32db347dcc3dd45","mathematical_subject":"Computation.DataStructures","original_sha256":"b1e690c99f5016d7058c9bf944b95dc3379c163af78e7184e32db347dcc3dd45","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/AnalyticTheoremRegistry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Manifest
import Surface.ContinuousAssurance.InvolutiveRelaxation
import Surface.ContinuousAssurance.PositiveQuantization
import Surface.ContinuousAssurance.ProgressiveEvidence

/-!
# Registered analytic theorem capabilities

The registry records exact theorem identities, statement digests, adapter
versions, roles, assumptions, and authority.  Membership is descriptive: it
does not manufacture a proof or strengthen the recorded authority.  In
particular, an external analytic result can justify a formal safe exclusion
only through an explicit `CertifiedBridge` for the exact objective-relative
proposition.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AnalyticTheoremRole.Variantb1e690c99f5016d7058c9bf944b95dc3379c163af78e7184e32db347dcc3dd45

universe u v

namespace Surface.ContinuousAssurance

/-- Roles are independent capabilities; no role is inferred from another. -/
inductive AnalyticTheoremRole
  | diffusionGenerator
  | safeExclusion
  | requiredAttention
  | stoppingCriterion
  | faceCompatibility
  | refinementCompatibility
  | approximationBound
  | annotationOnly
  deriving DecidableEq, Repr

/-- Exact, versioned identity of one theorem adapter. -/
structure AnalyticTheoremPin where
  identity : ArtifactIdentity
  statementDigest : EvidenceDigest
  adapterVersion : DAF.Version
  role : AnalyticTheoremRole
  sourceAuthority : AuthorityClass
  checkerEvidence : List ArtifactIdentity
  assumptions : List ArtifactIdentity
  deriving DecidableEq, Repr

/-- A finite registry with unique exact pins. -/
structure AnalyticTheoremRegistry where
  identity : ArtifactIdentity
  digest : EvidenceDigest
  entries : List AnalyticTheoremPin
  entries_nodup : entries.Nodup
  identities_nodup : (entries.map AnalyticTheoremPin.identity).Nodup

namespace AnalyticTheoremRegistry

/-- Resolution means exact structural membership, not display-name matching. -/
def Resolves
    (registry : AnalyticTheoremRegistry)
    (pin : AnalyticTheoremPin) : Prop :=
  pin ∈ registry.entries

instance (registry : AnalyticTheoremRegistry) (pin : AnalyticTheoremPin) :
    Decidable (registry.Resolves pin) := by
  unfold Resolves
  infer_instance

/-- A resolved exact pin occurs only once. -/
theorem resolves_uniquely
    (registry : AnalyticTheoremRegistry)
    {pin : AnalyticTheoremPin}
    (resolved : registry.Resolves pin) :
    ∃! entry : AnalyticTheoremPin,
      entry ∈ registry.entries ∧ entry = pin := by
  refine ⟨pin, ⟨resolved, rfl⟩, ?_⟩
  intro entry hentry
  exact hentry.2

/-- A registered theorem identity selects one exact version/digest/role pin. -/
theorem identity_resolves_uniquely
    (registry : AnalyticTheoremRegistry)
    {first second : AnalyticTheoremPin}
    (firstMember : first ∈ registry.entries)
    (secondMember : second ∈ registry.entries)
    (sameIdentity : first.identity = second.identity) :
    first = second := by
  by_contra distinct
  exact distinct
    (List.inj_on_of_nodup_map registry.identities_nodup
      firstMember secondMember sameIdentity)

/-- Resolution preserves the authority carried by the pinned entry. -/
theorem resolved_authority
    (registry : AnalyticTheoremRegistry)
    {pin : AnalyticTheoremPin}
    (resolved : registry.Resolves pin) :
    ∃ entry ∈ registry.entries,
      entry = pin ∧ entry.sourceAuthority = pin.sourceAuthority :=
  ⟨pin, resolved, rfl, rfl⟩

end AnalyticTheoremRegistry

/-- A registered positive linear diffusion capability. -/
structure RegisteredAnalyticDiffusionTheorem
    (State : Type u)
    [AddCommMonoid State]
    [Module ℝ State]
    (cone : PositiveCone State) where
  pin : AnalyticTheoremPin
  role_is_diffusion : pin.role = .diffusionGenerator
  operator : State →ₗ[ℝ] State
  preservesPositivity : PositivityPreserving cone operator
  assumptionsSatisfied : Prop
  theoremWitness : assumptionsSatisfied
  sourceEvidence : ProgressiveEvidence
  evidenceAuthority_matches : sourceEvidence.authority = pin.sourceAuthority

/--
Specialized adapter for the configured positive involutive relaxation theorem.
The registered operator is definitionally tied by proof to the certified
involution and exact admissible relaxation weight.
-/
structure RegisteredPositiveInvolutiveRelaxationTheorem
    (State : Type u)
    [AddCommMonoid State]
    [Module ℝ State]
    (cone : PositiveCone State) where
  registered : RegisteredAnalyticDiffusionTheorem State cone
  involution : PositiveLinearInvolution State cone
  weight : RelaxationWeight
  operator_is_relaxation :
    registered.operator = involution.relax weight

/-- The objective fixes the precise meaning of safe exclusion. -/
structure SurgicalObjective
    (State : Type u)
    (Site : Type v) where
  identity : ArtifactIdentity
  requiresModification : State → Site → Prop
  affectedClaims : Site → List ArtifactIdentity

/-- Conservative, objective-relative result of one analytic adapter. -/
inductive AnalyticSiteAssessment
    {State : Type u}
    {Site : Type v}
    (objective : SurgicalObjective State Site)
    (state : State)
    (site : Site) : Type (max u v)
  | safeToExclude
      (proof : ¬ objective.requiresModification state site)
  | requiresAttention
      (reason : ArtifactIdentity)
  | undecided
  | blocked
      (obligation : ArtifactIdentity)

/--
An external result may cross the theorem boundary only through the already
existing certified bridge type, instantiated at the exact site proposition.
-/
structure ExternalSafeExclusionBridge
    {State : Type u}
    {Site : Type v}
    (objective : SurgicalObjective State Site)
    (state : State)
    (site : Site) : Type (max u v) where
  evidence : ExternalEvidence
  bridge : CertifiedBridge evidence.attestation
    (¬ objective.requiresModification state site)

/-- Exact authorities that can accompany a formal safe-exclusion result. -/
def SafeExclusionAuthority
    {State : Type u}
    {Site : Type v}
    (pin : AnalyticTheoremPin)
    (objective : SurgicalObjective State Site)
    (state : State)
    (site : Site) : Prop :=
  pin.sourceAuthority = .kernelTrustedBase ∨
    pin.sourceAuthority = .certifiedSource ∨
    (pin.sourceAuthority = .externalCapability ∧
      Nonempty (ExternalSafeExclusionBridge objective state site))

/-- A theorem adapter whose output is constrained by its declared role. -/
structure RegisteredAnalyticSiteTheorem
    (State : Type u)
    (Site : Type v)
    (objective : SurgicalObjective State Site) where
  pin : AnalyticTheoremPin
  assess : (state : State) → (site : Site) →
    AnalyticSiteAssessment objective state site
  assumptionsSatisfied : Prop
  sourceEvidence : ProgressiveEvidence
  evidenceAuthority_matches : sourceEvidence.authority = pin.sourceAuthority
  safe_result_has_safe_role :
    ∀ (state : State) (site : Site)
      (proof : ¬ objective.requiresModification state site),
      assess state site = .safeToExclude proof →
        pin.role = .safeExclusion
  safe_result_has_discharged_assumptions :
    ∀ (state : State) (site : Site)
      (proof : ¬ objective.requiresModification state site),
      assess state site = .safeToExclude proof →
        assumptionsSatisfied
  attention_result_has_attention_role :
    ∀ (state : State) (site : Site) (reason : ArtifactIdentity),
      assess state site = .requiresAttention reason →
        pin.role = .requiredAttention
  attention_result_has_discharged_assumptions :
    ∀ (state : State) (site : Site) (reason : ArtifactIdentity),
      assess state site = .requiresAttention reason →
        assumptionsSatisfied
  safe_result_has_authority :
    ∀ (state : State) (site : Site)
      (proof : ¬ objective.requiresModification state site),
      assess state site = .safeToExclude proof →
        SafeExclusionAuthority pin objective state site

/-- Registry membership leaves the declared theorem authority unchanged. -/
theorem registry_membership_does_not_create_theorem_authority
    (registry : AnalyticTheoremRegistry)
    {pin : AnalyticTheoremPin}
    (resolved : registry.Resolves pin) :
    ∃ entry ∈ registry.entries,
      entry.sourceAuthority = pin.sourceAuthority := by
  obtain ⟨entry, member, equal, authority⟩ :=
    registry.resolved_authority resolved
  exact ⟨entry, member, authority⟩

/-- An unbridged external result cannot emit a formal safe exclusion. -/
theorem external_theorem_cannot_certify_safe_exclusion
    {State : Type u}
    {Site : Type v}
    {objective : SurgicalObjective State Site}
    (theoremAdapter : RegisteredAnalyticSiteTheorem State Site objective)
    (state : State)
    (site : Site)
    (externalAuthority :
      theoremAdapter.pin.sourceAuthority = .externalCapability)
    (noBridge :
      ¬ Nonempty (ExternalSafeExclusionBridge objective state site)) :
    ¬ ∃ proof : ¬ objective.requiresModification state site,
      theoremAdapter.assess state site = .safeToExclude proof := by
  rintro ⟨proof, assessment⟩
  rcases theoremAdapter.safe_result_has_authority
      state site proof assessment with
    kernel | certified | bridged
  · exact AuthorityClass.noConfusion (kernel.symm.trans externalAuthority)
  · exact AuthorityClass.noConfusion (certified.symm.trans externalAuthority)
  · exact noBridge bridged.2

/-- Declarative policy metadata can never authorize a formal exclusion. -/
theorem declarative_artifact_cannot_certify_safe_exclusion
    {State : Type u}
    {Site : Type v}
    {objective : SurgicalObjective State Site}
    (theoremAdapter : RegisteredAnalyticSiteTheorem State Site objective)
    (state : State)
    (site : Site)
    (declarativeAuthority :
      theoremAdapter.pin.sourceAuthority = .declarativeArtifact) :
    ¬ ∃ proof : ¬ objective.requiresModification state site,
      theoremAdapter.assess state site = .safeToExclude proof := by
  rintro ⟨proof, assessment⟩
  rcases theoremAdapter.safe_result_has_authority
      state site proof assessment with
    kernel | certified | bridged
  · exact AuthorityClass.noConfusion (kernel.symm.trans declarativeAuthority)
  · exact AuthorityClass.noConfusion (certified.symm.trans declarativeAuthority)
  · exact AuthorityClass.noConfusion
      (bridged.1.symm.trans declarativeAuthority)

end Surface.ContinuousAssurance
```
