-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Provenance.Variant92476393f6302b02df39910bd75175bd14d6a6a19ad9e93282cc54f3caaeafdd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92476393f6302b02df39910bd75175bd14d6a6a19ad9e93282cc54f3caaeafdd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Provenance.Variant92476393f6302b02df39910bd75175bd14d6a6a19ad9e93282cc54f3caaeafdd","mathematical_subject":"Computation.DataStructures","original_sha256":"92476393f6302b02df39910bd75175bd14d6a6a19ad9e93282cc54f3caaeafdd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/Task.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Phase

/-!
# Theorem tasks and phase-indexed trials

The target statement lives only in `TheoremTask`.  A `Trial` contains a proof
body and imports but no replacement-statement field; changing the statement
therefore requires constructing a new task with a new identity.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Provenance.Variant92476393f6302b02df39910bd75175bd14d6a6a19ad9e93282cc54f3caaeafdd

public section

namespace Surface.Core

open Lean

/-- Stable, deterministic identifiers at protocol boundaries. -/
abbrev Digest := UInt64

/-- A deliberately small, versioned deterministic digest for core identities. -/
@[expose] def digestString (value : String) : Digest :=
  value.foldl
    (fun acc c => acc * 16777619 + UInt64.ofNat c.toNat)
    2166136261

/-- Deterministic provenance shared by every lifecycle transition. -/
@[surface_novel]
structure Provenance where
  schema : String
  producer : String
  producerVersion : String
  seed : Nat
  parentDigest? : Option Digest := none
deriving DecidableEq, Repr

/-- One immutable theorem request. -/
@[surface_novel]
structure TheoremTask where
  proposition : Prop
  declarationName : Name
  statement : String
  statementHash : Digest
  targetModule : Name
  policyHash : Digest
  statementHashValid : statementHash = digestString statement

/-- A proof attempt at exactly one indexed phase. -/
@[surface_novel]
structure Trial (phase : ProofPhase) where
  task : TheoremTask
  imports : List Name
  proofBody : String
  auxiliaryDeclarations : List Name := []
  provenance : Provenance

/-- Trial identity is inherited from the task, not recomputed from mutable proof text. -/
@[expose] def Trial.statementHash {phase : ProofPhase} (trial : Trial phase) : Digest :=
  trial.task.statementHash

@[surface_novel, surface_published, simp] theorem Trial.statementHash_fixed
    {phase : ProofPhase} (trial : Trial phase) :
    trial.statementHash = trial.task.statementHash := rfl

end Surface.Core
