# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixEncoding.Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18d88f02fc6b2c2a90b143d61b14410ff5188733` · SHA-256 `a96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Tree.List
import Boolean.Matrix

namespace Boolean

universe u

/-- Parse a matrix cell as a variable leaf. -/
def Tree.cellVariableTree
    {rows cols : Nat}
    (i : Fin rows)
    (j : Fin cols) :
    Tree (Fin rows × Fin cols) :=
  .var (i, j)

/-- Parse a matrix cell as a constant leaf. -/
def Tree.cellConstTree
    {rows cols : Nat}
    (A : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Tree (Fin rows × Fin cols) :=
  match A i j with
  | true => .truth
  | false => .falsum

/-- A matrix as a network of constant Boolean trees, one tree per cell. -/
def Tree.cellConstNetwork
    {rows cols : Nat}
    (A : Matrix rows cols) :
    Fin rows → Fin cols → Tree (Fin rows × Fin cols) :=
  fun i j => Tree.cellConstTree A i j

/--
Factor one matrix row into a disjunction of variable leaves for cells containing
`1`. Cells containing `0` contribute the boundary constant `0`.
-/
def Tree.rowSupportTree
    {rows cols : Nat}
    (A : Matrix rows cols)
    (i : Fin rows) :
    Tree (Fin rows × Fin cols) :=
  Tree.disjList
    ((List.finRange cols).map
      (fun j =>
        match A i j with
        | true => .var (i, j)
        | false => .falsum))

/--
Factor a full Boolean matrix into a single tree: an OR over all active cells.
-/
def Tree.supportTree
    {rows cols : Nat}
    (A : Matrix rows cols) :
    Tree (Fin rows × Fin cols) :=
  Tree.disjList
    ((List.finRange rows).map
      (fun i => Tree.rowSupportTree A i))

/--
Evaluate a Boolean matrix as a constant tree that returns `1` iff at least one
entry of the matrix is `1`.
-/
def Tree.anyTrueTree
    {rows cols : Nat}
    (A : Matrix rows cols) :
    Tree (Fin rows × Fin cols) :=
  Tree.disjList
    ((List.finRange rows).map
      (fun i =>
        Tree.disjList
          ((List.finRange cols).map
            (fun j =>
              match A i j with
              | true => .truth
              | false => .falsum))))

end Boolean
```
