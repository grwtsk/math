# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Task.Variant92476393f6302b02df39910bd75175bd14d6a6a19ad9e93282cc54f3caaeafdd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `485f300491c55dbba641ce9693401674506dfb9c` · SHA-256 `92476393f6302b02df39910bd75175bd14d6a6a19ad9e93282cc54f3caaeafdd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
