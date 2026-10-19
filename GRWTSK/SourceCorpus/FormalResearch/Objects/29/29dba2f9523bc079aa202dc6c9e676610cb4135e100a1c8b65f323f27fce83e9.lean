import Boolean.Formula.Eval

namespace Boolean

universe u

namespace Formula

namespace CNF

/-- A signed atom in a clause. -/
inductive Literal (α : Type u) : Type u where
  | pos : α → Literal α
  | neg : α → Literal α
deriving Repr, DecidableEq

/-- A disjunction of signed atoms. -/
abbrev Clause (α : Type u) :=
  List (Literal α)

/-- Evaluate a signed atom. -/
def Literal.eval (ν : Valuation α) : Literal α → Bool
  | .pos a => ν a
  | .neg a => !(ν a)

/-- Render a signed atom as a formula. -/
def Literal.toFormula : Literal α → Formula α
  | .pos a => .var a
  | .neg a => .neg (.var a)

@[simp] theorem Literal.eval_toFormula
    (ν : Valuation α)
    (lit : Literal α) :
    Formula.eval ν (Literal.toFormula lit) = Literal.eval ν lit := by
  cases lit <;> rfl

/-- Evaluate a clause as a disjunction. -/
def Clause.eval (ν : Valuation α) : Clause α → Bool
  | [] => false
  | lit :: lits => Literal.eval ν lit || Clause.eval ν lits

/-- Render a clause as a formula disjunction. -/
def Clause.toFormula : Clause α → Formula α
  | [] => .falsum
  | lit :: lits => .disj (Literal.toFormula lit) (Clause.toFormula lits)

@[simp] theorem Clause.eval_toFormula
    (ν : Valuation α)
    (clause : Clause α) :
    Formula.eval ν (Clause.toFormula clause) = Clause.eval ν clause := by
  induction clause with
  | nil => rfl
  | cons lit lits ih =>
      simp [Clause.toFormula, Clause.eval, Literal.eval_toFormula, ih]

end CNF

/-- A conjunctive normal form expression. -/
structure CNF (α : Type u) where
  clauses : List (CNF.Clause α)
deriving Repr

namespace CNF

/-- Evaluate a list of clauses as a conjunction. -/
def evalClauses (ν : Valuation α) : List (Clause α) → Bool
  | [] => true
  | clause :: clauses => Clause.eval ν clause && evalClauses ν clauses

/-- Render a list of clauses as a formula conjunction. -/
def clausesToFormula : List (Clause α) → Formula α
  | [] => .truth
  | clause :: clauses => .conj (Clause.toFormula clause) (clausesToFormula clauses)

/-- Evaluate a CNF expression. -/
def eval (ν : Valuation α) (cnf : Formula.CNF α) : Bool :=
  evalClauses ν cnf.clauses

/-- Render a CNF expression as a formula. -/
def toFormula (cnf : Formula.CNF α) : Formula α :=
  clausesToFormula cnf.clauses

@[simp] theorem evalClauses_toFormula
    (ν : Valuation α)
    (clauses : List (Clause α)) :
    Formula.eval ν (clausesToFormula clauses) = evalClauses ν clauses := by
  induction clauses with
  | nil => rfl
  | cons clause clauses ih =>
      simp [clausesToFormula, evalClauses, Clause.eval_toFormula, ih]

@[simp] theorem eval_toFormula
    (ν : Valuation α)
    (cnf : Formula.CNF α) :
    Formula.eval ν (toFormula cnf) = eval ν cnf := by
  cases cnf
  simp [toFormula, eval, evalClauses_toFormula]

/-- The CNF expression for truth. -/
def truth : Formula.CNF α where
  clauses := []

/-- The CNF expression for falsity. -/
def falsum : Formula.CNF α where
  clauses := [[]]

/-- The CNF expression for one literal. -/
def literal (lit : Literal α) : Formula.CNF α where
  clauses := [[lit]]

/-- Conjunction of CNF expressions. -/
def conj (left right : Formula.CNF α) : Formula.CNF α where
  clauses := left.clauses ++ right.clauses

/-- Pairwise clause distribution for CNF disjunction. -/
def disjoinClauses : List (Clause α) → List (Clause α) → List (Clause α)
  | [], _ => []
  | _, [] => []
  | clause :: clauses, rhs =>
      rhs.map (fun rhsClause => clause ++ rhsClause) ++
        disjoinClauses clauses rhs

/-- Disjunction of CNF expressions. -/
def disj (left right : Formula.CNF α) : Formula.CNF α where
  clauses := disjoinClauses left.clauses right.clauses

@[simp] theorem Clause.eval_append
    (ν : Valuation α)
    (left right : Clause α) :
    Clause.eval ν (left ++ right) =
      (Clause.eval ν left || Clause.eval ν right) := by
  induction left with
  | nil => rfl
  | cons lit lits ih =>
      cases hl : Literal.eval ν lit <;>
        cases hs : Clause.eval ν lits <;>
        cases hr : Clause.eval ν right <;>
        simp [Clause.eval, ih, hl, hs, hr]

@[simp] theorem evalClauses_append
    (ν : Valuation α)
    (left right : List (Clause α)) :
    evalClauses ν (left ++ right) =
      (evalClauses ν left && evalClauses ν right) := by
  induction left with
  | nil => rfl
  | cons clause clauses ih =>
      cases hc : Clause.eval ν clause <;>
        cases hs : evalClauses ν clauses <;>
        cases hr : evalClauses ν right <;>
        simp [evalClauses, ih, hc, hs, hr]

@[simp] theorem evalClauses_map_append_left
    (ν : Valuation α)
    (clause : Clause α)
    (clauses : List (Clause α)) :
    evalClauses ν (clauses.map (fun rhsClause => clause ++ rhsClause)) =
      (Clause.eval ν clause || evalClauses ν clauses) := by
  induction clauses with
  | nil =>
      cases Clause.eval ν clause <;> rfl
  | cons rhs rest ih =>
      cases hc : Clause.eval ν clause <;>
        cases hr : Clause.eval ν rhs <;>
        cases hs : evalClauses ν rest <;>
        simp [evalClauses, Clause.eval_append, ih, hc, hr, hs]

@[simp] theorem eval_disjoinClauses
    (ν : Valuation α)
    (left right : List (Clause α)) :
    evalClauses ν (disjoinClauses left right) =
      (evalClauses ν left || evalClauses ν right) := by
  induction left with
  | nil =>
      cases evalClauses ν right <;> rfl
  | cons clause clauses ih =>
      cases right with
      | nil =>
          simp [disjoinClauses, evalClauses]
      | cons rhs rest =>
          change
            (Clause.eval ν (clause ++ rhs) &&
                evalClauses ν
                  (List.map (fun rhsClause => clause ++ rhsClause) rest ++
                    disjoinClauses clauses (rhs :: rest))) =
              ((Clause.eval ν clause && evalClauses ν clauses) ||
                evalClauses ν (rhs :: rest))
          rw [evalClauses_append, evalClauses_map_append_left, ih]
          rw [Clause.eval_append]
          cases hc : Clause.eval ν clause <;>
            cases hs : evalClauses ν clauses <;>
            cases hr : Clause.eval ν rhs <;>
            cases ht : evalClauses ν rest <;>
            simp [evalClauses, hr, ht]

@[simp] theorem eval_truth
    (ν : Valuation α) :
    eval ν (truth : Formula.CNF α) = true := rfl

@[simp] theorem eval_falsum
    (ν : Valuation α) :
    eval ν (falsum : Formula.CNF α) = false := rfl

@[simp] theorem eval_literal
    (ν : Valuation α)
    (lit : Literal α) :
    eval ν (literal lit) = Literal.eval ν lit := by
  cases lit <;> simp [literal, eval, evalClauses, Clause.eval, Literal.eval]

@[simp] theorem eval_conj
    (ν : Valuation α)
    (left right : Formula.CNF α) :
    eval ν (conj left right) = (eval ν left && eval ν right) := by
  cases left
  cases right
  simp [conj, eval]

@[simp] theorem eval_disj
    (ν : Valuation α)
    (left right : Formula.CNF α) :
    eval ν (disj left right) = (eval ν left || eval ν right) := by
  cases left
  cases right
  simp [disj, eval]

end CNF

mutual

/-- Convert a formula into executable conjunctive normal form. -/
def toCNF : Formula α → Formula.CNF α
  | .var a => CNF.literal (.pos a)
  | .falsum => CNF.falsum
  | .truth => CNF.truth
  | .neg p => negToCNF p
  | .conj p q => CNF.conj (toCNF p) (toCNF q)
  | .disj p q => CNF.disj (toCNF p) (toCNF q)
  | .impl p q => CNF.disj (negToCNF p) (toCNF q)
  | .eqv p q =>
      CNF.conj
        (CNF.disj (negToCNF p) (toCNF q))
        (CNF.disj (negToCNF q) (toCNF p))

/-- Convert the negation of a formula into executable conjunctive normal form. -/
def negToCNF : Formula α → Formula.CNF α
  | .var a => CNF.literal (.neg a)
  | .falsum => CNF.truth
  | .truth => CNF.falsum
  | .neg p => toCNF p
  | .conj p q => CNF.disj (negToCNF p) (negToCNF q)
  | .disj p q => CNF.conj (negToCNF p) (negToCNF q)
  | .impl p q => CNF.conj (toCNF p) (negToCNF q)
  | .eqv p q =>
      CNF.disj
        (CNF.conj (toCNF p) (negToCNF q))
        (CNF.conj (negToCNF p) (toCNF q))

end

theorem eval_toCNF_and_negToCNF
    (ν : Valuation α)
    (p : Formula α) :
    CNF.eval ν (toCNF p) = Formula.eval ν p ∧
      CNF.eval ν (negToCNF p) = !(Formula.eval ν p) := by
  induction p with
  | var a =>
      simp [toCNF, negToCNF, Formula.eval, CNF.literal, CNF.eval,
        CNF.evalClauses, CNF.Clause.eval, CNF.Literal.eval]
  | falsum => simp [toCNF, negToCNF, Formula.eval]
  | truth => simp [toCNF, negToCNF, Formula.eval]
  | neg p ih =>
      constructor
      · exact ih.2
      · cases hp : Formula.eval ν p <;>
          simp [negToCNF, Formula.eval, ih.1, hp]
  | conj p q ihp ihq =>
      constructor
      · simp [toCNF, Formula.eval, ihp.1, ihq.1]
      · cases hp : Formula.eval ν p <;>
          cases hq : Formula.eval ν q <;>
          simp [negToCNF, Formula.eval, ihp.2, ihq.2, hp, hq]
  | disj p q ihp ihq =>
      constructor
      · simp [toCNF, Formula.eval, ihp.1, ihq.1]
      · simp [negToCNF, Formula.eval, ihp.2, ihq.2]
  | impl p q ihp ihq =>
      constructor
      · simp [toCNF, Formula.eval, ihp.2, ihq.1]
      · simp [negToCNF, Formula.eval, ihp.1, ihq.2]
  | eqv p q ihp ihq =>
      constructor
      · cases hp : Formula.eval ν p <;>
          cases hq : Formula.eval ν q <;>
          simp [toCNF, Formula.eval, ihp.1, ihp.2, ihq.1, ihq.2,
            hp, hq]
      · cases hp : Formula.eval ν p <;>
          cases hq : Formula.eval ν q <;>
          simp [negToCNF, Formula.eval, ihp.1, ihp.2, ihq.1, ihq.2,
            hp, hq]

@[simp] theorem eval_toCNF
    (ν : Valuation α)
    (p : Formula α) :
    CNF.eval ν (toCNF p) = Formula.eval ν p :=
  (eval_toCNF_and_negToCNF ν p).1

@[simp] theorem eval_negToCNF
    (ν : Valuation α)
    (p : Formula α) :
    CNF.eval ν (negToCNF p) = !(Formula.eval ν p) :=
  (eval_toCNF_and_negToCNF ν p).2

end Formula

end Boolean
