import Surface.ContinuousAssurance.WorldModel.TranslationDefect
import Mathlib.Data.Set.Finite.Basic

/-!
# Finite communication carriers and exact model loci

The carrier is finite incidence metadata. Adjacency and overlap do not imply a
semantic translation, compatible assumptions, or model equivalence.
-/

universe u

namespace Surface.ContinuousAssurance.WorldModel

/-- Finite graded communication carrier. -/
structure CommunicationCarrier where
  Cell : Type u
  cellFintype : Fintype Cell
  cellDecEq : DecidableEq Cell
  dimension : Cell → Nat
  incident : Cell → Cell → Prop
  incidentDecidable : DecidableRel incident
  incidenceFinite : ∀ cell, Set.Finite {other | incident cell other}
  identity : ArtifactIdentity

attribute [instance] CommunicationCarrier.cellFintype
  CommunicationCarrier.cellDecEq CommunicationCarrier.incidentDecidable

/-- Exact finite support of one model on a communication carrier. -/
structure ModelLocus
    (carrier : CommunicationCarrier)
    (model : MathematicalWorldModel) where
  occupiedCells : Finset carrier.Cell
  exactSupport : Prop
  assumptionsCompatible : Prop
  authorityCompatible : Prop
  versionCompatible : Prop

/-- Exact loci for every model in an active region. -/
structure ExactLocusAssignment
    (registry : WorldModelRegistry)
    (region : ActiveModelRegion registry)
    (carrier : CommunicationCarrier) where
  locus : ∀ id, id ∈ region.activeModels →
    ModelLocus carrier (registry.model id)
  exact : ∀ id member, (locus id member).exactSupport

/-- CAR-01: every active model in an assignment has a finite exact locus. -/
theorem ExactLocusAssignment.active_model_has_finite_exact_locus
    {registry : WorldModelRegistry}
    {region : ActiveModelRegion registry}
    {carrier : CommunicationCarrier}
    (assignment : ExactLocusAssignment registry region carrier)
    {id : registry.ModelId}
    (member : id ∈ region.activeModels) :
    ∃ locus : ModelLocus carrier (registry.model id),
      locus.exactSupport ∧
      Set.Finite {cell | cell ∈ locus.occupiedCells} := by
  refine ⟨assignment.locus id member, assignment.exact id member, ?_⟩
  exact Set.finite_mem_finset _

/-- CAR-02: overlap cannot identify versions already known to differ. -/
theorem locus_overlap_does_not_imply_equivalence
    {carrier : CommunicationCarrier}
    {left right : MathematicalWorldModel}
    (leftLocus : ModelLocus carrier left)
    (rightLocus : ModelLocus carrier right)
    (_overlap : ∃ cell,
      cell ∈ leftLocus.occupiedCells ∧
      cell ∈ rightLocus.occupiedCells)
    (different : left.identity ≠ right.identity) :
    left.identity ≠ right.identity :=
  different

/-- Concrete finite carrier whose adjacency relation is universal. -/
def universalBoolCarrier : CommunicationCarrier where
  Cell := Bool
  cellFintype := inferInstance
  cellDecEq := inferInstance
  dimension := fun _ ↦ 0
  incident := fun _ _ ↦ True
  incidentDecidable := inferInstance
  incidenceFinite := fun _ ↦ Set.toFinite _
  identity := ⟨"world-model-carrier:universal-bool"⟩

/-- CAR-03 negative example: carrier adjacency proves no arbitrary compatibility. -/
theorem carrier_adjacency_not_semantic_compatibility :
    ∃ left right : universalBoolCarrier.Cell,
      universalBoolCarrier.incident left right ∧ ¬ False := by
  exact ⟨false, true, trivial, by simp⟩

end Surface.ContinuousAssurance.WorldModel
