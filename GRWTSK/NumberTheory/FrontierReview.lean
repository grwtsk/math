import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.CategoryTheory.Yoneda
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

namespace URSM.Toy.Wrigley.FrontierReview

open CategoryTheory

universe u v

/-!
This file is an additive Phase 0 proof capsule for the sixteen defects recorded
in `docs/migration/frontier-formal-review-todos.md`. It deliberately separates
proved finite facts from propositions that remain theorem obligations.
-/

/-! ## General architecture corrections -/

structure LocalPartialTensor (C : Type u) where
  compatible : C → C → Prop
  tensor : {left right : C} → compatible left right → C
  unit : C

/-!
The installed formal environment does not yet build Mathlib's simplicial-set
modules. This is therefore a typed presentation boundary, not a replacement
for the eventual `SSet`/nerve construction. The identity laws remain an
explicit proposition until the formal environment admits that dependency.
-/
structure SimplicialPresentation where
  simplex : Nat → Type u
  face :
    {dimension : Nat} →
    Fin (dimension + 2) →
    simplex (dimension + 1) →
    simplex dimension
  degeneracy :
    {dimension : Nat} →
    Fin (dimension + 1) →
    simplex dimension →
    simplex (dimension + 1)
  simplicialIdentities : Prop

def SimplicialPresentation.IsCertified
    (presentation : SimplicialPresentation) : Prop :=
  presentation.simplicialIdentities

abbrev AdmittedNavigationFunctor
    (AdmittedNavigation : Type u)
    (Route : Type v)
    [Category AdmittedNavigation]
    [Category Route] :=
  AdmittedNavigation ⥤ Route

abbrev ContravariantYoneda
    (C : Type u)
    [Category.{v} C] :=
  yoneda (C := C)

def contravariantYonedaFullyFaithful
    (C : Type u)
    [Category.{v} C] :
    (ContravariantYoneda C).FullyFaithful :=
  Yoneda.fullyFaithful

inductive ProfileVariance
  | contravariant
  | covariant
  deriving DecidableEq, Repr

structure RepresentableProfileIndex where
  objectId : String
  variance : ProfileVariance
  probeSubcategoryId : String
  incomingMorphisms : List String
  outgoingMorphisms : List String
  identityWitnesses : List String
  compositionWitnesses : List String
  deriving DecidableEq, Repr

/-! ## Exact four-cycle action -/

inductive WrigleyStreetRoot
  | addison
  | clark
  | waveland
  | sheffield
  deriving DecidableEq, Repr, Fintype

def rootFinIndex : WrigleyStreetRoot ≃ Fin 4 where
  toFun
    | .addison => 0
    | .clark => 1
    | .waveland => 2
    | .sheffield => 3
  invFun index :=
    match index.val with
    | 0 => .addison
    | 1 => .clark
    | 2 => .waveland
    | _ => .sheffield
  left_inv root := by
    cases root <;> rfl
  right_inv index := by
    fin_cases index <;> rfl

def rootIndex : WrigleyStreetRoot ≃ ZMod 4 :=
  rootFinIndex.trans (ZMod.finEquiv 4).toEquiv

def rotate : WrigleyStreetRoot → WrigleyStreetRoot
  | .addison => .clark
  | .clark => .waveland
  | .waveland => .sheffield
  | .sheffield => .addison

def rotateBack : WrigleyStreetRoot → WrigleyStreetRoot
  | .addison => .sheffield
  | .clark => .addison
  | .waveland => .clark
  | .sheffield => .waveland

def rotationEquiv : WrigleyStreetRoot ≃ WrigleyStreetRoot where
  toFun := rotate
  invFun := rotateBack
  left_inv root := by
    cases root <;> rfl
  right_inv root := by
    cases root <;> rfl

theorem rotate_bijective : Function.Bijective rotate :=
  rotationEquiv.bijective

theorem rootIndex_rotate (root : WrigleyStreetRoot) :
    rootIndex (rotate root) = rootIndex root + 1 := by
  cases root <;> native_decide

theorem rotate_fourth_iterate :
    rotate^[4] = id := by
  funext root
  cases root <;> rfl

theorem rotate_first_iterate_not_identity :
    rotate^[1] ≠ id := by
  intro equality
  have witness := congrFun equality WrigleyStreetRoot.addison
  simp [rotate] at witness

theorem rotate_second_iterate_not_identity :
    rotate^[2] ≠ id := by
  intro equality
  have witness := congrFun equality WrigleyStreetRoot.addison
  simp [Function.iterate_succ_apply, rotate] at witness

theorem rotate_third_iterate_not_identity :
    rotate^[3] ≠ id := by
  intro equality
  have witness := congrFun equality WrigleyStreetRoot.addison
  simp [Function.iterate_succ_apply, rotate] at witness

def perimeterDistance
    (left right : WrigleyStreetRoot) : Nat :=
  let i := (rootFinIndex left).val
  let j := (rootFinIndex right).val
  min (i - j + (j - i)) (4 - (i - j + (j - i)))

abbrev cayleyCycleWordMetric :=
  perimeterDistance

theorem adjacent_rotation_has_unit_word_metric
    (root : WrigleyStreetRoot) :
    cayleyCycleWordMetric root (rotate root) = 1 := by
  cases root <;> native_decide

/-! ## Alias equivalence and its induced thin groupoid -/

structure StreetAlias where
  value : String
  root : WrigleyStreetRoot
  deriving DecidableEq, Repr

instance instSetoidStreetAlias : Setoid StreetAlias where
  r left right := left.root = right.root
  iseqv := {
    refl := fun _ => rfl
    symm := fun relation => relation.symm
    trans := fun left right => left.trans right
  }

def AliasHom (source target : StreetAlias) : Prop :=
  source.root = target.root

namespace AliasHom

theorem identity (streetAlias : StreetAlias) :
    AliasHom streetAlias streetAlias :=
  rfl

theorem compose
    {first second third : StreetAlias}
    (left : AliasHom first second)
    (right : AliasHom second third) :
    AliasHom first third :=
  left.trans right

theorem inverse
    {source target : StreetAlias}
    (morphism : AliasHom source target) :
    AliasHom target source :=
  morphism.symm

theorem at_most_one
    {source target : StreetAlias}
    (left right : AliasHom source target) :
    left = right :=
  Subsingleton.elim left right

theorem exists_iff_same_root
    {source target : StreetAlias} :
    Nonempty (AliasHom source target) ↔
      source.root = target.root := by
  constructor
  · intro morphism
    exact morphism.some
  · intro sameRoot
    exact ⟨sameRoot⟩

end AliasHom

structure StreetAliasDerivation where
  streetAlias : StreetAlias
  targetRoot : WrigleyStreetRoot
  ruleId : String
  reversible : Bool
  deriving DecidableEq, Repr

/-! ## Stable index and analytical correction -/

structure OrbitClassification where
  orbitId : Nat
  primeIndex : Nat
  analyticalLabel : Nat
  prime : Bool
  deriving DecidableEq, Repr

structure AcceptedOrbit where
  orbitId : Nat
  acceptanceOrdinal : Nat
  assignedPrimeIndex : Nat
  deriving DecidableEq, Repr

structure AcceptedOrbitRegistry where
  lookup : Nat → Option AcceptedOrbit
  nextAcceptanceOrdinal : Nat
  coherent :
    ∀ orbitId entry,
      lookup orbitId = some entry →
      entry.orbitId = orbitId
  ordinalBelowNext :
    ∀ orbitId entry,
      lookup orbitId = some entry →
      entry.acceptanceOrdinal < nextAcceptanceOrdinal

def appendAcceptedOrbit
    (registry : AcceptedOrbitRegistry)
    (entry : AcceptedOrbit)
    (_fresh : registry.lookup entry.orbitId = none)
    (nextOrdinal :
      entry.acceptanceOrdinal =
        registry.nextAcceptanceOrdinal) :
    AcceptedOrbitRegistry where
  lookup orbitId :=
    if orbitId = entry.orbitId then
      some entry
    else
      registry.lookup orbitId
  nextAcceptanceOrdinal :=
    registry.nextAcceptanceOrdinal + 1
  coherent := by
    intro orbitId found recorded
    by_cases same : orbitId = entry.orbitId
    · subst orbitId
      simp at recorded
      cases recorded
      rfl
    · simp [same] at recorded
      exact registry.coherent orbitId found recorded
  ordinalBelowNext := by
    intro orbitId found recorded
    by_cases same : orbitId = entry.orbitId
    · subst orbitId
      simp at recorded
      cases recorded
      rw [nextOrdinal]
      exact Nat.lt_succ_self _
    · simp [same] at recorded
      exact Nat.lt_trans
        (registry.ordinalBelowNext orbitId found recorded)
        (Nat.lt_succ_self _)

theorem append_lookup_existing
    (registry : AcceptedOrbitRegistry)
    (entry : AcceptedOrbit)
    (fresh : registry.lookup entry.orbitId = none)
    (nextOrdinal :
      entry.acceptanceOrdinal =
        registry.nextAcceptanceOrdinal)
    (orbitId : Nat)
    (different : orbitId ≠ entry.orbitId) :
    (appendAcceptedOrbit
      registry entry fresh nextOrdinal).lookup orbitId =
        registry.lookup orbitId := by
  simp [appendAcceptedOrbit, different]

theorem append_preserves_existing_prime_index
    (registry : AcceptedOrbitRegistry)
    (existing appended : AcceptedOrbit)
    (found :
      registry.lookup existing.orbitId = some existing)
    (fresh :
      registry.lookup appended.orbitId = none)
    (nextOrdinal :
      appended.acceptanceOrdinal =
        registry.nextAcceptanceOrdinal) :
    ((appendAcceptedOrbit
      registry appended fresh nextOrdinal).lookup
        existing.orbitId).map
          AcceptedOrbit.assignedPrimeIndex =
      some existing.assignedPrimeIndex := by
  have different :
      existing.orbitId ≠ appended.orbitId := by
    intro same
    rw [same, fresh] at found
    contradiction
  rw [append_lookup_existing
    registry appended fresh nextOrdinal
    existing.orbitId different, found]
  rfl

structure RootLabelSchema where
  labels : Finset Nat
  schemaDigest : String
  deriving DecidableEq

structure AnalyticalLabelPrimalityCorrection where
  prior : OrbitClassification
  analyticalLabel : Nat
  prime : Bool
  rootLabelSchema : RootLabelSchema
  baseClassificationDigest : String
  resultingClassificationDigest : String
  deriving DecidableEq

def applyAnalyticalCorrection
    (correction : AnalyticalLabelPrimalityCorrection) :
    OrbitClassification :=
  { correction.prior with
    analyticalLabel := correction.analyticalLabel
    prime := correction.prime }

theorem analytical_correction_preserves_prime_index
    (correction : AnalyticalLabelPrimalityCorrection) :
    (applyAnalyticalCorrection correction).primeIndex =
      correction.prior.primeIndex :=
  rfl

/-! ## Bitemporal life windows -/

inductive LifeWindow
  | open (beginsAt : Nat)
  | closed (beginsAt endsAt : Nat) (ordered : beginsAt < endsAt)

def LifeWindow.contains (window : LifeWindow) (instant : Nat) : Prop :=
  match window with
  | .open beginsAt => beginsAt ≤ instant
  | .closed beginsAt endsAt _ =>
      beginsAt ≤ instant ∧ instant < endsAt

def LifeWindow.containsBool
    (window : LifeWindow)
    (instant : Nat) : Bool :=
  match window with
  | .open beginsAt => decide (beginsAt ≤ instant)
  | .closed beginsAt endsAt _ =>
      decide (beginsAt ≤ instant ∧ instant < endsAt)

theorem LifeWindow.containsBool_eq_true_iff
    (window : LifeWindow)
    (instant : Nat) :
    window.containsBool instant = true ↔
      window.contains instant := by
  cases window <;> simp [containsBool, contains]

theorem closed_window_rejects_endpoint_and_after
    (beginsAt endsAt instant : Nat)
    (ordered : beginsAt < endsAt)
    (atOrAfter : endsAt ≤ instant) :
    ¬(LifeWindow.closed beginsAt endsAt ordered).contains instant := by
  intro member
  exact (Nat.not_lt_of_ge atOrAfter) member.2

structure LineageSnapshot where
  snapshotId : Nat
  recordedAt : Nat
  deriving DecidableEq, Repr

structure BitemporalResolutionQuery where
  snapshot : LineageSnapshot
  aliasValue : String
  validAt : Nat
  deriving DecidableEq, Repr

/-! ## Closed-candidate ambiguity -/

structure ClosedFamilyAliasCandidate where
  memberId : Nat
  root : WrigleyStreetRoot
  beginsAt : Nat
  endsAt : Nat
  ordered : beginsAt < endsAt
  rank : Nat
  deriving DecidableEq, Repr

inductive ClosedCandidateResolution
  | none
  | memorial (candidate : ClosedFamilyAliasCandidate)
  | ambiguous (candidates : List ClosedFamilyAliasCandidate)
  deriving DecidableEq, Repr

def resolveClosedCandidates :
    List ClosedFamilyAliasCandidate → ClosedCandidateResolution
  | [] => .none
  | [candidate] => .memorial candidate
  | first :: second :: rest =>
      .ambiguous (first :: second :: rest)

theorem multiple_equally_ranked_closed_candidates_are_ambiguous
    (first second : ClosedFamilyAliasCandidate)
    (rest : List ClosedFamilyAliasCandidate)
    (_secondRank : first.rank = second.rank)
    (_restRanks :
      ∀ candidate ∈ rest,
        candidate.rank = first.rank) :
    resolveClosedCandidates (first :: second :: rest) =
      .ambiguous (first :: second :: rest) :=
  rfl

/-! ## Coprime label set is not primality -/

def rootLabels : Finset Nat :=
  {2, 3, 5, 7}

def CoprimeToLabelSet
    (value : Nat)
    (labels : Finset Nat) : Prop :=
  ∀ label ∈ labels, Nat.Coprime value label

theorem root_label_product :
    rootLabels.prod id = 210 := by
  native_decide

theorem one_forty_three_coprime_to_root_labels :
    CoprimeToLabelSet 143 rootLabels := by
  norm_num [CoprimeToLabelSet, rootLabels]

theorem one_forty_three_coprime_to_product :
    Nat.Coprime 143 210 := by
  norm_num

theorem one_forty_three_labels_iff_product :
    CoprimeToLabelSet 143 rootLabels ↔
      Nat.Coprime 143 210 := by
  norm_num [CoprimeToLabelSet, rootLabels]

theorem one_forty_three_not_prime :
    ¬Nat.Prime 143 := by
  norm_num

/-! ## Certified disunion output -/

structure DisunionCandidate where
  candidateId : Nat
  partitionKey : Nat
  deriving DecidableEq, Repr

structure DisunionBlock where
  partitionKey : Nat
  members : Finset DisunionCandidate
  coherent :
    ∀ candidate ∈ members,
      candidate.partitionKey = partitionKey

structure InteractionContext where
  contextId : Nat
  deriving DecidableEq, Repr

structure ContextualCandidate
    (context : InteractionContext) where
  candidateId : Nat

inductive ContextualResolverResult
    (context : InteractionContext)
  | resolved (candidate : ContextualCandidate context)
  | ambiguous (candidates : List (ContextualCandidate context))
  | rejected

structure ResolverResultBinding
    (context : InteractionContext) where
  actual : ContextualResolverResult context
  expected : ContextualResolverResult context
  resultMatches : actual = expected

theorem resolver_result_is_bound_by_equality
    {context : InteractionContext}
    (binding : ResolverResultBinding context) :
    binding.actual = binding.expected :=
  binding.resultMatches

structure ExactResolverRequest
    (context : InteractionContext) where
  requested : ContextualCandidate context

structure ExactResolverResolution
    {context : InteractionContext}
    (request : ExactResolverRequest context) where
  candidate : ContextualCandidate context
  candidateMatchesRequest :
    candidate.candidateId =
      request.requested.candidateId

theorem exact_resolver_result_preserves_request
    {context : InteractionContext}
    {request : ExactResolverRequest context}
    (resolution : ExactResolverResolution request) :
    resolution.candidate.candidateId =
      request.requested.candidateId :=
  resolution.candidateMatchesRequest

structure DisunionSieveResult where
  input : Finset DisunionCandidate
  blocks : List DisunionBlock
  quarantine : Finset DisunionCandidate
  quarantineWithinInput :
    quarantine ⊆ input
  blocksWithinInput :
    ∀ block,
      block ∈ blocks →
      block.members ⊆ input
  pairwiseDisjoint :
    blocks.Pairwise
      (fun left right => Disjoint left.members right.members)
  acceptedExactlyOnce :
    ∀ candidate,
      candidate ∈ input →
      candidate ∉ quarantine →
      ∃! block,
        block ∈ blocks ∧ candidate ∈ block.members
  quarantineExcluded :
    ∀ block,
      block ∈ blocks →
      Disjoint block.members quarantine

theorem disunion_blocks_pairwise_disjoint
    (result : DisunionSieveResult) :
    result.blocks.Pairwise
      (fun left right => Disjoint left.members right.members) :=
  result.pairwiseDisjoint

theorem disunion_quarantine_excluded
    (result : DisunionSieveResult)
    (block : DisunionBlock)
    (member : block ∈ result.blocks) :
    Disjoint block.members result.quarantine :=
  result.quarantineExcluded block member

theorem disunion_accepted_exactly_once
    (result : DisunionSieveResult)
    (candidate : DisunionCandidate)
    (inInput : candidate ∈ result.input)
    (notQuarantined : candidate ∉ result.quarantine) :
    ∃! block,
      block ∈ result.blocks ∧
        candidate ∈ block.members :=
  result.acceptedExactlyOnce
    candidate inInput notQuarantined

/-! ## Cascade statement and well-foundedness boundary -/

noncomputable def logBase
    (base value : ℝ) : ℝ :=
  Real.log value / Real.log base

noncomputable def cascadeScore
    {blockCount : Nat}
    (base : ℝ)
    (weights : Fin blockCount → ℝ) : ℝ :=
  logBase base
    (1 + ∑ block, base ^ weights block)

def CascadeBoundsStatement : Prop :=
  ∀ (blockCount : Nat)
    (base maximum : ℝ)
    (weights : Fin blockCount → ℝ),
    0 < blockCount →
    1 < base →
    (∃ block, weights block = maximum) →
    (∀ block, 0 ≤ weights block ∧
      weights block ≤ maximum) →
    maximum ≤ cascadeScore base weights ∧
      cascadeScore base weights ≤
        maximum + logBase base (blockCount + 1)

def CascadeMonotonicityStatement : Prop :=
  ∀ (blockCount : Nat)
    (base lower upper : ℝ)
    (weights : Fin blockCount → ℝ)
    (coordinate : Fin blockCount),
    1 < base →
    lower ≤ upper →
    cascadeScore base
      (Function.update weights coordinate lower) ≤
    cascadeScore base
      (Function.update weights coordinate upper)

def cascadePowerSum
    (base : Nat)
    (weights : List Nat) : Nat :=
  1 + (weights.map fun weight => base ^ weight).sum

theorem cascade_power_sum_positive
    (base : Nat)
    (weights : List Nat) :
    0 < cascadePowerSum base weights := by
  simp [cascadePowerSum]

structure FiniteCascadeDag where
  Node : Type u
  nodeCount : Nat
  nodeIndex : Node ↪ Fin nodeCount
  edge : Node → Node → Prop
  edgeRank : Node → Nat
  edgeRankDecreases :
    ∀ {child parent},
      edge child parent →
      edgeRank child < edgeRank parent
  wellFounded : WellFounded edge
  disjointProjectionOwner : Node → Nat

theorem finite_cascade_dag_terminates
    (dag : FiniteCascadeDag) :
    ∀ node, Acc dag.edge node :=
  dag.wellFounded.apply

theorem finite_cascade_dag_has_no_self_edge
    (dag : FiniteCascadeDag)
    (node : dag.Node) :
    ¬dag.edge node node := by
  intro selfEdge
  exact (Nat.lt_irrefl _)
    (dag.edgeRankDecreases selfEdge)

theorem projection_owner_is_functional
    (dag : FiniteCascadeDag)
    (node : dag.Node)
    (left right : Nat)
    (leftOwner : dag.disjointProjectionOwner node = left)
    (rightOwner : dag.disjointProjectionOwner node = right) :
    left = right :=
  leftOwner.symm.trans rightOwner

structure CascadeAttenuation where
  value : ℝ
  nonnegative : 0 ≤ value
  atMostOne : value ≤ 1

/-! ## Typed theorem-authority projection -/

/-!
There is deliberately no public constructor for a checked certificate in this
capsule. A later owned checker boundary must supply this opaque type.
-/
opaque CheckedCertificate : Type

inductive AuthorityProjection
  | none
  | theoremAuthority (certificate : CheckedCertificate)

structure ImageCacheEvidence where
  digest : Nat
  deriving DecidableEq, Repr

structure AliasResolutionEvidence where
  memberId : Nat
  deriving DecidableEq, Repr

structure CascadeMetadata where
  blockCount : Nat
  base : ℝ
  score : ℝ

def projectImageEvidence (_ : ImageCacheEvidence) :
    AuthorityProjection :=
  .none

def projectAliasResolution (_ : AliasResolutionEvidence) :
    AuthorityProjection :=
  .none

def projectAnalyticalCorrection
    (_ : AnalyticalLabelPrimalityCorrection) :
    AuthorityProjection :=
  .none

def projectCascadeMetadata (_ : CascadeMetadata) :
    AuthorityProjection :=
  .none

theorem image_evidence_has_no_theorem_authority
    (evidence : ImageCacheEvidence) :
    projectImageEvidence evidence = .none :=
  rfl

theorem alias_resolution_has_no_theorem_authority
    (evidence : AliasResolutionEvidence) :
    projectAliasResolution evidence = .none :=
  rfl

theorem analytical_correction_has_no_theorem_authority
    (correction : AnalyticalLabelPrimalityCorrection) :
    projectAnalyticalCorrection correction = .none :=
  rfl

theorem cascade_metadata_has_no_theorem_authority
    (metadata : CascadeMetadata) :
    projectCascadeMetadata metadata = .none :=
  rfl

/-! ## Lifecycle/arithmetic provenance noninterference -/

structure FamilyAnalyticalState where
  lifeWindow : LifeWindow
  analyticalLabel : Nat
  primeIndex : Nat
  lineageSnapshot : Nat
  imageDigest : String
  annotationsDigest : String

structure FamilyCorrectionState where
  family : FamilyAnalyticalState
  classification : OrbitClassification

def applyCorrectionToFamilyState
    (state : FamilyCorrectionState)
    (correction : AnalyticalLabelPrimalityCorrection)
    (_matchesPrior :
      correction.prior = state.classification) :
    FamilyCorrectionState :=
  { state with
    classification :=
      applyAnalyticalCorrection correction }

theorem analytical_correction_preserves_lineage_snapshot
    (state : FamilyCorrectionState)
    (correction : AnalyticalLabelPrimalityCorrection)
    (matchesPrior :
      correction.prior = state.classification) :
    (applyCorrectionToFamilyState
      state correction matchesPrior).family.lineageSnapshot =
      state.family.lineageSnapshot :=
  rfl

theorem analytical_correction_preserves_image_digest
    (state : FamilyCorrectionState)
    (correction : AnalyticalLabelPrimalityCorrection)
    (matchesPrior :
      correction.prior = state.classification) :
    (applyCorrectionToFamilyState
      state correction matchesPrior).family.imageDigest =
      state.family.imageDigest :=
  rfl

theorem analytical_correction_preserves_annotations_digest
    (state : FamilyCorrectionState)
    (correction : AnalyticalLabelPrimalityCorrection)
    (matchesPrior :
      correction.prior = state.classification) :
    (applyCorrectionToFamilyState
      state correction matchesPrior).family.annotationsDigest =
      state.family.annotationsDigest :=
  rfl

def closeLifeWindow
    (state : FamilyAnalyticalState)
    (endsAt : Nat) :
    FamilyAnalyticalState :=
  match state.lifeWindow with
  | .open beginsAt =>
      if ordered : beginsAt < endsAt then
        { state with
          lifeWindow := .closed beginsAt endsAt ordered }
      else
        state
  | .closed _ _ _ =>
      state

theorem life_window_mutation_preserves_analytical_label
    (state : FamilyAnalyticalState)
    (endsAt : Nat) :
    (closeLifeWindow state endsAt).analyticalLabel =
      state.analyticalLabel := by
  rcases state with
    ⟨lifeWindow, analyticalLabel, primeIndex,
      lineageSnapshot, imageDigest, annotationsDigest⟩
  cases lifeWindow with
  | «open» beginsAt =>
      by_cases ordered : beginsAt < endsAt <;>
        simp [closeLifeWindow, ordered]
  | closed =>
      rfl

theorem life_window_mutation_preserves_prime_index
    (state : FamilyAnalyticalState)
    (endsAt : Nat) :
    (closeLifeWindow state endsAt).primeIndex =
      state.primeIndex := by
  rcases state with
    ⟨lifeWindow, analyticalLabel, primeIndex,
      lineageSnapshot, imageDigest, annotationsDigest⟩
  cases lifeWindow with
  | «open» beginsAt =>
      by_cases ordered : beginsAt < endsAt <;>
        simp [closeLifeWindow, ordered]
  | closed =>
      rfl

theorem life_window_mutation_preserves_lineage_snapshot
    (state : FamilyAnalyticalState)
    (endsAt : Nat) :
    (closeLifeWindow state endsAt).lineageSnapshot =
      state.lineageSnapshot := by
  rcases state with
    ⟨lifeWindow, analyticalLabel, primeIndex,
      lineageSnapshot, imageDigest, annotationsDigest⟩
  cases lifeWindow with
  | «open» beginsAt =>
      by_cases ordered : beginsAt < endsAt <;>
        simp [closeLifeWindow, ordered]
  | closed =>
      rfl

theorem life_window_mutation_preserves_image_digest
    (state : FamilyAnalyticalState)
    (endsAt : Nat) :
    (closeLifeWindow state endsAt).imageDigest =
      state.imageDigest := by
  rcases state with
    ⟨lifeWindow, analyticalLabel, primeIndex,
      lineageSnapshot, imageDigest, annotationsDigest⟩
  cases lifeWindow with
  | «open» beginsAt =>
      by_cases ordered : beginsAt < endsAt <;>
        simp [closeLifeWindow, ordered]
  | closed =>
      rfl

theorem life_window_mutation_preserves_annotations_digest
    (state : FamilyAnalyticalState)
    (endsAt : Nat) :
    (closeLifeWindow state endsAt).annotationsDigest =
      state.annotationsDigest := by
  rcases state with
    ⟨lifeWindow, analyticalLabel, primeIndex,
      lineageSnapshot, imageDigest, annotationsDigest⟩
  cases lifeWindow with
  | «open» beginsAt =>
      by_cases ordered : beginsAt < endsAt <;>
        simp [closeLifeWindow, ordered]
  | closed =>
      rfl

def primalityClassifier (analyticalLabel : Nat) : Bool :=
  decide (Nat.Prime analyticalLabel)

theorem classifier_depends_only_on_analytical_label
    (left right : FamilyAnalyticalState)
    (sameLabel : left.analyticalLabel = right.analyticalLabel) :
    primalityClassifier left.analyticalLabel =
      primalityClassifier right.analyticalLabel := by
  exact congrArg primalityClassifier sameLabel

inductive ProvenanceNode
  | deathRecorded
  | auditRequested
  | factorizationCertificate
  | analyticalLabelPrimalityCorrection
  deriving DecidableEq, Repr

def requiredProvenanceEdges :
    List (ProvenanceNode × ProvenanceNode) :=
  [
    (.deathRecorded, .auditRequested),
    (.factorizationCertificate,
      .analyticalLabelPrimalityCorrection)
  ]

theorem death_supports_audit_not_arithmetic_correction :
    (ProvenanceNode.deathRecorded,
      ProvenanceNode.auditRequested) ∈ requiredProvenanceEdges ∧
    (ProvenanceNode.deathRecorded,
      ProvenanceNode.analyticalLabelPrimalityCorrection) ∉
        requiredProvenanceEdges := by
  decide

end URSM.Toy.Wrigley.FrontierReview
