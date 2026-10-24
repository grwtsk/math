# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TruthTable.Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f224a3bb07f144af4dcd8f4ffe8ca8481c1179c` · SHA-256 `c79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Cube.Hypercube
import Surface.Boolean.Syntax.SOP

namespace Surface.Boolean.Cube

/-- A Boolean truth table is a total Boolean function on `{0,1}^n`. -/
abbrev TruthTable (n : Nat) :=
  Hypercube.BooleanFunction n

/-- Exhaustive truth-table rows: each input vertex paired with its output. -/
def TruthTable.rows {n : Nat} (T : TruthTable n) :
    List (Hypercube.Point n × Bool) :=
  (Hypercube.vertices n).map
    (fun x => (x, T x))

/--
Truth table as a Boolean matrix with `2^n` rows and `n+1` columns.

Columns `0 ... n-1` store input bits. The last column stores the output bit.
-/
def TruthTable.toMatrix {n : Nat} (T : TruthTable n) :
    BoolMatrix (2 ^ n) (n + 1) :=
  fun r c =>
    if h : c.val < n then
      (Hypercube.pointOfIndex n r.val) ⟨c.val, h⟩
    else
      T (Hypercube.pointOfIndex n r.val)

/-- Minterm for one input row. -/
def TruthTable.minterm {n : Nat} (x : Hypercube.Point n) :
    ProductTerm (Fin n) :=
  (List.finRange n).map
    (fun i =>
      match x i with
      | true => Literal.pos i
      | false => Literal.neg i)

/-- All inputs for which a truth table returns `true`. -/
def TruthTable.trueInputs {n : Nat} (T : TruthTable n) :
    List (Hypercube.Point n) :=
  (Hypercube.vertices n).filter
    (fun x => T x)

/--
Convert a truth table into canonical Sum-of-Products form.

Every `true` row contributes one minterm.
-/
def TruthTable.toSOP {n : Nat} (T : TruthTable n) :
    SumOfProducts (Fin n) :=
  (TruthTable.trueInputs T).map TruthTable.minterm

/-- Convert a truth table into a Boolean tree through SOP. -/
def TruthTable.toTree {n : Nat} (T : TruthTable n) :
    FormulaTree (Fin n) :=
  SumOfProducts.toTree (TruthTable.toSOP T)

/-- Convert a truth table into a PLA-style SOP matrix. -/
def TruthTable.toSOPMatrix {n : Nat} (T : TruthTable n) :
    SOPMatrix (TruthTable.toSOP T).length n :=
  SumOfProducts.toMatrix (fun i : Fin n => i) (TruthTable.toSOP T)

end Surface.Boolean.Cube
```
