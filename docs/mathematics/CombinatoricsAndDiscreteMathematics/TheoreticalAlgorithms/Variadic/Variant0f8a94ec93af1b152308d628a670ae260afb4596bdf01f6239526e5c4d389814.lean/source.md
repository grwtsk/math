# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Variadic.Variant0f8a94ec93af1b152308d628a670ae260afb4596bdf01f6239526e5c4d389814

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61a408f470fdbf503da63d590e5d1b291d9e993e` · SHA-256 `1c27ffa6ec4c4f741113fa1a47aa77713d74cb8cddfea567751b25fdd42e8e2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrefixVariadic.Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PrefixVariadic.Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e","mathematical_subject":"Computation.DataStructures","original_sha256":"f50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Tree/Variadic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Boolean.Tree.Eval
import Boolean.Tree.List
import Boolean.Tree.Polish


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrefixVariadic.Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e

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
```
