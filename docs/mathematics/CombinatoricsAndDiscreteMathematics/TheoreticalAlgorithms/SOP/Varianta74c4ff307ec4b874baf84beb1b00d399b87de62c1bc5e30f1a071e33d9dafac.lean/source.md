# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SOP.Varianta74c4ff307ec4b874baf84beb1b00d399b87de62c1bc5e30f1a071e33d9dafac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a73a2c7c1cd60412183a621805c9b858e02ce37f` · SHA-256 `3da27eb0bd7fde9e64baff26311ad6fb644e3c8391820225ad61ff9e152ed0e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Literal.Variantd95c34398a50a618b777fc921e9b1aa447e65ca65d9e016af83d19e501f84642","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d95c34398a50a618b777fc921e9b1aa447e65ca65d9e016af83d19e501f84642","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Literal.Variantd95c34398a50a618b777fc921e9b1aa447e65ca65d9e016af83d19e501f84642","mathematical_subject":"Computation.DataStructures","original_sha256":"d95c34398a50a618b777fc921e9b1aa447e65ca65d9e016af83d19e501f84642","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Syntax/SOP.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Syntax.Normalize
import Surface.Boolean.Syntax.MatrixEncoding


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Literal.Variantd95c34398a50a618b777fc921e9b1aa447e65ca65d9e016af83d19e501f84642

namespace Surface.Boolean

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
def Literal.toTree : Literal α → FormulaTree α
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
def ProductTerm.toTree (term : ProductTerm α) : FormulaTree α :=
  FormulaTree.conjList (term.map Literal.toTree)

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
def SumOfProducts.toTree (sop : SumOfProducts α) : FormulaTree α :=
  FormulaTree.disjList (sop.map ProductTerm.toTree)

/--
Convert an NNF tree into a Sum-of-Products list.

The representation is:
* `[]` means `0`;
* `[[]]` means `1`;
* each inner list is an AND-product of literals;
* the outer list is an OR-sum of product terms.
-/
def FormulaTree.toSOPNnf : FormulaTree α → SumOfProducts α
  | .var a => [[Literal.pos a]]
  | .falsum => []
  | .truth => [[]]
  | .neg (.var a) => [[Literal.neg a]]
  | .neg .falsum => [[]]
  | .neg .truth => []
  | .conj p q => SumOfProducts.multiply (FormulaTree.toSOPNnf p) (FormulaTree.toSOPNnf q)
  | .disj p q => FormulaTree.toSOPNnf p ++ FormulaTree.toSOPNnf q
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
def FormulaTree.toSOP (p : FormulaTree α) : SumOfProducts α :=
  FormulaTree.toSOPNnf (FormulaTree.nnf p)

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
  pos : BoolMatrix terms vars
  neg : BoolMatrix terms vars

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
    FormulaTree (Fin vars) :=
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
    FormulaTree (Fin vars) :=
  FormulaTree.conjList
    ((List.finRange vars).map
      (fun v => SOPMatrix.literalTree M r v))

/--
Convert an SOP matrix into a Boolean expression tree.

Rows become product terms, and the root ORs all product rows.
-/
def SOPMatrix.toTree
    {terms vars : Nat}
    (M : SOPMatrix terms vars) :
    FormulaTree (Fin vars) :=
  FormulaTree.disjList
    ((List.finRange terms).map
      (fun r => SOPMatrix.rowTree M r))

/-- Evaluate an SOP matrix by converting it back into a Boolean tree. -/
def SOPMatrix.eval
    {terms vars : Nat}
    (M : SOPMatrix terms vars)
    (ν : Valuation (Fin vars)) :
    Bool :=
  FormulaTree.eval ν (SOPMatrix.toTree M)

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
def FormulaTree.toSOPMatrix
    {vars : Nat}
    (index : α → Fin vars)
    (p : FormulaTree α) :
    SOPMatrix (FormulaTree.toSOP p).length vars :=
  SumOfProducts.toMatrix index (FormulaTree.toSOP p)

end Surface.Boolean
```
