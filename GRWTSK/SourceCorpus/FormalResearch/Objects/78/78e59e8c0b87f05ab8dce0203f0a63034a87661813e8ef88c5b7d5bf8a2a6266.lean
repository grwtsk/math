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
