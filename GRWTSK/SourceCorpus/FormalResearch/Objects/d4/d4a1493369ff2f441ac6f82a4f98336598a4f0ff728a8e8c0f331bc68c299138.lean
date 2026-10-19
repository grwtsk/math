/-!
# Executable ordinal-tally syntax

`RawCode` is proposal notation: `tall` and `succ` are conveniences that must
be normalized before persistence.  `ExecutableOrdinalTally` is the canonical
runtime grammar.  It contains only zero and positive Cantor blocks.

Countable limits are deliberately absent from both grammars.  They are
registered as separate certificate-bearing objects.
-/

namespace Mathematics.StratifiedBoundary.OrdinalTally

abbrev FundamentalSequenceId := String

inductive RawCode
  | zero
  | tall (count : Nat)
  | succ (value : RawCode)
  | block
      (exponent : RawCode)
      (coefficient : Nat)
      (remainder : RawCode)
  deriving DecidableEq, Repr

inductive ExecutableOrdinalTally
  | zero
  | block
      (exponent : ExecutableOrdinalTally)
      (coefficient : Nat)
      (coefficientPositive : 0 < coefficient)
      (remainder : ExecutableOrdinalTally)

namespace RawCode

def empty : RawCode :=
  .zero

def appendTall
    (left right : Nat) : RawCode :=
  .tall (left + right)

def derivedSuccessor
    (value : RawCode) : RawCode :=
  .succ value

def constructorName :
    RawCode → String
  | .zero => "zero"
  | .tall _ => "derived-tall"
  | .succ _ => "derived-successor"
  | .block _ _ _ => "block"

end RawCode

namespace ExecutableOrdinalTally

def tall : Nat → ExecutableOrdinalTally
  | 0 => .zero
  | count + 1 =>
      .block .zero (count + 1)
        (Nat.succ_pos count) .zero

def reify :
    ExecutableOrdinalTally → RawCode
  | .zero => .zero
  | .block exponent coefficient _ remainder =>
      .block (reify exponent) coefficient
        (reify remainder)

def constructorName :
    ExecutableOrdinalTally → String
  | .zero => "zero"
  | .block _ _ _ _ => "block"

end ExecutableOrdinalTally

@[simp] theorem RawCode.appendTall_eq
    (left right : Nat) :
    RawCode.appendTall left right =
      .tall (left + right) :=
  rfl

@[simp] theorem ExecutableOrdinalTally.reify_tall
    (count : Nat) :
    ExecutableOrdinalTally.reify
        (ExecutableOrdinalTally.tall count) =
      if count = 0 then .zero else .block .zero count .zero := by
  cases count <;> simp [ExecutableOrdinalTally.tall,
    ExecutableOrdinalTally.reify]

end Mathematics.StratifiedBoundary.OrdinalTally
