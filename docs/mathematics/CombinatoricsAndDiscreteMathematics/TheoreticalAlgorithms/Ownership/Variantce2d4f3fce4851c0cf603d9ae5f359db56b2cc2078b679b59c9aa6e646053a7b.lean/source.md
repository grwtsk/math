# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ownership.Variantce2d4f3fce4851c0cf603d9ae5f359db56b2cc2078b679b59c9aa6e646053a7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05728dde1a31b99a08987e8539e29290baf051be` · SHA-256 `ce2d4f3fce4851c0cf603d9ae5f359db56b2cc2078b679b59c9aa6e646053a7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.Authority

/-!
# Unique declaration ownership

A public declaration has one defining owner.  Other modules may re-export it,
but a re-export is metadata and never creates another owner.
-/

namespace Surface.ContinuousAssurance

/-- Projects participating in the assurance architecture. -/
inductive Project
  | leanSemantics
  | cubicalAgdaArtifact
  | rustAuditImplementation
  | providerAdapters
  | generatedEvidence
  | externalRuntime
  deriving DecidableEq, Repr

namespace Project

/-- Stable declarative identifier used by evidence provenance records. -/
def identifier : Project → String
  | .leanSemantics => "lean-semantics"
  | .cubicalAgdaArtifact => "cubical-agda-artifact"
  | .rustAuditImplementation => "rust-audit-implementation"
  | .providerAdapters => "provider-adapters"
  | .generatedEvidence => "generated-evidence"
  | .externalRuntime => "external-runtime"

/--
Source authority classifies the checked-in artifact.  It is distinct from the
authority of checking or executing that artifact.  Only source accepted by its
declared formal kernel is `certifiedSource`; implementation and adapter text is
declarative until an explicit certified refinement bridge is supplied.
-/
def sourceAuthorityClass : Project → AuthorityClass
  | .leanSemantics => .certifiedSource
  | .cubicalAgdaArtifact => .certifiedSource
  | .rustAuditImplementation => .declarativeArtifact
  | .providerAdapters => .declarativeArtifact
  | .generatedEvidence => .externalCapability
  | .externalRuntime => .externalCapability

/-- The formal checker whose accepted declarations may carry theorem authority. -/
def checkingAuthorityClass : Project → AuthorityClass
  | .leanSemantics => .kernelTrustedBase
  | .cubicalAgdaArtifact => .kernelTrustedBase
  | .rustAuditImplementation => .externalCapability
  | .providerAdapters => .externalCapability
  | .generatedEvidence => .externalCapability
  | .externalRuntime => .externalCapability

/--
Execution authority classifies observations produced by invoking a checker,
tool, or provider.  Every such run crosses an external executable boundary,
including runs that ask a separately declared formal kernel to check source.
-/
def executionAuthorityClass : Project → AuthorityClass
  | .leanSemantics => .externalCapability
  | .cubicalAgdaArtifact => .externalCapability
  | .rustAuditImplementation => .externalCapability
  | .providerAdapters => .externalCapability
  | .generatedEvidence => .externalCapability
  | .externalRuntime => .externalCapability

/-- Lean source is checked source; only its declared kernel is trusted base. -/
@[simp]
theorem leanSemantics_source_checking_boundary :
    (Project.leanSemantics.sourceAuthorityClass,
      Project.leanSemantics.checkingAuthorityClass,
      Project.leanSemantics.executionAuthorityClass) =
      (.certifiedSource, .kernelTrustedBase, .externalCapability) :=
  rfl

/-- Agda source is checked source; only its declared kernel is trusted base. -/
@[simp]
theorem cubicalAgda_source_checking_boundary :
    (Project.cubicalAgdaArtifact.sourceAuthorityClass,
      Project.cubicalAgdaArtifact.checkingAuthorityClass,
      Project.cubicalAgdaArtifact.executionAuthorityClass) =
      (.certifiedSource, .kernelTrustedBase, .externalCapability) :=
  rfl

/-- Rust source is declarative and Rust execution is an external capability. -/
@[simp]
theorem rustAudit_source_execution_boundary :
    (Project.rustAuditImplementation.sourceAuthorityClass,
      Project.rustAuditImplementation.executionAuthorityClass) =
      (.declarativeArtifact, .externalCapability) :=
  rfl

/-- Provider-adapter source never promotes adapter execution to proof authority. -/
@[simp]
theorem providerAdapter_source_execution_boundary :
    (Project.providerAdapters.sourceAuthorityClass,
      Project.providerAdapters.executionAuthorityClass) =
      (.declarativeArtifact, .externalCapability) :=
  rfl

end Project

/-- Public declaration metadata, independent of its unique owner. -/
structure PublicDeclaration where
  identifier : String
  definingModule : String
  reexportingModules : List String
  deriving DecidableEq, Repr

/-- Ownership is total by construction. -/
structure OwnershipRegistry where
  declarations : List PublicDeclaration
  owner : String → Project

namespace OwnershipRegistry

/-- `project` owns `declaration` exactly when it is the registry owner. -/
def Owns
    (registry : OwnershipRegistry)
    (project : Project)
    (declaration : PublicDeclaration) : Prop :=
  registry.owner declaration.identifier = project

/-- Every public declaration has exactly one owner. -/
theorem exists_unique_owner
    (registry : OwnershipRegistry)
    (declaration : PublicDeclaration) :
    ∃ project,
      registry.Owns project declaration ∧
      ∀ other, registry.Owns other declaration → other = project := by
  refine ⟨registry.owner declaration.identifier, rfl, ?_⟩
  intro project hproject
  exact hproject.symm

/-- Adding re-export metadata does not change the defining owner. -/
theorem reexport_does_not_change_owner
    (registry : OwnershipRegistry)
    (declaration : PublicDeclaration)
    (moduleName : String) :
    registry.owner
        ({ declaration with
          reexportingModules := moduleName :: declaration.reexportingModules } :
          PublicDeclaration).identifier =
      registry.owner declaration.identifier :=
  rfl

end OwnershipRegistry

end Surface.ContinuousAssurance
```
