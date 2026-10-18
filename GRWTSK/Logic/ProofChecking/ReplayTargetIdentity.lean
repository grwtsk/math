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

/-- Terminal module statuses remain explicit. Missing or unavailable execution
is not represented by a successful Boolean or by an absent field. -/
inductive ModuleTerminalStatus where
  | pass
  | failed
  | notRun
  | unavailable
  deriving DecidableEq, Repr

/-- A terminal module outcome is bound to the entire supplied source identity
and one exact module name. These tokens remain unauthenticated pure data. -/
structure ModuleTerminalOutcome where
  source : SourceIdentity
  moduleName : String
  status : ModuleTerminalStatus
  deriving DecidableEq, Repr

/-- The only successful terminal outcome at one exact source/module identity. -/
def passingOutcome (source : SourceIdentity) (moduleName : String) :
    ModuleTerminalOutcome where
  source := source
  moduleName := moduleName
  status := .pass

/-- Retain every occurrence at the exact source/module identity. Filtering a
list rather than using set membership makes duplicate records observable. -/
def matchingModuleOutcomes (source : SourceIdentity) (moduleName : String)
    (outcomes : List ModuleTerminalOutcome) : List ModuleTerminalOutcome :=
  outcomes.filter fun outcome =>
    decide (outcome.source = source ∧ outcome.moduleName = moduleName)

/-- Every required module must have exactly one outcome occurrence at the exact
source identity, and that sole occurrence must be `pass`. Results at other
identities or for unrequired modules cannot supply this obligation. -/
def ModulesSucceeded (source : SourceIdentity) (required : List String)
    (outcomes : List ModuleTerminalOutcome) : Prop :=
  ∀ moduleName : String, moduleName ∈ required →
    matchingModuleOutcomes source moduleName outcomes =
      [passingOutcome source moduleName]

theorem modulesSucceeded_exactly_one_pass {source : SourceIdentity}
    {required : List String} {outcomes : List ModuleTerminalOutcome}
    (succeeded : ModulesSucceeded source required outcomes)
    {moduleName : String} (needed : moduleName ∈ required) :
    matchingModuleOutcomes source moduleName outcomes =
      [passingOutcome source moduleName] :=
  succeeded moduleName needed

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

/-- Terminal outcome fixtures are symbolic records, not execution evidence. -/
def leafModule : String := "GRWTSK.Leaf"

def passResult : ModuleTerminalOutcome :=
  passingOutcome source leafModule

def failedResult : ModuleTerminalOutcome where
  source := source
  moduleName := leafModule
  status := .failed

def notRunResult : ModuleTerminalOutcome where
  source := source
  moduleName := leafModule
  status := .notRun

def unavailableResult : ModuleTerminalOutcome where
  source := source
  moduleName := leafModule
  status := .unavailable

def differentSource : SourceIdentity :=
  { source with revision := "fixture-revision-B" }

def wrongIdentityPass : ModuleTerminalOutcome :=
  passingOutcome differentSource leafModule

theorem one_exact_pass_succeeds :
    ModulesSucceeded source [leafModule] [passResult] := by
  intro moduleName needed
  have nameEq : moduleName = leafModule := by
    simpa using needed
  subst moduleName
  simp [matchingModuleOutcomes, passingOutcome, passResult]

theorem failed_outcome_is_rejected :
    ¬ ModulesSucceeded source [leafModule] [failedResult] := by
  intro succeeded
  have h := succeeded leafModule (by simp)
  simp [matchingModuleOutcomes, passingOutcome, failedResult] at h

theorem not_run_outcome_is_rejected :
    ¬ ModulesSucceeded source [leafModule] [notRunResult] := by
  intro succeeded
  have h := succeeded leafModule (by simp)
  simp [matchingModuleOutcomes, passingOutcome, notRunResult] at h

theorem unavailable_outcome_is_rejected :
    ¬ ModulesSucceeded source [leafModule] [unavailableResult] := by
  intro succeeded
  have h := succeeded leafModule (by simp)
  simp [matchingModuleOutcomes, passingOutcome, unavailableResult] at h

theorem duplicate_passes_are_rejected :
    ¬ ModulesSucceeded source [leafModule] [passResult, passResult] := by
  intro succeeded
  have h := succeeded leafModule (by simp)
  simp [matchingModuleOutcomes, passingOutcome, passResult] at h

theorem conflicting_outcomes_are_rejected :
    ¬ ModulesSucceeded source [leafModule] [passResult, failedResult] := by
  intro succeeded
  have h := succeeded leafModule (by simp)
  simp [matchingModuleOutcomes, passingOutcome, passResult, failedResult] at h

theorem different_source_identity : differentSource ≠ source := by
  decide

theorem wrong_source_identity_is_rejected :
    ¬ ModulesSucceeded source [leafModule] [wrongIdentityPass] := by
  intro succeeded
  have h := succeeded leafModule (by simp)
  simp [matchingModuleOutcomes, wrongIdentityPass, passingOutcome,
    different_source_identity] at h

theorem root_only_terminal_success_is_rejected :
    ¬ (true = true ∧ ModulesSucceeded source [leafModule] []) := by
  intro reported
  have h := reported.2 leafModule (by simp)
  simp [matchingModuleOutcomes, passingOutcome] at h

end Fixtures

end GRWTSK.Logic.ProofChecking.ReplayTarget
