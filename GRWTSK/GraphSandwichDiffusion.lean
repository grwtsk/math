/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import Mathlib
import Mathlib.RingTheory.Radical.NatInt
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
import GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover

set_option autoImplicit false

/-!
# Search-led Graph Sandwich diffusion interfaces

This module keeps candidate search relationships separate from certified
mathematical consequences.  It reuses the repository's deterministic
`RelationSandwich.Sandwich`, the Farey sofic interfaces, and explicit finite
search depth.  Paper-derived edges carry source identities, assumptions, open
proof obligations, and separate verification dimensions.

The current bounded increment constructs the source inventory, graph-sandwich
adapter, deterministic finite traversal, search soundness, relative
completeness, and negative controls.  It does not yet construct graph
Laplacians, heat semigroups, a complete finite spectral tensor, a function-field
Chowla supplier in Lean, or the proposed `a ≤ 1 / 2` compression supplier.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

universe u

namespace GRWTSK.GraphSandwichDiffusion

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich

/-- A labeled directed graph surface retained for the existing sofic adapter. -/
structure FiniteSearchGraph (Vertex Label : Type) where
  edge : Vertex → Vertex → Prop
  label : Vertex → Vertex → Label → Prop

/-- Legacy labeled candidate/certified inventory.  The source-bound inventory
below adds admissible relations, provenance, semantics, and executable scope. -/
structure SearchInventory (Vertex Label : Type) where
  vertices : List Vertex
  labels : List Label
  candidate : Vertex → Vertex → Label → Prop
  certified : Vertex → Vertex → Label → Prop
  certified_candidate : ∀ u v l, certified u v l → candidate u v l

def CandidateEdge {V L : Type} (s : SearchInventory V L) (u v : V) : Prop :=
  ∃ l, s.candidate u v l

def CertifiedEdge {V L : Type} (s : SearchInventory V L) (u v : V) : Prop :=
  ∃ l, s.certified u v l

theorem certified_is_candidate {V L : Type} (s : SearchInventory V L)
    (u v : V) (h : CertifiedEdge s u v) : CandidateEdge s u v := by
  rcases h with ⟨l, hl⟩
  exact ⟨l, s.certified_candidate u v l hl⟩

/-- Labeled finite walks are proof-carrying paths, independent of probabilistic
or arithmetic cancellation claims. -/
inductive LabeledWalk {V L : Type} (edge : V → V → L → Prop) :
    V → V → Type where
  | nil (v : V) : LabeledWalk edge v v
  | cons {u v w : V} (l : L) (h : edge u v l)
      (tail : LabeledWalk edge v w) : LabeledWalk edge u w

def LabeledWalk.map {V L : Type} {e f : V → V → L → Prop}
    (h : ∀ u v l, e u v l → f u v l) {u v : V}
    (walk : LabeledWalk e u v) : LabeledWalk f u v :=
  match walk with
  | .nil x => .nil x
  | .cons l he tail => .cons l (h _ _ _ he) (LabeledWalk.map h tail)

def certifiedWalkToCandidate {V L : Type} (s : SearchInventory V L)
    {u v : V} (walk : LabeledWalk s.certified u v) :
    LabeledWalk s.candidate u v :=
  LabeledWalk.map s.certified_candidate walk

/-- Existing repository sofic presentation is the source of graph edges.
This adapter changes argument order only. -/
def fromSoficGraph {V L : Type} [Fintype V] [Fintype L]
    (g : GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph V L) :
    FiniteSearchGraph V L where
  edge := fun u v => ∃ l, g.edge u l v
  label := fun u v l => g.edge u l v

theorem fromSoficGraph_label_edge {V L : Type} [Fintype V] [Fintype L]
    (g : GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph V L)
    {u v : V} {l : L} (h : (fromSoficGraph g).label u v l) :
    (fromSoficGraph g).edge u v :=
  ⟨l, h⟩

/-- Compatibility name for the canonical repository relation sandwich. -/
abbrev GraphSandwich (Vertex : Type) := Sandwich Vertex

/-- The existing compatibility theorem now delegates to the canonical module. -/
theorem lower_le_upper {V : Type} (s : GraphSandwich V) (u v : V)
    (h : s.lower u v) : s.upper u v :=
  Sandwich.lower_le_upper s h

/-- Height metadata only.  No zeta-zero interpretation is inferred. -/
structure SpectralHeight (Vertex : Type) where
  height : Vertex → ℕ
  diffusionWeight : Vertex → Vertex → ℝ

/-- The stronger compression inequality is input data, not a consequence of
`original_le`. -/
structure CompressionCertificate where
  original : ℚ
  compressed : ℚ
  original_le : original ≤ 9 / 16
  compressed_le : compressed ≤ 1 / 2
  justified : compressed ≤ original

theorem compression_bound (c : CompressionCertificate) :
    3 / 4 + c.compressed ≤ (5 / 4 : ℚ) := by
  linarith [c.compressed_le]

/-- Mathematical status of a source-grounded relationship. -/
inductive RelationshipClass where
  | verifiedImplication
  | structuralCorrespondence
  | conditionalInterface
  | finiteEvidence
  | analogy
  | unresolvedSupplier
  deriving DecidableEq, Repr

/-- Kind of source supplying a vertex or relationship. -/
inductive SourceKind where
  | leanDeclaration
  | arXiv
  | doi
  | stableUrl
  | unresolved
  deriving DecidableEq, Repr

/-- Exact source identity.  Repository fields are populated for Lean sources. -/
structure SourceIdentity where
  kind : SourceKind
  identifier : String
  locator : String
  repository : Option String
  commit : Option String
  path : Option String
  blob : Option String
  deriving Repr

/-- Verification dimensions are separate; source inspection is not compilation,
kernel acceptance, an axiom audit, or completion of an analytic supplier. -/
structure VerificationStatus where
  sourceInspected : Bool
  compiled : Bool
  kernelAccepted : Bool
  axiomAudited : Bool
  supplierComplete : Bool
  deriving Repr

/-- Provenance and obligations for one directed relationship.  The source and
target are type parameters, so a record cannot silently describe another edge. -/
structure RelationshipRecord {V : Type u} (source target : V) where
  relationship : RelationshipClass
  mathematicalMeaning : String
  provenance : List SourceIdentity
  assumptions : List String
  obligations : List String
  verification : VerificationStatus
  deriving Repr

/-- A finite, source-bound graph sandwich with a separately declared semantic
relation.  The lower relation is certified only through `certified_sound`. -/
structure SourceSearchInventory (V : Type u) [DecidableEq V] where
  vertices : Finset V
  certified : EdgeRelation V
  candidate : EdgeRelation V
  admissible : EdgeRelation V
  semantic : EdgeRelation V
  certified_le_candidate : Subrelation certified candidate
  candidate_le_admissible : Subrelation candidate admissible
  admissible_scoped :
    ∀ ⦃source target : V⦄, admissible source target →
      source ∈ vertices ∧ target ∈ vertices
  certified_sound : Subrelation certified semantic
  candidateRecord :
    ∀ ⦃source target : V⦄, candidate source target →
      RelationshipRecord source target
  admissibleRecord :
    ∀ ⦃source target : V⦄, admissible source target →
      RelationshipRecord source target

variable {V : Type u} [DecidableEq V]

/-- Candidate edges are confined to the same declared finite inventory. -/
theorem SourceSearchInventory.candidate_scoped (inventory : SourceSearchInventory V) :
    ∀ ⦃source target : V⦄, inventory.candidate source target →
      source ∈ inventory.vertices ∧ target ∈ inventory.vertices := by
  intro source target edge
  exact inventory.admissible_scoped (inventory.candidate_le_admissible edge)

/-- The search inventory reuses the repository's exact relation sandwich. -/
def SourceSearchInventory.graphSandwich (inventory : SourceSearchInventory V) : Sandwich V where
  lower := inventory.certified
  middle := inventory.candidate
  upper := inventory.admissible
  lower_le_middle := inventory.certified_le_candidate
  middle_le_upper := inventory.candidate_le_admissible

/-- A path with an exact edge count.  Length zero is included so bounded search
returns its source when the source lies in scope. -/
inductive BoundedPath (edge : EdgeRelation V) : Nat → V → V → Prop
  | refl (vertex : V) : BoundedPath edge 0 vertex vertex
  | tail {length : Nat} {source middle target : V} :
      BoundedPath edge length source middle →
      edge middle target →
      BoundedPath edge (length + 1) source target

/-- Exact-length paths transport upward along relation inclusion. -/
def BoundedPath.mono {lower upper : EdgeRelation V}
    (included : Subrelation lower upper)
    {length : Nat} {source target : V}
    (path : BoundedPath lower length source target) :
    BoundedPath upper length source target := by
  induction path with
  | refl vertex => exact BoundedPath.refl vertex
  | tail path edge inductionHypothesis =>
      exact BoundedPath.tail inductionHypothesis (included edge)

/-- A bounded path of individually sound edges is semantically sound when the
semantic relation is reflexive and transitive. -/
theorem BoundedPath.semantic
    {edge semantic : EdgeRelation V}
    (edgeSound : Subrelation edge semantic)
    (semanticRefl : ∀ vertex, semantic vertex vertex)
    (semanticTrans :
      ∀ ⦃source middle target : V⦄,
        semantic source middle → semantic middle target → semantic source target)
    {length : Nat} {source target : V}
    (path : BoundedPath edge length source target) :
    semantic source target := by
  induction path with
  | refl vertex => exact semanticRefl vertex
  | tail path edge inductionHypothesis =>
      exact semanticTrans inductionHypothesis (edgeSound edge)

/-- One deterministic finite-state expansion step inside `scope`. -/
noncomputable def successors
    (scope : Finset V) (edge : EdgeRelation V) (frontier : Finset V) : Finset V := by
  classical
  exact scope.filter (fun target => ∃ source ∈ frontier, edge source target)

@[simp]
theorem mem_successors
    (scope : Finset V) (edge : EdgeRelation V) (frontier : Finset V) (target : V) :
    target ∈ successors scope edge frontier ↔
      target ∈ scope ∧ ∃ source ∈ frontier, edge source target := by
  classical
  simp [successors]

/-- Deterministic traversal through all paths of length at most `depth`. -/
noncomputable def reachableWithin
    (scope : Finset V) (edge : EdgeRelation V) (source : V) : Nat → Finset V
  | 0 => if source ∈ scope then {source} else ∅
  | depth + 1 =>
      let previous := reachableWithin scope edge source depth
      previous ∪ successors scope edge previous

@[simp]
theorem mem_reachableWithin_zero
    (scope : Finset V) (edge : EdgeRelation V) (source target : V) :
    target ∈ reachableWithin scope edge source 0 ↔
      source ∈ scope ∧ target = source := by
  classical
  by_cases sourceIn : source ∈ scope <;>
    simp [reachableWithin, sourceIn]

@[simp]
theorem mem_reachableWithin_succ
    (scope : Finset V) (edge : EdgeRelation V)
    (source target : V) (depth : Nat) :
    target ∈ reachableWithin scope edge source (depth + 1) ↔
      target ∈ reachableWithin scope edge source depth ∨
        (target ∈ scope ∧
          ∃ middle ∈ reachableWithin scope edge source depth,
            edge middle target) := by
  classical
  simp [reachableWithin, successors]

/-- Increasing the depth by one cannot remove a result. -/
theorem reachableWithin_subset_succ
    (scope : Finset V) (edge : EdgeRelation V) (source : V) (depth : Nat) :
    reachableWithin scope edge source depth ⊆
      reachableWithin scope edge source (depth + 1) := by
  intro target member
  exact (mem_reachableWithin_succ scope edge source target depth).2 (Or.inl member)

/-- Bounded search is monotone in its finite depth. -/
theorem reachableWithin_mono
    (scope : Finset V) (edge : EdgeRelation V) (source : V)
    {smaller larger : Nat} (depthLe : smaller ≤ larger) :
    reachableWithin scope edge source smaller ⊆
      reachableWithin scope edge source larger := by
  induction larger with
  | zero =>
      have smallerZero : smaller = 0 := Nat.eq_zero_of_le_zero depthLe
      subst smaller
      exact fun _ member => member
  | succ larger inductionHypothesis =>
      rcases Nat.eq_or_lt_of_le depthLe with rfl | strict
      · exact fun _ member => member
      · have smallerLe : smaller ≤ larger := Nat.le_of_lt_succ strict
        intro target member
        exact reachableWithin_subset_succ scope edge source larger
          (inductionHypothesis smallerLe member)

/-- Every returned target has an exact bounded path certificate. -/
theorem exists_boundedPath_of_mem_reachableWithin
    (scope : Finset V) (edge : EdgeRelation V)
    (source target : V) (depth : Nat)
    (member : target ∈ reachableWithin scope edge source depth) :
    ∃ length ≤ depth, BoundedPath edge length source target := by
  induction depth generalizing target with
  | zero =>
      rcases (mem_reachableWithin_zero scope edge source target).1 member with
        ⟨_, rfl⟩
      exact ⟨0, Nat.le_refl 0, BoundedPath.refl source⟩
  | succ depth inductionHypothesis =>
      rcases (mem_reachableWithin_succ scope edge source target depth).1 member with
        previous | ⟨_, middle, middleMember, edgeStep⟩
      · rcases inductionHypothesis target previous with
          ⟨length, lengthLe, path⟩
        exact ⟨length, Nat.le_trans lengthLe (Nat.le_succ depth), path⟩
      · rcases inductionHypothesis middle middleMember with
          ⟨length, lengthLe, path⟩
        exact ⟨length + 1, Nat.succ_le_succ lengthLe,
          BoundedPath.tail path edgeStep⟩

/-- An in-scope exact path appears at its exact length. -/
theorem BoundedPath.mem_reachableWithin
    (scope : Finset V) (edge : EdgeRelation V)
    {length : Nat} {source target : V}
    (sourceIn : source ∈ scope)
    (edgeScoped :
      ∀ ⦃u v : V⦄, edge u v → u ∈ scope ∧ v ∈ scope)
    (path : BoundedPath edge length source target) :
    target ∈ reachableWithin scope edge source length := by
  induction path with
  | refl vertex =>
      exact (mem_reachableWithin_zero scope edge vertex vertex).2
        ⟨sourceIn, rfl⟩
  | @tail length source middle target path edgeStep inductionHypothesis =>
      exact (mem_reachableWithin_succ scope edge source target length).2
        (Or.inr
          ⟨(edgeScoped edgeStep).2, middle, inductionHypothesis, edgeStep⟩)

/-- Relative completeness: the deterministic traversal returns exactly the
in-scope paths whose length is at most the declared depth. -/
theorem mem_reachableWithin_iff
    (scope : Finset V) (edge : EdgeRelation V)
    (source target : V) (depth : Nat)
    (sourceIn : source ∈ scope)
    (edgeScoped :
      ∀ ⦃u v : V⦄, edge u v → u ∈ scope ∧ v ∈ scope) :
    target ∈ reachableWithin scope edge source depth ↔
      ∃ length ≤ depth, BoundedPath edge length source target := by
  constructor
  · exact exists_boundedPath_of_mem_reachableWithin scope edge source target depth
  · rintro ⟨length, lengthLe, path⟩
    exact reachableWithin_mono scope edge source lengthLe
      (BoundedPath.mem_reachableWithin scope edge sourceIn edgeScoped path)

/-- Certified search uses only the lower graph. -/
noncomputable def SourceSearchInventory.certifiedSearch
    (inventory : SourceSearchInventory V) (source : V) (depth : Nat) : Finset V :=
  reachableWithin inventory.vertices inventory.certified source depth

/-- Candidate search exposes source-grounded possibilities, including unresolved
bridges, without certifying their semantics. -/
noncomputable def SourceSearchInventory.candidateSearch
    (inventory : SourceSearchInventory V) (source : V) (depth : Nat) : Finset V :=
  reachableWithin inventory.vertices inventory.candidate source depth

/-- Certified search results have a semantic proof. -/
theorem SourceSearchInventory.certifiedSearch_sound
    (inventory : SourceSearchInventory V)
    (semanticRefl : ∀ vertex, inventory.semantic vertex vertex)
    (semanticTrans :
      ∀ ⦃source middle target : V⦄,
        inventory.semantic source middle →
        inventory.semantic middle target →
        inventory.semantic source target)
    (source target : V) (depth : Nat)
    (member : target ∈ inventory.certifiedSearch source depth) :
    inventory.semantic source target := by
  rcases exists_boundedPath_of_mem_reachableWithin
      inventory.vertices inventory.certified source target depth member with
    ⟨_, _, path⟩
  exact BoundedPath.semantic inventory.certified_sound semanticRefl semanticTrans path

/-- Candidate search is relatively complete for the declared finite inventory. -/
theorem SourceSearchInventory.mem_candidateSearch_iff
    (inventory : SourceSearchInventory V)
    (source target : V) (depth : Nat)
    (sourceIn : source ∈ inventory.vertices) :
    target ∈ inventory.candidateSearch source depth ↔
      ∃ length ≤ depth,
        BoundedPath inventory.candidate length source target :=
  mem_reachableWithin_iff
    inventory.vertices inventory.candidate source target depth
    sourceIn inventory.candidate_scoped

/-- Every candidate result transports to an admissible path, but not to a
semantic consequence. -/
theorem SourceSearchInventory.candidateSearch_has_admissiblePath
    (inventory : SourceSearchInventory V)
    (source target : V) (depth : Nat)
    (member : target ∈ inventory.candidateSearch source depth) :
    ∃ length ≤ depth,
      BoundedPath inventory.admissible length source target := by
  rcases exists_boundedPath_of_mem_reachableWithin
      inventory.vertices inventory.candidate source target depth member with
    ⟨length, lengthLe, path⟩
  exact ⟨length, lengthLe,
    BoundedPath.mono inventory.candidate_le_admissible path⟩

/-- An admissible edge not yet represented in the candidate graph is an explicit
coverage obligation. -/
def MissingCandidateEdge (inventory : SourceSearchInventory V) (source target : V) : Prop :=
  inventory.admissible source target ∧ ¬ inventory.candidate source target

/-- Completion means candidate coverage of the declared admissible relation.
It does not mean that every admissible edge is certified or semantically valid. -/
def CandidateComplete (inventory : SourceSearchInventory V) : Prop :=
  Subrelation inventory.admissible inventory.candidate

/-- Candidate completion is exactly the absence of a missing admissible edge. -/
theorem candidateComplete_iff_no_missing (inventory : SourceSearchInventory V) :
    CandidateComplete inventory ↔
      ∀ source target, ¬ MissingCandidateEdge inventory source target := by
  constructor
  · intro complete source target missing
    exact missing.2 (complete missing.1)
  · intro noMissing source target admissible
    by_contra notCandidate
    exact noMissing source target ⟨admissible, notCandidate⟩

/-- Under completion the candidate and admissible relations agree.  No theorem
here promotes either relation to `certified`. -/
theorem candidate_eq_admissible_of_complete
    (inventory : SourceSearchInventory V) (complete : CandidateComplete inventory) :
    inventory.candidate = inventory.admissible := by
  funext source target
  apply propext
  constructor
  · exact inventory.candidate_le_admissible
  · exact complete

/-! ## Concrete bounded seed inventory -/

/-- Concepts included in the first finite source inventory. -/
inductive SeedConcept where
  | thomaeFunction
  | linearChainSpectrum
  | fareyStructure
  | dedekindEtaRegularization
  | lifshitzLocalization
  | zetaZeros
  | criticalStripCriterion
  | explicitFormula
  | spectralOperatorAnalogy
  | randomGraphCoupling
  | lowerRandomContainment
  | upperRandomDefect
  | monotonePropertyTransfer
  | functionFieldMobius
  | dirichletCharacterProxy
  | chowlaCorrelation
  | primeLevelOfDistribution
  | relationSandwich
  | soficPresentation
  | informationLossBoundary
  | quadraticThresholdDescent
  | arithmeticWalkObservation
  | heightIndexedDiffusion
  | compressionParameterA
  | searchInventory
  deriving DecidableEq, Fintype, Repr

/-- Curated source-grounded relationships in the initial candidate graph. -/
inductive SeedPaperEdge where
  | spectrumToThomae
  | spectrumToFarey
  | thomaeToDedekindEta
  | spectrumToLifshitz
  | fareyToSofic
  | zerosToCriticalStrip
  | zerosToExplicitFormula
  | zerosToSpectralAnalogy
  | spectralAnalogyToDiffusion
  | couplingToLowerContainment
  | couplingToUpperDefect
  | couplingToMonotoneTransfer
  | lowerContainmentToSandwich
  | upperDefectToSandwich
  | mobiusToCharacterProxy
  | characterProxyToChowla
  | chowlaToWalkObservation
  | mobiusToPrimeDistribution
  | walkObservationToSofic
  | soficToInformationBoundary
  | soficToDiffusion
  | thresholdToCompressionQuestion
  deriving DecidableEq, Fintype, Repr

/-- Source of each curated candidate edge. -/
def seedPaperEdgeSource : SeedPaperEdge → SeedConcept
  | .spectrumToThomae => .linearChainSpectrum
  | .spectrumToFarey => .linearChainSpectrum
  | .thomaeToDedekindEta => .thomaeFunction
  | .spectrumToLifshitz => .linearChainSpectrum
  | .fareyToSofic => .fareyStructure
  | .zerosToCriticalStrip => .zetaZeros
  | .zerosToExplicitFormula => .zetaZeros
  | .zerosToSpectralAnalogy => .zetaZeros
  | .spectralAnalogyToDiffusion => .spectralOperatorAnalogy
  | .couplingToLowerContainment => .randomGraphCoupling
  | .couplingToUpperDefect => .randomGraphCoupling
  | .couplingToMonotoneTransfer => .randomGraphCoupling
  | .lowerContainmentToSandwich => .lowerRandomContainment
  | .upperDefectToSandwich => .upperRandomDefect
  | .mobiusToCharacterProxy => .functionFieldMobius
  | .characterProxyToChowla => .dirichletCharacterProxy
  | .chowlaToWalkObservation => .chowlaCorrelation
  | .mobiusToPrimeDistribution => .functionFieldMobius
  | .walkObservationToSofic => .arithmeticWalkObservation
  | .soficToInformationBoundary => .soficPresentation
  | .soficToDiffusion => .soficPresentation
  | .thresholdToCompressionQuestion => .quadraticThresholdDescent

/-- Target of each curated candidate edge. -/
def seedPaperEdgeTarget : SeedPaperEdge → SeedConcept
  | .spectrumToThomae => .thomaeFunction
  | .spectrumToFarey => .fareyStructure
  | .thomaeToDedekindEta => .dedekindEtaRegularization
  | .spectrumToLifshitz => .lifshitzLocalization
  | .fareyToSofic => .soficPresentation
  | .zerosToCriticalStrip => .criticalStripCriterion
  | .zerosToExplicitFormula => .explicitFormula
  | .zerosToSpectralAnalogy => .spectralOperatorAnalogy
  | .spectralAnalogyToDiffusion => .heightIndexedDiffusion
  | .couplingToLowerContainment => .lowerRandomContainment
  | .couplingToUpperDefect => .upperRandomDefect
  | .couplingToMonotoneTransfer => .monotonePropertyTransfer
  | .lowerContainmentToSandwich => .relationSandwich
  | .upperDefectToSandwich => .relationSandwich
  | .mobiusToCharacterProxy => .dirichletCharacterProxy
  | .characterProxyToChowla => .chowlaCorrelation
  | .chowlaToWalkObservation => .arithmeticWalkObservation
  | .mobiusToPrimeDistribution => .primeLevelOfDistribution
  | .walkObservationToSofic => .soficPresentation
  | .soficToInformationBoundary => .informationLossBoundary
  | .soficToDiffusion => .heightIndexedDiffusion
  | .thresholdToCompressionQuestion => .compressionParameterA

/-- Additional edges permitted by the initial vocabulary but not yet admitted as
source-grounded candidates. -/
inductive SeedPotentialEdge where
  | etaToExplicitFormula
  | explicitFormulaToDiffusion
  | chowlaToExplicitFormula
  | sandwichToDiffusion
  | compressionToDiffusion
  deriving DecidableEq, Fintype, Repr

def seedPotentialEdgeSource : SeedPotentialEdge → SeedConcept
  | .etaToExplicitFormula => .dedekindEtaRegularization
  | .explicitFormulaToDiffusion => .explicitFormula
  | .chowlaToExplicitFormula => .chowlaCorrelation
  | .sandwichToDiffusion => .relationSandwich
  | .compressionToDiffusion => .compressionParameterA

def seedPotentialEdgeTarget : SeedPotentialEdge → SeedConcept
  | .etaToExplicitFormula => .explicitFormula
  | .explicitFormulaToDiffusion => .heightIndexedDiffusion
  | .chowlaToExplicitFormula => .explicitFormula
  | .sandwichToDiffusion => .heightIndexedDiffusion
  | .compressionToDiffusion => .heightIndexedDiffusion

private def inspectedNotRun : VerificationStatus where
  sourceInspected := true
  compiled := false
  kernelAccepted := false
  axiomAudited := false
  supplierComplete := false

private def literatureSource
    (kind : SourceKind) (identifier locator : String) : SourceIdentity where
  kind := kind
  identifier := identifier
  locator := locator
  repository := none
  commit := none
  path := none
  blob := none

private def repositorySource
    (identifier path blob : String) : SourceIdentity where
  kind := .leanDeclaration
  identifier := identifier
  locator := identifier
  repository := some "grwtsk/math"
  commit := some "bd1e92a31d3609c42b3846f53f3f0be34d3f95a2"
  path := some path
  blob := some blob

private def nechaevPolovnikovSource : SourceIdentity :=
  literatureSource .arXiv "arXiv:1702.06757v2"
    "Number-theoretic aspects of 1D localization"

private def bombieriSource : SourceIdentity :=
  literatureSource .stableUrl "Bombieri: Problems of the Millennium: the Riemann Hypothesis"
    "Clay Mathematics Institute article"

private def kimVuSource : SourceIdentity :=
  literatureSource .doi "10.1016/j.aim.2003.10.007"
    "Sandwiching random graphs: universality between random graph models"

private def sawinShustermanSource : SourceIdentity :=
  literatureSource .arXiv "arXiv:1808.04001v2"
    "On the Chowla and twin primes conjectures over F_q[T]"

private def relationSandwichSource : SourceIdentity :=
  repositorySource
    "GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich"
    "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean"
    "9761b5dd5d6ada7344031c07386586c72c1d970a"

private def dynamicSoficSource : SourceIdentity :=
  repositorySource
    "GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover"
    "GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean"
    "7f9560ad5deee8c3a47c10c3326d2ac6ff6f3cc8"

private def heatFlowSoficSource : SourceIdentity :=
  repositorySource
    "GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic"
    "GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean"
    "f8b956c411e386d56af206ccc8a46b4c2b1c13c3"

private def quadraticThresholdSource : SourceIdentity :=
  repositorySource
    "GRWTSK.RiemannHypothesis.quadraticThreshold"
    "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean"
    "6e0eca3e3863a9147a4ef3facde60556355543ea"

private def searchInventorySource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "GRWTSK.GraphSandwichDiffusion.SourceSearchInventory"
  locator :=
    "GRWTSK/GraphSandwichDiffusion.lean"
  repository := some "grwtsk/math"
  commit := none
  path := some
    "GRWTSK/GraphSandwichDiffusion.lean"
  blob := none

private def sourceForConcept : SeedConcept → SourceIdentity
  | .thomaeFunction => nechaevPolovnikovSource
  | .linearChainSpectrum => nechaevPolovnikovSource
  | .fareyStructure => nechaevPolovnikovSource
  | .dedekindEtaRegularization => nechaevPolovnikovSource
  | .lifshitzLocalization => nechaevPolovnikovSource
  | .zetaZeros => bombieriSource
  | .criticalStripCriterion => bombieriSource
  | .explicitFormula => bombieriSource
  | .spectralOperatorAnalogy => bombieriSource
  | .randomGraphCoupling => kimVuSource
  | .lowerRandomContainment => kimVuSource
  | .upperRandomDefect => kimVuSource
  | .monotonePropertyTransfer => kimVuSource
  | .functionFieldMobius => sawinShustermanSource
  | .dirichletCharacterProxy => sawinShustermanSource
  | .chowlaCorrelation => sawinShustermanSource
  | .primeLevelOfDistribution => sawinShustermanSource
  | .relationSandwich => relationSandwichSource
  | .soficPresentation => dynamicSoficSource
  | .informationLossBoundary => heatFlowSoficSource
  | .quadraticThresholdDescent => quadraticThresholdSource
  | .arithmeticWalkObservation => searchInventorySource
  | .heightIndexedDiffusion => searchInventorySource
  | .compressionParameterA => searchInventorySource
  | .searchInventory => searchInventorySource

/-- Candidate classification records the source-level mathematical role.  It
never promotes an edge to the certified lower relation; that promotion still
requires `SourceSearchInventory.certified_sound`. -/
private def edgeClass : SeedPaperEdge → RelationshipClass
  | .spectrumToThomae => .conditionalInterface
  | .spectrumToFarey => .conditionalInterface
  | .thomaeToDedekindEta => .conditionalInterface
  | .spectrumToLifshitz => .conditionalInterface
  | .fareyToSofic => .structuralCorrespondence
  | .zerosToCriticalStrip => .structuralCorrespondence
  | .zerosToExplicitFormula => .conditionalInterface
  | .zerosToSpectralAnalogy => .analogy
  | .spectralAnalogyToDiffusion => .structuralCorrespondence
  | .couplingToLowerContainment => .conditionalInterface
  | .couplingToUpperDefect => .conditionalInterface
  | .couplingToMonotoneTransfer => .conditionalInterface
  | .lowerContainmentToSandwich => .structuralCorrespondence
  | .upperDefectToSandwich => .structuralCorrespondence
  | .mobiusToCharacterProxy => .conditionalInterface
  | .characterProxyToChowla => .conditionalInterface
  | .chowlaToWalkObservation => .structuralCorrespondence
  | .mobiusToPrimeDistribution => .conditionalInterface
  | .walkObservationToSofic => .structuralCorrespondence
  | .soficToInformationBoundary => .structuralCorrespondence
  | .soficToDiffusion => .structuralCorrespondence
  | .thresholdToCompressionQuestion => .unresolvedSupplier

private def edgeMeaning : SeedPaperEdge → String
  | .spectrumToThomae =>
      "The sparse linear-chain spectral density is related to the Thomae profile."
  | .spectrumToFarey =>
      "Monotone spectral-peak sequences are organized by Farey mediants."
  | .thomaeToDedekindEta =>
      "Dedekind eta near the real axis gives the stated asymptotic regularization."
  | .spectrumToLifshitz =>
      "The spectral-edge asymptotic has the stated one-dimensional Lifshitz form."
  | .fareyToSofic =>
      "Farey transitions are a candidate alphabet for a finite labelled presentation."
  | .zerosToCriticalStrip =>
      "The critical-line condition is the selected zero-location criterion."
  | .zerosToExplicitFormula =>
      "Zeta zeros enter the explicit formula relating prime and spectral data."
  | .zerosToSpectralAnalogy =>
      "The Hilbert--Polya operator picture is an analogy, not an operator construction."
  | .spectralAnalogyToDiffusion =>
      "A supplied finite graph operator would instantiate a height-indexed diffusion target."
  | .couplingToLowerContainment =>
      "Kim--Vu lower containment holds only under the paper's coupling hypotheses."
  | .couplingToUpperDefect =>
      "The upper comparison retains the paper's maximum-degree defect bound."
  | .couplingToMonotoneTransfer =>
      "Increasing graph properties transfer only through the probabilistic coupling."
  | .lowerContainmentToSandwich =>
      "The lower containment is represented by the lower-to-middle sandwich inclusion."
  | .upperDefectToSandwich =>
      "Exact upper inclusion requires a separate repair of the probabilistic defect."
  | .mobiusToCharacterProxy =>
      "On the specified function-field slices, Möbius is represented by shifted characters."
  | .characterProxyToChowla =>
      "Character cancellation supplies the function-field Chowla correlation estimate."
  | .chowlaToWalkObservation =>
      "Chowla products are candidate arithmetic labels on finite sofic walks."
  | .mobiusToPrimeDistribution =>
      "The paper derives prime-distribution results through additional convolution estimates."
  | .walkObservationToSofic =>
      "Arithmetic observations annotate a finite labelled transition system."
  | .soficToInformationBoundary =>
      "A finite presentation is lossless only with an explicit reconstruction map."
  | .soficToDiffusion =>
      "Eligible finite graphs may later carry adjacency, Laplacian, and heat operators."
  | .thresholdToCompressionQuestion =>
      "The quadratic threshold map is not identified with the requested parameter a."

private def edgeProvenance : SeedPaperEdge → List SourceIdentity
  | .spectrumToThomae => [nechaevPolovnikovSource]
  | .spectrumToFarey => [nechaevPolovnikovSource]
  | .thomaeToDedekindEta => [nechaevPolovnikovSource]
  | .spectrumToLifshitz => [nechaevPolovnikovSource]
  | .fareyToSofic => [nechaevPolovnikovSource, dynamicSoficSource]
  | .zerosToCriticalStrip => [bombieriSource]
  | .zerosToExplicitFormula => [bombieriSource]
  | .zerosToSpectralAnalogy => [bombieriSource]
  | .spectralAnalogyToDiffusion => [bombieriSource, searchInventorySource]
  | .couplingToLowerContainment => [kimVuSource]
  | .couplingToUpperDefect => [kimVuSource]
  | .couplingToMonotoneTransfer => [kimVuSource]
  | .lowerContainmentToSandwich => [kimVuSource, relationSandwichSource]
  | .upperDefectToSandwich => [kimVuSource, relationSandwichSource]
  | .mobiusToCharacterProxy => [sawinShustermanSource]
  | .characterProxyToChowla => [sawinShustermanSource]
  | .chowlaToWalkObservation => [sawinShustermanSource, searchInventorySource]
  | .mobiusToPrimeDistribution => [sawinShustermanSource]
  | .walkObservationToSofic => [searchInventorySource, dynamicSoficSource]
  | .soficToInformationBoundary => [dynamicSoficSource, heatFlowSoficSource]
  | .soficToDiffusion => [dynamicSoficSource, searchInventorySource]
  | .thresholdToCompressionQuestion => [quadraticThresholdSource, searchInventorySource]

private def edgeAssumptions : SeedPaperEdge → List String
  | .spectrumToThomae =>
      ["linear chains are weighted by f^L with 0 < f < 1",
       "the Thomae comparison is the paper's sparse-limit asymptotic"]
  | .spectrumToFarey =>
      ["spectral peaks are indexed by coprime numerator-denominator pairs",
       "the selected peak sequence is monotone"]
  | .thomaeToDedekindEta =>
      ["0 < x < 1",
       "the modular parameter is x + i epsilon with epsilon tending to zero from above"]
  | .spectrumToLifshitz =>
      ["0 < f < 1",
       "the spectral parameter approaches the upper edge from below"]
  | .fareyToSofic =>
      ["a declared finite inventory and finite-state presentation"]
  | .zerosToCriticalStrip =>
      ["zeros are nontrivial zeta zeros with the pole and trivial zeros excluded"]
  | .zerosToExplicitFormula =>
      ["the test function belongs to Bombieri's stated Weil class W",
       "the Mellin transform and zero sum use the survey's convergence convention"]
  | .zerosToSpectralAnalogy =>
      ["the Hilbert--Polya statement is treated only as an analogy"]
  | .spectralAnalogyToDiffusion =>
      ["a declared finite inventory and finite graph operator"]
  | .couplingToLowerContainment =>
      ["log n is asymptotically smaller than d",
       "d is asymptotically smaller than n^(1/3) / log^2 n",
       "sqrt(d log n) <= xi(d) and xi(d) is asymptotically smaller than d",
       "the joint distribution is the Kim--Vu coupling"]
  | .couplingToUpperDefect =>
      ["the Kim--Vu Theorem 2 degree and xi(d) hypotheses",
       "the upper statement retains the maximum-degree defect bound"]
  | .couplingToMonotoneTransfer =>
      ["the graph property is increasingly monotone",
       "the transfer is interpreted in the Kim--Vu probability space"]
  | .lowerContainmentToSandwich =>
      ["the probabilistic containment event has been supplied"]
  | .upperDefectToSandwich =>
      ["a defect-aware relation or an exact-containment repair has been supplied"]
  | .mobiusToCharacterProxy =>
      ["the base field has odd characteristic p",
       "the Lemma 3.2 degree condition k != d + m holds",
       "a and M are coprime and the stated derivative-dependent modulus is used"]
  | .characterProxyToChowla =>
      ["p is an odd prime",
       "q is a power of p with q > p^2 k^2 e^2",
       "the polynomial shifts are distinct"]
  | .chowlaToWalkObservation =>
      ["the walk labels retain the function-field domain and the selected finite shifts"]
  | .mobiusToPrimeDistribution =>
      ["the modulus and residue satisfy the paper's squarefreeness and coprimality hypotheses",
       "the explicit q and level-of-distribution bounds are retained"]
  | .walkObservationToSofic =>
      ["a declared finite inventory and finite-state presentation"]
  | .soficToInformationBoundary =>
      ["losslessness is asserted only when an explicit reconstruction map is present"]
  | .soficToDiffusion =>
      ["a declared finite graph and explicit operator normalization"]
  | .thresholdToCompressionQuestion =>
      ["an exact parameter correspondence between rho and a"]

private def edgeObligations : SeedPaperEdge → List String
  | .fareyToSofic =>
      ["construct labelled states and prove all selected Farey transitions"]
  | .spectralAnalogyToDiffusion =>
      ["construct the finite graph operator; do not identify graph height with a zeta ordinate"]
  | .upperDefectToSandwich =>
      ["replace the defect bound by exact containment or retain a defect-aware upper interface"]
  | .chowlaToWalkObservation =>
      ["separate finite walk identities from asymptotic Chowla cancellation"]
  | .walkObservationToSofic =>
      ["prove label-transition compatibility and scoped language coverage"]
  | .soficToInformationBoundary =>
      ["supply a reconstruction map before claiming losslessness"]
  | .soficToDiffusion =>
      ["define weights, degree operator, Laplacian, spectrum, and heat semigroup"]
  | .thresholdToCompressionQuestion =>
      ["identify the domain and meaning of a",
       "prove an independent supplier for a <= 1/2; do not infer it from a <= 9/16"]
  | _ => []

private def seedPaperRecord (edge : SeedPaperEdge) :
    RelationshipRecord (seedPaperEdgeSource edge) (seedPaperEdgeTarget edge) where
  relationship := edgeClass edge
  mathematicalMeaning := edgeMeaning edge
  provenance := edgeProvenance edge
  assumptions := edgeAssumptions edge
  obligations := edgeObligations edge
  verification := inspectedNotRun

private def seedPaperRelation (source target : SeedConcept) : Prop :=
  ∃ edge : SeedPaperEdge,
    seedPaperEdgeSource edge = source ∧ seedPaperEdgeTarget edge = target

/-- In addition to curated paper edges, every indexed concept has a structural
edge to the inventory hub.  This makes the finite candidate graph source-connected
without turning indexing into mathematical entailment. -/
def seedCandidate (source target : SeedConcept) : Prop :=
  seedPaperRelation source target ∨
    (source ≠ .searchInventory ∧ target = .searchInventory)

private def seedPotentialRelation (source target : SeedConcept) : Prop :=
  ∃ edge : SeedPotentialEdge,
    seedPotentialEdgeSource edge = source ∧ seedPotentialEdgeTarget edge = target

def seedAdmissible (source target : SeedConcept) : Prop :=
  seedCandidate source target ∨ seedPotentialRelation source target

def seedCertified (_source _target : SeedConcept) : Prop := False

def seedSemantic (_source _target : SeedConcept) : Prop := False

private def seedCandidateRecordFor
    {source target : SeedConcept} (edge : seedCandidate source target) :
    RelationshipRecord source target := by
  rcases edge with paperEdge | ⟨notHub, targetHub⟩
  · rcases paperEdge with ⟨edgeId, sourceEq, targetEq⟩
    subst source
    subst target
    exact seedPaperRecord edgeId
  · subst target
    exact
      { relationship := .structuralCorrespondence
        mathematicalMeaning :=
          "This concept is explicitly indexed by the declared finite search inventory."
        provenance := [sourceForConcept source, searchInventorySource]
        assumptions := ["the current finite seed scope"]
        obligations := []
        verification := inspectedNotRun }

private def seedPotentialRecord
    (edge : SeedPotentialEdge) :
    RelationshipRecord (seedPotentialEdgeSource edge) (seedPotentialEdgeTarget edge) where
  relationship := .unresolvedSupplier
  mathematicalMeaning :=
    "This cross-source edge is admissible under the declared vocabulary but is not yet a candidate."
  provenance :=
    [sourceForConcept (seedPotentialEdgeSource edge),
      sourceForConcept (seedPotentialEdgeTarget edge)]
  assumptions := ["an exact typed bridge with preserved hypotheses"]
  obligations :=
    ["supply the mathematical bridge and then promote this edge to the candidate graph"]
  verification := inspectedNotRun

private def seedPotentialRecordFor
    {source target : SeedConcept} (edge : seedPotentialRelation source target) :
    RelationshipRecord source target := by
  rcases edge with ⟨edgeId, sourceEq, targetEq⟩
  subst source
  subst target
  exact seedPotentialRecord edgeId

private def seedAdmissibleRecordFor
    {source target : SeedConcept} (edge : seedAdmissible source target) :
    RelationshipRecord source target := by
  rcases edge with candidate | potential
  · exact seedCandidateRecordFor candidate
  · exact seedPotentialRecordFor potential

/-- The concrete initial source inventory.  Its lower graph is empty because no
paper-to-repository bridge in this new module has yet been compiled and kernel
checked.  This is deliberate rather than a completeness claim. -/
def seedInventory : SourceSearchInventory SeedConcept where
  vertices := Finset.univ
  certified := seedCertified
  candidate := seedCandidate
  admissible := seedAdmissible
  semantic := seedSemantic
  certified_le_candidate := by
    intro source target certified
    exact False.elim certified
  candidate_le_admissible := by
    intro source target candidate
    exact Or.inl candidate
  admissible_scoped := by
    intro source target _
    simp
  certified_sound := by
    intro source target certified
    exact False.elim certified
  candidateRecord := seedCandidateRecordFor
  admissibleRecord := seedAdmissibleRecordFor

/-- Every seed concept is the inventory hub or has a structural candidate edge
to it.  This is connectivity of source representation, not logical entailment. -/
theorem seed_source_connected (concept : SeedConcept) :
    concept = .searchInventory ∨ seedCandidate concept .searchInventory := by
  by_cases isHub : concept = .searchInventory
  · exact Or.inl isHub
  · exact Or.inr (Or.inr ⟨isHub, rfl⟩)

/-- Negative control: a source-grounded candidate edge is not thereby certified. -/
theorem spectrumToThomae_candidate_not_certified :
    seedInventory.candidate .linearChainSpectrum .thomaeFunction ∧
      ¬ seedInventory.certified .linearChainSpectrum .thomaeFunction := by
  constructor
  · exact Or.inl ⟨.spectrumToThomae, rfl, rfl⟩
  · simp [seedInventory, seedCertified]

/-- Negative control: no semantic consequence follows from the empty certified
seed relation.  Future promotion requires an actual proof in `certified_sound`. -/
theorem seed_has_no_certified_edge (source target : SeedConcept) :
    ¬ seedInventory.certified source target := by
  simp [seedInventory, seedCertified]


/-! ## Certified type coverage under weighted-sieve steering -/

/-- A type is detected at a finite depth only if a vertex of that type is
reachable by the *certified* relation and carries strictly positive
diffused sieve weight. Candidate-only edges do not count. The weights
are supplied data, not a heat-semigroup construction. -/
def SourceSearchInventory.sieveTypeHit
    {T : Type*} (inventory : SourceSearchInventory V)
    (source : V) (typeOf : V → T)
    (diffusedSieveWeight : ℕ → V → ℝ)
    (depth : ℕ) (targetType : T) : Prop :=
  ∃ vertex ∈ inventory.certifiedSearch source depth,
    typeOf vertex = targetType ∧ 0 < diffusedSieveWeight depth vertex

/-- Completeness is relative to the declared type space, certified
reachability and the supplied diffusion/sieve weights. -/
def SourceSearchInventory.sieveTypeCompleteAt
    {T : Type*} (inventory : SourceSearchInventory V)
    (source : V) (typeOf : V → T)
    (diffusedSieveWeight : ℕ → V → ℝ) (depth : ℕ) : Prop :=
  ∀ targetType : T,
    inventory.sieveTypeHit source typeOf diffusedSieveWeight depth targetType

/-- A positive sieve-weighted type witness retains a certified bounded
path. This theorem does not promote candidates to certified edges. -/
theorem SourceSearchInventory.sieveTypeHit_has_certifiedPath
    {T : Type*} (inventory : SourceSearchInventory V)
    (source : V) (typeOf : V → T)
    (diffusedSieveWeight : ℕ → V → ℝ)
    (depth : ℕ) (targetType : T)
    (hit : inventory.sieveTypeHit source typeOf
      diffusedSieveWeight depth targetType) :
    ∃ vertex : V, ∃ length : ℕ,
      length ≤ depth ∧
      BoundedPath inventory.certified length source vertex ∧
      typeOf vertex = targetType ∧
      0 < diffusedSieveWeight depth vertex := by
  rcases hit with ⟨vertex, member, sameType, positive⟩
  obtain ⟨length, hlength, path⟩ :=
    exists_boundedPath_of_mem_reachableWithin
      inventory.vertices inventory.certified source vertex depth member
  exact ⟨vertex, length, hlength, path, sameType, positive⟩

/-- For a *finite* type space, per-type asymptotic steering to a
positive certified witness gives a uniform stage after which every
type is detected at every depth. The per-type steering premise is a
genuine additional supplier, not a consequence of graph connectivity
or positivity of an arbitrary heat kernel. -/
theorem SourceSearchInventory.sieveTypeComplete_eventually_of_steering
    {T : Type*} [Fintype T]
    (inventory : SourceSearchInventory V) (source : V)
    (typeOf : V → T) (diffusedSieveWeight : ℕ → V → ℝ)
    (hsteering : ∀ targetType : T, ∃ cutoff : ℕ, ∀ depth : ℕ,
      cutoff ≤ depth →
        inventory.sieveTypeHit source typeOf
          diffusedSieveWeight depth targetType) :
    ∃ cutoff : ℕ, ∀ depth : ℕ, cutoff ≤ depth →
      inventory.sieveTypeCompleteAt source typeOf
        diffusedSieveWeight depth := by
  classical
  choose cutoff hcutoff using hsteering
  refine ⟨Finset.univ.sup cutoff, ?_⟩
  intro depth hdepth targetType
  exact hcutoff targetType depth
    ((Finset.le_sup (Finset.mem_univ targetType)).trans hdepth)

/-- Missing certified access to one type defeats type completeness at
that depth regardless of the assigned sieve/diffusion weights. -/
theorem SourceSearchInventory.not_sieveTypeCompleteAt_of_missing_type
    {T : Type*} (inventory : SourceSearchInventory V)
    (source : V) (typeOf : V → T)
    (diffusedSieveWeight : ℕ → V → ℝ)
    (depth : ℕ) (targetType : T)
    (missing : ∀ vertex ∈ inventory.certifiedSearch source depth,
      typeOf vertex ≠ targetType) :
    ¬ inventory.sieveTypeCompleteAt source typeOf
      diffusedSieveWeight depth := by
  intro complete
  obtain ⟨vertex, member, sameType, _⟩ := complete targetType
  exact (missing vertex member) sameType


/-- Total weighted-sieve/diffusion mass assigned to a target type
*among certified-reachable vertices*. This is an abstract observable,
not yet the concrete heat-semigroup mass from an operator model. -/
noncomputable def SourceSearchInventory.sieveTypeMass
    {T : Type*} (inventory : SourceSearchInventory V)
    (source : V) (typeOf : V → T)
    (diffusedSieveWeight : ℕ → V → ℝ)
    (depth : ℕ) (targetType : T) : ℝ := by
  classical
  exact ((inventory.certifiedSearch source depth).filter
    (fun vertex => typeOf vertex = targetType)).sum
    (fun vertex => diffusedSieveWeight depth vertex)

/-- Positive aggregate mass on a finite certified type fiber yields
a positive-weight certified vertex. No nonnegativity hypothesis is
needed for this implication: if every summand were nonpositive, the
finite sum could not be positive. -/
theorem SourceSearchInventory.sieveTypeHit_of_mass_pos
    {T : Type*} (inventory : SourceSearchInventory V)
    (source : V) (typeOf : V → T)
    (diffusedSieveWeight : ℕ → V → ℝ)
    (depth : ℕ) (targetType : T)
    (massPos : 0 < inventory.sieveTypeMass source typeOf
      diffusedSieveWeight depth targetType) :
    inventory.sieveTypeHit source typeOf
      diffusedSieveWeight depth targetType := by
  classical
  by_contra noHit
  have hnonpos :
      inventory.sieveTypeMass source typeOf
        diffusedSieveWeight depth targetType ≤ 0 := by
    unfold SourceSearchInventory.sieveTypeMass
    apply Finset.sum_nonpos
    intro vertex member
    have typed := Finset.mem_filter.mp member
    by_contra notNonpos
    have positive : 0 < diffusedSieveWeight depth vertex :=
      lt_of_not_ge notNonpos
    exact noHit ⟨vertex, typed.1, typed.2, positive⟩
  exact (not_lt_of_ge hnonpos) massPos

/-- A positive-weight witness in the finite certified type fiber gives
positive total mass when the supplied weights are nonnegative on the
certified-reachable set. The weight condition is essential: signed
cancellation can make a positive witness coexist with nonpositive mass. -/
theorem SourceSearchInventory.sieveTypeMass_pos_of_hit
    {T : Type*} (inventory : SourceSearchInventory V)
    (source : V) (typeOf : V → T)
    (diffusedSieveWeight : ℕ → V → ℝ)
    (depth : ℕ) (targetType : T)
    (weight_nonneg : ∀ vertex ∈ inventory.certifiedSearch source depth,
      0 ≤ diffusedSieveWeight depth vertex)
    (hit : inventory.sieveTypeHit source typeOf
      diffusedSieveWeight depth targetType) :
    0 < inventory.sieveTypeMass source typeOf
      diffusedSieveWeight depth targetType := by
  classical
  rcases hit with ⟨vertex, member, sameType, positive⟩
  unfold SourceSearchInventory.sieveTypeMass
  apply Finset.sum_pos'
  · intro v hv
    exact weight_nonneg v (Finset.mem_filter.mp hv).1
  · exact ⟨vertex, Finset.mem_filter.mpr ⟨member, sameType⟩, positive⟩

/-- Exactly positive finite type mass is equivalent to a positive
certified witness, provided weights are nonnegative on certified
vertices. No probabilistic normalization or asymptotic supplier is
silently assumed. -/
theorem SourceSearchInventory.sieveTypeMass_pos_iff_hit_of_nonneg
    {T : Type*} (inventory : SourceSearchInventory V)
    (source : V) (typeOf : V → T)
    (diffusedSieveWeight : ℕ → V → ℝ)
    (depth : ℕ) (targetType : T)
    (weight_nonneg : ∀ vertex ∈ inventory.certifiedSearch source depth,
      0 ≤ diffusedSieveWeight depth vertex) :
    (0 < inventory.sieveTypeMass source typeOf
      diffusedSieveWeight depth targetType) ↔
      inventory.sieveTypeHit source typeOf
        diffusedSieveWeight depth targetType := by
  constructor
  · exact inventory.sieveTypeHit_of_mass_pos
      source typeOf diffusedSieveWeight depth targetType
  · exact inventory.sieveTypeMass_pos_of_hit
      source typeOf diffusedSieveWeight depth targetType weight_nonneg

/-- Finite completeness of the declared type space can be checked
fiberwise by strictly positive certified aggregate mass, not just
unweighted candidate reachability. This is finite coverage, not an
asymptotic estimate or a theorem about exact type decoders. -/
theorem SourceSearchInventory.sieveTypeCompleteAt_iff_all_mass_pos_of_nonneg
    {T : Type*} (inventory : SourceSearchInventory V)
    (source : V) (typeOf : V → T)
    (diffusedSieveWeight : ℕ → V → ℝ)
    (depth : ℕ)
    (weight_nonneg : ∀ vertex ∈ inventory.certifiedSearch source depth,
      0 ≤ diffusedSieveWeight depth vertex) :
    inventory.sieveTypeCompleteAt source typeOf
      diffusedSieveWeight depth ↔
      ∀ targetType : T,
        0 < inventory.sieveTypeMass source typeOf
          diffusedSieveWeight depth targetType := by
  constructor
  · intro complete targetType
    exact inventory.sieveTypeMass_pos_of_hit
      source typeOf diffusedSieveWeight depth targetType
      weight_nonneg (complete targetType)
  · intro masses targetType
    exact inventory.sieveTypeHit_of_mass_pos
      source typeOf diffusedSieveWeight depth targetType
      (masses targetType)

/-- The same weighted type-fiber mass is obtained after passing through
a feature map, but only when the type label factors through that feature
on every certified-reachable vertex. This is an explicit
fiber-preservation premise, not a claim that a radical feature is
injective or that exact type recovery is always possible. -/
theorem SourceSearchInventory.sieveTypeMass_eq_feature_fiber
    {Feature T : Type*} (inventory : SourceSearchInventory V)
    (source : V) (feature : V → Feature)
    (typeOf : V → T) (featureType : Feature → T)
    (diffusedSieveWeight : ℕ → V → ℝ)
    (depth : ℕ) (targetType : T)
    (fiber_preserving :
      ∀ vertex ∈ inventory.certifiedSearch source depth,
        typeOf vertex = featureType (feature vertex)) :
    inventory.sieveTypeMass source typeOf diffusedSieveWeight
      depth targetType =
    inventory.sieveTypeMass source
      (fun vertex => featureType (feature vertex))
      diffusedSieveWeight depth targetType := by
  classical
  unfold SourceSearchInventory.sieveTypeMass
  apply Finset.sum_congr
  · ext vertex
    simp only [Finset.mem_filter]
    constructor
    · rintro ⟨reachable, typed⟩
      refine ⟨reachable, ?_⟩
      rw [← fiber_preserving vertex reachable]
      exact typed
    · rintro ⟨reachable, typed⟩
      refine ⟨reachable, ?_⟩
      rw [fiber_preserving vertex reachable]
      exact typed
  · intro vertex _
    rfl

/-- A collision in the observed feature on two certified-reachable
vertices carrying distinct required labels obstructs any *exact*
feature-only type map on that scope. It does not obstruct positive mass
on both type fibers; a sieve may retain extra multiplicity-sensitive
data. Instantiate `feature` with the K₀-shaped radical observable only
after choosing an explicit arithmetic-state adapter. -/
theorem SourceSearchInventory.no_exact_feature_type_of_collision
    {Feature T : Type*} (inventory : SourceSearchInventory V)
    (source : V) (typeOf : V → T) (feature : V → Feature)
    (depth : ℕ) {a b : V}
    (a_reachable : a ∈ inventory.certifiedSearch source depth)
    (b_reachable : b ∈ inventory.certifiedSearch source depth)
    (sameFeature : feature a = feature b)
    (differentType : typeOf a ≠ typeOf b) :
    ¬ ∃ featureType : Feature → T,
        ∀ vertex ∈ inventory.certifiedSearch source depth,
          typeOf vertex = featureType (feature vertex) := by
  rintro ⟨featureType, fiber_preserving⟩
  apply differentType
  calc
    typeOf a = featureType (feature a) :=
      fiber_preserving a a_reachable
    _ = featureType (feature b) := congrArg featureType sameFeature
    _ = typeOf b := (fiber_preserving b b_reachable).symm

/-- Finite-type completeness follows from **per-type eventual positive
aggregate diffused-sieve mass on certified reachable fibers**. The
positivity/steering premise remains an independent analytic/graph
supplier: it is not derived here from a spectral semigroup or
candidate-only sieve search. -/
theorem SourceSearchInventory.sieveTypeComplete_eventually_of_mass_steering
    {T : Type*} [Fintype T]
    (inventory : SourceSearchInventory V) (source : V)
    (typeOf : V → T) (diffusedSieveWeight : ℕ → V → ℝ)
    (hsteering : ∀ targetType : T, ∃ cutoff : ℕ, ∀ depth : ℕ,
      cutoff ≤ depth →
        0 < inventory.sieveTypeMass source typeOf
          diffusedSieveWeight depth targetType) :
    ∃ cutoff : ℕ, ∀ depth : ℕ, cutoff ≤ depth →
      inventory.sieveTypeCompleteAt source typeOf
        diffusedSieveWeight depth := by
  apply inventory.sieveTypeComplete_eventually_of_steering
    source typeOf diffusedSieveWeight
  intro targetType
  obtain ⟨cutoff, eventuallyPositive⟩ := hsteering targetType
  refine ⟨cutoff, ?_⟩
  intro depth depthLe
  exact inventory.sieveTypeHit_of_mass_pos
    source typeOf diffusedSieveWeight depth targetType
    (eventuallyPositive depth depthLe)


/-- Quantitative asymptotic steering: every required type has a
positive baseline mass margin, and the certified weighted-sieve mass
is no smaller than its baseline minus an error which eventually falls
strictly below the margin. Then all types are eventually detected.

The error estimate and the positivity of a concrete heat/diffusion
kernel remain separate analytic and graph-theoretic suppliers. -/
theorem SourceSearchInventory.sieveTypeComplete_eventually_of_steering_error
    {T : Type*} (inventory : SourceSearchInventory V) (source : V)
    (typeOf : V → T) (diffusedSieveWeight : ℕ → V → ℝ)
    (baselineMass : T → ℝ) (error : ℕ → ℝ) (margin : ℝ)
    (margin_pos : 0 < margin)
    (baseline_lower : ∀ targetType : T, margin ≤ baselineMass targetType)
    (mass_lower : ∀ depth : ℕ, ∀ targetType : T,
      baselineMass targetType ≤
        inventory.sieveTypeMass source typeOf
          diffusedSieveWeight depth targetType + error depth)
    (error_eventually_small : ∃ cutoff : ℕ, ∀ depth : ℕ,
      cutoff ≤ depth → error depth < margin) :
    ∃ cutoff : ℕ, ∀ depth : ℕ, cutoff ≤ depth →
      inventory.sieveTypeCompleteAt source typeOf
        diffusedSieveWeight depth := by
  obtain ⟨cutoff, hsmall⟩ := error_eventually_small
  refine ⟨cutoff, ?_⟩
  intro depth hdepth targetType
  apply inventory.sieveTypeHit_of_mass_pos
    source typeOf diffusedSieveWeight depth targetType
  have hbaseline := baseline_lower targetType
  have hmass := mass_lower depth targetType
  have herr := hsmall depth hdepth
  linarith

/-! ## Finite, mass-preserving weighted-sieve transition kernels

This is a finite row-stochastic construction. It does not instantiate
an analytic heat semigroup or assert that the kernel follows the
certified graph; those are separate compatibility obligations.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/

/-- A nonnegative row-stochastic kernel restricted to a finite scope.
Transitions outside the declared scope are not used for mass totals. -/
structure FiniteSieveMarkovKernel (State : Type u) where
  scope : Finset State
  transition : State → State → ℝ
  transition_nonneg :
    ∀ x ∈ scope, ∀ y ∈ scope, 0 ≤ transition x y
  row_sum_one :
    ∀ x ∈ scope, (∑ y ∈ scope, transition x y) = 1

namespace FiniteSieveMarkovKernel

variable {State : Type u} [DecidableEq State]

/-- One exact finite diffusion step of the supplied weight distribution.
The orientation is source x to target y. -/
noncomputable def step (K : FiniteSieveMarkovKernel State)
    (weight : State → ℝ) (target : State) : ℝ :=
  ∑ x ∈ K.scope, weight x * K.transition x target

/-- Nonnegative input weights remain nonnegative on the finite scope. -/
theorem step_nonneg (K : FiniteSieveMarkovKernel State)
    (weight : State → ℝ)
    (weight_nonneg : ∀ x ∈ K.scope, 0 ≤ weight x)
    (target : State) (target_mem : target ∈ K.scope) :
    0 ≤ K.step weight target := by
  unfold step
  apply Finset.sum_nonneg
  intro x hx
  exact mul_nonneg (weight_nonneg x hx)
    (K.transition_nonneg x hx target target_mem)

/-- Row stochasticity, not symmetry, preserves the total finite mass
under one step. This identity does not require positive total mass. -/
theorem sum_step_eq_sum (K : FiniteSieveMarkovKernel State)
    (weight : State → ℝ) :
    (∑ y ∈ K.scope, K.step weight y) =
      ∑ x ∈ K.scope, weight x := by
  calc
    (∑ y ∈ K.scope, K.step weight y) =
        ∑ x ∈ K.scope, ∑ y ∈ K.scope,
          weight x * K.transition x y := by
      change (∑ y ∈ K.scope, ∑ x ∈ K.scope,
        weight x * K.transition x y) =
          ∑ x ∈ K.scope, ∑ y ∈ K.scope,
            weight x * K.transition x y
      exact Finset.sum_comm
    _ = ∑ x ∈ K.scope, weight x := by
      apply Finset.sum_congr rfl
      intro x hx
      calc
        (∑ y ∈ K.scope, weight x * K.transition x y) =
            weight x * (∑ y ∈ K.scope, K.transition x y) := by
              rw [Finset.mul_sum]
        _ = weight x := by
          rw [K.row_sum_one x hx, mul_one]

/-- A strictly positive one-step output is equivalent to a source
with positive input weight and a strictly positive transition.
Nonnegative input weights and transition coefficients are essential. -/
theorem step_pos_iff (K : FiniteSieveMarkovKernel State)
    (weight : State → ℝ)
    (weight_nonneg : ∀ x ∈ K.scope, 0 ≤ weight x)
    (target : State) (target_mem : target ∈ K.scope) :
    0 < K.step weight target ↔
      ∃ x ∈ K.scope, 0 < weight x ∧ 0 < K.transition x target := by
  unfold step
  have hsum :
      (0 < ∑ x ∈ K.scope, weight x * K.transition x target) ↔
        ∃ x ∈ K.scope, 0 < weight x * K.transition x target :=
    Finset.sum_pos_iff_of_nonneg
      (fun x hx => mul_nonneg (weight_nonneg x hx)
        (K.transition_nonneg x hx target target_mem))
  constructor
  · intro hpos
    obtain ⟨x, hx, hprod⟩ := hsum.mp hpos
    have hw : 0 < weight x := by
      by_contra hnot
      have hzero : weight x = 0 :=
        le_antisymm (le_of_not_gt hnot) (weight_nonneg x hx)
      simp [hzero] at hprod
    have hp : 0 < K.transition x target := by
      by_contra hnot
      have hzero : K.transition x target = 0 :=
        le_antisymm (le_of_not_gt hnot)
          (K.transition_nonneg x hx target target_mem)
      simp [hzero] at hprod
    exact ⟨x, hx, hw, hp⟩
  · rintro ⟨x, hx, hw, hp⟩
    exact hsum.mpr ⟨x, hx, mul_pos hw hp⟩

/-- Iterate the same finite transition kernel. No convergence or
spectral gap claim is made by this finite recursion. -/
noncomputable def evolve (K : FiniteSieveMarkovKernel State)
    (weight : State → ℝ) : ℕ → State → ℝ
  | 0 => weight
  | depth + 1 => K.step (K.evolve weight depth)

/-- Every finite iterate retains nonnegative weights on the scope. -/
theorem evolve_nonneg (K : FiniteSieveMarkovKernel State)
    (weight : State → ℝ)
    (weight_nonneg : ∀ x ∈ K.scope, 0 ≤ weight x) :
    ∀ depth : ℕ, ∀ target ∈ K.scope,
      0 ≤ K.evolve weight depth target := by
  intro depth
  induction depth with
  | zero =>
      intro target ht
      exact weight_nonneg target ht
  | succ depth ih =>
      intro target ht
      exact K.step_nonneg (K.evolve weight depth) ih target ht

/-- Every finite iterate preserves total mass by row stochasticity. -/
theorem sum_evolve_eq_sum (K : FiniteSieveMarkovKernel State)
    (weight : State → ℝ) (depth : ℕ) :
    (∑ target ∈ K.scope, K.evolve weight depth target) =
      ∑ source ∈ K.scope, weight source := by
  induction depth with
  | zero => rfl
  | succ depth ih =>
      calc
        (∑ target ∈ K.scope, K.evolve weight (depth + 1) target) =
            ∑ target ∈ K.scope, K.evolve weight depth target :=
          K.sum_step_eq_sum (K.evolve weight depth)
        _ = ∑ source ∈ K.scope, weight source := ih

/-- Positive transition path of exact length, retaining each
intermediate state in the finite scope. In particular, all transition
factors along this path are strictly positive. -/
def positivePath (K : FiniteSieveMarkovKernel State) :
    ℕ → State → State → Prop
  | 0, source, target => source = target
  | depth + 1, source, target =>
      ∃ middle ∈ K.scope,
        K.positivePath depth source middle ∧
          0 < K.transition middle target

/-- Positive mass after exactly n transitions is equivalent to an
initial positive-weight source connected to the target through n
strictly positive transitions. Target membership and nonnegative
initial weights remain explicit. -/
theorem evolve_pos_iff_positivePath
    (K : FiniteSieveMarkovKernel State) (weight : State → ℝ)
    (weight_nonneg : ∀ x ∈ K.scope, 0 ≤ weight x) :
    ∀ depth : ℕ, ∀ target ∈ K.scope,
      (0 < K.evolve weight depth target ↔
        ∃ source ∈ K.scope, 0 < weight source ∧
          K.positivePath depth source target) := by
  intro depth
  induction depth with
  | zero =>
      intro target ht
      change (0 < weight target) ↔
        ∃ source ∈ K.scope, 0 < weight source ∧ source = target
      constructor
      · intro hpos
        exact ⟨target, ht, hpos, rfl⟩
      · rintro ⟨source, hs, hpos, rfl⟩
        exact hpos
  | succ depth ih =>
      intro target ht
      change (0 < K.step (K.evolve weight depth) target) ↔
        ∃ source ∈ K.scope, 0 < weight source ∧
          ∃ middle ∈ K.scope,
            K.positivePath depth source middle ∧
              0 < K.transition middle target
      rw [K.step_pos_iff (K.evolve weight depth)
        (K.evolve_nonneg weight weight_nonneg depth) target ht]
      constructor
      · rintro ⟨middle, hm, hprevious, htransition⟩
        obtain ⟨source, hs, hinitial, hpath⟩ :=
          (ih middle hm).mp hprevious
        exact ⟨source, hs, hinitial, middle, hm, hpath, htransition⟩
      · rintro ⟨source, hs, hinitial, middle, hm, hpath, htransition⟩
        exact ⟨middle, hm,
          (ih middle hm).mpr ⟨source, hs, hinitial, hpath⟩,
          htransition⟩

/-- Total mass of one exact type in the finite state scope after the
given number of iterations. The type classifier is supplied explicitly. -/
noncomputable def typeMass {TypeLabel : Type*}
    (K : FiniteSieveMarkovKernel State) (weight : State → ℝ)
    (typeOf : State → TypeLabel) (depth : ℕ)
    (targetType : TypeLabel) : ℝ := by
  classical
  exact ((K.scope).filter (fun target => typeOf target = targetType)).sum
    (fun target => K.evolve weight depth target)

/-- A target type receives positive finite mass after n transitions
iff a positive initial state admits an exact length-n path of
strictly positive kernel transitions to some state of that type.
This is finite positive coverage, not asymptotic steering. -/
theorem typeMass_pos_iff_positivePath
    {TypeLabel : Type*}
    (K : FiniteSieveMarkovKernel State)
    (weight : State → ℝ)
    (weight_nonneg : ∀ x ∈ K.scope, 0 ≤ weight x)
    (typeOf : State → TypeLabel)
    (depth : ℕ) (targetType : TypeLabel) :
    0 < K.typeMass weight typeOf depth targetType ↔
      ∃ target ∈ K.scope,
        typeOf target = targetType ∧
          ∃ source ∈ K.scope,
            0 < weight source ∧
              K.positivePath depth source target := by
  classical
  unfold typeMass
  have hsum :
      (0 < ∑ target ∈
        K.scope.filter (fun target => typeOf target = targetType),
          K.evolve weight depth target) ↔
      ∃ target ∈
        K.scope.filter (fun target => typeOf target = targetType),
          0 < K.evolve weight depth target :=
    Finset.sum_pos_iff_of_nonneg
      (fun target ht =>
        K.evolve_nonneg weight weight_nonneg depth target
          (Finset.mem_filter.mp ht).1)
  constructor
  · intro hpositive
    obtain ⟨target, ht, htarget⟩ := hsum.mp hpositive
    obtain ⟨hscope, htype⟩ := Finset.mem_filter.mp ht
    obtain ⟨source, hs, hsource, hpath⟩ :=
      (K.evolve_pos_iff_positivePath
        weight weight_nonneg depth target hscope).mp htarget
    exact ⟨target, hscope, htype, source, hs, hsource, hpath⟩
  · rintro ⟨target, ht, htype, source, hs, hsource, hpath⟩
    apply hsum.mpr
    exact ⟨target, Finset.mem_filter.mpr ⟨ht, htype⟩,
      (K.evolve_pos_iff_positivePath
        weight weight_nonneg depth target ht).mpr
          ⟨source, hs, hsource, hpath⟩⟩

/-- A positive kernel path becomes an actual certified bounded graph path
only when every positive in-scope transition is a certified edge.
This prevents arbitrary stochastic jumps from being mistaken for
certified graph reachability. -/
theorem positivePath_to_certifiedPath
    (K : FiniteSieveMarkovKernel State)
    (inventory : SourceSearchInventory State)
    (support_certified :
      ∀ x ∈ K.scope, ∀ y ∈ K.scope,
        0 < K.transition x y → inventory.certified x y)
    (depth : ℕ) (source target : State)
    (target_mem : target ∈ K.scope)
    (path : K.positivePath depth source target) :
    BoundedPath inventory.certified depth source target := by
  induction depth generalizing target with
  | zero =>
      change source = target at path
      subst target
      exact BoundedPath.refl source
  | succ depth ih =>
      change ∃ middle ∈ K.scope,
        K.positivePath depth source middle ∧
          0 < K.transition middle target at path
      rcases path with ⟨middle, hm, prefix, positive⟩
      exact BoundedPath.tail (ih middle hm prefix)
        (support_certified middle hm target target_mem positive)

/-- Convert an explicitly nonnegative finite target-weight function
with positive normalizer into a source-independent row-stochastic
kernel. This is a one-step reset kernel, not a graph-local heat
semigroup. Out-of-scope transitions are defined to be zero. -/
noncomputable def normalizedTargetKernel
    (scope : Finset State) (targetWeight : State → ℝ)
    (weight_nonneg : ∀ y ∈ scope, 0 ≤ targetWeight y)
    (normalizer_pos : 0 < ∑ y ∈ scope, targetWeight y) :
    FiniteSieveMarkovKernel State where
  scope := scope
  transition := fun _ y =>
    if y ∈ scope then
      targetWeight y / (∑ z ∈ scope, targetWeight z)
    else 0
  transition_nonneg := by
    intro x hx y hy
    simp only [if_pos hy]
    exact div_nonneg (weight_nonneg y hy) normalizer_pos.le
  row_sum_one := by
    intro x hx
    have hsum :
        (∑ y ∈ scope,
          if y ∈ scope then
            targetWeight y / (∑ z ∈ scope, targetWeight z)
          else 0) =
        ∑ y ∈ scope,
          targetWeight y / (∑ z ∈ scope, targetWeight z) := by
      apply Finset.sum_congr rfl
      intro y hy
      simp only [if_pos hy]
    rw [hsum]
    simp_rw [div_eq_mul_inv]
    rw [← Finset.sum_mul]
    exact mul_inv_cancel₀ (ne_of_gt normalizer_pos)

/-- The reset kernel's in-scope positive transition support consists
exactly of strictly positive target sieve weights. Every in-scope
source shares this support; it is not asserted to be certified by an
arbitrary graph inventory. -/
theorem normalizedTargetKernel_transition_pos_iff
    (scope : Finset State) (targetWeight : State → ℝ)
    (weight_nonneg : ∀ y ∈ scope, 0 ≤ targetWeight y)
    (normalizer_pos : 0 < ∑ y ∈ scope, targetWeight y)
    (source target : State) (target_mem : target ∈ scope) :
    0 < (normalizedTargetKernel scope targetWeight
      weight_nonneg normalizer_pos).transition source target ↔
        0 < targetWeight target := by
  change 0 < (if target ∈ scope then
    targetWeight target / (∑ y ∈ scope, targetWeight y)
    else 0) ↔ 0 < targetWeight target
  rw [if_pos target_mem]
  exact div_pos_iff_of_pos_right normalizer_pos

/-- A reset kernel has no transitions into vertices outside scope. -/
theorem normalizedTargetKernel_transition_zero_of_not_mem
    (scope : Finset State) (targetWeight : State → ℝ)
    (weight_nonneg : ∀ y ∈ scope, 0 ≤ targetWeight y)
    (normalizer_pos : 0 < ∑ y ∈ scope, targetWeight y)
    (source target : State) (target_not_mem : target ∉ scope) :
    (normalizedTargetKernel scope targetWeight
      weight_nonneg normalizer_pos).transition source target = 0 := by
  change (if target ∈ scope then
    targetWeight target / (∑ y ∈ scope, targetWeight y)
    else 0) = 0
  simp only [if_neg target_not_mem]

/-- If the initial distribution already sums to one, this reset
kernel produces its normalized target-weight distribution in one
step, independently of the starting distribution. No asymptotic
mixing assertion is involved. -/
theorem normalizedTargetKernel_step_of_unit_mass
    (scope : Finset State) (targetWeight initial : State → ℝ)
    (weight_nonneg : ∀ y ∈ scope, 0 ≤ targetWeight y)
    (normalizer_pos : 0 < ∑ y ∈ scope, targetWeight y)
    (initial_mass_one : (∑ x ∈ scope, initial x) = 1)
    (target : State) (target_mem : target ∈ scope) :
    (normalizedTargetKernel scope targetWeight
      weight_nonneg normalizer_pos).step initial target =
      targetWeight target / (∑ y ∈ scope, targetWeight y) := by
  unfold FiniteSieveMarkovKernel.step
  change (∑ x ∈ scope,
    initial x * (if target ∈ scope then
      targetWeight target / (∑ y ∈ scope, targetWeight y)
    else 0)) =
    targetWeight target / (∑ y ∈ scope, targetWeight y)
  simp only [if_pos target_mem]
  rw [← Finset.sum_mul, initial_mass_one, one_mul]

/-- Normalize a *source-dependent* finite nonnegative edge-weight
function, requiring positive row mass for every in-scope source.
Unlike `normalizedTargetKernel`, the resulting transition kernel
need not have identical rows. It does not certify graph edges unless
a separate support theorem is supplied. -/
noncomputable def normalizedEdgeKernel
    (vertices : Finset State) (edgeWeight : State → State → ℝ)
    (edge_nonneg :
      ∀ x ∈ vertices, ∀ y ∈ vertices, 0 ≤ edgeWeight x y)
    (row_pos :
      ∀ x ∈ vertices, 0 < ∑ y ∈ vertices, edgeWeight x y) :
    FiniteSieveMarkovKernel State where
  scope := vertices
  transition := fun x y =>
    if y ∈ vertices then
      edgeWeight x y / (∑ z ∈ vertices, edgeWeight x z)
    else 0
  transition_nonneg := by
    intro x hx y hy
    change 0 ≤ (if y ∈ vertices then
      edgeWeight x y / (∑ z ∈ vertices, edgeWeight x z)
      else 0)
    rw [if_pos hy]
    exact div_nonneg (edge_nonneg x hx y hy) (row_pos x hx).le
  row_sum_one := by
    intro x hx
    change (∑ y ∈ vertices,
      if y ∈ vertices then
        edgeWeight x y / (∑ z ∈ vertices, edgeWeight x z)
      else 0) = 1
    calc
      (∑ y ∈ vertices,
        if y ∈ vertices then
          edgeWeight x y / (∑ z ∈ vertices, edgeWeight x z)
        else 0) =
          ∑ y ∈ vertices,
            edgeWeight x y / (∑ z ∈ vertices, edgeWeight x z) := by
        apply Finset.sum_congr rfl
        intro y hy
        simp only [if_pos hy]
      _ = 1 := by
        simp_rw [div_eq_mul_inv]
        rw [← Finset.sum_mul]
        exact mul_inv_cancel₀ (ne_of_gt (row_pos x hx))

/-- A normalized edge transition is strictly positive on in-scope
endpoints exactly when its original edge weight is positive. The
denominator positivity is an explicit construction premise. -/
theorem normalizedEdgeKernel_transition_pos_iff
    (vertices : Finset State) (edgeWeight : State → State → ℝ)
    (edge_nonneg :
      ∀ x ∈ vertices, ∀ y ∈ vertices, 0 ≤ edgeWeight x y)
    (row_pos :
      ∀ x ∈ vertices, 0 < ∑ y ∈ vertices, edgeWeight x y)
    (x y : State) (hx : x ∈ vertices) (hy : y ∈ vertices) :
    0 < (normalizedEdgeKernel vertices edgeWeight
      edge_nonneg row_pos).transition x y ↔ 0 < edgeWeight x y := by
  change 0 < (if y ∈ vertices then
    edgeWeight x y / (∑ z ∈ vertices, edgeWeight x z)
    else 0) ↔ 0 < edgeWeight x y
  rw [if_pos hy]
  exact div_pos_iff_of_pos_right (row_pos x hx)

/-- Normalized edge kernels have no transitions into states outside
the prescribed finite scope. -/
theorem normalizedEdgeKernel_transition_zero_of_not_mem
    (vertices : Finset State) (edgeWeight : State → State → ℝ)
    (edge_nonneg :
      ∀ x ∈ vertices, ∀ y ∈ vertices, 0 ≤ edgeWeight x y)
    (row_pos :
      ∀ x ∈ vertices, 0 < ∑ y ∈ vertices, edgeWeight x y)
    (x y : State) (hy : y ∉ vertices) :
    (normalizedEdgeKernel vertices edgeWeight
      edge_nonneg row_pos).transition x y = 0 := by
  change (if y ∈ vertices then
    edgeWeight x y / (∑ z ∈ vertices, edgeWeight x z)
    else 0) = 0
  simp only [if_neg hy]

end FiniteSieveMarkovKernel

/-- A finite Markov type mass agrees with the existing certified
sieveTypeMass at a fixed search depth, provided the kernel scope
is exactly the certified-reachable set at that depth.
No statement about the kernel's positive-edge support follows
from the scope equality alone. -/
theorem SourceSearchInventory.sieveTypeMass_eq_kernelTypeMass_of_scope
    {TypeLabel : Type*}
    (inventory : SourceSearchInventory V) (source : V)
    (typeOf : V → TypeLabel)
    (K : FiniteSieveMarkovKernel V) (searchDepth : ℕ)
    (scope_eq : K.scope = inventory.certifiedSearch source searchDepth)
    (weight : V → ℝ) (steps : ℕ)
    (targetType : TypeLabel) :
    inventory.sieveTypeMass source typeOf
      (fun _ vertex => K.evolve weight steps vertex)
      searchDepth targetType =
        K.typeMass weight typeOf steps targetType := by
  classical
  unfold SourceSearchInventory.sieveTypeMass FiniteSieveMarkovKernel.typeMass
  rw [← scope_eq]

/-- A certified type hit for the Markov-evolved weights is equivalent
to a positive-kernel-path witness within the declared finite scope.
The scope equivalence and nonnegative initial weights are explicit. -/
theorem SourceSearchInventory.sieveTypeHit_iff_kernelPath_of_scope
    {TypeLabel : Type*}
    (inventory : SourceSearchInventory V) (source : V)
    (typeOf : V → TypeLabel)
    (K : FiniteSieveMarkovKernel V) (searchDepth : ℕ)
    (scope_eq : K.scope = inventory.certifiedSearch source searchDepth)
    (weight : V → ℝ)
    (weight_nonneg : ∀ vertex ∈ K.scope, 0 ≤ weight vertex)
    (steps : ℕ) (targetType : TypeLabel) :
    inventory.sieveTypeHit source typeOf
        (fun _ vertex => K.evolve weight steps vertex)
        searchDepth targetType ↔
      ∃ target ∈ K.scope, typeOf target = targetType ∧
        ∃ start ∈ K.scope, 0 < weight start ∧
          K.positivePath steps start target := by
  unfold SourceSearchInventory.sieveTypeHit
  constructor
  · rintro ⟨target, reachable, sameType, positive⟩
    have target_mem : target ∈ K.scope := by
      simpa only [scope_eq] using reachable
    obtain ⟨start, start_mem, positiveStart, path⟩ :=
      (K.evolve_pos_iff_positivePath weight weight_nonneg
        steps target target_mem).mp positive
    exact ⟨target, target_mem, sameType,
      start, start_mem, positiveStart, path⟩
  · rintro ⟨target, target_mem, sameType,
      start, start_mem, positiveStart, path⟩
    have reachable :
        target ∈ inventory.certifiedSearch source searchDepth := by
      simpa only [scope_eq] using target_mem
    exact ⟨target, reachable, sameType,
      (K.evolve_pos_iff_positivePath weight weight_nonneg
        steps target target_mem).mpr
          ⟨start, start_mem, positiveStart, path⟩⟩

/-- Exact finite certified type completeness for a Markov-evolved
weight field is equivalent to positive kernel paths reaching
each type fiber. This theorem is finite and conditional on
scope matching and nonnegative initial sieve weights. -/
theorem SourceSearchInventory.sieveTypeCompleteAt_iff_kernelPaths
    {TypeLabel : Type*}
    (inventory : SourceSearchInventory V) (source : V)
    (typeOf : V → TypeLabel)
    (K : FiniteSieveMarkovKernel V) (searchDepth : ℕ)
    (scope_eq : K.scope = inventory.certifiedSearch source searchDepth)
    (weight : V → ℝ)
    (weight_nonneg : ∀ vertex ∈ K.scope, 0 ≤ weight vertex)
    (steps : ℕ) :
    inventory.sieveTypeCompleteAt source typeOf
        (fun _ vertex => K.evolve weight steps vertex)
        searchDepth ↔
      ∀ targetType : TypeLabel,
        ∃ target ∈ K.scope, typeOf target = targetType ∧
          ∃ start ∈ K.scope, 0 < weight start ∧
            K.positivePath steps start target := by
  unfold SourceSearchInventory.sieveTypeCompleteAt
  constructor
  · intro complete targetType
    exact (inventory.sieveTypeHit_iff_kernelPath_of_scope
      source typeOf K searchDepth scope_eq weight weight_nonneg
        steps targetType).mp (complete targetType)
  · intro paths targetType
    exact (inventory.sieveTypeHit_iff_kernelPath_of_scope
      source typeOf K searchDepth scope_eq weight weight_nonneg
        steps targetType).mpr (paths targetType)

/-! ## An arithmetic radical-weighted coprimality sieve

The concrete integer-state weight below records a genuine finite
coprimality filter and the arithmetic squarefree radical of surviving
integers. Its source-independent reset kernel is a normalized finite
sieve, NOT a graph-local heat semigroup or a prime-distribution
asymptotic. Positive-power collisions are preserved, rather than
silently interpreted as exact type recovery. -/

namespace ArithmeticSieveKernel

/-- A nonnegative radical weight on the ordinary coprimality sieve.
The eventual kernel uses only positive integers in Finset.Icc 1 N. -/
noncomputable def radicalCoprimeWeight (q n : ℕ) : ℝ :=
  if Nat.Coprime n q then (Nat.radical n : ℝ) else 0

theorem radicalCoprimeWeight_nonneg (q n : ℕ) :
    0 ≤ radicalCoprimeWeight q n := by
  unfold radicalCoprimeWeight
  split_ifs
  · exact Nat.cast_nonneg _
  · exact le_refl _

/-- Radical weights are strictly positive exactly on survivors of the
coprimality sieve. The radical itself has no zero value in Nat. -/
theorem radicalCoprimeWeight_pos_iff (q n : ℕ) :
    0 < radicalCoprimeWeight q n ↔ Nat.Coprime n q := by
  constructor
  · intro positive
    by_contra notCoprime
    have zeroWeight : radicalCoprimeWeight q n = 0 := by
      simp [radicalCoprimeWeight, notCoprime]
    rw [zeroWeight] at positive
    exact (lt_irrefl (0 : ℝ)) positive
  · intro coprime
    change 0 < (if Nat.Coprime n q then
      (Nat.radical n : ℝ) else 0)
    rw [if_pos coprime]
    exact_mod_cast Nat.radical_pos n

/-- Finite positive integer states through the inclusive cutoff N. -/
def scope (N : ℕ) : Finset ℕ := Finset.Icc 1 N

noncomputable def totalWeight (q N : ℕ) : ℝ :=
  ∑ n ∈ scope N, radicalCoprimeWeight q n

/-- The integer 1 survives every modulus and has positive radical
weight. Thus N >= 1 is the exact simple sufficient condition for
nonzero normalization; an empty scope at N = 0 is not normalized. -/
theorem totalWeight_pos (q N : ℕ) (hN : 1 ≤ N) :
    0 < totalWeight q N := by
  unfold totalWeight
  apply Finset.sum_pos'
  · intro n hn
    exact radicalCoprimeWeight_nonneg q n
  · have hOne : (1 : ℕ) ∈ scope N := by
      change (1 : ℕ) ∈ Finset.Icc 1 N
      exact Finset.mem_Icc.mpr ⟨le_refl _, hN⟩
    have hCoprime : Nat.Coprime 1 q := by simp
    exact ⟨1, hOne, (radicalCoprimeWeight_pos_iff q 1).mpr hCoprime⟩

/-- Concrete finite, row-stochastic kernel from radical-weighted
coprimality-sieve data, under the necessary nonempty cutoff. -/
noncomputable def resetKernel (q N : ℕ) (hN : 1 ≤ N) :
    FiniteSieveMarkovKernel ℕ :=
  FiniteSieveMarkovKernel.normalizedTargetKernel
    (scope N) (radicalCoprimeWeight q)
    (fun n hn => radicalCoprimeWeight_nonneg q n)
    (totalWeight_pos q N hN)

/-- A positive reset transition to an in-scope integer occurs exactly
when that integer is coprime to q, regardless of the source. -/
theorem resetKernel_transition_pos_iff_coprime
    (q N : ℕ) (hN : 1 ≤ N) (source target : ℕ)
    (target_mem : target ∈ scope N) :
    0 < (resetKernel q N hN).transition source target ↔
      Nat.Coprime target q := by
  exact
    (FiniteSieveMarkovKernel.normalizedTargetKernel_transition_pos_iff
      (scope N) (radicalCoprimeWeight q)
      (fun n hn => radicalCoprimeWeight_nonneg q n)
      (totalWeight_pos q N hN)
      source target target_mem).trans
        (radicalCoprimeWeight_pos_iff q target)

/-- The arithmetic radical/coprimality sieve weights lose positive
prime-power exponent information. The exponent must be nonzero. -/
theorem radicalCoprimeWeight_pow (q n k : ℕ) (hk : k ≠ 0) :
    radicalCoprimeWeight q (n ^ k) =
      radicalCoprimeWeight q n := by
  have hcop : Nat.Coprime (n ^ k) q ↔ Nat.Coprime n q :=
    Nat.coprime_pow_left_iff (Nat.pos_of_ne_zero hk) n q
  have hrad : Nat.radical (n ^ k) = Nat.radical n :=
    UniqueFactorizationMonoid.radical_pow n hk
  by_cases h : Nat.Coprime n q
  · simp [radicalCoprimeWeight, hcop.mpr h, h, hrad]
  · have hpow : ¬ Nat.Coprime (n ^ k) q :=
      fun hc => h (hcop.mp hc)
    simp [radicalCoprimeWeight, h, hpow]

/-- The source-independent normalized kernel assigns equal transition
coefficients to positive powers with the same radical, provided BOTH
targets occur inside the cutoff. This is a concrete collision fixture,
not an exact type decoder or a claim about arithmetic mixing. -/
theorem resetKernel_transition_pow_collision
    (q N : ℕ) (hN : 1 ≤ N)
    (source n k : ℕ) (hk : k ≠ 0)
    (hn : n ∈ scope N) (hnk : n ^ k ∈ scope N) :
    (resetKernel q N hN).transition source (n ^ k) =
      (resetKernel q N hN).transition source n := by
  change (if n ^ k ∈ scope N then
    radicalCoprimeWeight q (n ^ k) / totalWeight q N else 0) =
    (if n ∈ scope N then
      radicalCoprimeWeight q n / totalWeight q N else 0)
  rw [if_pos hnk, if_pos hn, radicalCoprimeWeight_pow q n k hk]

/-- The unnormalized arithmetic sieve weights are a fixed point of
their source-independent reset kernel, on the finite positive scope.
This finite algebraic stationarity is NOT an asymptotic mixing result. -/
theorem resetKernel_step_weight_eq
    (q N : ℕ) (hN : 1 ≤ N)
    (target : ℕ) (target_mem : target ∈ scope N) :
    (resetKernel q N hN).step (radicalCoprimeWeight q) target =
      radicalCoprimeWeight q target := by
  change (∑ source ∈ scope N,
    radicalCoprimeWeight q source *
      (if target ∈ scope N then
        radicalCoprimeWeight q target / totalWeight q N else 0)) =
    radicalCoprimeWeight q target
  rw [if_pos target_mem, ← Finset.sum_mul]
  change totalWeight q N *
    (radicalCoprimeWeight q target / totalWeight q N) =
      radicalCoprimeWeight q target
  rw [div_eq_mul_inv]
  calc
    totalWeight q N *
        (radicalCoprimeWeight q target * (totalWeight q N)⁻¹) =
      (totalWeight q N * (totalWeight q N)⁻¹) *
        radicalCoprimeWeight q target := by ring
    _ = radicalCoprimeWeight q target := by
      rw [mul_inv_cancel₀ (ne_of_gt (totalWeight_pos q N hN)), one_mul]

/-- The same arithmetic weight distribution is stationary at every
finite iterate on the declared scope. In particular, the reset kernel
does not manufacture positive mass in an initially absent type fiber. -/
theorem resetKernel_evolve_weight_eq
    (q N : ℕ) (hN : 1 ≤ N) :
    ∀ depth : ℕ, ∀ target ∈ scope N,
      (resetKernel q N hN).evolve (radicalCoprimeWeight q) depth target =
        radicalCoprimeWeight q target := by
  intro depth
  induction depth with
  | zero =>
      intro target ht
      rfl
  | succ depth ih =>
      intro target ht
      change (resetKernel q N hN).step
        ((resetKernel q N hN).evolve (radicalCoprimeWeight q) depth)
        target = radicalCoprimeWeight q target
      calc
        (resetKernel q N hN).step
            ((resetKernel q N hN).evolve (radicalCoprimeWeight q) depth)
            target =
          (resetKernel q N hN).step (radicalCoprimeWeight q) target := by
            unfold FiniteSieveMarkovKernel.step
            apply Finset.sum_congr rfl
            intro source hs
            rw [ih source hs]
        _ = radicalCoprimeWeight q target :=
          resetKernel_step_weight_eq q N hN target ht

/-- The exact arithmetic type mass after any finite number of reset
steps equals the initial radical-weighted coprimality mass on the same
fiber. Positivity is therefore a coverage question, not a mixing
estimate. -/
theorem resetKernel_typeMass_eq_fiber_sum
    {TypeLabel : Type*}
    (q N : ℕ) (hN : 1 ≤ N)
    (typeOf : ℕ → TypeLabel)
    (depth : ℕ) (targetType : TypeLabel) :
    (resetKernel q N hN).typeMass
      (radicalCoprimeWeight q) typeOf depth targetType =
      ∑ n ∈ (scope N).filter (fun n => typeOf n = targetType),
        radicalCoprimeWeight q n := by
  classical
  unfold FiniteSieveMarkovKernel.typeMass
  apply Finset.sum_congr rfl
  intro n hn
  exact resetKernel_evolve_weight_eq q N hN depth n
    (Finset.mem_filter.mp hn).1

/-- This concrete arithmetic reset kernel covers an exact type at
every finite depth iff a positive integer of that type survives the
coprimality sieve. It neither proves the existence of new arithmetic
types nor distinguishes prime exponents from their radicals. -/
theorem resetKernel_typeMass_pos_iff_coprime_witness
    {TypeLabel : Type*}
    (q N : ℕ) (hN : 1 ≤ N)
    (typeOf : ℕ → TypeLabel)
    (depth : ℕ) (targetType : TypeLabel) :
    0 < (resetKernel q N hN).typeMass
      (radicalCoprimeWeight q) typeOf depth targetType ↔
      ∃ n ∈ scope N, typeOf n = targetType ∧ Nat.Coprime n q := by
  classical
  rw [resetKernel_typeMass_eq_fiber_sum q N hN typeOf depth targetType]
  have hsum :
      (0 < ∑ n ∈ (scope N).filter (fun n => typeOf n = targetType),
        radicalCoprimeWeight q n) ↔
      ∃ n ∈ (scope N).filter (fun n => typeOf n = targetType),
        0 < radicalCoprimeWeight q n :=
    Finset.sum_pos_iff_of_nonneg
      (fun n hn => radicalCoprimeWeight_nonneg q n)
  constructor
  · intro positive
    obtain ⟨n, hn, hw⟩ := hsum.mp positive
    obtain ⟨hs, ht⟩ := Finset.mem_filter.mp hn
    exact ⟨n, hs, ht, (radicalCoprimeWeight_pos_iff q n).mp hw⟩
  · rintro ⟨n, hn, ht, hc⟩
    apply hsum.mpr
    exact ⟨n, Finset.mem_filter.mpr ⟨hn, ht⟩,
      (radicalCoprimeWeight_pos_iff q n).mpr hc⟩

/-- The concrete arithmetic support relation for positive transitions:
both endpoints are in the finite integer scope and the target survives
the coprimality sieve. This is a *mathematical relation*, not an
automatic promotion of a repository candidate graph edge. -/
def positiveSieveEdge (q N : ℕ) (source target : ℕ) : Prop :=
  source ∈ scope N ∧ target ∈ scope N ∧ Nat.Coprime target q

/-- On an in-scope source, the concrete reset kernel has a positive
transition exactly on the specified arithmetic sieve edges. -/
theorem resetKernel_transition_pos_iff_positiveSieveEdge
    (q N : ℕ) (hN : 1 ≤ N)
    (source target : ℕ) (source_mem : source ∈ scope N) :
    0 < (resetKernel q N hN).transition source target ↔
      positiveSieveEdge q N source target := by
  by_cases target_mem : target ∈ scope N
  · rw [resetKernel_transition_pos_iff_coprime
      q N hN source target target_mem]
    simp [positiveSieveEdge, source_mem, target_mem]
  · have hzero :
        (resetKernel q N hN).transition source target = 0 :=
      FiniteSieveMarkovKernel.normalizedTargetKernel_transition_zero_of_not_mem
        (scope N) (radicalCoprimeWeight q)
        (fun n hn => radicalCoprimeWeight_nonneg q n)
        (totalWeight_pos q N hN)
        source target target_mem
    rw [hzero]
    simp [positiveSieveEdge, target_mem]

/-- A path with strictly positive transitions is certified by an
existing graph inventory ONLY IF that inventory has a supplied proof
that every concrete positive sieve edge is certified. The kernel
construction does not synthesize such a certificate or a heat graph. -/
theorem resetKernel_positivePath_to_certifiedPath
    (q N : ℕ) (hN : 1 ≤ N)
    (inventory : SourceSearchInventory ℕ)
    (certifiesSieve :
      ∀ source ∈ scope N, ∀ target ∈ scope N,
        Nat.Coprime target q → inventory.certified source target)
    (depth : ℕ) (source target : ℕ)
    (target_mem : target ∈ scope N)
    (path : (resetKernel q N hN).positivePath depth source target) :
    BoundedPath inventory.certified depth source target := by
  apply (resetKernel q N hN).positivePath_to_certifiedPath
    inventory
    (by
      intro x hx y hy positive
      exact certifiesSieve x hx y hy
        ((resetKernel_transition_pos_iff_coprime
          q N hN x y hy).mp positive))
    depth source target target_mem path

/-- Provenance and scope of an arithmetic support edge in the finite
reset-sieve graph. This is a source-review record, not a kernel
verification receipt or an analytic graph Laplacian claim. -/
private def arithmeticSupportRecord (q N source target : ℕ) :
    RelationshipRecord source target where
  relationship := .conditionalInterface
  mathematicalMeaning :=
    "Exact finite radical-coprime reset-kernel transition support"
  provenance :=
    [{ kind := .leanDeclaration
       identifier :=
         "GRWTSK.GraphSandwichDiffusion.ArithmeticSieveKernel.positiveSieveEdge"
       locator := "GRWTSK/GraphSandwichDiffusion.lean"
       repository := some "grwtsk/math"
       commit := none
       path := some "GRWTSK/GraphSandwichDiffusion.lean"
       blob := none }]
  assumptions :=
    ["finite arithmetic scope Finset.Icc 1 N",
     "strictly positive target transition iff target is coprime to q",
     "this inventory certifies arithmetic transition support only"]
  obligations :=
    ["compile the exact pinned source",
     "do not infer spectral mixing or analytic number-theoretic type completeness"]
  verification := inspectedNotRun

/-- A concrete finite source inventory with certified edges exactly
the positive transitions of the arithmetic reset kernel. The semantic
relation records the numerical kernel positivity, not analytic heat
flow or an unconditional prime-type distribution. Neither the seed
candidate inventory nor unrelated mathematical conjecture edges are
promoted by this definition. -/
noncomputable def certifiedArithmeticInventory
    (q N : ℕ) (hN : 1 ≤ N) : SourceSearchInventory ℕ where
  vertices := scope N
  certified := positiveSieveEdge q N
  candidate := positiveSieveEdge q N
  admissible := positiveSieveEdge q N
  semantic := fun x y =>
    x ∈ scope N ∧ y ∈ scope N ∧
      0 < (resetKernel q N hN).transition x y
  certified_le_candidate := by
    intro x y h
    exact h
  candidate_le_admissible := by
    intro x y h
    exact h
  admissible_scoped := by
    intro x y h
    exact ⟨h.1, h.2.1⟩
  certified_sound := by
    intro x y h
    exact ⟨h.1, h.2.1,
      (resetKernel_transition_pos_iff_coprime
        q N hN x y h.2.1).mpr h.2.2⟩
  candidateRecord := by
    intro x y h
    exact arithmeticSupportRecord q N x y
  admissibleRecord := by
    intro x y h
    exact arithmeticSupportRecord q N x y

/-- For in-scope endpoints, the certified arithmetic relation agrees
exactly with strict positivity of the supplied finite transition
kernel. This is not a statement about the existing unrelated seed
inventory's empty certified relation. -/
theorem certifiedArithmeticInventory_edge_iff_positive
    (q N : ℕ) (hN : 1 ≤ N) (x y : ℕ)
    (hx : x ∈ scope N) (hy : y ∈ scope N) :
    (certifiedArithmeticInventory q N hN).certified x y ↔
      0 < (resetKernel q N hN).transition x y := by
  constructor
  · intro edge
    exact (resetKernel_transition_pos_iff_coprime
      q N hN x y hy).mpr edge.2.2
  · intro positive
    exact ⟨hx, hy, (resetKernel_transition_pos_iff_coprime
      q N hN x y hy).mp positive⟩

/-- Starting from integer 1, after one certified arithmetic graph
step the reachable vertices are exactly the in-scope coprime
survivors. Every such target has a direct positive kernel edge
from 1, while the zero-length vertex 1 also survives. -/
theorem certifiedArithmeticInventory_search_one_eq_survivors
    (q N : ℕ) (hN : 1 ≤ N) :
    (certifiedArithmeticInventory q N hN).certifiedSearch 1 1 =
      (scope N).filter (fun n => Nat.Coprime n q) := by
  classical
  ext n
  have hOne : (1 : ℕ) ∈ scope N := by
    change (1 : ℕ) ∈ Finset.Icc 1 N
    exact Finset.mem_Icc.mpr ⟨le_refl _, hN⟩
  change n ∈ reachableWithin (scope N) (positiveSieveEdge q N) 1 1 ↔
    n ∈ (scope N).filter (fun n => Nat.Coprime n q)
  constructor
  · intro h
    rcases (mem_reachableWithin_succ
      (scope N) (positiveSieveEdge q N) 1 n 0).mp h with
      hzero | ⟨hn, middle, hmiddle, hedge⟩
    · obtain ⟨_, rfl⟩ :=
        (mem_reachableWithin_zero
          (scope N) (positiveSieveEdge q N) 1 n).mp hzero
      exact Finset.mem_filter.mpr ⟨hOne, by simp⟩
    · exact Finset.mem_filter.mpr ⟨hn, hedge.2.2⟩
  · intro h
    obtain ⟨hn, hc⟩ := Finset.mem_filter.mp h
    apply (mem_reachableWithin_succ
      (scope N) (positiveSieveEdge q N) 1 n 0).mpr
    exact Or.inr ⟨hn, 1,
      (mem_reachableWithin_zero
        (scope N) (positiveSieveEdge q N) 1 1).mpr ⟨hOne, rfl⟩,
      ⟨hOne, hn, hc⟩⟩

/-- At depth one, certified arithmetic sieve type hits are precisely
types with an in-scope coprime witness of positive radical weight.
This exhibits genuine finite arithmetic *coverage*, not a theorem
that every imaginable prime-multiplicity type occurs. -/
theorem certifiedArithmeticInventory_oneStep_hit_iff
    {TypeLabel : Type*}
    (q N : ℕ) (hN : 1 ≤ N)
    (typeOf : ℕ → TypeLabel) (targetType : TypeLabel) :
    (certifiedArithmeticInventory q N hN).sieveTypeHit
      1 typeOf (fun _ n => radicalCoprimeWeight q n) 1 targetType ↔
      ∃ n ∈ scope N, typeOf n = targetType ∧ Nat.Coprime n q := by
  unfold SourceSearchInventory.sieveTypeHit
  rw [certifiedArithmeticInventory_search_one_eq_survivors q N hN]
  constructor
  · rintro ⟨n, hn, ht, hw⟩
    obtain ⟨hscope, hc⟩ := Finset.mem_filter.mp hn
    exact ⟨n, hscope, ht, hc⟩
  · rintro ⟨n, hscope, ht, hc⟩
    exact ⟨n, Finset.mem_filter.mpr ⟨hscope, hc⟩, ht,
      (radicalCoprimeWeight_pos_iff q n).mpr hc⟩

/-- A positive reset-kernel path is certified by the concrete
arithmetic inventory, with no extra edge-certificate parameter.
The semantic content remains strict positivity of the finite
arithmetic transition, not an external mathematical conjecture. -/
theorem certifiedArithmeticInventory_positivePath
    (q N : ℕ) (hN : 1 ≤ N)
    (depth : ℕ) (source target : ℕ)
    (target_mem : target ∈ scope N)
    (path : (resetKernel q N hN).positivePath depth source target) :
    BoundedPath (certifiedArithmeticInventory q N hN).certified
      depth source target := by
  apply resetKernel_positivePath_to_certifiedPath
    q N hN (certifiedArithmeticInventory q N hN)
    (by
      intro x hx y hy hc
      exact ⟨hx, hy, hc⟩)
    depth source target target_mem path

/-! ## Source-dependent diagonal-bias kernel on certified arithmetic edges

For an in-scope source x, surviving target y receives a weight
`(if x=y then 2 else 1) * radicalCoprimeWeight q y`.
The source-dependent boost changes transition probabilities without
introducing new positive edges or providing an analytic heat operator.
The row normalizer is positive because the target 1 survives.
-/

/-- Raw positive-edge weight with a source-dependent diagonal boost.
Only the target radical and coprimality influence whether it vanishes. -/
noncomputable def diagonalEdgeWeight (q source target : ℕ) : ℝ :=
  (if source = target then (2 : ℝ) else 1) *
    radicalCoprimeWeight q target

private theorem diagonalBoost_pos (source target : ℕ) :
    0 < (if source = target then (2 : ℝ) else 1) := by
  split_ifs <;> norm_num

theorem diagonalEdgeWeight_nonneg (q source target : ℕ) :
    0 ≤ diagonalEdgeWeight q source target := by
  unfold diagonalEdgeWeight
  exact mul_nonneg (diagonalBoost_pos source target).le
    (radicalCoprimeWeight_nonneg q target)

/-- Diagonal bias preserves the exact positive-edge support of the
arithmetic coprimality sieve, while modifying the row weights. -/
theorem diagonalEdgeWeight_pos_iff_coprime (q source target : ℕ) :
    0 < diagonalEdgeWeight q source target ↔
      Nat.Coprime target q := by
  unfold diagonalEdgeWeight
  exact (mul_pos_iff_of_pos_left
    (diagonalBoost_pos source target)).trans
      (radicalCoprimeWeight_pos_iff q target)

/-- Every in-scope source has positive outgoing raw edge mass. The
common target 1 is sufficient regardless of the source and modulus. -/
theorem diagonalRowMass_pos
    (q N : ℕ) (hN : 1 ≤ N) (source : ℕ) :
    0 < ∑ target ∈ scope N, diagonalEdgeWeight q source target := by
  apply Finset.sum_pos'
  · intro target ht
    exact diagonalEdgeWeight_nonneg q source target
  · have hOne : (1 : ℕ) ∈ scope N := by
      change (1 : ℕ) ∈ Finset.Icc 1 N
      exact Finset.mem_Icc.mpr ⟨le_refl _, hN⟩
    refine ⟨1, hOne, ?_⟩
    exact (diagonalEdgeWeight_pos_iff_coprime q source 1).mpr (by simp)

/-- A genuinely source-dependent finite Markov kernel, normalized
separately at every source, with the same *positive support* as the
previous reset kernel. It remains a dense directed arithmetic sieve,
not a graph Laplacian or a prime-distribution theorem. -/
noncomputable def diagonalKernel (q N : ℕ) (hN : 1 ≤ N) :
    FiniteSieveMarkovKernel ℕ :=
  FiniteSieveMarkovKernel.normalizedEdgeKernel
    (scope N) (diagonalEdgeWeight q)
    (by
      intro source hs target ht
      exact diagonalEdgeWeight_nonneg q source target)
    (by
      intro source hs
      exact diagonalRowMass_pos q N hN source)

/-- An in-scope target receives a positive diagonal-bias transition
from any in-scope source iff it survives coprimality with q. -/
theorem diagonalKernel_transition_pos_iff_coprime
    (q N : ℕ) (hN : 1 ≤ N)
    (source target : ℕ)
    (hs : source ∈ scope N) (ht : target ∈ scope N) :
    0 < (diagonalKernel q N hN).transition source target ↔
      Nat.Coprime target q := by
  unfold diagonalKernel
  exact (FiniteSieveMarkovKernel.normalizedEdgeKernel_transition_pos_iff
    (scope N) (diagonalEdgeWeight q)
    (by
      intro x hx y hy
      exact diagonalEdgeWeight_nonneg q x y)
    (by
      intro x hx
      exact diagonalRowMass_pos q N hN x)
    source target hs ht).trans
      (diagonalEdgeWeight_pos_iff_coprime q source target)

/-- Every positive transition of the new source-dependent kernel is
exactly a certified arithmetic sieve edge when both endpoints are in
scope. Candidate-only or unrelated semantic edges are not promoted. -/
theorem diagonalKernel_edge_iff_certified
    (q N : ℕ) (hN : 1 ≤ N)
    (source target : ℕ)
    (hs : source ∈ scope N) (ht : target ∈ scope N) :
    0 < (diagonalKernel q N hN).transition source target ↔
      (certifiedArithmeticInventory q N hN).certified source target := by
  rw [diagonalKernel_transition_pos_iff_coprime q N hN source target hs ht]
  change Nat.Coprime target q ↔ positiveSieveEdge q N source target
  simp [positiveSieveEdge, hs, ht]

/-- Positive paths of the source-dependent arithmetic kernel are
certified by the *existing concrete* arithmetic inventory, not by the
unrelated paper-to-concept seed graph. -/
theorem diagonalKernel_positivePath_certified
    (q N : ℕ) (hN : 1 ≤ N)
    (depth source target : ℕ)
    (target_mem : target ∈ scope N)
    (path : (diagonalKernel q N hN).positivePath depth source target) :
    BoundedPath (certifiedArithmeticInventory q N hN).certified
      depth source target := by
  apply (diagonalKernel q N hN).positivePath_to_certifiedPath
    (certifiedArithmeticInventory q N hN)
    (by
      intro x hx y hy positive
      exact (diagonalKernel_edge_iff_certified
        q N hN x y hx hy).mp positive)
    depth source target target_mem path

/-- After one source-dependent transition, any nonnegative initial
distribution with at least one positive in-scope weight assigns
positive mass exactly to the in-scope coprime targets. This is an
exact *finite* support assertion, not a long-time mixing estimate. -/
theorem diagonalKernel_step_pos_iff_coprime
    (q N : ℕ) (hN : 1 ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ x ∈ scope N, 0 ≤ initial x)
    (initial_positive : ∃ x ∈ scope N, 0 < initial x)
    (target : ℕ) (target_mem : target ∈ scope N) :
    0 < (diagonalKernel q N hN).step initial target ↔
      Nat.Coprime target q := by
  constructor
  · intro output_pos
    obtain ⟨x, hx, hw, hp⟩ :=
      ((diagonalKernel q N hN).step_pos_iff
        initial initial_nonneg target target_mem).mp output_pos
    exact (diagonalKernel_transition_pos_iff_coprime
      q N hN x target hx target_mem).mp hp
  · intro survives
    obtain ⟨x, hx, hw⟩ := initial_positive
    exact ((diagonalKernel q N hN).step_pos_iff
      initial initial_nonneg target target_mem).mpr
      ⟨x, hx, hw,
        (diagonalKernel_transition_pos_iff_coprime
          q N hN x target hx target_mem).mpr survives⟩

/-- The one-step certified type hits of the diagonal-biased finite
sieve are *exactly* those with a surviving coprime representative.
Initial sieve weights need not be proportional to the stationary
radical target weights. The positive initial mass premise is explicit. -/
theorem diagonalKernel_certified_oneStep_hit_iff
    {TypeLabel : Type*}
    (q N : ℕ) (hN : 1 ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ x ∈ scope N, 0 ≤ initial x)
    (initial_positive : ∃ x ∈ scope N, 0 < initial x)
    (typeOf : ℕ → TypeLabel) (targetType : TypeLabel) :
    (certifiedArithmeticInventory q N hN).sieveTypeHit
      1 typeOf
      (fun _ target => (diagonalKernel q N hN).step initial target)
      1 targetType ↔
      ∃ target ∈ scope N,
        typeOf target = targetType ∧ Nat.Coprime target q := by
  unfold SourceSearchInventory.sieveTypeHit
  rw [certifiedArithmeticInventory_search_one_eq_survivors q N hN]
  constructor
  · rintro ⟨target, member, sameType, positive⟩
    obtain ⟨target_mem, coprime⟩ := Finset.mem_filter.mp member
    exact ⟨target, target_mem, sameType, coprime⟩
  · rintro ⟨target, target_mem, sameType, coprime⟩
    exact ⟨target, Finset.mem_filter.mpr ⟨target_mem, coprime⟩,
      sameType,
      (diagonalKernel_step_pos_iff_coprime q N hN
        initial initial_nonneg initial_positive target target_mem).mpr
          coprime⟩

/-- One-step finite type completeness of the source-dependent
arithmetic kernel is equivalent to the existence of a coprime
in-scope representative for **each declared type**. This does not
prove that every number-theoretic type exists or occurs asymptotically. -/
theorem diagonalKernel_certified_oneStep_complete_iff
    {TypeLabel : Type*}
    (q N : ℕ) (hN : 1 ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ x ∈ scope N, 0 ≤ initial x)
    (initial_positive : ∃ x ∈ scope N, 0 < initial x)
    (typeOf : ℕ → TypeLabel) :
    (certifiedArithmeticInventory q N hN).sieveTypeCompleteAt
      1 typeOf
      (fun _ target => (diagonalKernel q N hN).step initial target)
      1 ↔
      ∀ targetType : TypeLabel, ∃ target ∈ scope N,
        typeOf target = targetType ∧ Nat.Coprime target q := by
  unfold SourceSearchInventory.sieveTypeCompleteAt
  constructor
  · intro complete targetType
    exact (diagonalKernel_certified_oneStep_hit_iff q N hN
      initial initial_nonneg initial_positive typeOf targetType).mp
        (complete targetType)
  · intro witnesses targetType
    exact (diagonalKernel_certified_oneStep_hit_iff q N hN
      initial initial_nonneg initial_positive typeOf targetType).mpr
        (witnesses targetType)

/-! ## Explicit polynomial majorants for the finite arithmetic sieve

These are elementary bounds: radical n ≤ n for n ≠ 0 and the
finite scope has exactly N vertices when N ≥ 1. The estimates do not
imply a positive limiting type density or analytic prime cancellation.
-/

/-- Every in-scope radical-coprimality weight is at most the cutoff.
The positive scope hypothesis is essential for radical n ≤ n. -/
theorem radicalCoprimeWeight_le_cutoff
    (q N n : ℕ) (hn : n ∈ scope N) :
    radicalCoprimeWeight q n ≤ (N : ℝ) := by
  have hmem : 1 ≤ n ∧ n ≤ N := Finset.mem_Icc.mp hn
  by_cases hc : Nat.Coprime n q
  · have hn0 : n ≠ 0 := by omega
    have hrad : Nat.radical n ≤ n :=
      (Nat.radical_le_self_iff).mpr hn0
    have hcast : (Nat.radical n : ℝ) ≤ (N : ℝ) :=
      Nat.cast_le.mpr (hrad.trans hmem.2)
    simpa [radicalCoprimeWeight, hc] using hcast
  · simp [radicalCoprimeWeight, hc]

/-- The finite positive-integer scope has exactly N vertices when
N ≥ 1, avoiding any hidden asymptotic cardinality estimate. -/
theorem scope_card (N : ℕ) (hN : 1 ≤ N) :
    (scope N).card = N := by
  change (Finset.Icc 1 N).card = N
  rw [Nat.card_Icc]
  omega

/-- The sieve normalizer is bounded explicitly by N squared.
No prime-counting or radical-density estimate is used. -/
theorem totalWeight_le_cutoff_sq (q N : ℕ) (hN : 1 ≤ N) :
    totalWeight q N ≤ (N : ℝ) * (N : ℝ) := by
  have hc := scope_card N hN
  calc
    totalWeight q N =
        ∑ n ∈ scope N, radicalCoprimeWeight q n := rfl
    _ ≤ ∑ _n ∈ scope N, (N : ℝ) :=
      Finset.sum_le_sum
        (fun n hn => radicalCoprimeWeight_le_cutoff q N n hn)
    _ = ((scope N).card : ℝ) * (N : ℝ) := by simp
    _ = (N : ℝ) * (N : ℝ) := by rw [hc]

/-- The diagonal-biased raw outgoing mass of any arithmetic source
is bounded by twice the sum of unboosted sieve target weights. -/
theorem diagonalEdgeWeight_le_twice_targetWeight
    (q source target : ℕ) :
    diagonalEdgeWeight q source target ≤
      (2 : ℝ) * radicalCoprimeWeight q target := by
  unfold diagonalEdgeWeight
  split_ifs <;> nlinarith [radicalCoprimeWeight_nonneg q target]

theorem diagonalRowMass_le_twice_total
    (q N source : ℕ) :
    (∑ target ∈ scope N, diagonalEdgeWeight q source target) ≤
      (2 : ℝ) * totalWeight q N := by
  calc
    (∑ target ∈ scope N, diagonalEdgeWeight q source target) ≤
        ∑ target ∈ scope N,
          (2 : ℝ) * radicalCoprimeWeight q target :=
      Finset.sum_le_sum
        (fun target ht =>
          diagonalEdgeWeight_le_twice_targetWeight q source target)
    _ = (2 : ℝ) * totalWeight q N := by
      simp only [totalWeight, Finset.mul_sum]

/-- The exact diagonal outgoing row normalizer is at most
2*N*N for every positive integer cutoff. This quantitative
majorant is purely elementary and independent of character sums. -/
theorem diagonalRowMass_le_two_cutoff_sq
    (q N : ℕ) (hN : 1 ≤ N) (source : ℕ) :
    (∑ target ∈ scope N, diagonalEdgeWeight q source target) ≤
      (2 : ℝ) * (N : ℝ) * (N : ℝ) := by
  calc
    (∑ target ∈ scope N, diagonalEdgeWeight q source target) ≤
        (2 : ℝ) * totalWeight q N :=
      diagonalRowMass_le_twice_total q N source
    _ ≤ (2 : ℝ) * ((N : ℝ) * (N : ℝ)) :=
      mul_le_mul_of_nonneg_left
        (totalWeight_le_cutoff_sq q N hN) (by norm_num)
    _ = (2 : ℝ) * (N : ℝ) * (N : ℝ) := by ring

/-- Every coprime target carries at least one unit of unnormalized
arithmetic radical weight, including modulus 0 or 1. -/
theorem radicalCoprimeWeight_one_le_of_coprime
    (q target : ℕ) (hc : Nat.Coprime target q) :
    (1 : ℝ) ≤ radicalCoprimeWeight q target := by
  have hrad : 1 ≤ Nat.radical target := Nat.radical_pos target
  have hcast : (1 : ℝ) ≤ (Nat.radical target : ℝ) := by
    exact_mod_cast hrad
  simpa [radicalCoprimeWeight, hc] using hcast

/-- The diagonal boost is never smaller than one, so it cannot
suppress a positive arithmetic target weight. -/
theorem radicalCoprimeWeight_le_diagonalEdgeWeight
    (q source target : ℕ) :
    radicalCoprimeWeight q target ≤
      diagonalEdgeWeight q source target := by
  unfold diagonalEdgeWeight
  split_ifs <;> nlinarith [radicalCoprimeWeight_nonneg q target]

/-- An explicit polynomial transition minorization. For N ≥ 1
and each coprime target within the cutoff, every in-scope source
has probability at least 1/(2*N²) of transitioning to that target.
The bound depends on N and therefore proves no positive limiting
density as N increases. -/
theorem diagonalKernel_transition_ge_inv_two_cutoff_sq
    (q N : ℕ) (hN : 1 ≤ N)
    (source target : ℕ)
    (source_mem : source ∈ scope N)
    (target_mem : target ∈ scope N)
    (hc : Nat.Coprime target q) :
    ((2 : ℝ) * (N : ℝ) * (N : ℝ))⁻¹ ≤
      (diagonalKernel q N hN).transition source target := by
  have hNpos : (0 : ℝ) < (N : ℝ) := by
    exact_mod_cast (show 0 < N by omega)
  have hBpos : (0 : ℝ) < (2 : ℝ) * (N : ℝ) * (N : ℝ) := by
    positivity
  have hRpos :
      0 < ∑ z ∈ scope N, diagonalEdgeWeight q source z :=
    diagonalRowMass_pos q N hN source
  have hRle :
      (∑ z ∈ scope N, diagonalEdgeWeight q source z) ≤
        (2 : ℝ) * (N : ℝ) * (N : ℝ) :=
    diagonalRowMass_le_two_cutoff_sq q N hN source
  have hweight : (1 : ℝ) ≤ diagonalEdgeWeight q source target :=
    (radicalCoprimeWeight_one_le_of_coprime q target hc).trans
      (radicalCoprimeWeight_le_diagonalEdgeWeight q source target)
  change ((2 : ℝ) * (N : ℝ) * (N : ℝ))⁻¹ ≤
    (if target ∈ scope N then
      diagonalEdgeWeight q source target /
        (∑ z ∈ scope N, diagonalEdgeWeight q source z)
    else 0)
  rw [if_pos target_mem]
  have hcomparison :
      (1 : ℝ) / ((2 : ℝ) * (N : ℝ) * (N : ℝ)) ≤
        diagonalEdgeWeight q source target /
          (∑ z ∈ scope N, diagonalEdgeWeight q source z) := by
    apply (div_le_div_iff₀ hBpos hRpos).mpr
    simp only [one_mul]
    exact hRle.trans (by
      simpa only [one_mul] using
        mul_le_mul_of_nonneg_right hweight hBpos.le)
  simpa only [one_div] using hcomparison

/-- From any nonnegative in-scope initial distribution of total
mass one, one step gives at least 1/(2*N²) mass to each coprime
target. This is a finite polynomial minorization, not an analytic
prime-distribution theorem. -/
theorem diagonalKernel_step_ge_inv_two_cutoff_sq
    (q N : ℕ) (hN : 1 ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ source ∈ scope N, 0 ≤ initial source)
    (initial_mass_one : (∑ source ∈ scope N, initial source) = 1)
    (target : ℕ) (target_mem : target ∈ scope N)
    (hc : Nat.Coprime target q) :
    ((2 : ℝ) * (N : ℝ) * (N : ℝ))⁻¹ ≤
      (diagonalKernel q N hN).step initial target := by
  change ((2 : ℝ) * (N : ℝ) * (N : ℝ))⁻¹ ≤
    ∑ source ∈ scope N,
      initial source * (diagonalKernel q N hN).transition source target
  calc
    ((2 : ℝ) * (N : ℝ) * (N : ℝ))⁻¹ =
        (∑ source ∈ scope N, initial source) *
          ((2 : ℝ) * (N : ℝ) * (N : ℝ))⁻¹ := by
      rw [initial_mass_one, one_mul]
    _ = ∑ source ∈ scope N,
          initial source * ((2 : ℝ) * (N : ℝ) * (N : ℝ))⁻¹ := by
      rw [Finset.sum_mul]
    _ ≤ ∑ source ∈ scope N,
          initial source *
            (diagonalKernel q N hN).transition source target := by
      apply Finset.sum_le_sum
      intro source source_mem
      exact mul_le_mul_of_nonneg_left
        (diagonalKernel_transition_ge_inv_two_cutoff_sq
          q N hN source target source_mem target_mem hc)
        (initial_nonneg source source_mem)

/-- Every positive number of iterations retains the same target
minorization, using the exact finite total-mass and positivity laws.
The rate is uniform in the step count, but decays with cutoff N. -/
theorem diagonalKernel_evolve_succ_ge_inv_two_cutoff_sq
    (q N : ℕ) (hN : 1 ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ source ∈ scope N, 0 ≤ initial source)
    (initial_mass_one : (∑ source ∈ scope N, initial source) = 1)
    (depth : ℕ) (target : ℕ)
    (target_mem : target ∈ scope N) (hc : Nat.Coprime target q) :
    ((2 : ℝ) * (N : ℝ) * (N : ℝ))⁻¹ ≤
      (diagonalKernel q N hN).evolve initial (depth + 1) target := by
  have hnonneg :
      ∀ source ∈ scope N,
        0 ≤ (diagonalKernel q N hN).evolve initial depth source :=
    (diagonalKernel q N hN).evolve_nonneg
      initial initial_nonneg depth
  have hmass :
      (∑ source ∈ scope N,
        (diagonalKernel q N hN).evolve initial depth source) = 1 := by
    calc
      (∑ source ∈ scope N,
        (diagonalKernel q N hN).evolve initial depth source) =
          ∑ source ∈ scope N, initial source :=
        (diagonalKernel q N hN).sum_evolve_eq_sum initial depth
      _ = 1 := initial_mass_one
  change ((2 : ℝ) * (N : ℝ) * (N : ℝ))⁻¹ ≤
    (diagonalKernel q N hN).step
      ((diagonalKernel q N hN).evolve initial depth) target
  exact diagonalKernel_step_ge_inv_two_cutoff_sq
    q N hN ((diagonalKernel q N hN).evolve initial depth)
    hnonneg hmass target target_mem hc

/-- One explicit coprime witness of a target type gives an inverse-
quadratic lower bound for that type mass at every positive time.
No assertion about the distribution of prime types is hidden here. -/
theorem diagonalKernel_typeMass_succ_ge_inv_two_cutoff_sq
    {TypeLabel : Type*}
    (q N : ℕ) (hN : 1 ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ source ∈ scope N, 0 ≤ initial source)
    (initial_mass_one : (∑ source ∈ scope N, initial source) = 1)
    (typeOf : ℕ → TypeLabel) (targetType : TypeLabel)
    (witness depth : ℕ)
    (witness_mem : witness ∈ scope N)
    (witness_type : typeOf witness = targetType)
    (witness_coprime : Nat.Coprime witness q) :
    ((2 : ℝ) * (N : ℝ) * (N : ℝ))⁻¹ ≤
      (diagonalKernel q N hN).typeMass initial typeOf
        (depth + 1) targetType := by
  have hpoint :=
    diagonalKernel_evolve_succ_ge_inv_two_cutoff_sq
      q N hN initial initial_nonneg initial_mass_one
      depth witness witness_mem witness_coprime
  have hnonneg :
      ∀ target ∈ scope N,
        0 ≤ (diagonalKernel q N hN).evolve initial
          (depth + 1) target :=
    (diagonalKernel q N hN).evolve_nonneg
      initial initial_nonneg (depth + 1)
  have hsum :
      (diagonalKernel q N hN).evolve initial
        (depth + 1) witness ≤
        (diagonalKernel q N hN).typeMass
          initial typeOf (depth + 1) targetType := by
    unfold FiniteSieveMarkovKernel.typeMass
    apply Finset.single_le_sum
    · intro target ht
      exact hnonneg target (Finset.mem_filter.mp ht).1
    · exact Finset.mem_filter.mpr ⟨witness_mem, witness_type⟩
  exact hpoint.trans hsum

/-! ## Buffered radical sieve: a nonvanishing floor without type leakage

The original weight radicalCoprimeWeight remains unchanged.  This
distinct weight model multiplies the indicator of coprimality by the
type-independent floor N plus the arithmetic radical. On the positive
integer cutoff, each survivor has weight between N and 2*N.

The floor is chosen without inspecting a target type. Its purpose is
to translate *counts of surviving arithmetic types* into lower bounds
on normalized mass. Such counts must still be proved separately.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/

/-- Type-independent floor plus arithmetic radical on the coprime
sieve. This is a distinct weighting, not an asymptotic theorem about
the unbuffered radical weight. -/
noncomputable def bufferedRadicalWeight (q N n : ℕ) : ℝ :=
  if Nat.Coprime n q then (N : ℝ) + (Nat.radical n : ℝ) else 0

theorem bufferedRadicalWeight_nonneg (q N n : ℕ) :
    0 ≤ bufferedRadicalWeight q N n := by
  unfold bufferedRadicalWeight
  split_ifs <;> positivity

/-- Every surviving target in the positive cutoff receives at least
N units of raw weight. -/
theorem bufferedRadicalWeight_ge_cutoff_of_coprime
    (q N n : ℕ) (hc : Nat.Coprime n q) :
    (N : ℝ) ≤ bufferedRadicalWeight q N n := by
  simp only [bufferedRadicalWeight, if_pos hc]
  exact le_add_of_nonneg_right (Nat.cast_nonneg _)

/-- The same raw weight is at most twice the cutoff for all states
within the inclusive positive integer range. -/
theorem bufferedRadicalWeight_le_two_cutoff
    (q N n : ℕ) (hn : n ∈ scope N) :
    bufferedRadicalWeight q N n ≤ (2 : ℝ) * (N : ℝ) := by
  by_cases hc : Nat.Coprime n q
  · have hrad : (Nat.radical n : ℝ) ≤ (N : ℝ) := by
      simpa [radicalCoprimeWeight, hc] using
        radicalCoprimeWeight_le_cutoff q N n hn
    simp only [bufferedRadicalWeight, if_pos hc]
    linarith
  · simp [bufferedRadicalWeight, hc]

/-- The original radical-only information collision survives the
type-independent cutoff floor: positive powers retain equal weights
for the same cutoff and modulus. -/
theorem bufferedRadicalWeight_pow (q N n k : ℕ) (hk : k ≠ 0) :
    bufferedRadicalWeight q N (n ^ k) =
      bufferedRadicalWeight q N n := by
  have hcop : Nat.Coprime (n ^ k) q ↔ Nat.Coprime n q :=
    Nat.coprime_pow_left_iff (Nat.pos_of_ne_zero hk) n q
  have hrad : Nat.radical (n ^ k) = Nat.radical n :=
    UniqueFactorizationMonoid.radical_pow n hk
  by_cases hc : Nat.Coprime n q
  · simp [bufferedRadicalWeight, hc, hcop.mpr hc, hrad]
  · have hpow : ¬ Nat.Coprime (n ^ k) q :=
      fun hp => hc (hcop.mp hp)
    simp [bufferedRadicalWeight, hc, hpow]

/-- Source-dependent diagonal preference, with target weight bounded
between N and 2*N on surviving states. -/
noncomputable def bufferedDiagonalEdgeWeight
    (q N source target : ℕ) : ℝ :=
  (if source = target then (2 : ℝ) else 1) *
    bufferedRadicalWeight q N target

theorem bufferedDiagonalEdgeWeight_nonneg
    (q N source target : ℕ) :
    0 ≤ bufferedDiagonalEdgeWeight q N source target := by
  unfold bufferedDiagonalEdgeWeight
  exact mul_nonneg (diagonalBoost_pos source target).le
    (bufferedRadicalWeight_nonneg q N target)

/-- A diagonal boost cannot diminish raw target sieve weight. -/
theorem bufferedRadicalWeight_le_edge
    (q N source target : ℕ) :
    bufferedRadicalWeight q N target ≤
      bufferedDiagonalEdgeWeight q N source target := by
  unfold bufferedDiagonalEdgeWeight
  split_ifs <;> nlinarith [bufferedRadicalWeight_nonneg q N target]

/-- A single source-dependent raw transition cannot exceed 4*N on
the finite positive integer scope. -/
theorem bufferedDiagonalEdgeWeight_le_four_cutoff
    (q N source target : ℕ) (ht : target ∈ scope N) :
    bufferedDiagonalEdgeWeight q N source target ≤
      (4 : ℝ) * (N : ℝ) := by
  unfold bufferedDiagonalEdgeWeight
  have hweight := bufferedRadicalWeight_le_two_cutoff q N target ht
  split_ifs <;> nlinarith

end ArithmeticSieveKernel

end GRWTSK.GraphSandwichDiffusion