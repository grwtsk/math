# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SearchM.Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21532ab09212943466ed637c8ff45c3ee721c11b` · SHA-256 `fb851e779d41ddae8b4aa4759f6f34bb9ae321acb58fd9c806c85c2d8de7b664`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CaseKind.Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CaseKind.Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Cutsat/SearchM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Cutsat.Types
import Lean.Meta.Tactic.Grind.Arith.Cutsat.Util

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CaseKind.Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463

public section
namespace Lean.Meta.Grind.Arith.Cutsat
/--
In principle, we only need to support two kinds of case split.
- Disequalities.
- Cooper-Left, but we have 4 different variants of this one.
-/
inductive CaseKind where
  | diseq (d : DiseqCnstr)
  | cooper (s : CooperSplitPred) (hs : Array (FVarId × UnsatProof)) (decVars : FVarIdSet)
  deriving Inhabited

structure Case where
  kind   : CaseKind
  /--
  Decision variable used to represent the case-split.
  For example, suppose we are splitting on `p ≠ 0`. Then,
  we create a decision variable `h : p + 1 ≤ 0`
  -/
  fvarId : FVarId
  /--
  Snapshot of the cutsat state for backtracking purposes.
  We do not use a trail stack.
  -/
  saved  : State
  deriving Inhabited

inductive Search.Kind where
  | /--
    Allow variables to be assigned to rational numbers during model
    construction.
    -/
    rat
  | /--
    Variables must be assigned to integer numbers.
    Cooper case splits are required in this mode.
    -/
    int
  deriving Inhabited, BEq

/--
State of the model search procedure.
-/
structure Search.State where
  /-- Decision stack (aka case-split stack) -/
  cases   : PArray Case := {}
  /-- `precise := false` if not all constraints were satisfied during the search. -/
  precise : Bool := true
  /-- Set of decision variables in `cases`. -/
  decVars : FVarIdSet := {}
  /--
  Number of steps performed by the current search.
  Remark: we cannot use the `steps` counter in the cutsat state because it is rolled
  back when backtracking case splits.
  -/
  steps : Nat := 0

abbrev SearchM := ReaderT Search.Kind (StateRefT Search.State GoalM)

/-- Returns `true` if approximations are allowed. -/
def isApprox : SearchM Bool :=
  return (← read) == .rat

/-- Sets `precise` to `false` to indicate that some constraint was not satisfied. -/
def setImprecise : SearchM Unit := do
  modify fun s => { s with precise := false }

/--
Increments the search steps counter, and returns `true` if the cumulative number of
steps reached the `liaSteps` configuration threshold.
-/
def checkMaxSteps : SearchM Bool := do
  modify fun s => { s with steps := s.steps + 1 }
  return (← get').steps + (← get).steps > (← getConfig).liaSteps

/--
Adds the number of steps performed by the current search to the cumulative counter
in the cutsat state. It must be invoked after `resetDecisionStack` because backtracking
rolls back the cutsat state.
-/
def saveSteps : SearchM Unit := do
  let steps := (← get).steps
  modify' fun s => { s with steps := s.steps + steps }

def mkCase (kind : CaseKind) : SearchM FVarId := do
  let fvarId ← mkFreshFVarId
  let saved ← get'
  modify fun s => { s with
    cases   := s.cases.push { saved, fvarId, kind }
    decVars := s.decVars.insert fvarId
  }
  modify' fun s => { s with caseSplits := true }
  return fvarId

end Lean.Meta.Grind.Arith.Cutsat
```
