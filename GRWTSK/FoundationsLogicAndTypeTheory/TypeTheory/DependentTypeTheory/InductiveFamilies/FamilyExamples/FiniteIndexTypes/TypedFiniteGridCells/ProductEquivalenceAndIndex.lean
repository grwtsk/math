/-
Typed finite grid products and bounded row-major index
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 78605e4435413916362d6042bfc85e2f0572362184d19c2ed76b8ea895cb9b7c
Organized SHA-256: 18a4c25b014388c6f4e60c6298f784ffa6ba317f5e7867604c9ed534164bf0c3
PMD: 510.0.070.020.060.030.020 finite index types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- GridCell retains both Fin rows/Fin columns fields and deriving DecidableEq. Whole product equivalence retains both constructor/destructor inverse proofs; named Fintype instance remains exact. Zero row/column cases remain empty types and require no invented positivity premise. Qualified GridCell.rowMajorIndex remains an extension of the own newly copied GridCell type inside the same new variant namespace, using the exact original BitMatrix.ArrayBacked.flatIdx provider. That provider proves i*columns+j<rows*columns; no new unproved indexing rewrite. Original whole-file docs describe its historical Runtime.Semantics namespace and external correspondence clients. The new GRWTSK variant is not a replacement for that historical provider and is never imported into398. No foreign-language execution/validation, runtime integration or geometry/topology law is asserted. -/

import BitMatrix.Core.Basic

/-!
# Provider-neutral typed grid cells

This small geometric address type is kept below the runtime layer so exact
grid geometry does not depend on runtime integration.  Its established public
namespace is retained because JavaScript/Rust correspondence modules already
refer to `BitMatrix.Runtime.Semantics.GridCell`; the file-level ownership and
imports, rather than the namespace spelling, enforce the dependency direction.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.FamilyExamples.FiniteIndexTypes.TypedFiniteGridCells.Variant78605e4435413916

/-- A typed row-major cell address. -/
structure GridCell (rows columns : Nat) where
  row : Fin rows
  column : Fin columns
  deriving DecidableEq

/-- Grid cells are the finite product of their typed row and column
coordinates. -/
def gridCellEquiv (rows columns : Nat) :
    Fin rows × Fin columns ≃ GridCell rows columns where
  toFun coordinates := ⟨coordinates.1, coordinates.2⟩
  invFun cell := (cell.row, cell.column)
  left_inv coordinates := by cases coordinates; rfl
  right_inv cell := by cases cell; rfl

instance gridCellFintype (rows columns : Nat) :
    Fintype (GridCell rows columns) :=
  Fintype.ofEquiv (Fin rows × Fin columns) (gridCellEquiv rows columns)

/-- Row-major index with an intrinsic range proof. -/
def GridCell.rowMajorIndex
    {rows columns : Nat}
    (cell : GridCell rows columns) : Fin (rows * columns) :=
  BitMatrix.ArrayBacked.flatIdx cell.row cell.column

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.FamilyExamples.FiniteIndexTypes.TypedFiniteGridCells.Variant78605e4435413916
