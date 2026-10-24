import Surface.ContinuousAssurance.Authority

/-!
# Declared workspace containment

The non-Lean pipeline root is `continuous-assurance`; the Lean semantics remain
under the separate `Surface` root.  This module proves facts about the declared
workspace model.  Actual filesystem conformance is executable evidence unless
it is supplied through a separately certified filesystem bridge.

Filesystem containment is not the execution dependency DAG.  They are modeled
by distinct relations.
-/

namespace Surface.ContinuousAssurance

/-- A repository-relative path represented without host-specific absolutes. -/
structure RelativePath where
  segments : List String
  deriving DecidableEq, Repr

namespace RelativePath

/-- `path` is at or below `root`. -/
def IsBelow (root path : RelativePath) : Prop :=
  ∃ suffix, path.segments = root.segments ++ suffix

theorem below_append
    (root : RelativePath)
    (suffix : List String) :
    root.IsBelow ⟨root.segments ++ suffix⟩ :=
  ⟨suffix, rfl⟩

end RelativePath

/-- Filesystem role of a declared component. -/
inductive WorkspaceComponentKind
  | leanFormalization
  | nonLeanCanonicalSource
  | rootDeclarativeActivation
  | generatedRootAdapter
  | generatedEvidence
  | externalRuntime
  deriving DecidableEq, Repr

/-- The checking boundary assigned to workspace bytes. -/
inductive WorkspaceSourceStatus
  | certifiedSource
  | declarativeArtifact
  | generated
  | external
  deriving DecidableEq, Repr

namespace WorkspaceSourceStatus

/-- The only authority class permitted for each workspace source status. -/
def authorityClass : WorkspaceSourceStatus → AuthorityClass
  | .certifiedSource => .certifiedSource
  | .declarativeArtifact => .declarativeArtifact
  | .generated => .externalCapability
  | .external => .externalCapability

end WorkspaceSourceStatus

/-- One declared component of the workspace. -/
structure WorkspaceComponent where
  identifier : String
  path : RelativePath
  kind : WorkspaceComponentKind
  status : WorkspaceSourceStatus
  authority : AuthorityClass
  canonicalOwner : Option RelativePath
  deriving DecidableEq, Repr

/-- A rooted workspace plus its containment/ownership invariants. -/
structure WorkspaceModel where
  pipelineRoot : RelativePath
  leanRoot : RelativePath
  components : List WorkspaceComponent
  rootsSeparate : pipelineRoot ≠ leanRoot
  nonLeanCanonicalRooted :
    ∀ component,
      component ∈ components →
      component.kind = .nonLeanCanonicalSource →
      pipelineRoot.IsBelow component.path
  rootAdaptersOwned :
    ∀ component,
      component ∈ components →
      component.kind = .generatedRootAdapter →
      ∃ owner,
        component.canonicalOwner = some owner ∧
        pipelineRoot.IsBelow owner
  generatedEvidenceNotCertified :
    ∀ component,
      component ∈ components →
      component.kind = .generatedEvidence →
      component.status ≠ .certifiedSource
  authorityAssignmentsAgree :
    ∀ component,
      component ∈ components →
      component.authority = component.status.authorityClass

namespace WorkspaceModel

/-- Every declared non-Lean canonical source is under the pipeline root. -/
theorem every_nonLean_canonical_source_rooted
    (workspace : WorkspaceModel)
    (component : WorkspaceComponent)
    (member : component ∈ workspace.components)
    (kind : component.kind = .nonLeanCanonicalSource) :
    workspace.pipelineRoot.IsBelow component.path :=
  workspace.nonLeanCanonicalRooted component member kind

/-- The Lean semantic root is separate from the non-Lean pipeline root. -/
theorem lean_root_separate
    (workspace : WorkspaceModel) :
    workspace.pipelineRoot ≠ workspace.leanRoot :=
  workspace.rootsSeparate

/-- Every generated root adapter names a canonical owner below the pipeline root. -/
theorem generated_root_adapter_has_canonical_owner
    (workspace : WorkspaceModel)
    (component : WorkspaceComponent)
    (member : component ∈ workspace.components)
    (kind : component.kind = .generatedRootAdapter) :
    ∃ owner,
      component.canonicalOwner = some owner ∧
      workspace.pipelineRoot.IsBelow owner :=
  workspace.rootAdaptersOwned component member kind

/-- Generated evidence is never classified as certified source. -/
theorem generated_evidence_is_not_certified_source
    (workspace : WorkspaceModel)
    (component : WorkspaceComponent)
    (member : component ∈ workspace.components)
    (kind : component.kind = .generatedEvidence) :
    component.status ≠ .certifiedSource :=
  workspace.generatedEvidenceNotCertified component member kind

/-- Every component authority agrees with its declared checking boundary. -/
theorem authority_assignment_sound
    (workspace : WorkspaceModel)
    (component : WorkspaceComponent)
    (member : component ∈ workspace.components) :
    component.authority = component.status.authorityClass :=
  workspace.authorityAssignmentsAgree component member

/-- Kernel trusted bases are not represented by source-tree components. -/
theorem component_is_not_kernel_trusted_base
    (workspace : WorkspaceModel)
    (component : WorkspaceComponent)
    (member : component ∈ workspace.components) :
    component.authority ≠ .kernelTrustedBase := by
  rw [workspace.authority_assignment_sound component member]
  cases component.status <;> decide

/-- Declarative artifacts cannot be promoted to certified formal source. -/
theorem declarative_artifact_is_not_certified_source
    (workspace : WorkspaceModel)
    (component : WorkspaceComponent)
    (member : component ∈ workspace.components)
    (status : component.status = .declarativeArtifact) :
    component.authority ≠ .certifiedSource := by
  rw [workspace.authority_assignment_sound component member, status]
  decide

end WorkspaceModel

/-- The canonical non-Lean root. -/
def continuousAssuranceRoot : RelativePath :=
  ⟨["continuous-assurance"]⟩

/-- The separate Lean formalization root. -/
def surfaceRoot : RelativePath :=
  ⟨["Surface"]⟩

/--
The local development model is an external capability, not a source-tree owner
or theorem authority.  Its runtime files are intentionally outside the
certified-source component model.
-/
def localDevelopmentModelComponent : WorkspaceComponent :=
  { identifier := "local-development-model"
    path := ⟨["external", "local-development-model"]⟩
    kind := .externalRuntime
    status := .external
    authority := .externalCapability
    canonicalOwner := none }

/-- The local candidate generator is classified as an external capability. -/
@[simp]
theorem localDevelopmentModelComponent_authority :
    localDevelopmentModelComponent.authority = .externalCapability :=
  rfl

private def rustAuditComponent : WorkspaceComponent :=
  { identifier := "rust-audit"
    path := ⟨["continuous-assurance", "tools", "architecture-audit"]⟩
    kind := .nonLeanCanonicalSource
    status := .declarativeArtifact
    authority := .declarativeArtifact
    canonicalOwner := none }

private def agdaComponent : WorkspaceComponent :=
  { identifier := "cubical-agda"
    path := ⟨["continuous-assurance", "formal", "agda"]⟩
    kind := .nonLeanCanonicalSource
    status := .certifiedSource
    authority := .certifiedSource
    canonicalOwner := none }

private def githubAdapterSource : WorkspaceComponent :=
  { identifier := "github-adapter-source"
    path := ⟨["continuous-assurance", "adapters", "github", "ci.yml"]⟩
    kind := .nonLeanCanonicalSource
    status := .declarativeArtifact
    authority := .declarativeArtifact
    canonicalOwner := none }

private def generatedGithubAdapter : WorkspaceComponent :=
  { identifier := "github-root-adapter"
    path := ⟨[".github", "workflows", "ci.yml"]⟩
    kind := .generatedRootAdapter
    status := .generated
    authority := .externalCapability
    canonicalOwner := some githubAdapterSource.path }

private def rootAnalyticTheoremConfig : WorkspaceComponent :=
  { identifier := "root-analytic-theorem-config"
    path := ⟨["config.yml"]⟩
    kind := .rootDeclarativeActivation
    status := .declarativeArtifact
    authority := .declarativeArtifact
    canonicalOwner := some ⟨["continuous-assurance", "architecture"]⟩ }

private def generatedAuditEvidence : WorkspaceComponent :=
  { identifier := "generated-audit-evidence"
    path := ⟨["continuous-assurance", "audit", "architecture-submission"]⟩
    kind := .generatedEvidence
    status := .generated
    authority := .externalCapability
    canonicalOwner := none }

private def leanSemanticsComponent : WorkspaceComponent :=
  { identifier := "lean-assurance-semantics"
    path := ⟨["Surface", "Surface", "ContinuousAssurance"]⟩
    kind := .leanFormalization
    status := .certifiedSource
    authority := .certifiedSource
    canonicalOwner := none }

/-- The declared repository workspace used by the assurance examples. -/
def canonicalWorkspace : WorkspaceModel where
  pipelineRoot := continuousAssuranceRoot
  leanRoot := surfaceRoot
  components :=
    [rustAuditComponent, agdaComponent, githubAdapterSource,
      generatedGithubAdapter, rootAnalyticTheoremConfig, generatedAuditEvidence,
      leanSemanticsComponent, localDevelopmentModelComponent]
  rootsSeparate := by decide
  nonLeanCanonicalRooted := by
    intro component member kind
    simp only [List.mem_cons, List.not_mem_nil, or_false] at member
    rcases member with h | h | h | h | h | h | h | h <;> subst component
    · exact ⟨["tools", "architecture-audit"], rfl⟩
    · exact ⟨["formal", "agda"], rfl⟩
    · exact ⟨["adapters", "github", "ci.yml"], rfl⟩
    · contradiction
    · contradiction
    · contradiction
    · contradiction
    · contradiction
  rootAdaptersOwned := by
    intro component member kind
    simp only [List.mem_cons, List.not_mem_nil, or_false] at member
    rcases member with h | h | h | h | h | h | h | h <;> subst component
    · contradiction
    · contradiction
    · contradiction
    · refine ⟨githubAdapterSource.path, rfl, ?_⟩
      exact ⟨["adapters", "github", "ci.yml"], rfl⟩
    · contradiction
    · contradiction
    · contradiction
    · contradiction
  generatedEvidenceNotCertified := by
    intro component member kind
    simp only [List.mem_cons, List.not_mem_nil, or_false] at member
    rcases member with h | h | h | h | h | h | h | h <;> subst component
    · contradiction
    · contradiction
    · contradiction
    · contradiction
    · contradiction
    · decide
    · contradiction
    · contradiction
  authorityAssignmentsAgree := by
    intro component member
    simp only [List.mem_cons, List.not_mem_nil, or_false] at member
    rcases member with h | h | h | h | h | h | h | h <;>
      subst component <;> rfl

/-- The declared model places all canonical non-Lean sources below its root. -/
theorem canonicalWorkspace_nonLean_rooted
    (component : WorkspaceComponent)
    (member : component ∈ canonicalWorkspace.components)
    (kind : component.kind = .nonLeanCanonicalSource) :
    canonicalWorkspace.pipelineRoot.IsBelow component.path :=
  canonicalWorkspace.every_nonLean_canonical_source_rooted component member kind

/-- The two canonical roots are distinct. -/
theorem canonicalWorkspace_roots_separate :
    canonicalWorkspace.pipelineRoot ≠ canonicalWorkspace.leanRoot :=
  canonicalWorkspace.lean_root_separate

/--
The repository-root theorem configuration is a declarative activation source,
owned by architecture policy below `continuous-assurance`. It is not a
generated root adapter and has no theorem authority.
-/
theorem canonicalWorkspace_root_analytic_config_owned :
    ∃ component ∈ canonicalWorkspace.components,
      component.identifier = "root-analytic-theorem-config" ∧
      component.path = ⟨["config.yml"]⟩ ∧
      component.kind = .rootDeclarativeActivation ∧
      component.status = .declarativeArtifact ∧
      component.authority = .declarativeArtifact ∧
      component.canonicalOwner =
        some ⟨["continuous-assurance", "architecture"]⟩ := by
  refine ⟨rootAnalyticTheoremConfig, ?_, rfl, rfl, rfl, rfl, rfl, rfl⟩
  simp [canonicalWorkspace]

end Surface.ContinuousAssurance
