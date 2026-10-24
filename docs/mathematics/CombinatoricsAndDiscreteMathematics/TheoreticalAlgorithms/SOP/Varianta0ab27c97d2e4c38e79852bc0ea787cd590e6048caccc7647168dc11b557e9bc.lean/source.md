# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SOP.Varianta0ab27c97d2e4c38e79852bc0ea787cd590e6048caccc7647168dc11b557e9bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8054c9167d370773e6b4fcf26d7388de71eb6153` · SHA-256 `a0ab27c97d2e4c38e79852bc0ea787cd590e6048caccc7647168dc11b557e9bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Tree.Eval
import Boolean.Tree.List
import Boolean.Tree.Normalize
import Boolean.Tree.MatrixEncoding

namespace Boolean

universe u

/-- A literal is either a positive variable or a negated variable. -/
inductive Literal (α : Type u) : Type u where
  | pos : α → Literal α
  | neg : α → Literal α
deriving Repr, DecidableEq

/-- An AND-product term in a Sum-of-Products expression. -/
abbrev ProductTerm (α : Type u) :=
  List (Literal α)

/-- A Sum-of-Products expression: an OR-list of AND-product terms. -/
abbrev SumOfProducts (α : Type u) :=
  List (ProductTerm α)

/-- Evaluate a literal under a Boolean valuation. -/
def Literal.eval (ν : Valuation α) : Literal α → Bool
  | .pos a => ν a
  | .neg a => !(ν a)

/-- Convert a literal into a Boolean expression tree. -/
def Literal.toTree : Literal α → Tree α
  | .pos a => .var a
  | .neg a => .neg (.var a)

/-- Evaluate a product term as a conjunction of literals. -/
def ProductTerm.eval (ν : Valuation α) : ProductTerm α → Bool
  | [] => true
  | lit :: rest => Literal.eval ν lit && ProductTerm.eval ν rest

/-- Test whether any literal in a term satisfies a Boolean predicate. -/
def ProductTerm.anyLit
    (term : ProductTerm α)
    (p : Literal α → Bool) :
    Bool :=
  match term with
  | [] => false
  | lit :: rest => p lit || ProductTerm.anyLit rest p

/-- Convert a product term into a conjunction tree. -/
def ProductTerm.toTree (term : ProductTerm α) : Tree α :=
  Tree.conjList (term.map Literal.toTree)

/-- Check whether a product term contains a positive literal at column `v`. -/
def ProductTerm.hasPositiveAt
    {vars : Nat}
    (index : α → Fin vars)
    (term : ProductTerm α)
    (v : Fin vars) :
    Bool :=
  ProductTerm.anyLit term
    (fun lit =>
      match lit with
      | Literal.pos a => decide (index a = v)
      | Literal.neg _ => false)

/-- Check whether a product term contains a negative literal at column `v`. -/
def ProductTerm.hasNegativeAt
    {vars : Nat}
    (index : α → Fin vars)
    (term : ProductTerm α)
    (v : Fin vars) :
    Bool :=
  ProductTerm.anyLit term
    (fun lit =>
      match lit with
      | Literal.pos _ => false
      | Literal.neg a => decide (index a = v))

/-- Evaluate an SOP expression as a disjunction of product terms. -/
def SumOfProducts.eval
    (ν : Valuation α) :
    SumOfProducts α → Bool
  | [] => false
  | term :: rest => ProductTerm.eval ν term || SumOfProducts.eval ν rest

/-- Multiply two SOPs by distributing conjunction across disjunction. -/
def SumOfProducts.multiply :
    SumOfProducts α → SumOfProducts α → SumOfProducts α
  | [], _ => []
  | term :: terms, rhs =>
      rhs.map (fun rhsTerm => term ++ rhsTerm) ++
        SumOfProducts.multiply terms rhs

/-- Convert an SOP expression into an OR of product-term trees. -/
def SumOfProducts.toTree (sop : SumOfProducts α) : Tree α :=
  Tree.disjList (sop.map ProductTerm.toTree)

@[simp] theorem Literal.eval_toTree
    (ν : Valuation α)
    (lit : Literal α) :
    Tree.eval ν (Literal.toTree lit) = Literal.eval ν lit := by
  cases lit <;> rfl

@[simp] theorem ProductTerm.eval_append
    (ν : Valuation α)
    (left right : ProductTerm α) :
    ProductTerm.eval ν (left ++ right) =
      (ProductTerm.eval ν left && ProductTerm.eval ν right) := by
  induction left with
  | nil => rfl
  | cons lit rest ih =>
      cases hl : Literal.eval ν lit <;>
        cases hr : ProductTerm.eval ν rest <;>
        cases hs : ProductTerm.eval ν right <;>
        simp [ProductTerm.eval, ih, hl, hr, hs]

@[simp] theorem ProductTerm.eval_toTree
    (ν : Valuation α)
    (term : ProductTerm α) :
    Tree.eval ν (ProductTerm.toTree term) = ProductTerm.eval ν term := by
  induction term with
  | nil => rfl
  | cons lit rest ih =>
      simp [ProductTerm.toTree, Tree.conjList, ProductTerm.eval, Tree.eval]
      change (Literal.eval ν lit && Tree.eval ν (ProductTerm.toTree rest)) =
        (Literal.eval ν lit && ProductTerm.eval ν rest)
      rw [ih]

@[simp] theorem SumOfProducts.eval_append
    (ν : Valuation α)
    (left right : SumOfProducts α) :
    SumOfProducts.eval ν (left ++ right) =
      (SumOfProducts.eval ν left || SumOfProducts.eval ν right) := by
  induction left with
  | nil => rfl
  | cons term terms ih =>
      cases ht : ProductTerm.eval ν term <;>
        cases hs : SumOfProducts.eval ν terms <;>
        cases hr : SumOfProducts.eval ν right <;>
        simp [SumOfProducts.eval, ih, ht, hs, hr]

@[simp] theorem SumOfProducts.eval_map_append_left
    (ν : Valuation α)
    (term : ProductTerm α)
    (terms : SumOfProducts α) :
    SumOfProducts.eval ν (terms.map (fun rhsTerm => term ++ rhsTerm)) =
      (ProductTerm.eval ν term && SumOfProducts.eval ν terms) := by
  induction terms with
  | nil =>
      cases ProductTerm.eval ν term <;> simp [SumOfProducts.eval]
  | cons rhs rest ih =>
      cases ht : ProductTerm.eval ν term <;>
        cases hr : ProductTerm.eval ν rhs <;>
        cases hs : SumOfProducts.eval ν rest <;>
        simp [SumOfProducts.eval, ProductTerm.eval_append, ih, ht, hr, hs]

@[simp] theorem SumOfProducts.eval_multiply
    (ν : Valuation α)
    (left right : SumOfProducts α) :
    SumOfProducts.eval ν (SumOfProducts.multiply left right) =
      (SumOfProducts.eval ν left && SumOfProducts.eval ν right) := by
  induction left with
  | nil => rfl
  | cons term terms ih =>
      cases ht : ProductTerm.eval ν term <;>
        cases hs : SumOfProducts.eval ν terms <;>
        cases hr : SumOfProducts.eval ν right <;>
        simp [SumOfProducts.multiply, SumOfProducts.eval, SumOfProducts.eval_append,
          SumOfProducts.eval_map_append_left, ih, ht, hs, hr]

@[simp] theorem SumOfProducts.eval_toTree
    (ν : Valuation α)
    (sop : SumOfProducts α) :
    Tree.eval ν (SumOfProducts.toTree sop) = SumOfProducts.eval ν sop := by
  induction sop with
  | nil => rfl
  | cons term terms ih =>
      simp [SumOfProducts.toTree, Tree.disjList, SumOfProducts.eval, Tree.eval]
      change (ProductTerm.eval ν term ||
          Tree.eval ν (SumOfProducts.toTree terms)) =
        (ProductTerm.eval ν term || SumOfProducts.eval ν terms)
      rw [ih]

/--
Convert an NNF tree into a Sum-of-Products list.

The representation is:
* `[]` means `0`;
* `[[]]` means `1`;
* each inner list is an AND-product of literals;
* the outer list is an OR-sum of product terms.
-/
def Tree.toSOPNnf : Tree α → SumOfProducts α
  | .var a => [[Literal.pos a]]
  | .falsum => []
  | .truth => [[]]
  | .neg (.var a) => [[Literal.neg a]]
  | .neg .falsum => [[]]
  | .neg .truth => []
  | .conj p q => SumOfProducts.multiply (Tree.toSOPNnf p) (Tree.toSOPNnf q)
  | .disj p q => Tree.toSOPNnf p ++ Tree.toSOPNnf q
  | .neg _ => []
  | .impl _ _ => []
  | .eqv _ _ => []
  | .nand _ _ => []

/--
Convert a Boolean tree into Sum-of-Products form.

Process:
1. eliminate implication, equivalence, and NAND into AND/OR/NOT via `nnf`;
2. push negations to leaves using De Morgan transformations;
3. distribute AND over OR, producing product terms;
4. represent the result as a list of product terms.
-/
def Tree.toSOP (p : Tree α) : SumOfProducts α :=
  Tree.toSOPNnf (Tree.nnf p)

theorem Tree.eval_toSOPNnf_nnf_and_negNnf
    (ν : Valuation α)
    (p : Tree α) :
    SumOfProducts.eval ν (Tree.toSOPNnf (Tree.nnf p)) =
      Tree.eval ν (Tree.nnf p) ∧
    SumOfProducts.eval ν (Tree.toSOPNnf (Tree.negNnf p)) =
      Tree.eval ν (Tree.negNnf p) := by
  induction p with
  | var a =>
      simp [Tree.nnf, Tree.negNnf, Tree.toSOPNnf, SumOfProducts.eval,
        ProductTerm.eval, Literal.eval, Tree.eval]
  | falsum =>
      simp [Tree.nnf, Tree.negNnf, Tree.toSOPNnf, SumOfProducts.eval,
        ProductTerm.eval, Tree.eval]
  | truth =>
      simp [Tree.nnf, Tree.negNnf, Tree.toSOPNnf, SumOfProducts.eval,
        ProductTerm.eval, Tree.eval]
  | neg p ih =>
      constructor
      · exact ih.2
      · exact ih.1
  | conj p q ihp ihq =>
      constructor
      · simp [Tree.nnf, Tree.toSOPNnf, Tree.eval, ihp.1, ihq.1]
      · simp [Tree.negNnf, Tree.toSOPNnf, Tree.eval, ihp.2, ihq.2]
  | disj p q ihp ihq =>
      constructor
      · simp [Tree.nnf, Tree.toSOPNnf, Tree.eval, ihp.1, ihq.1]
      · simp [Tree.negNnf, Tree.toSOPNnf, Tree.eval, ihp.2, ihq.2]
  | impl p q ihp ihq =>
      constructor
      · simp [Tree.nnf, Tree.toSOPNnf, Tree.eval, ihp.2, ihq.1]
      · simp [Tree.negNnf, Tree.toSOPNnf, Tree.eval, ihp.1, ihq.2]
  | eqv p q ihp ihq =>
      constructor
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.nnf, Tree.toSOPNnf, Tree.eval, ihp.1, ihp.2, ihq.1, ihq.2,
            hp, hq]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.toSOPNnf, Tree.eval, ihp.1, ihp.2, ihq.1, ihq.2,
            hp, hq]
  | nand p q ihp ihq =>
      constructor
      · simp [Tree.nnf, Tree.toSOPNnf, Tree.eval, ihp.2, ihq.2]
      · simp [Tree.negNnf, Tree.toSOPNnf, Tree.eval, ihp.1, ihq.1]

@[simp] theorem Tree.eval_toSOPNnf_nnf
    (ν : Valuation α)
    (p : Tree α) :
    SumOfProducts.eval ν (Tree.toSOPNnf (Tree.nnf p)) =
      Tree.eval ν (Tree.nnf p) :=
  (Tree.eval_toSOPNnf_nnf_and_negNnf ν p).1

@[simp] theorem Tree.eval_toSOPNnf_negNnf
    (ν : Valuation α)
    (p : Tree α) :
    SumOfProducts.eval ν (Tree.toSOPNnf (Tree.negNnf p)) =
      Tree.eval ν (Tree.negNnf p) :=
  (Tree.eval_toSOPNnf_nnf_and_negNnf ν p).2

@[simp] theorem Tree.eval_toSOP
    (ν : Valuation α)
    (p : Tree α) :
    SumOfProducts.eval ν (Tree.toSOP p) = Tree.eval ν p := by
  rw [Tree.toSOP, Tree.eval_toSOPNnf_nnf, Tree.eval_nnf]

@[simp] theorem Tree.eval_toSOP_tree
    (ν : Valuation α)
    (p : Tree α) :
    Tree.eval ν (SumOfProducts.toTree (Tree.toSOP p)) = Tree.eval ν p := by
  rw [SumOfProducts.eval_toTree, Tree.eval_toSOP]

/--
A PLA-style Sum-of-Products matrix.

Rows are AND-product terms. Columns are variables. Since SOP needs positive and
negative literals, the representation uses two Boolean matrices:

* `pos r v = 1` means product row `r` contains variable `v`;
* `neg r v = 1` means product row `r` contains negated variable `¬v`.

The Boolean tree is recovered by ANDing literals across each row and ORing the
rows at the root.
-/
structure SOPMatrix (terms vars : Nat) where
  pos : Matrix terms vars
  neg : Matrix terms vars

/-- No row-column position contains both positive and negative polarity. -/
def SOPMatrix.ConflictFree
    {terms vars : Nat}
    (M : SOPMatrix terms vars) :
    Prop :=
  ∀ r : Fin terms, ∀ v : Fin vars,
    M.pos r v = true → M.neg r v = false

/-- Convert one positive/negative literal-column pair into a tree. -/
def SOPMatrix.literalTree
    {terms vars : Nat}
    (M : SOPMatrix terms vars)
    (r : Fin terms)
    (v : Fin vars) :
    Tree (Fin vars) :=
  match M.pos r v, M.neg r v with
  | true, false => .var v
  | false, true => .neg (.var v)
  | false, false => .truth
  | true, true => .conj (.var v) (.neg (.var v))

/-- Convert one SOP matrix row into an AND-product tree. -/
def SOPMatrix.rowTree
    {terms vars : Nat}
    (M : SOPMatrix terms vars)
    (r : Fin terms) :
    Tree (Fin vars) :=
  Tree.conjList
    ((List.finRange vars).map
      (fun v => SOPMatrix.literalTree M r v))

/--
Convert an SOP matrix into a Boolean expression tree.

Rows become product terms, and the root ORs all product rows.
-/
def SOPMatrix.toTree
    {terms vars : Nat}
    (M : SOPMatrix terms vars) :
    Tree (Fin vars) :=
  Tree.disjList
    ((List.finRange terms).map
      (fun r => SOPMatrix.rowTree M r))

/-- Evaluate an SOP matrix by converting it back into a Boolean tree. -/
def SOPMatrix.eval
    {terms vars : Nat}
    (M : SOPMatrix terms vars)
    (ν : Valuation (Fin vars)) :
    Bool :=
  Tree.eval ν (SOPMatrix.toTree M)

/--
Flatten an SOP expression into a PLA-style matrix.

The supplied `index` maps symbolic variables to matrix columns. The number of
rows is exactly the number of product terms in the SOP.
-/
def SumOfProducts.toMatrix
    {vars : Nat}
    (index : α → Fin vars)
    (sop : SumOfProducts α) :
    SOPMatrix sop.length vars where
  pos := fun r v =>
    ProductTerm.hasPositiveAt index (sop.get r) v
  neg := fun r v =>
    ProductTerm.hasNegativeAt index (sop.get r) v

/--
Convert a Boolean tree into a PLA-style SOP matrix.

Pipeline:
1. tree `p`;
2. `toSOP p`, using NNF plus distribution;
3. `SumOfProducts.toMatrix`, using `index` to assign variables to columns.
-/
def Tree.toSOPMatrix
    {vars : Nat}
    (index : α → Fin vars)
    (p : Tree α) :
    SOPMatrix (Tree.toSOP p).length vars :=
  SumOfProducts.toMatrix index (Tree.toSOP p)

end Boolean
```
