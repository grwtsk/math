import Boolean.Tree.Eval
import Boolean.Tree.List
import Boolean.Tree.Polish

namespace Boolean

universe u

/--
variadic variadic Polish notation.

This representation is useful for associative operators. For example:

`(AND x y z)` is represented as `.all [.atom x, .atom y, .atom z]`.

Non-associative and non-commutative operators remain fixed-arity nodes.
-/
inductive Prefix.Variadic (α : Type u) : Type u where
  | atom : α → Prefix.Variadic α
  | zero : Prefix.Variadic α
  | one : Prefix.Variadic α
  | not : Prefix.Variadic α → Prefix.Variadic α
  | all : List (Prefix.Variadic α) → Prefix.Variadic α
  | any : List (Prefix.Variadic α) → Prefix.Variadic α
  | impl : Prefix.Variadic α → Prefix.Variadic α → Prefix.Variadic α
  | eqv : Prefix.Variadic α → Prefix.Variadic α → Prefix.Variadic α
  | nand : Prefix.Variadic α → Prefix.Variadic α → Prefix.Variadic α
deriving Repr

mutual

/-- Compile variadic variadic notation back into a strict Boolean tree. -/
def Prefix.Variadic.toTree : Prefix.Variadic α → Tree α
  | .atom a => .var a
  | .zero => .falsum
  | .one => .truth
  | .not p => .neg (Prefix.Variadic.toTree p)
  | .all ps => Tree.conjList (Prefix.Variadic.toTreeList ps)
  | .any ps => Tree.disjList (Prefix.Variadic.toTreeList ps)
  | .impl p q => .impl (Prefix.Variadic.toTree p) (Prefix.Variadic.toTree q)
  | .eqv p q => .eqv (Prefix.Variadic.toTree p) (Prefix.Variadic.toTree q)
  | .nand p q => .nand (Prefix.Variadic.toTree p) (Prefix.Variadic.toTree q)

/-- Compile a list of Variadic children. -/
def Prefix.Variadic.toTreeList :
    List (Prefix.Variadic α) → List (Tree α)
  | [] => []
  | p :: ps => Prefix.Variadic.toTree p :: Prefix.Variadic.toTreeList ps

end

/-- Evaluate Variadic notation by compiling it to a strict Boolean tree. -/
def Prefix.Variadic.eval
    (ν : Valuation α)
    (p : Prefix.Variadic α) :
    Bool :=
  Tree.eval ν (Prefix.Variadic.toTree p)

/-- Strict Polish serialization of a Variadic expression after compilation. -/
def Prefix.Variadic.toStrictPolish
    (p : Prefix.Variadic α) :
    List (Prefix.StrictToken α) :=
  Tree.toStrictPolish (Prefix.Variadic.toTree p)

mutual

/--
Flatten associative conjunction and disjunction nodes into variadic
variadic nodes.

This preserves order but removes unnecessary binary nesting for AND/OR.
Non-commutative and non-associative operators are not flattened.
-/
def Tree.toPrefix.Variadic : Tree α → Prefix.Variadic α
  | .var a => .atom a
  | .falsum => .zero
  | .truth => .one
  | .neg p => .not (Tree.toPrefix.Variadic p)
  | .conj p q =>
      .all (Tree.toVariadicConjArgs p ++ Tree.toVariadicConjArgs q)
  | .disj p q =>
      .any (Tree.toVariadicDisjArgs p ++ Tree.toVariadicDisjArgs q)
  | .impl p q =>
      .impl (Tree.toPrefix.Variadic p) (Tree.toPrefix.Variadic q)
  | .eqv p q =>
      .eqv (Tree.toPrefix.Variadic p) (Tree.toPrefix.Variadic q)
  | .nand p q =>
      .nand (Tree.toPrefix.Variadic p) (Tree.toPrefix.Variadic q)

/-- Collect flattened conjunction arguments. -/
def Tree.toVariadicConjArgs :
    Tree α → List (Prefix.Variadic α)
  | .conj p q => Tree.toVariadicConjArgs p ++ Tree.toVariadicConjArgs q
  | p => [Tree.toPrefix.Variadic p]

/-- Collect flattened disjunction arguments. -/
def Tree.toVariadicDisjArgs :
    Tree α → List (Prefix.Variadic α)
  | .disj p q => Tree.toVariadicDisjArgs p ++ Tree.toVariadicDisjArgs q
  | p => [Tree.toPrefix.Variadic p]

end

/-- `A → B` as strict Polish: `C A B`. -/
def PolishExamples.implicationAB : List (Prefix.StrictToken String) :=
  [.op .C, .atom "A", .atom "B"]

/-- `B → A` as strict Polish: `C B A`. -/
def PolishExamples.implicationBA : List (Prefix.StrictToken String) :=
  [.op .C, .atom "B", .atom "A"]

/-- `(x NAND y) NAND z` as strict Polish: `D D x y z`. -/
def PolishExamples.leftNestedNand : List (Prefix.StrictToken String) :=
  [.op .D, .op .D, .atom "x", .atom "y", .atom "z"]

/-- `x NAND (y NAND z)` as strict Polish: `D x D y z`. -/
def PolishExamples.rightNestedNand : List (Prefix.StrictToken String) :=
  [.op .D, .atom "x", .op .D, .atom "y", .atom "z"]

/-- Flat variadic `(AND x y z)`. -/
def PolishExamples.flatAnd : Prefix.Variadic String :=
  .all [.atom "x", .atom "y", .atom "z"]

/-- The strict Polish encoding `C A B` parses as `A → B`. -/
theorem PolishExamples.parse_implicationAB :
    Tree.fromStrictPolish? PolishExamples.implicationAB =
      some (.impl (.var "A") (.var "B")) := by
  decide

/-- The strict Polish encoding `C B A` parses as `B → A`. -/
theorem PolishExamples.parse_implicationBA :
    Tree.fromStrictPolish? PolishExamples.implicationBA =
      some (.impl (.var "B") (.var "A")) := by
  decide

/-- Polish notation preserves non-commutative order. -/
theorem PolishExamples.implication_order_distinct :
    PolishExamples.implicationAB ≠ PolishExamples.implicationBA := by
  decide

/-- The strict Polish encoding `D D x y z` parses as `(x NAND y) NAND z`. -/
theorem PolishExamples.parse_leftNestedNand :
    Tree.fromStrictPolish? PolishExamples.leftNestedNand =
      some (.nand (.nand (.var "x") (.var "y")) (.var "z")) := by
  decide

/-- The strict Polish encoding `D x D y z` parses as `x NAND (y NAND z)`. -/
theorem PolishExamples.parse_rightNestedNand :
    Tree.fromStrictPolish? PolishExamples.rightNestedNand =
      some (.nand (.var "x") (.nand (.var "y") (.var "z"))) := by
  decide

/-- Polish notation preserves non-associative tree shape. -/
theorem PolishExamples.nand_nesting_distinct :
    PolishExamples.leftNestedNand ≠ PolishExamples.rightNestedNand := by
  decide

/-- The flat Variadic example compiles to a right-nested conjunction tree. -/
theorem PolishExamples.flatAnd_toTree :
    Prefix.Variadic.toTree PolishExamples.flatAnd =
      Tree.conjList [.var "x", .var "y", .var "z"] := by
  rfl

/--
The flat Variadic example serializes to strict Polish after compilation.

Because `Tree.conjList` is right-nested, `(AND x y z)` compiles to
`K x (K y (K z 1))`.
-/
theorem PolishExamples.flatAnd_toStrictPolish :
    Prefix.Variadic.toStrictPolish PolishExamples.flatAnd =
      [.op .K, .atom "x", .op .K, .atom "y", .op .K, .atom "z", .one] := by
  decide

end Boolean
