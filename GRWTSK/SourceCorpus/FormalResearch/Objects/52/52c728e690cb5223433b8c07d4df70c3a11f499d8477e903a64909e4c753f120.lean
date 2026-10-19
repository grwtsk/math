import DAF.Manifest
import Mathlib.Tactic.DeriveFintype

/-!
# Logical project decomposition manifest

This is the certified finite dependency diagram for the ownership-aligned
source tree.  It records semantic ownership and dependency direction; it does
not claim that each owner is a separate Lake package or that fingerprints prove
environment equality.
-/

namespace DAF.Integration.Architecture

/-- Logical owner projects in the ownership-aligned source tree. -/
inductive ProjectId
  | kernel
  | framework
  | causal
  | finiteDynamicsCore
  | observerDynamics
  | homology
  | runtimeModel
  | rustCodegen
  | comparisonCore
  | comparisonCoefficients
  | perfectComplex
  | determinant
  | assemblyInterface
  | arithmeticInterface
  | arithmeticComparison
  | comparisonIntegration
  | fabricPresentation
  | fabricCore
  | fabricReaction
  | fabricBoundary
  | fabricRealization
  | fabricRuntime
  | prismaticInterface
  | prismaticFabric
  | prismaticTotalization
  | cyclotomicDefect
  | fabricIntegration
  | bitMatrix
  | terrain
  | geometry
  | filesystemCodec
  | filesystemDynamics
  | filesystemHomology
  | integration
  deriving DecidableEq, Fintype, Repr

/-- Direct dependencies, with dependencies listed at the importing project. -/
def directDependencies : ProjectId → Finset ProjectId
  | .kernel => ∅
  | .framework => {.kernel}
  | .causal => {.framework}
  | .finiteDynamicsCore => {.kernel}
  | .observerDynamics => {.framework, .causal, .finiteDynamicsCore}
  | .homology => {.kernel}
  | .runtimeModel => {.kernel, .framework}
  | .rustCodegen => {.runtimeModel}
  | .comparisonCore => {.kernel, .framework, .causal}
  | .comparisonCoefficients => {.comparisonCore}
  | .perfectComplex => {.homology, .comparisonCore}
  | .determinant => {.perfectComplex, .comparisonCoefficients}
  | .assemblyInterface => {.comparisonCore, .determinant}
  | .arithmeticInterface => {.assemblyInterface, .comparisonCoefficients}
  | .arithmeticComparison =>
      {.arithmeticInterface, .comparisonCoefficients, .determinant}
  | .comparisonIntegration =>
      {.comparisonCore, .comparisonCoefficients, .perfectComplex,
        .determinant, .assemblyInterface, .arithmeticInterface,
        .arithmeticComparison, .framework, .causal, .bitMatrix,
        .filesystemCodec}
  | .fabricPresentation => {.framework, .comparisonCore}
  | .fabricCore => {.fabricPresentation}
  | .fabricReaction => {.fabricCore}
  | .fabricBoundary => {.fabricCore}
  | .fabricRealization => {.fabricCore, .fabricReaction}
  | .fabricRuntime => {.fabricCore, .runtimeModel}
  | .prismaticInterface =>
      {.fabricCore, .comparisonCoefficients, .terrain, .geometry}
  | .prismaticFabric =>
      {.prismaticInterface, .fabricCore, .fabricReaction}
  | .prismaticTotalization =>
      {.prismaticInterface, .prismaticFabric, .determinant}
  | .cyclotomicDefect => {.prismaticInterface}
  | .fabricIntegration =>
      {.fabricPresentation, .fabricCore, .fabricReaction, .fabricBoundary,
        .fabricRealization, .fabricRuntime, .prismaticInterface,
        .prismaticFabric, .prismaticTotalization, .cyclotomicDefect,
        .bitMatrix, .filesystemCodec}
  | .bitMatrix => {.kernel, .finiteDynamicsCore}
  | .terrain => {.framework}
  | .geometry => {.terrain}
  | .filesystemCodec => {.kernel, .bitMatrix}
  | .filesystemDynamics =>
      {.filesystemCodec, .framework, .causal,
        .finiteDynamicsCore, .observerDynamics}
  | .filesystemHomology => {.filesystemDynamics, .homology}
  | .integration =>
      {.framework, .causal, .observerDynamics, .runtimeModel, .rustCodegen,
        .comparisonCoefficients, .bitMatrix, .terrain, .geometry,
        .finiteDynamicsCore, .prismaticInterface,
        .filesystemCodec, .filesystemDynamics, .filesystemHomology,
        .fabricIntegration}

/-- A topological rank certifying acyclicity of the logical package graph. -/
def rank : ProjectId → Nat
  | .kernel => 0
  | .framework => 1
  | .causal => 2
  | .finiteDynamicsCore => 1
  | .observerDynamics => 3
  | .homology => 1
  | .runtimeModel => 2
  | .rustCodegen => 3
  | .comparisonCore => 3
  | .comparisonCoefficients => 4
  | .perfectComplex => 4
  | .determinant => 5
  | .assemblyInterface => 6
  | .arithmeticInterface => 7
  | .arithmeticComparison => 8
  | .comparisonIntegration => 9
  | .fabricPresentation => 4
  | .fabricCore => 5
  | .fabricReaction => 6
  | .fabricBoundary => 6
  | .fabricRealization => 7
  | .fabricRuntime => 6
  | .prismaticInterface => 6
  | .prismaticFabric => 7
  | .prismaticTotalization => 8
  | .cyclotomicDefect => 7
  | .fabricIntegration => 9
  | .bitMatrix => 2
  | .terrain => 2
  | .geometry => 3
  | .filesystemCodec => 3
  | .filesystemDynamics => 4
  | .filesystemHomology => 5
  | .integration => 10

/-- The corrected finite acyclic dependency graph from the architecture. -/
def graph : DAF.DependencyGraph :=
  DAF.DependencyGraph.ofRank ProjectId directDependencies rank (by
    intro dependency project h
    cases project <;> cases dependency <;>
      simp_all [directDependencies, rank])

/--
Logical interface owner for each project.  When several fine-grained modules
intentionally publish declarations in one parent namespace (for example
`DAF.Comparison`), this value is the unique owning module name used by the
manifest, not a claim that Lean declarations were discovered by prefix scan.
-/
def ownedNamespace : ProjectId → Lean.Name
  | .kernel => `DAF.Kernel
  | .framework => `DAF
  | .causal => `DAF.Causal
  | .finiteDynamicsCore => `FinitePermutationDynamics
  | .observerDynamics => `ObserverSpectral
  | .homology => `DAF.Homology
  | .runtimeModel => `DAF.Runtime
  | .rustCodegen => `DAF.RustCodegen
  | .comparisonCore => `DAF.Comparison
  | .comparisonCoefficients => `DAF.Comparison.Coefficients
  | .perfectComplex => `DAF.PerfectComplex
  | .determinant => `DAF.Determinant
  | .assemblyInterface => `DAF.Assembly
  | .arithmeticInterface => `DAF.Arithmetic
  | .arithmeticComparison => `DAF.Arithmetic.Comparison
  | .comparisonIntegration => `DAF.Integration.ComparisonTests
  | .fabricPresentation => `DAF.Fabric.Presentation
  | .fabricCore => `DAF.Fabric.Core
  | .fabricReaction => `DAF.Fabric.Reaction
  | .fabricBoundary => `DAF.Fabric.Boundary
  | .fabricRealization => `DAF.Fabric.Realization
  | .fabricRuntime => `DAF.Fabric.Runtime
  | .prismaticInterface => `DAF.Prismatic.Interface
  | .prismaticFabric => `DAF.Prismatic.Fabric
  | .prismaticTotalization => `DAF.Prismatic.Totalization
  | .cyclotomicDefect => `DAF.Cyclotomic.Defect
  | .fabricIntegration => `DAF.Integration.FabricTests
  | .bitMatrix => `BitMatrix
  | .terrain => `DAF.Terrain
  | .geometry => `DAF.Geometry
  | .filesystemCodec => `FilesystemCodec
  | .filesystemDynamics => `FilesystemFirstReturn
  | .filesystemHomology => `FilesystemHomologicalTransport
  | .integration => `DAF.Integration.Architecture

/--
The representative logical interfaces permitted to a project.  These names
are obtained from the certified dependency graph; they are policy data rather
than a parser-derived assertion about the text of every source-file import.
-/
def dependencyInterfaceModules (project : ProjectId) : Finset Lean.Name :=
  (directDependencies project).image ownedNamespace

/-- The logical test module kept outside production imports for each owner. -/
def testModule (project : ProjectId) : Lean.Name :=
  (ownedNamespace project).str "Tests"

/-- Module-level ownership intent for each logical project. -/
def ownershipPolicy (project : ProjectId) : DAF.OwnershipPolicy where
  ownsNamespaces := {ownedNamespace project}
  allowedImports := dependencyInterfaceModules project
  forbiddenImports := {testModule project}
  aggregateModules :=
    if project = .integration then {`DAF}
    else if project = .fabricCore then {`DAF.Fabric}
    else if project = .prismaticInterface then {`DAF.Prismatic}
    else ∅
  testModules := {testModule project}

/-- The declared ownership policies are internally noncontradictory. -/
theorem ownershipPolicy_consistent (project : ProjectId) :
    (ownershipPolicy project).Consistent := by
  cases project <;>
    simp [ownershipPolicy, DAF.OwnershipPolicy.Consistent,
      dependencyInterfaceModules, directDependencies, ownedNamespace,
      testModule]

/--
The finite logical source inventory checked by this module.  It deliberately
records the dependency policy rather than pretending to parse Lean modules:
each project owns its unique interface module, may depend on the interfaces
of its graph dependencies, excludes its test module from production, has no
compatibility modules, and treats the integration aggregate as
declaration-free.  Concrete import scans are performed by the build checks.
-/
def currentInventory (project : ProjectId) : DAF.ProjectInventory where
  declarationNamespaces := {ownedNamespace project}
  directImports := dependencyInterfaceModules project
  modulesWithDeclarations := {ownedNamespace project}
  productionImports := dependencyInterfaceModules project
  compatibilityModules := ∅

/-- Every supplied logical inventory passes all executable ownership checks. -/
theorem ownershipPolicy_accepts_currentInventory (project : ProjectId) :
    (ownershipPolicy project).AcceptsInventory (currentInventory project) := by
  cases project <;>
    simp [DAF.OwnershipPolicy.AcceptsInventory, ownershipPolicy,
      currentInventory, dependencyInterfaceModules, directDependencies,
      ownedNamespace, testModule]

/-- Every declared umbrella is disjoint from modules carrying declarations. -/
theorem aggregate_declaration_free (project : ProjectId) :
    Disjoint (ownershipPolicy project).aggregateModules
      (currentInventory project).modulesWithDeclarations :=
  DAF.OwnershipPolicy.aggregate_declaration_free
    (ownershipPolicy_accepts_currentInventory project)

/-- Placeholder bytes are cache keys only; they carry no semantic theorem. -/
def placeholderFingerprint : DAF.Fingerprint :=
  ⟨ByteArray.empty⟩

/-- Typed manifest for one logical owner in the current architecture. -/
def manifest (project : graph.ProjectId) :
    DAF.ProjectManifest graph.ProjectId where
  projectId := project
  semanticVersion := ⟨0, 1, 0⟩
  directDependencies := graph.dependsOn project
  publicEnvironmentFingerprint := placeholderFingerprint
  implementationFingerprint := placeholderFingerprint
  runtimeArtifactFingerprint := none
  interfaceModule := ownedNamespace project
  soundnessTheorems := ∅
  upgradeTheorems := ∅
  ownedNamespaces := {ownedNamespace project}
  allowedDependencies := graph.dependsOn project
  forbiddenDependencies := ∅

/-- Every logical manifest agrees with the certified graph. -/
theorem manifests_match_graph :
    DAF.ManifestsMatchGraph graph manifest := by
  intro project
  exact ⟨rfl, rfl⟩

/-- Every logical manifest permits exactly its declared dependency set. -/
theorem manifest_dependencies_respect_policy (project : graph.ProjectId) :
    (manifest project).DependenciesRespectPolicy := by
  constructor
  · exact fun _ h => h
  · simp [manifest]

/--
The integration owner is a directional adapter between the binary-matrix and
filesystem-codec logical projects: only the adapter depends on both endpoints,
and neither endpoint depends back on integration.
-/
theorem integration_adapter_directionally_valid :
    DAF.AdapterDirectionallyValid
      (manifest .integration)
      (manifest .bitMatrix)
      (manifest .filesystemCodec) := by
  simp [DAF.AdapterDirectionallyValid, manifest, graph,
    DAF.DependencyGraph.ofRank, directDependencies]
  decide

/-- The owned interface namespace map has no duplicate logical owner. -/
theorem ownedNamespace_injective : Function.Injective ownedNamespace := by
  intro p q h
  cases p <;> cases q <;> simp_all [ownedNamespace]

/--
The supplied public-name index assigns an interface namespace to its unique
logical owner.  It is deliberately an index over this typed manifest, not a
claim that all declarations in the live source tree were discovered.
-/
def declaredBy (declaration : Lean.Name) : Finset ProjectId :=
  Finset.univ.filter fun project ↦ ownedNamespace project = declaration

/-- Every public name in the supplied index has at most one logical owner. -/
theorem unique_public_ownership :
    DAF.UniquePublicOwnership declaredBy := by
  intro declaration
  rw [Finset.card_le_one_iff]
  intro p q hp hq
  simp only [declaredBy, Finset.mem_filter] at hp hq
  exact ownedNamespace_injective (hp.2.trans hq.2.symm)

end DAF.Integration.Architecture
