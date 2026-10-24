import Boolean.Formula.Eval
import Boolean.Tree.Eval

namespace Boolean

universe u

namespace Tree

namespace ANF

/-- A conjunction of variables in an algebraic normal form polynomial. -/
abbrev Monomial (α : Type u) :=
  List α

/-- An algebraic normal form polynomial over `Bool`, with addition as XOR. -/
structure Polynomial (α : Type u) where
  terms : List (Monomial α)
deriving Repr

/-- Boolean XOR rendered as a tree. -/
def xorTree (p q : Tree α) : Tree α :=
  .disj (.conj p (.neg q)) (.conj (.neg p) q)

@[simp] theorem eval_xorTree
    (ν : Valuation α)
    (p q : Tree α) :
    Tree.eval ν (xorTree p q) = Bool.xor (Tree.eval ν p) (Tree.eval ν q) := by
  cases hp : Tree.eval ν p <;>
    cases hq : Tree.eval ν q <;>
    simp [xorTree, Tree.eval, hp, hq]

/-- Evaluate a monomial as a conjunction of its variables. -/
def Monomial.eval (ν : Valuation α) : Monomial α → Bool
  | [] => true
  | a :: atoms => ν a && Monomial.eval ν atoms

/-- Render a monomial as a tree conjunction. -/
def Monomial.toTree : Monomial α → Tree α
  | [] => .truth
  | a :: atoms => .conj (.var a) (Monomial.toTree atoms)

@[simp] theorem Monomial.eval_toTree
    (ν : Valuation α)
    (m : Monomial α) :
    Tree.eval ν (Monomial.toTree m) = Monomial.eval ν m := by
  induction m with
  | nil => rfl
  | cons a atoms ih =>
      simp [Monomial.toTree, Monomial.eval, Tree.eval, ih]

/-- Evaluate a list of monomials as XOR-sum. -/
def evalTerms (ν : Valuation α) : List (Monomial α) → Bool
  | [] => false
  | m :: ms => Bool.xor (Monomial.eval ν m) (evalTerms ν ms)

/-- Render a list of monomials as an XOR tree. -/
def termsToTree : List (Monomial α) → Tree α
  | [] => .falsum
  | m :: ms => xorTree (Monomial.toTree m) (termsToTree ms)

/-- Evaluate an ANF polynomial. -/
def Polynomial.eval (ν : Valuation α) (p : Polynomial α) : Bool :=
  evalTerms ν p.terms

/-- Render an ANF polynomial as a Boolean tree. -/
def Polynomial.toTree (p : Polynomial α) : Tree α :=
  termsToTree p.terms

/-- The zero ANF polynomial. -/
def Polynomial.zero : Polynomial α where
  terms := []

/-- The one ANF polynomial. -/
def Polynomial.one : Polynomial α where
  terms := [[]]

/-- The ANF polynomial for one variable. -/
def Polynomial.var (a : α) : Polynomial α where
  terms := [[a]]

/-- Addition of ANF polynomials, interpreted as XOR. -/
def Polynomial.add (p q : Polynomial α) : Polynomial α where
  terms := p.terms ++ q.terms

/-- Multiply one monomial by a list of monomials. -/
def multiplyMonomial (m : Monomial α) : List (Monomial α) → List (Monomial α)
  | [] => []
  | n :: ns => (m ++ n) :: multiplyMonomial m ns

/-- Multiply two monomial lists pairwise. -/
def multiplyTerms : List (Monomial α) → List (Monomial α) → List (Monomial α)
  | [], _ => []
  | m :: ms, rhs => multiplyMonomial m rhs ++ multiplyTerms ms rhs

/-- Multiplication of ANF polynomials, interpreted as conjunction. -/
def Polynomial.mul (p q : Polynomial α) : Polynomial α where
  terms := multiplyTerms p.terms q.terms

/-- Boolean complement of an ANF polynomial. -/
def Polynomial.compl (p : Polynomial α) : Polynomial α :=
  Polynomial.add Polynomial.one p

/-- Boolean disjunction of ANF polynomials. -/
def Polynomial.disj (p q : Polynomial α) : Polynomial α :=
  Polynomial.add (Polynomial.add p q) (Polynomial.mul p q)

/-- Boolean implication of ANF polynomials. -/
def Polynomial.impl (p q : Polynomial α) : Polynomial α :=
  Polynomial.add (Polynomial.add Polynomial.one p) (Polynomial.mul p q)

/-- Boolean equivalence of ANF polynomials. -/
def Polynomial.eqv (p q : Polynomial α) : Polynomial α :=
  Polynomial.add (Polynomial.add Polynomial.one p) q

/-- Boolean NAND of ANF polynomials. -/
def Polynomial.nand (p q : Polynomial α) : Polynomial α :=
  Polynomial.add Polynomial.one (Polynomial.mul p q)

@[simp] theorem Monomial.eval_append
    (ν : Valuation α)
    (left right : Monomial α) :
    Monomial.eval ν (left ++ right) =
      (Monomial.eval ν left && Monomial.eval ν right) := by
  induction left with
  | nil => rfl
  | cons a atoms ih =>
      cases ha : ν a <;>
        cases hs : Monomial.eval ν atoms <;>
        cases hr : Monomial.eval ν right <;>
        simp [Monomial.eval, ih, ha, hs, hr]

@[simp] theorem evalTerms_append
    (ν : Valuation α)
    (left right : List (Monomial α)) :
    evalTerms ν (left ++ right) =
      Bool.xor (evalTerms ν left) (evalTerms ν right) := by
  induction left with
  | nil =>
      cases h : evalTerms ν right <;> simp [evalTerms, h]
  | cons m ms ih =>
      cases hm : Monomial.eval ν m <;>
        cases hs : evalTerms ν ms <;>
        cases hr : evalTerms ν right <;>
        simp [evalTerms, ih, hm, hs, hr]

@[simp] theorem evalTerms_multiplyMonomial
    (ν : Valuation α)
    (m : Monomial α)
    (terms : List (Monomial α)) :
    evalTerms ν (multiplyMonomial m terms) =
      (Monomial.eval ν m && evalTerms ν terms) := by
  induction terms with
  | nil =>
      cases Monomial.eval ν m <;> rfl
  | cons n ns ih =>
      cases hm : Monomial.eval ν m <;>
        cases hn : Monomial.eval ν n <;>
        cases hs : evalTerms ν ns <;>
        simp [multiplyMonomial, evalTerms, Monomial.eval_append, ih, hm, hn, hs]

@[simp] theorem evalTerms_multiplyTerms
    (ν : Valuation α)
    (left right : List (Monomial α)) :
    evalTerms ν (multiplyTerms left right) =
      (evalTerms ν left && evalTerms ν right) := by
  induction left with
  | nil => rfl
  | cons m ms ih =>
      cases hm : Monomial.eval ν m <;>
        cases hs : evalTerms ν ms <;>
        cases hr : evalTerms ν right <;>
        simp [multiplyTerms, evalTerms, evalTerms_append,
          evalTerms_multiplyMonomial, ih, hm, hs, hr]

@[simp] theorem Polynomial.eval_zero
    (ν : Valuation α) :
    Polynomial.eval ν (Polynomial.zero : Polynomial α) = false := rfl

@[simp] theorem Polynomial.eval_one
    (ν : Valuation α) :
    Polynomial.eval ν (Polynomial.one : Polynomial α) = true := rfl

@[simp] theorem Polynomial.eval_var
    (ν : Valuation α)
    (a : α) :
    Polynomial.eval ν (Polynomial.var a) = ν a := by
  cases h : ν a <;> simp [Polynomial.var, Polynomial.eval, evalTerms, Monomial.eval, h]

@[simp] theorem Polynomial.eval_add
    (ν : Valuation α)
    (p q : Polynomial α) :
    Polynomial.eval ν (Polynomial.add p q) =
      Bool.xor (Polynomial.eval ν p) (Polynomial.eval ν q) := by
  cases p
  cases q
  simp [Polynomial.add, Polynomial.eval]

@[simp] theorem Polynomial.eval_mul
    (ν : Valuation α)
    (p q : Polynomial α) :
    Polynomial.eval ν (Polynomial.mul p q) =
      (Polynomial.eval ν p && Polynomial.eval ν q) := by
  cases p
  cases q
  simp [Polynomial.mul, Polynomial.eval]

@[simp] theorem Polynomial.eval_compl
    (ν : Valuation α)
    (p : Polynomial α) :
    Polynomial.eval ν (Polynomial.compl p) = !(Polynomial.eval ν p) := by
  cases hp : Polynomial.eval ν p <;> simp [Polynomial.compl, hp]

@[simp] theorem Polynomial.eval_disj
    (ν : Valuation α)
    (p q : Polynomial α) :
    Polynomial.eval ν (Polynomial.disj p q) =
      (Polynomial.eval ν p || Polynomial.eval ν q) := by
  cases hp : Polynomial.eval ν p <;>
    cases hq : Polynomial.eval ν q <;>
    simp [Polynomial.disj, hp, hq]

@[simp] theorem Polynomial.eval_impl
    (ν : Valuation α)
    (p q : Polynomial α) :
    Polynomial.eval ν (Polynomial.impl p q) =
      (!(Polynomial.eval ν p) || Polynomial.eval ν q) := by
  cases hp : Polynomial.eval ν p <;>
    cases hq : Polynomial.eval ν q <;>
    simp [Polynomial.impl, hp, hq]

@[simp] theorem Polynomial.eval_eqv
    (ν : Valuation α)
    (p q : Polynomial α) :
    Polynomial.eval ν (Polynomial.eqv p q) =
      (Polynomial.eval ν p == Polynomial.eval ν q) := by
  cases hp : Polynomial.eval ν p <;>
    cases hq : Polynomial.eval ν q <;>
    simp [Polynomial.eqv, hp, hq]

@[simp] theorem Polynomial.eval_nand
    (ν : Valuation α)
    (p q : Polynomial α) :
    Polynomial.eval ν (Polynomial.nand p q) =
      !(Polynomial.eval ν p && Polynomial.eval ν q) := by
  cases hp : Polynomial.eval ν p <;>
    cases hq : Polynomial.eval ν q <;>
    simp [Polynomial.nand, hp, hq]

@[simp] theorem evalTerms_toTree
    (ν : Valuation α)
    (terms : List (Monomial α)) :
    Tree.eval ν (termsToTree terms) = evalTerms ν terms := by
  induction terms with
  | nil => rfl
  | cons m ms ih =>
      simp [termsToTree, evalTerms, Monomial.eval_toTree, ih]

@[simp] theorem Polynomial.eval_toTree
    (ν : Valuation α)
    (p : Polynomial α) :
    Tree.eval ν (Polynomial.toTree p) = Polynomial.eval ν p := by
  cases p
  simp [Polynomial.toTree, Polynomial.eval, evalTerms_toTree]

end ANF

/-- Convert a Boolean tree into executable algebraic normal form. -/
def toANF : Tree α → ANF.Polynomial α
  | .var a => ANF.Polynomial.var a
  | .falsum => ANF.Polynomial.zero
  | .truth => ANF.Polynomial.one
  | .neg p => ANF.Polynomial.compl (toANF p)
  | .conj p q => ANF.Polynomial.mul (toANF p) (toANF q)
  | .disj p q => ANF.Polynomial.disj (toANF p) (toANF q)
  | .impl p q => ANF.Polynomial.impl (toANF p) (toANF q)
  | .eqv p q => ANF.Polynomial.eqv (toANF p) (toANF q)
  | .nand p q => ANF.Polynomial.nand (toANF p) (toANF q)

@[simp] theorem eval_toANF
    (ν : Valuation α)
    (p : Tree α) :
    ANF.Polynomial.eval ν (toANF p) = Tree.eval ν p := by
  induction p with
  | var a => simp [toANF, Tree.eval]
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [toANF, Tree.eval, ih]
  | conj p q ihp ihq => simp [toANF, Tree.eval, ihp, ihq]
  | disj p q ihp ihq => simp [toANF, Tree.eval, ihp, ihq]
  | impl p q ihp ihq => simp [toANF, Tree.eval, ihp, ihq]
  | eqv p q ihp ihq => simp [toANF, Tree.eval, ihp, ihq]
  | nand p q ihp ihq => simp [toANF, Tree.eval, ihp, ihq]

end Tree

namespace Formula

/-- Convert a formula into executable algebraic normal form. -/
def toANF : Formula α → Tree.ANF.Polynomial α
  | .var a => Tree.ANF.Polynomial.var a
  | .falsum => Tree.ANF.Polynomial.zero
  | .truth => Tree.ANF.Polynomial.one
  | .neg p => Tree.ANF.Polynomial.compl (toANF p)
  | .conj p q => Tree.ANF.Polynomial.mul (toANF p) (toANF q)
  | .disj p q => Tree.ANF.Polynomial.disj (toANF p) (toANF q)
  | .impl p q => Tree.ANF.Polynomial.impl (toANF p) (toANF q)
  | .eqv p q => Tree.ANF.Polynomial.eqv (toANF p) (toANF q)

@[simp] theorem eval_toANF
    (ν : Valuation α)
    (p : Formula α) :
    Tree.ANF.Polynomial.eval ν (toANF p) = Formula.eval ν p := by
  induction p with
  | var a => simp [toANF, Formula.eval]
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [toANF, Formula.eval, ih]
  | conj p q ihp ihq => simp [toANF, Formula.eval, ihp, ihq]
  | disj p q ihp ihq => simp [toANF, Formula.eval, ihp, ihq]
  | impl p q ihp ihq => simp [toANF, Formula.eval, ihp, ihq]
  | eqv p q ihp ihq => simp [toANF, Formula.eval, ihp, ihq]

end Formula

end Boolean
