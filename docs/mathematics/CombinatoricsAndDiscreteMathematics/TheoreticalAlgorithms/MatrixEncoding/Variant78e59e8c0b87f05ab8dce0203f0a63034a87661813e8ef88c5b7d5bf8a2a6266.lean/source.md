# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MatrixEncoding.Variant78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1df9e985db07f234ab9d7bcb7ca06360650c1039` · SHA-256 `78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Syntax.Basic

namespace Surface.Boolean

universe u

/-- Parse a matrix cell as a variable leaf. -/
def FormulaTree.cellVariableTree
    {rows cols : Nat}
    (i : Fin rows)
    (j : Fin cols) :
    FormulaTree (Fin rows × Fin cols) :=
  .var (i, j)

/-- Parse a matrix cell as a constant leaf. -/
def FormulaTree.cellConstTree
    {rows cols : Nat}
    (A : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    FormulaTree (Fin rows × Fin cols) :=
  match A i j with
  | true => .truth
  | false => .falsum

/-- A matrix as a network of constant Boolean trees, one tree per cell. -/
def FormulaTree.cellConstNetwork
    {rows cols : Nat}
    (A : BoolMatrix rows cols) :
    Fin rows → Fin cols → FormulaTree (Fin rows × Fin cols) :=
  fun i j => FormulaTree.cellConstTree A i j

/--
Factor one matrix row into a disjunction of variable leaves for cells containing
`1`. Cells containing `0` contribute the boundary constant `0`.
-/
def FormulaTree.rowSupportTree
    {rows cols : Nat}
    (A : BoolMatrix rows cols)
    (i : Fin rows) :
    FormulaTree (Fin rows × Fin cols) :=
  FormulaTree.disjList
    ((List.finRange cols).map
      (fun j =>
        match A i j with
        | true => .var (i, j)
        | false => .falsum))

/--
Factor a full Boolean matrix into a single tree: an OR over all active cells.
-/
def FormulaTree.supportTree
    {rows cols : Nat}
    (A : BoolMatrix rows cols) :
    FormulaTree (Fin rows × Fin cols) :=
  FormulaTree.disjList
    ((List.finRange rows).map
      (fun i => FormulaTree.rowSupportTree A i))

/--
Evaluate a Boolean matrix as a constant tree that returns `1` iff at least one
entry of the matrix is `1`.
-/
def FormulaTree.anyTrueTree
    {rows cols : Nat}
    (A : BoolMatrix rows cols) :
    FormulaTree (Fin rows × Fin cols) :=
  FormulaTree.disjList
    ((List.finRange rows).map
      (fun i =>
        FormulaTree.disjList
          ((List.finRange cols).map
            (fun j =>
              match A i j with
              | true => .truth
              | false => .falsum))))

end Surface.Boolean
```
