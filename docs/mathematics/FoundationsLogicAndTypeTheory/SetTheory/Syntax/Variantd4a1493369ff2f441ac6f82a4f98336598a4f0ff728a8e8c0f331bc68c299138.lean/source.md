# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Syntax.Variantd4a1493369ff2f441ac6f82a4f98336598a4f0ff728a8e8c0f331bc68c299138

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8d4f164e70e04930e8829f22b3550029739a67f` · SHA-256 `d4a1493369ff2f441ac6f82a4f98336598a4f0ff728a8e8c0f331bc68c299138`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
