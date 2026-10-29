import Mathematics.Boolean.Formula.Evaluation

/-!
# Propositional semantic relations

These predicates are transparent definitions over executable evaluation.
They carry no theorem authority by themselves.
-/

namespace Mathematics.Boolean.Formula

universe u

variable {α : Type u}

/-- Satisfaction under one valuation. -/
def Satisfies (ν : Valuation α) (p : Formula α) : Prop :=
  eval ν p = true

/-- Truth under every valuation. -/
def Valid (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true

/-- Truth under at least one valuation. -/
def Satisfiable (p : Formula α) : Prop :=
  ∃ ν : Valuation α, eval ν p = true

/-- Falsity under every valuation. -/
def Unsatisfiable (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = false

/-- Semantic entailment. -/
def Entails (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true → eval ν q = true

/-- Semantic equivalence. -/
def Equivalent (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = eval ν q

end Mathematics.Boolean.Formula
