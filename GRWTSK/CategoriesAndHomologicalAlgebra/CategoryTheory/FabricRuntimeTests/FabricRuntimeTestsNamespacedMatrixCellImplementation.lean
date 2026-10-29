-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IdentityRealization.Variant3f35813331e27ca96ef9f9d2153f6506441dc715951aa0944d0728f8f7258711","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f35813331e27ca96ef9f9d2153f6506441dc715951aa0944d0728f8f7258711","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IdentityRealization.Variant3f35813331e27ca96ef9f9d2153f6506441dc715951aa0944d0728f8f7258711","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3f35813331e27ca96ef9f9d2153f6506441dc715951aa0944d0728f8f7258711","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/DAF/Integration/FabricRuntimeTests.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Integration.FabricTests
import DAF.Fabric.Runtime
import BinaryMatrix.Adapters.Fabric

/-!
# Runtime and refinement integration fixtures

These compile-time fixtures keep four boundaries explicit.  Realization laws
come only from functoriality; a reaction preserves traces and observations
cellwise because its cell maps are existing `DAF.System.Hom` values; executable
matrix states reuse the established `BinMatMut.toDecl` refinement; and a global
refinement is available only after supplying an explicit realization
capability.

Runtime status and manifest names remain operational metadata.  In particular,
listing a certificate name below records a name in a list and does not produce
the theorem named by it.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IdentityRealization.Variant3f35813331e27ca96ef9f9d2153f6506441dc715951aa0944d0728f8f7258711

open CategoryTheory

namespace DAF.Integration.FabricRuntimeTests

open DAF.Fabric
open DAF.Integration.FabricTests

/-! ## Functorial realization -/

/-- The constant functor to a one-object discrete category is a minimal realization fixture. -/
def identityRealization : RealizationTheory.{0} where
  Target := Discrete PUnit
  realize := (Functor.const FabricCategory).obj (Discrete.mk PUnit.unit)

/-- The identity reaction regarded as a complete reaction isomorphism. -/
def identityReactionIso (F : Fabric) : ReactionIso F F where
  hom := Reaction.id F
  inv := Reaction.id F
  hom_inv := Reaction.id_comp _
  inv_hom := Reaction.id_comp _

example :
    (Reaction.id oneSimplexFabric).realizationMap identityRealization =
      𝟙 (identityRealization.realize.obj oneSimplexFabric) :=
  Reaction.realizationMap_id _ _

example :
    (Reaction.comp (Reaction.id oneSimplexFabric)
        (Reaction.id oneSimplexFabric)).realizationMap identityRealization =
      (Reaction.id oneSimplexFabric).realizationMap identityRealization ≫
        (Reaction.id oneSimplexFabric).realizationMap identityRealization :=
  Reaction.realizationMap_comp _ _ _

example :
    ((identityReactionIso oneSimplexFabric).realizationIso
      identityRealization).hom =
      (Reaction.id oneSimplexFabric).realizationMap identityRealization :=
  ReactionIso.realizationIso_hom _ _

/-! ## An input-driven system hosted at every cell -/

/-- A counter whose inputs are increments and whose observation is its state. -/
def counterSystem : DAF.System where
  Input := Nat
  State := Nat
  Resolution := PUnit
  Observation := fun _ => Nat
  step := fun input state => state + input
  observe := fun _ state => state

def counterPresentation : Presentation where
  system := counterSystem
  invariant := fun _ => True
  invariant_step := by intros; trivial
  name := `DAF.Integration.CounterPresentation
  version := ⟨0, 1, 0⟩

/-- Doubling inputs and states is a homomorphism of the counter system. -/
def doubleCounter : Presentation.Hom counterPresentation counterPresentation where
  mapInput := fun input : Nat => 2 * input
  mapState := fun state : Nat => 2 * state
  pullResolution := id
  mapObservation := fun _ (observation : Nat) => 2 * observation
  step_natural := by
    simp [counterPresentation, counterSystem, Nat.mul_add]
  observe_natural := by
    simp [counterPresentation, counterSystem]
  invariant_natural := by intros; trivial

def counterFabric : Fabric :=
  constantPresentedFabric oneSimplexShape counterPresentation

/-- The same proved counter homomorphism acts coherently at every cell. -/
def doubleCounterReaction : Reaction counterFabric counterFabric where
  shapeMap := 𝟙 counterFabric.shape
  mapCell := fun x => x
  mapCell_eq := by intros; rfl
  mapCell_natural := by intros; rfl
  cellMap := fun _ => doubleCounter
  contract_natural := by
    intros
    apply Presentation.Hom.ext <;> rfl

/-- Cell reactions preserve complete finite input traces. -/
example (inputs : List Nat) (state : Nat) :
    (doubleCounterReaction.cellMap canonicalEdge).mapState
        (counterSystem.run inputs state) =
      counterSystem.run
        (inputs.map
          (doubleCounterReaction.cellMap canonicalEdge).mapInput)
        ((doubleCounterReaction.cellMap canonicalEdge).mapState state) :=
  (doubleCounterReaction.cellMap canonicalEdge).toHom.map_run inputs state

/-- Cell reactions preserve observations through their declared translation. -/
example (state : Nat) :
    (doubleCounterReaction.cellMap canonicalEdge).mapObservation PUnit.unit
        (counterSystem.observe
          ((doubleCounterReaction.cellMap canonicalEdge).pullResolution PUnit.unit)
          state) =
      counterSystem.observe PUnit.unit
        ((doubleCounterReaction.cellMap canonicalEdge).mapState state) :=
  (doubleCounterReaction.cellMap canonicalEdge).observe_natural PUnit.unit state

/-! ## Local and capability-gated refinement -/

/-- The fabric adapter reuses the existing observational matrix refinement. -/
def matrixCellImplementation (m n : Nat) :
    CellImplementation
      (BinaryMatrix.Adapters.Fabric.mapSpecPresentation m n) where
  impl := (BinaryMatrix.Adapters.Fabric.mapImplPresentation m n).system
  refinement := BinaryMatrix.Adapters.Fabric.matrixImplementationRefinement m n

example (matrix : BinMatMut 2 3) :
    (matrixCellImplementation 2 3).refinement.abstract matrix = matrix.toDecl :=
  rfl

/-- Identity refinement for the unit runtime fixture. -/
def unitRefinement : DAF.Refinement unitSystem unitSystem where
  Valid := fun _ => True
  abstract := id
  mapInput := id
  mapResolution := id
  mapObservation := fun _ observation => observation
  valid_step := by intros; trivial
  step_sound := by intros; rfl
  observe_sound := by intros; rfl

def unitCellImplementation : CellImplementation unitPresentation where
  impl := unitSystem
  refinement := unitRefinement

/-- Coherent local implementations for the constant unit fabric. -/
def unitImplementationFabric : ImplementationFabric oneSimplexFabric where
  implementation := fun _ => unitCellImplementation
  boundaryImpl := fun _ _ => DAF.System.Hom.id unitSystem
  boundary_valid := by intros; trivial
  boundary_input_sound := by intros; rfl
  boundary_state_sound := by intros; rfl
  boundary_resolution_sound := by intros; rfl
  boundary_observation_sound := by intros; rfl

/--
An intentionally explicit toy capability.  Its presence, rather than local
refinements alone, is what authorizes the displayed global refinement.
-/
def unitGlobalCapability :
    RefinementPreservingRealization.{0, 0, 0, 0, 0, 0, 0, 0}
      identityRealization where
  GlobalSystem := fun _ => unitSystem
  assembleImplementation := fun _ => unitSystem
  globalRefinement := fun _ => unitRefinement

example :
    DAF.Refinement
      (unitGlobalCapability.assembleSpecification oneSimplexFabric)
      (unitGlobalCapability.assembleImplementation unitImplementationFabric) :=
  unitGlobalCapability.globalRefinement unitImplementationFabric

/-! ## Pure hosted runtime records -/

def hostedUnitState : HostedCellState unitCellImplementation where
  implementationState := PUnit.unit
  sequence := 7
  valid := trivial

example : hostedUnitState.sequence = 7 := rfl

def cleanStatus : CellStatus where
  cellId := `DAF.Integration.RuntimeCell
  dimension := 1
  presentationVersion := ⟨0, 1, 0⟩
  processedSequence := hostedUnitState.sequence
  boundaryDefects := []
  certificates := [`DAF.Integration.NamedCertificate]

example : cleanStatus.BoundaryClean := rfl

/-! ## Manifest names are metadata -/

def runtimeCellManifest : CellManifest where
  id := `DAF.Integration.RuntimeCell
  dimension := 1
  faceIds := []
  presentationModule := `DAF.Integration.FabricRuntimeTests
  presentationVersion := ⟨0, 1, 0⟩
  modelFingerprint := ⟨ByteArray.empty⟩
  implementationArtifact := none
  certificateNames := [`DAF.Integration.NamedCertificate]

def runtimeManifest : FabricManifest where
  formatVersion := 1
  fabricId := `DAF.Integration.RuntimeFabric
  cells := [runtimeCellManifest]

example : runtimeManifest.StructurallyValid := by
  constructor
  · simp [FabricManifest.UniqueCellIds, runtimeManifest, runtimeCellManifest]
  · simp [FabricManifest.ValidFaceReferences, runtimeManifest,
      runtimeCellManifest]

/-- This proves list membership only; no proof lookup is attached to the name. -/
example :
    `DAF.Integration.NamedCertificate ∈
      runtimeCellManifest.certificateNames := by
  simp [runtimeCellManifest]

end DAF.Integration.FabricRuntimeTests
