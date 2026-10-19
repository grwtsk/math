module

public import Surface.Core.Phase

/-!
# Theorem tasks and phase-indexed trials

The target statement lives only in `TheoremTask`.  A `Trial` contains a proof
body and imports but no replacement-statement field; changing the statement
therefore requires constructing a new task with a new identity.
-/

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
