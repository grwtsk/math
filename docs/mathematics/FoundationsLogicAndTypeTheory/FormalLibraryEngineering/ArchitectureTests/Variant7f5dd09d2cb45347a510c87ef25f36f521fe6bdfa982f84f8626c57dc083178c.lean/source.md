# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArchitectureTests.Variant7f5dd09d2cb45347a510c87ef25f36f521fe6bdfa982f84f8626c57dc083178c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `521df605587db8e83a8de1aaf8e530a71d9115a3` · SHA-256 `7f5dd09d2cb45347a510c87ef25f36f521fe6bdfa982f84f8626c57dc083178c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Integration.CertifiedUpgrade
import DAF.Runtime.RingState
import DAF.Runtime.ReducerIR
import BinaryMatrix.Adapters.DAFRefinement
import DAF.Causal.ObservableAdapter
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.NormNum

/-!
# Concrete integration tests for the certified DAF architecture

These examples exercise the generic framework independently of any package or
filesystem layout, then check the explicitly owned adapters against the existing
binary-matrix and causal-observation developments.
-/

namespace DAF.Integration.ArchitectureTests

/-! ## System composition and causal transport -/

/-- A two-bit state whose observable behavior depends only on its first bit. -/
def pairSystem : DAF.System.{0, 0, 0, 0} where
  Input := Bool
  State := Bool × Bool
  Resolution := PUnit
  Observation := fun _ => Bool
  step input state := (state.1 != input, state.2)
  observe := fun _ state => state.1

/-- The observable first-bit factor of `pairSystem`. -/
def bitSystem : DAF.System.{0, 0, 0, 0} where
  Input := Bool
  State := Bool
  Resolution := PUnit
  Observation := fun _ => Bool
  step input state := state != input
  observe := fun _ state => state

/-- Projection onto the first coordinate is a surjective system factor. -/
def firstBitFactor : pairSystem.Factor bitSystem where
  mapInput := id
  mapState := Prod.fst
  pullResolution := id
  mapObservation := fun _ => id
  step_natural := by intros; rfl
  observe_natural := by intros; rfl
  state_surjective := fun bit => ⟨(bit, false), rfl⟩

example (input : Bool) (state : Bool × Bool) :
    ((DAF.System.Hom.id bitSystem).comp firstBitFactor.toHom).mapState
        (pairSystem.step input state) =
      bitSystem.step input
        (((DAF.System.Hom.id bitSystem).comp firstBitFactor.toHom).mapState state) :=
  ((DAF.System.Hom.id bitSystem).comp firstBitFactor.toHom).step_natural input state

example :
    (DAF.System.Hom.id bitSystem).comp firstBitFactor.toHom =
      firstBitFactor.toHom :=
  DAF.System.Hom.id_comp firstBitFactor.toHom

example :
    Function.Surjective
      (firstBitFactor.toHom.causalStateMap Function.surjective_id) :=
  firstBitFactor.causalStateMap_surjective Function.surjective_id

example (state : Bool) :
    (DAF.System.Iso.refl bitSystem).causalStateEquiv
        (bitSystem.toCausal state) =
      bitSystem.toCausal
        ((DAF.System.Iso.refl bitSystem).hom.mapState state) :=
  (DAF.System.Iso.refl bitSystem).causalStateEquiv_toCausal state

example (x y : Bool) :
    bitSystem.CausalEquivalent x y ↔
      bitSystem.CausalEquivalent
        ((DAF.System.Iso.refl bitSystem).hom.mapState x)
        ((DAF.System.Iso.refl bitSystem).hom.mapState y) :=
  (DAF.System.Iso.refl bitSystem).causalEquivalent_iff

/-! ## A ranked three-project dependency chain -/

/-- Dependencies `0 ← 1 ← 2`, with arrows pointing toward dependents. -/
def chainDependencies (project : Fin 3) : Finset (Fin 3) :=
  if project = 0 then ∅
  else if project = 1 then {0}
  else {1}

/-- The project number is a topological rank for `chainDependencies`. -/
def chainGraph : DAF.DependencyGraph :=
  DAF.DependencyGraph.ofRank (Fin 3) chainDependencies Fin.val (by
    intro dependency project hdependency
    fin_cases project <;> fin_cases dependency <;>
      simp [chainDependencies] at hdependency ⊢)

def project0 : chainGraph.ProjectId := (0 : Fin 3)

def project1 : chainGraph.ProjectId := (1 : Fin 3)

def project2 : chainGraph.ProjectId := (2 : Fin 3)

example : chainGraph.dependsOn project0 = ∅ := by native_decide

example : chainGraph.dependsOn project1 = {project0} := by native_decide

example : chainGraph.dependsOn project2 = {project1} := by native_decide

example : chainGraph.dependencyCone project2 = Finset.univ := by native_decide

example : chainGraph.depClosure ({project2} : Finset chainGraph.ProjectId) =
    Finset.univ := by
  native_decide

/-! ## Tenant environment and root restriction -/

/-- A tenant rooted at the top project sees the complete dependency chain. -/
def topTenant : DAF.Tenant chainGraph where
  roots := {project2}

/-- A concrete full environment whose value records its project index. -/
def indexEnvironment : topTenant.Environment (fun _ => Nat) :=
  fun project _ => project.val

example : indexEnvironment project0 (by native_decide) = 0 := rfl

example : indexEnvironment project1 (by native_decide) = 1 := rfl

example : indexEnvironment project2 (by native_decide) = 2 := rfl

example :
    indexEnvironment.toRootExports project2 (by native_decide) = 2 :=
  rfl

/-! ## Pointwise workspace-upgrade transport -/

def oldChainNode (project : chainGraph.ProjectId) :
    DAF.ProjectNode.{0, 0, 0} chainGraph (fun _ => Nat) project where
  Artifact := PUnit
  semantics := fun _ => project.val
  denote := fun _ => project.val
  ValidArtifact := fun _ _ => True
  artifact_sound := by intros; rfl

def newChainNode (project : chainGraph.ProjectId) :
    DAF.ProjectNode.{0, 0, 0} chainGraph (fun _ => Nat) project where
  Artifact := PUnit
  semantics := fun _ => project.val + 1
  denote := fun _ => project.val + 1
  ValidArtifact := fun _ _ => True
  artifact_sound := by intros; rfl

abbrev oldChainWorkspace : DAF.WorkspaceDiagram.{0, 0, 0} chainGraph where
  Export := fun _ => Nat
  node := oldChainNode

abbrev newChainWorkspace : DAF.WorkspaceDiagram.{0, 0, 0} chainGraph where
  Export := fun _ => Nat
  node := newChainNode

/-- The pointwise successor map commutes with both constant node semantics. -/
def incrementUpgrade :
    DAF.WorkspaceUpgrade oldChainWorkspace newChainWorkspace where
  mapPublic := fun _ value => value + 1
  semantics_natural := by intros; rfl

example (project : chainGraph.ProjectId) :
    incrementUpgrade.mapPublic project (oldChainWorkspace.evaluate project) =
      newChainWorkspace.evaluate project :=
  DAF.Upgrade.evaluate_natural incrementUpgrade project

/-- The unit artifact migrates unchanged while its denotation is incremented. -/
def chainArtifactMigration (project : chainGraph.ProjectId) :
    DAF.WorkspaceArtifactMigration incrementUpgrade project where
  migrate := id
  valid_migrate := by intros; trivial
  denote_natural := by intros; rfl

example
    (project : chainGraph.ProjectId)
    (env : DAF.DependencyEnv chainGraph oldChainWorkspace.Export project) :
    (newChainWorkspace.node project).denote
        ((chainArtifactMigration project).migrate PUnit.unit) =
      (newChainWorkspace.node project).semantics
        (DAF.Upgrade.mapDependencyEnv incrementUpgrade project env) :=
  (chainArtifactMigration project).migratedArtifact_sound
    env PUnit.unit trivial

example :
    DAF.Upgrade.tenantEnvironmentMap incrementUpgrade topTenant
        indexEnvironment project1 (by native_decide) = 2 :=
  rfl

example :
    DAF.Upgrade.tenantRootMap incrementUpgrade topTenant
        indexEnvironment.toRootExports project2 (by native_decide) = 3 :=
  rfl

example :
    DAF.Upgrade.tenantEnvironmentMap incrementUpgrade topTenant
        indexEnvironment project0 (by native_decide) =
      incrementUpgrade.mapPublic project0
        (indexEnvironment project0 (by native_decide)) :=
  DAF.Upgrade.tenantEnvironmentMap_apply
    incrementUpgrade topTenant indexEnvironment project0 _

/-! ## Abstract rebuild behavior -/

/-- A public change at project `1` reaches `1` and its dependent `2`. -/
def publicMiddleChange : DAF.Build.ChangeSet chainGraph where
  implementationChangedSet := ∅
  publicChangedSet := {project1}
  runtimeChangedSet := ∅

example :
    DAF.Build.dependentsClosure chainGraph
        ({project1} : Finset chainGraph.ProjectId) =
      {project1, project2} := by
  native_decide

example : DAF.Build.leanRebuild publicMiddleChange = {project1, project2} := by
  native_decide

/-- The bottom tenant is unaffected by a local implementation change at `2`. -/
def bottomTenant : DAF.Tenant chainGraph where
  roots := {project0}

def topImplementationChange : DAF.Build.ChangeSet chainGraph where
  implementationChangedSet := {project2}
  publicChangedSet := ∅
  runtimeChangedSet := ∅

/-- The concrete upgrade packages every project migration and rebuild input. -/
def certifiedIncrementUpgrade :
    DAF.CertifiedWorkspaceUpgrade oldChainWorkspace newChainWorkspace where
  upgrade := incrementUpgrade
  artifactMigration := chainArtifactMigration
  changes := publicMiddleChange

/-- The principal result is a bundle of actual typed transport conclusions. -/
noncomputable def certifiedIncrementResult :
    DAF.CertifiedWorkspaceUpgradeResult.{0, 0, 0, 0, 0, 0, 0, 0}
      certifiedIncrementUpgrade :=
  DAF.certifiedWorkspaceUpgrade.{0, 0, 0, 0, 0, 0, 0, 0}
    certifiedIncrementUpgrade

/-- The top project explicitly carries the same concrete system on both sides. -/
def chainRootSystemCapability (project : chainGraph.ProjectId) :
    DAF.WorkspaceSystemCapability incrementUpgrade project where
  sourceSystem := fun _ ↦ ⟨bitSystem⟩
  targetSystem := fun _ ↦ ⟨bitSystem⟩
  hom := DAF.System.Hom.id bitSystem

def chainRootSystemIsoCapability (project : chainGraph.ProjectId) :
    DAF.WorkspaceSystemIsoCapability incrementUpgrade project where
  sourceSystem := fun _ ↦ ⟨bitSystem⟩
  targetSystem := fun _ ↦ ⟨bitSystem⟩
  iso := DAF.System.Iso.refl bitSystem

example
    (project : chainGraph.ProjectId)
    (env : DAF.DependencyEnv chainGraph oldChainWorkspace.Export project) :
    (newChainWorkspace.node project).denote
        ((chainArtifactMigration project).migrate PUnit.unit) =
      (newChainWorkspace.node project).semantics
        (DAF.Upgrade.mapDependencyEnv incrementUpgrade project env) :=
  certifiedIncrementResult.projectSound project env PUnit.unit trivial

example
    (project : chainGraph.ProjectId)
    (env : DAF.DependencyEnv chainGraph oldChainWorkspace.Export project) :
    (newChainWorkspace.node project).ValidArtifact
      (DAF.Upgrade.mapDependencyEnv incrementUpgrade project env)
      ((chainArtifactMigration project).migrate PUnit.unit) :=
  certifiedIncrementResult.projectValid project env PUnit.unit trivial

example :
    certifiedIncrementResult.tenantTransport topTenant
        indexEnvironment project1 (by native_decide) = 2 :=
  rfl

example (input state : Bool) :
    bitSystem.step input state = bitSystem.step input state :=
  certifiedIncrementResult.rootSystemStepTransport
    topTenant project2 (by native_decide)
    (chainRootSystemCapability project2) input state

noncomputable example : bitSystem.CausalState ≃ bitSystem.CausalState :=
  certifiedIncrementResult.rootCausalEquivalenceTransport
    topTenant project2 (by native_decide)
    (chainRootSystemIsoCapability project2)

example :
    DAF.Build.leanRebuild certifiedIncrementUpgrade.changes =
      certifiedIncrementUpgrade.changes.implementationChangedSet ∪
        DAF.Build.dependentsClosure chainGraph
          certifiedIncrementUpgrade.changes.publicChangedSet :=
  certifiedIncrementResult.rebuildCharacterization

example : DAF.Build.leanRebuild topImplementationChange = {project2} := by
  native_decide

example : ¬ bottomTenant.Affected topImplementationChange :=
  (DAF.Build.tenant_unaffected_iff_disjoint
      bottomTenant topImplementationChange).2 (by native_decide)

example :
    Disjoint
      (chainGraph.depClosure bottomTenant.roots)
      (DAF.Build.leanRebuild topImplementationChange) :=
  (DAF.Build.tenant_unaffected_iff_disjoint
      bottomTenant topImplementationChange).mp
    ((DAF.Build.tenant_unaffected_iff_disjoint
      bottomTenant topImplementationChange).2 (by native_decide))

/-! ## Domain-independent runtime components -/

def emptyNatRing : DAF.Runtime.RingState 2 Nat where
  slots := fun _ => 0
  sequence := 0

example : (emptyNatRing.push (by decide) 7).sequence = 1 := rfl

example : (emptyNatRing.push (by decide) 7).latestEntry (by decide) = some 7 := by
  simp

example : (emptyNatRing.push (by decide) 7).count = 1 := by
  native_decide

/-- Pair the original sequence with its residue, then project the residue. -/
def moduloThreeReducer :
    DAF.Runtime.ReducerIR .natural .natural :=
  .compose
    (.pair .identity (.sequenceModulo 3))
    .projectRight

example : moduloThreeReducer.eval (8 : Nat) = (2 : Nat) := by
  norm_num [moduloThreeReducer, DAF.Runtime.ReducerIR.eval]

example :
    (DAF.Runtime.ReducerIR.boolNot.eval true) = false :=
  rfl

/-! ## Existing binary-matrix refinement and causal adapters -/

def falseMatrix : BinMatMut 1 2 :=
  BinMatMut.fill 1 2 false

example :
    (BinaryMatrix.Adapters.mapRefinement.{0} 1 2).abstract
        ((BinaryMatrix.Adapters.mapImplSystem.{0} 1 2).step Bool.not falseMatrix) =
      (BinaryMatrix.Adapters.mapSpecSystem.{0} 1 2).step Bool.not
        ((BinaryMatrix.Adapters.mapRefinement.{0} 1 2).abstract falseMatrix) :=
  BinaryMatrix.Adapters.mapRefinement_step_sound.{0} Bool.not falseMatrix

example :
    BinMatMut.Refines falseMatrix falseMatrix.toDecl :=
  (BinaryMatrix.Adapters.refines_iff_abstract_eq.{0}
    falseMatrix falseMatrix.toDecl).2 rfl

/-- A small fixture in the pre-existing observable-recursion presentation. -/
def oldToggleSystem :
    ObservableRecursion.System.{0, 0, 0, 0} Bool Bool PUnit where
  Observation := fun _ => Bool
  step := fun input state => state != input
  observe := fun _ state => state

example (inputs : List Bool) (state : Bool) :
    (DAF.Causal.ObservableAdapter.toDAF oldToggleSystem).run inputs state =
      oldToggleSystem.run inputs state :=
  DAF.Causal.ObservableAdapter.toDAF_run oldToggleSystem inputs state

example (x y : Bool) :
    (DAF.Causal.ObservableAdapter.toDAF oldToggleSystem).CausalEquivalent x y ↔
      oldToggleSystem.CausalEquivalent x y :=
  DAF.Causal.ObservableAdapter.toDAF_causalEquivalent_iff oldToggleSystem x y

example (state : Bool) :
    DAF.Causal.ObservableAdapter.causalStateEquiv oldToggleSystem
        ((DAF.Causal.ObservableAdapter.toDAF oldToggleSystem).toCausal state) =
      oldToggleSystem.toCausal state :=
  DAF.Causal.ObservableAdapter.causalStateEquiv_toCausal oldToggleSystem state

end DAF.Integration.ArchitectureTests
```
