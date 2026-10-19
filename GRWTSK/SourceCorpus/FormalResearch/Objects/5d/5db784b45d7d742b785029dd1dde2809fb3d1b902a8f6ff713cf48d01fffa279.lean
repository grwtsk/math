module

public import Surface.Core.GoalGraph

/-!
# Structured proof patches

Search proposes this finite IR.  There is intentionally no constructor that
changes a theorem statement or claims kernel acceptance.
-/

public section

namespace Surface.Core

open Lean

/-- A proposed local declaration; it has no authority until Lean accepts it. -/
@[surface_novel]
structure LemmaCandidate where
  localName : Name
  type : String
  proofBody : String
  provenance : Provenance
deriving Repr

@[surface_novel]
inductive RewriteDirection where
  | forward
  | reverse
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure SourceRange where
  startByte : Nat
  endByte : Nat
deriving DecidableEq, Repr

/-- Typed edits admissible to the untrusted search system. -/
@[surface_novel]
inductive ProofPatch where
  | addImport (moduleName : Name)
  | removeImport (moduleName : Name)
  | applyTheorem (theoremName : Name) (substitutions : List (Name × String))
  | rewriteAt (goal : GoalCellId) (location : String)
      (theoremName : Name) (direction : RewriteDirection)
  | replaceProofBody (proofBody : String)
  | fillGoal (goal : GoalCellId) (term : String)
  | replaceTerm (range : SourceRange) (expectedTypeHash : Digest) (typedTerm : String)
  | insertAuxiliary (candidate : LemmaCandidate)
  | renameAuxiliary (oldName newName : Name)
  | deleteRedundantLemma (name : Name)
deriving Repr

/-- Every patch preserves the task identity by construction. -/
@[expose] def ProofPatch.applyTask (_patch : ProofPatch) (task : TheoremTask) : TheoremTask :=
  task

@[surface_novel, surface_published, simp] theorem ProofPatch.applyTask_eq
    (patch : ProofPatch) (task : TheoremTask) :
    patch.applyTask task = task := rfl

end Surface.Core
