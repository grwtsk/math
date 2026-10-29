import Mathlib.Data.Bool.Basic

/-!
# Propositional formula carrier

The `ideas.md` formula neighborhood has no matching elementary carrier in
Mathlib.  This is the free finite propositional syntax over an atom type.
Evaluation and semantic relations remain separate leaves.
-/

namespace Mathematics.Boolean

universe u

/-- A Boolean valuation assigns one truth value to every atom. -/
abbrev Valuation (α : Type u) := α → Bool

/-- Free finite propositional formulas over atoms of type `α`. -/
inductive Formula (α : Type u) : Type u where
  | var : α → Formula α
  | falsum : Formula α
  | truth : Formula α
  | neg : Formula α → Formula α
  | conj : Formula α → Formula α → Formula α
  | disj : Formula α → Formula α → Formula α
  | impl : Formula α → Formula α → Formula α
  | eqv : Formula α → Formula α → Formula α
  deriving Repr, DecidableEq

namespace Formula

variable {α : Type u}

/-- Embed one Boolean constant into propositional syntax. -/
def const : Bool → Formula α
  | false => .falsum
  | true => .truth

end Formula

end Mathematics.Boolean
