# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ownership.Variant62e1081a51dd4228e979868a12d63d58fc6529553bc850da9d1ff6eefaceade9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fef5756cd204dc8705d99077f1e22c67f8017c62` · SHA-256 `2274feb6e4fba7e295e43dfa23d1fb18b5e65de94bc9bc45e839b71c352f6935`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Project.Variantce2d4f3fce4851c0cf603d9ae5f359db56b2cc2078b679b59c9aa6e646053a7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce2d4f3fce4851c0cf603d9ae5f359db56b2cc2078b679b59c9aa6e646053a7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Project.Variantce2d4f3fce4851c0cf603d9ae5f359db56b2cc2078b679b59c9aa6e646053a7b","mathematical_subject":"Computation.DataStructures","original_sha256":"ce2d4f3fce4851c0cf603d9ae5f359db56b2cc2078b679b59c9aa6e646053a7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/Ownership.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Authority

/-!
# Unique declaration ownership

A public declaration has one defining owner.  Other modules may re-export it,
but a re-export is metadata and never creates another owner.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Project.Variantce2d4f3fce4851c0cf603d9ae5f359db56b2cc2078b679b59c9aa6e646053a7b

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
