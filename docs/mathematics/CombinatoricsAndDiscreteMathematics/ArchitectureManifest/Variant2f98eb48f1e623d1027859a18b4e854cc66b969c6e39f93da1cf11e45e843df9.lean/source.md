# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ArchitectureManifest.Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fcd7aafe7ad20f2ed6855255c78997746eb4ed93` · SHA-256 `4b171696da730c59cf88fdcfbbe77ced075878362ebb9da9a43da3a56542071d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProjectId.Variant6fbc7123fa5dcaacd3cfe08179f69ea344b2a74a6398986ad652135f680a0ba9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6fbc7123fa5dcaacd3cfe08179f69ea344b2a74a6398986ad652135f680a0ba9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProjectId.Variant6fbc7123fa5dcaacd3cfe08179f69ea344b2a74a6398986ad652135f680a0ba9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6fbc7123fa5dcaacd3cfe08179f69ea344b2a74a6398986ad652135f680a0ba9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/DAF/Integration/ArchitectureManifest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Manifest
import Mathlib.Tactic.DeriveFintype

/-!
# Logical project decomposition manifest

This is the certified finite dependency diagram for the ownership-aligned
source tree.  It records semantic ownership and dependency direction; it does
not claim that each owner is a separate Lake package or that fingerprints prove
environment equality.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProjectId.Variant6fbc7123fa5dcaacd3cfe08179f69ea344b2a74a6398986ad652135f680a0ba9

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
  | binaryMatrix
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
        .arithmeticComparison, .framework, .causal, .binaryMatrix,
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
        .binaryMatrix, .filesystemCodec}
  | .binaryMatrix => {.kernel, .finiteDynamicsCore}
  | .terrain => {.framework}
  | .geometry => {.terrain}
  | .filesystemCodec => {.kernel, .binaryMatrix}
  | .filesystemDynamics =>
      {.filesystemCodec, .framework, .causal,
        .finiteDynamicsCore, .observerDynamics}
  | .filesystemHomology => {.filesystemDynamics, .homology}
  | .integration =>
      {.framework, .causal, .observerDynamics, .runtimeModel, .rustCodegen,
        .comparisonCoefficients, .binaryMatrix, .terrain, .geometry,
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
  | .binaryMatrix => 2
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
  | .binaryMatrix => `BinMat
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
      (manifest .binaryMatrix)
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
```
