# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CohomologyDirectedQuantization.Variant10e4994870144145d31ab426400266153e9009c04a47fa991919debfca9fe34b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4917f3648f42fa8c4d1b4342d84dfd9668e59839` · SHA-256 `10e4994870144145d31ab426400266153e9009c04a47fa991919debfca9fe34b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.AnalyticTheoremRegistry
import Surface.ContinuousAssurance.CubicalQuantization

/-!
# Cohomology-directed cubical attention

This optional capability records a genuine finite cubical cochain complex: the
coboundary is typed degree by degree and its square is zero.  A chosen cocycle
may direct attention only to cells in its declared support.

Support is an attention mechanism, not theorem authority.  Selecting a cell
does not prove any affected claim, authorize a change, or construct a certified
bridge.  Conversely, absence from a cocycle's support is only `unresolved` by
default.  Safe exclusion requires a separate support-completeness theorem
showing that every site requiring modification occurs in the support.
-/

universe u

namespace Surface.ContinuousAssurance

/-- A finite cubical cochain capability with an explicit `d ∘ d = 0` law. -/
structure CubicalCochainTheory
    (decomposition : FiniteCubicalDecomposition) where
  Coefficients : Type u
  coefficientAddCommGroup : AddCommGroup Coefficients
  Cochain : Nat → Type u
  cochainAddCommGroup : ∀ k, AddCommGroup (Cochain k)
  coboundary : ∀ k, Cochain k → Cochain (k + 1)
  coboundary_squared_zero :
    ∀ k c,
      letI := cochainAddCommGroup (k + 2)
      coboundary (k + 1) (coboundary k c) = 0
  support :
    ∀ {k},
      Cochain k → Set (decomposition.Cell k)

namespace CubicalCochainTheory

variable
    {decomposition : FiniteCubicalDecomposition}
    (theory : CubicalCochainTheory decomposition)

local instance instCochainAddCommGroupLocal (k : Nat) :
    AddCommGroup (theory.Cochain k) :=
  theory.cochainAddCommGroup k

/-- Public projection of the checked cubical cochain law. -/
theorem cubical_coboundary_squared_zero
    (k : Nat)
    (cochain : theory.Cochain k) :
    theory.coboundary (k + 1) (theory.coboundary k cochain) = 0 :=
  theory.coboundary_squared_zero k cochain

end CubicalCochainTheory

/-- The architectural meaning assigned to one obstruction cocycle. -/
inductive CohomologyObstructionMeaning
  | faceCompatibilityFailure
  | extensionFailure
  | missingRefinementBridge
  | provenanceDiscontinuity
  | authorityBoundaryMismatch
  | unresolvedDependencyCycle
  deriving DecidableEq, Repr

/--
A theorem-directed policy identifies a cocycle and a Boolean attention selector
whose positive selections are proved to lie in that cocycle's support.
-/
structure CohomologyDirectedCubicalPolicy
    (decomposition : FiniteCubicalDecomposition)
    (theory : CubicalCochainTheory decomposition) where
  degree : Nat
  obstruction : theory.Cochain degree
  cocycle :
    letI := theory.cochainAddCommGroup (degree + 1)
    theory.coboundary degree obstruction = 0
  meaning : CohomologyObstructionMeaning
  select : decomposition.Cell degree → Bool
  selectionWithinSupport :
    ∀ cell,
      select cell = true →
      cell ∈ theory.support obstruction
  supportingEvidence : List ArtifactIdentity
  sourceEvidence : ProgressiveEvidence

/-- Possible site assessments; the default policy emits only the first two. -/
inductive CohomologySiteAssessment
  | requiresAttention
  | unresolved
  | safeToExclude
  deriving DecidableEq, Repr

/--
The output of cohomological attention contains metadata and an unchanged claim
status.  It deliberately has no theorem certificate, bridge, review,
authorization, or accepted-source-change field.
-/
structure CohomologyAttentionResult where
  assessment : CohomologySiteAssessment
  claimStatus : ClaimStatus
  meaning : CohomologyObstructionMeaning
  supportingEvidence : List ArtifactIdentity
  affectedClaims : List ArtifactIdentity
  sourceEvidence : ProgressiveEvidence
  authority : AuthorityClass
  assuranceLevel : AssuranceLevel
  evidenceClass : EvidenceClass
  authority_eq_source : authority = sourceEvidence.authority
  assurance_eq_source : assuranceLevel = sourceEvidence.level
  evidenceClass_eq_source : evidenceClass = sourceEvidence.evidenceClass
  deriving DecidableEq, Repr

namespace CohomologyDirectedCubicalPolicy

variable
    {decomposition : FiniteCubicalDecomposition}
    {theory : CubicalCochainTheory decomposition}
    (policy : CohomologyDirectedCubicalPolicy decomposition theory)

/-- Assess one cell without changing the supplied claim status. -/
def assess
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity := []) :
    CohomologyAttentionResult :=
  { assessment :=
      if policy.select cell then
        .requiresAttention
      else
        .unresolved
    claimStatus := status
    meaning := policy.meaning
    supportingEvidence := policy.supportingEvidence
    affectedClaims
    sourceEvidence := policy.sourceEvidence
    authority := policy.sourceEvidence.authority
    assuranceLevel := policy.sourceEvidence.level
    evidenceClass := policy.sourceEvidence.evidenceClass
    authority_eq_source := rfl
    assurance_eq_source := rfl
    evidenceClass_eq_source := rfl }

/-- Every selected cell belongs to the actual obstruction support. -/
theorem cohomology_selection_within_support
    (cell : decomposition.Cell policy.degree)
    (selected : policy.select cell = true) :
    cell ∈ theory.support policy.obstruction :=
  policy.selectionWithinSupport cell selected

/-- A selected cell receives `requiresAttention`. -/
theorem selected_requires_attention
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity)
    (selected : policy.select cell = true) :
    (policy.assess cell status affectedClaims).assessment =
      .requiresAttention := by
  simp [assess, selected]

/--
Attention selection leaves the affected claim's status unchanged; in
particular it does not prove or promote the affected claim.
-/
theorem cohomology_selection_does_not_prove_affected_claim
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity) :
    (policy.assess cell status affectedClaims).claimStatus = status :=
  rfl

/-- Cohomological selection never changes claim classification. -/
theorem cohomology_selection_does_not_change_claim_status
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity) :
    (policy.assess cell status affectedClaims).claimStatus = status :=
  rfl

/-- Cohomological attention cannot strengthen the source authority. -/
theorem attention_authority_eq_source
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity) :
    (policy.assess cell status affectedClaims).authority =
      policy.sourceEvidence.authority :=
  rfl

/-- Cohomological attention cannot advance the source assurance level. -/
theorem attention_assurance_eq_source
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity) :
    (policy.assess cell status affectedClaims).assuranceLevel =
      policy.sourceEvidence.level :=
  rfl

/-- Cohomological attention cannot promote the source evidence class. -/
theorem attention_evidenceClass_eq_source
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity) :
    (policy.assess cell status affectedClaims).evidenceClass =
      policy.sourceEvidence.evidenceClass :=
  rfl

/--
Without a separate completeness theorem, absence from support produces an
unresolved assessment and cannot be interpreted as safe exclusion.
-/
theorem cohomology_absence_does_not_imply_safe_exclusion
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity)
    (notSelected : policy.select cell = false) :
    (policy.assess cell status affectedClaims).assessment ≠
      .safeToExclude := by
  simp [assess, notSelected]

/-- Absence from the selection is represented explicitly as unresolved. -/
theorem unselected_is_unresolved
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity)
    (notSelected : policy.select cell = false) :
    (policy.assess cell status affectedClaims).assessment =
      .unresolved := by
  simp [assess, notSelected]

end CohomologyDirectedCubicalPolicy

namespace CohomologyDirectedCubicalPolicy

variable
    {decomposition : FiniteCubicalDecomposition}
    {theory : CubicalCochainTheory decomposition}
    (policy : CohomologyDirectedCubicalPolicy decomposition theory)

/--
Translate the Boolean cohomology selector into the exact dependent assessment
used by reductive selection.  Selected cells require attention; unselected
cells remain undecided.  No branch can produce `safeToExclude`.
-/
def attentionAssessment
    {State : Type u}
    (objective : SurgicalObjective State (decomposition.Cell policy.degree))
    (reason : ArtifactIdentity)
    (state : State)
    (cell : decomposition.Cell policy.degree) :
    AnalyticSiteAssessment objective state cell :=
  if policy.select cell then
    .requiresAttention reason
  else
    .undecided

/--
A real adapter from cohomological attention into the registered analytic-site
interface.  Its required-attention role and evidence authority are explicit;
it cannot participate as a safe-exclusion theorem.
-/
def toRegisteredAnalyticAttentionTheorem
    {State : Type u}
    (objective : SurgicalObjective State (decomposition.Cell policy.degree))
    (pin : AnalyticTheoremPin)
    (role : pin.role = .requiredAttention)
    (authorityExact : policy.sourceEvidence.authority = pin.sourceAuthority)
    (assumptionsSatisfied : Prop)
    (assumptionWitness : assumptionsSatisfied)
    (reason : ArtifactIdentity) :
    RegisteredAnalyticSiteTheorem
      State (decomposition.Cell policy.degree) objective where
  pin := pin
  assess := policy.attentionAssessment objective reason
  assumptionsSatisfied := assumptionsSatisfied
  sourceEvidence := policy.sourceEvidence
  evidenceAuthority_matches := authorityExact
  safe_result_has_safe_role := by
    intro state cell proof assessment
    by_cases selected : policy.select cell = true
    · simp [attentionAssessment, selected] at assessment
    · have unselected : policy.select cell = false :=
        Bool.eq_false_of_not_eq_true selected
      simp [attentionAssessment, unselected] at assessment
  safe_result_has_discharged_assumptions := by
    intro _state _cell _proof _assessment
    exact assumptionWitness
  attention_result_has_attention_role := by
    intro _state _cell _reportedReason _assessment
    exact role
  attention_result_has_discharged_assumptions := by
    intro _state _cell _reportedReason _assessment
    exact assumptionWitness
  safe_result_has_authority := by
    intro state cell proof assessment
    by_cases selected : policy.select cell = true
    · simp [attentionAssessment, selected] at assessment
    · have unselected : policy.select cell = false :=
        Bool.eq_false_of_not_eq_true selected
      simp [attentionAssessment, unselected] at assessment

@[simp]
theorem attentionAdapter_selected
    {State : Type u}
    (objective : SurgicalObjective State (decomposition.Cell policy.degree))
    (pin : AnalyticTheoremPin)
    (role : pin.role = .requiredAttention)
    (authorityExact : policy.sourceEvidence.authority = pin.sourceAuthority)
    (assumptionsSatisfied : Prop)
    (assumptionWitness : assumptionsSatisfied)
    (reason : ArtifactIdentity)
    (state : State)
    (cell : decomposition.Cell policy.degree)
    (selected : policy.select cell = true) :
    (policy.toRegisteredAnalyticAttentionTheorem
      objective pin role authorityExact assumptionsSatisfied assumptionWitness
        reason).assess state cell =
        .requiresAttention reason := by
  simp [toRegisteredAnalyticAttentionTheorem, attentionAssessment, selected]

/-- The cohomology adapter has no safe-exclusion branch. -/
theorem attentionAdapter_ne_safeToExclude
    {State : Type u}
    (objective : SurgicalObjective State (decomposition.Cell policy.degree))
    (pin : AnalyticTheoremPin)
    (role : pin.role = .requiredAttention)
    (authorityExact : policy.sourceEvidence.authority = pin.sourceAuthority)
    (assumptionsSatisfied : Prop)
    (assumptionWitness : assumptionsSatisfied)
    (reason : ArtifactIdentity)
    (state : State)
    (cell : decomposition.Cell policy.degree) :
    ¬ ∃ proof : ¬ objective.requiresModification state cell,
      (policy.toRegisteredAnalyticAttentionTheorem
        objective pin role authorityExact assumptionsSatisfied assumptionWitness
          reason).assess state cell =
          .safeToExclude proof := by
  rintro ⟨proof, assessment⟩
  by_cases selected : policy.select cell = true
  · simp [toRegisteredAnalyticAttentionTheorem, attentionAssessment, selected]
      at assessment
  · have unselected : policy.select cell = false :=
      Bool.eq_false_of_not_eq_true selected
    simp [toRegisteredAnalyticAttentionTheorem, attentionAssessment, unselected]
      at assessment

end CohomologyDirectedCubicalPolicy

/--
The extra theorem needed before absence from support can justify exclusion.
This capability is intentionally separate from the basic attention policy.
-/
structure CohomologySupportCompleteness
    {decomposition : FiniteCubicalDecomposition}
    {theory : CubicalCochainTheory decomposition}
    (policy : CohomologyDirectedCubicalPolicy decomposition theory) where
  requiresModification : decomposition.Cell policy.degree → Prop
  required_is_supported :
    ∀ cell,
      requiresModification cell →
      cell ∈ theory.support policy.obstruction

/-- Public capability-audit name for the checked `d² = 0` law. -/
theorem cubical_coboundary_squared_zero
    {decomposition : FiniteCubicalDecomposition}
    (theory : CubicalCochainTheory decomposition)
    (k : Nat)
    (cochain : theory.Cochain k) :
    letI := theory.cochainAddCommGroup (k + 2)
    theory.coboundary (k + 1) (theory.coboundary k cochain) = 0 :=
  theory.cubical_coboundary_squared_zero k cochain

/-- Public capability-audit name for support-bounded selection. -/
theorem cohomology_selection_within_support
    {decomposition : FiniteCubicalDecomposition}
    {theory : CubicalCochainTheory decomposition}
    (policy : CohomologyDirectedCubicalPolicy decomposition theory)
    (cell : decomposition.Cell policy.degree)
    (selected : policy.select cell = true) :
    cell ∈ theory.support policy.obstruction :=
  policy.cohomology_selection_within_support cell selected

/-- Public capability-audit name for claim-status nonpromotion. -/
theorem cohomology_selection_does_not_prove_affected_claim
    {decomposition : FiniteCubicalDecomposition}
    {theory : CubicalCochainTheory decomposition}
    (policy : CohomologyDirectedCubicalPolicy decomposition theory)
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity) :
    (policy.assess cell status affectedClaims).claimStatus = status :=
  policy.cohomology_selection_does_not_prove_affected_claim
    cell status affectedClaims

/-- Public capability-audit name for classification nonpromotion. -/
theorem cohomology_selection_does_not_change_claim_status
    {decomposition : FiniteCubicalDecomposition}
    {theory : CubicalCochainTheory decomposition}
    (policy : CohomologyDirectedCubicalPolicy decomposition theory)
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity) :
    (policy.assess cell status affectedClaims).claimStatus = status :=
  policy.cohomology_selection_does_not_change_claim_status
    cell status affectedClaims

/-- Public nonpromotion theorem for cohomological attention authority. -/
theorem cohomology_attention_authority_eq_source
    {decomposition : FiniteCubicalDecomposition}
    {theory : CubicalCochainTheory decomposition}
    (policy : CohomologyDirectedCubicalPolicy decomposition theory)
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity) :
    (policy.assess cell status affectedClaims).authority =
      policy.sourceEvidence.authority :=
  policy.attention_authority_eq_source cell status affectedClaims

/-- Public nonpromotion theorem for cohomological attention assurance. -/
theorem cohomology_attention_assurance_eq_source
    {decomposition : FiniteCubicalDecomposition}
    {theory : CubicalCochainTheory decomposition}
    (policy : CohomologyDirectedCubicalPolicy decomposition theory)
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity) :
    (policy.assess cell status affectedClaims).assuranceLevel =
      policy.sourceEvidence.level :=
  policy.attention_assurance_eq_source cell status affectedClaims

/-- Public nonpromotion theorem for cohomological attention evidence class. -/
theorem cohomology_attention_evidenceClass_eq_source
    {decomposition : FiniteCubicalDecomposition}
    {theory : CubicalCochainTheory decomposition}
    (policy : CohomologyDirectedCubicalPolicy decomposition theory)
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity) :
    (policy.assess cell status affectedClaims).evidenceClass =
      policy.sourceEvidence.evidenceClass :=
  policy.attention_evidenceClass_eq_source cell status affectedClaims

/-- Public capability-audit name for conservative support absence. -/
theorem cohomology_absence_does_not_imply_safe_exclusion
    {decomposition : FiniteCubicalDecomposition}
    {theory : CubicalCochainTheory decomposition}
    (policy : CohomologyDirectedCubicalPolicy decomposition theory)
    (cell : decomposition.Cell policy.degree)
    (status : ClaimStatus)
    (affectedClaims : List ArtifactIdentity)
    (notSelected : policy.select cell = false) :
    (policy.assess cell status affectedClaims).assessment ≠
      .safeToExclude :=
  policy.cohomology_absence_does_not_imply_safe_exclusion
    cell status affectedClaims notSelected

end Surface.ContinuousAssurance
```
