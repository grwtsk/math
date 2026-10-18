/-!
# Exact replay-header binding and module omission (#136, source-only candidate)

This is the first independent, pure component of the replay-target specification.
It does not parse manifests, authenticate Git hashes, extract elaborated Lean
types, execute builds, audit axioms, or accept external receipts. String fields
are opaque identity tokens until verified against source bytes by an external
producer. The existing spectral-descent-v1 manifest is not changed here.
-/
import Mathlib.Data.Finset.Basic

set_option autoImplicit false

namespace GRWTSK.Logic.ProofChecking.ReplayTarget

/-- The only target-schema spelling understood by this initial model. -/
def supportedSchema : String := "grwtsk-math-replay-target-v1"

/-- Identity tokens which must all be checked against actual source and lock
bytes before any external replay claim. Equality does not authenticate tokens. -/
structure SourceIdentity where
  repository : String
  revision : String
  tree : String
  targetPath : String
  targetBlob : String
  toolchainFile : String
  toolchainName : String
  toolchainBlob : String
  dependencyManifestPath : String
  dependencyManifestBlob : String
  lakefileBlob : String
  mathlibRevision : String
  deriving DecidableEq, Repr

/-- Just the source-bound header, not the complete #136 declaration inventory,
coverage specification, trust policy, or #138 receipt schema. -/
structure Header where
  schema : String
  targetId : String
  source : SourceIdentity
  rootModule : String
  buildTarget : String
  deriving DecidableEq, Repr

/-- The expected schema must be understood, and the supplied header must agree
on every field. This is equality of pure supplied records, not a replay pass. -/
def HeaderMatches (expected reported : Header) : Prop :=
  expected.schema = supportedSchema ∧ reported = expected

theorem matches_self (target : Header)
    (supported : target.schema = supportedSchema) :
    HeaderMatches target target :=
  ⟨supported, rfl⟩

theorem matching_headers_have_equal_source {expected reported : Header}
    (h : HeaderMatches expected reported) :
    reported.source = expected.source :=
  congrArg Header.source h.2

/-- Unrecognized versions fail closed instead of being interpreted as v1. -/
theorem reject_unknown_schema {expected reported : Header}
    (unknown : expected.schema ≠ supportedSchema) :
    ¬ HeaderMatches expected reported := by
  intro h
  exact unknown h.1

/-- Changing any explicitly selected source field invalidates the header.
Callers must independently establish that their tokens came from source bytes. -/
theorem reject_source_field_drift {expected reported : Header}
    (field : SourceIdentity → String)
    (changed : field reported.source ≠ field expected.source) :
    ¬ HeaderMatches expected reported := by
  intro h
  exact changed (congrArg (fun header : Header => field header.source) h.2)

theorem reject_revision_drift {expected reported : Header}
    (changed : reported.source.revision ≠ expected.source.revision) :
    ¬ HeaderMatches expected reported :=
  reject_source_field_drift (fun source => source.revision) changed

theorem reject_target_blob_drift {expected reported : Header}
    (changed : reported.source.targetBlob ≠ expected.source.targetBlob) :
    ¬ HeaderMatches expected reported :=
  reject_source_field_drift (fun source => source.targetBlob) changed

theorem reject_toolchain_drift {expected reported : Header}
    (changed : reported.source.toolchainBlob ≠ expected.source.toolchainBlob) :
    ¬ HeaderMatches expected reported :=
  reject_source_field_drift (fun source => source.toolchainBlob) changed

theorem reject_dependency_manifest_drift {expected reported : Header}
    (changed : reported.source.dependencyManifestBlob ≠
      expected.source.dependencyManifestBlob) :
    ¬ HeaderMatches expected reported :=
  reject_source_field_drift (fun source => source.dependencyManifestBlob) changed

/-- A leaf is covered only if it appears in the independently enumerated
module results. This models no build evidence and does not establish exposure
through the public root. -/
def ModulesCovered (required reported : List String) : Prop :=
  ∀ moduleName : String, moduleName ∈ required → moduleName ∈ reported

theorem modules_cover_themselves (required : List String) :
    ModulesCovered required required :=
  fun _ needed => needed

theorem omitted_module_blocks_coverage {required reported : List String}
    {moduleName : String} (needed : moduleName ∈ required)
    (omitted : moduleName ∉ reported) :
    ¬ ModulesCovered required reported := by
  intro covered
  exact omitted (covered moduleName needed)

/-- A report of a successful root build cannot compensate for a missing leaf. -/
theorem root_build_cannot_hide_omission (rootBuilt : Bool)
    (required reported : List String) (moduleName : String)
    (needed : moduleName ∈ required) (omitted : moduleName ∉ reported) :
    ¬ (rootBuilt = true ∧ ModulesCovered required reported) := by
  intro report
  exact omitted (report.2 moduleName needed)

namespace Fixtures

/-- Symbolic fixture tokens, NOT a checked Git checkout or actual receipt. -/
def source : SourceIdentity where
  repository := "grwtsk/math"
  revision := "fixture-revision-A"
  tree := "fixture-tree-A"
  targetPath := "verification/spectral-descent-v1.toml"
  targetBlob := "fixture-target-A"
  toolchainFile := "lean-toolchain"
  toolchainName := "leanprover/lean4:v4.33.0"
  toolchainBlob := "fixture-toolchain-A"
  dependencyManifestPath := "lake-manifest.json"
  dependencyManifestBlob := "fixture-lock-A"
  lakefileBlob := "fixture-lakefile-A"
  mathlibRevision := "db584cd6d46c92f209a44c0f1c829460d327499d"

def target : Header where
  schema := supportedSchema
  targetId := "fixture"
  source := source
  rootModule := "GRWTSK"
  buildTarget := "GRWTSK"

def changedRevision : Header :=
  { target with source := { source with revision := "fixture-revision-B" } }

def unknownVersion : Header :=
  { target with schema := "grwtsk-math-replay-target-v999" }

theorem exact_header_is_consistent : HeaderMatches target target :=
  matches_self target rfl

theorem wrong_revision_is_rejected : ¬ HeaderMatches target changedRevision :=
  reject_revision_drift (by decide)

theorem unknown_version_is_rejected : ¬ HeaderMatches unknownVersion unknownVersion :=
  reject_unknown_schema (by decide)

theorem root_only_is_not_leaf_coverage :
    ¬ (true = true ∧ ModulesCovered ["GRWTSK.Leaf"] []) :=
  root_build_cannot_hide_omission true ["GRWTSK.Leaf"] [] "GRWTSK.Leaf"
    (by simp) (by simp)

end Fixtures

end GRWTSK.Logic.ProofChecking.ReplayTarget
