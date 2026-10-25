# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Semantics.Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59d74a499cac7e36a8cbd5e59b297229126971f4` · SHA-256 `3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.SetTheory.Ordinal.Exponential
import Mathlib.SetTheory.Ordinal.Veblen
import Mathematics.StratifiedBoundary.OrdinalTally.Syntax

/-!
# Semantics of executable ordinal tallies

Executable values are interpreted directly.  The retained `LimitSemantics`
parameter is a compatibility name for registries used by neighboring modules;
it is intentionally ignored by executable evaluation.  A limit target enters
the architecture only through `RegisteredCountableLimit`.
-/

namespace Mathematics.StratifiedBoundary.OrdinalTally

abbrev LimitSemantics :=
  FundamentalSequenceId → Ordinal

def evalExecutable :
    ExecutableOrdinalTally → Ordinal
  | .zero => 0
  | .block exponent coefficient _ remainder =>
      Ordinal.omega ^ evalExecutable exponent *
          (coefficient : Ordinal) +
        evalExecutable remainder

def evalRaw :
    RawCode → Ordinal
  | .zero => 0
  | .tall count => count
  | .succ value => evalRaw value + 1
  | .block exponent coefficient remainder =>
      Ordinal.omega ^ evalRaw exponent *
          (coefficient : Ordinal) +
        evalRaw remainder

def eval
    (_limits : LimitSemantics) :
    RawCode → Ordinal :=
  evalRaw

def leadingScale
    (_limits : LimitSemantics)
    (exponent : RawCode) : Ordinal :=
  Ordinal.omega ^ evalRaw exponent

def RemainderBelow
    (_limits : LimitSemantics)
    (exponent remainder : RawCode) : Prop :=
  evalRaw remainder <
    Ordinal.omega ^ evalRaw exponent

def ExecutableRemainderBelow
    (exponent remainder :
      ExecutableOrdinalTally) : Prop :=
  evalExecutable remainder <
    Ordinal.omega ^ evalExecutable exponent

def SemanticallyEqual
    (_limits : LimitSemantics)
    (left right : RawCode) : Prop :=
  evalRaw left = evalRaw right

structure ExecutableOrdinalDomainCertificate : Prop where
  allBelowEpsilonZero :
    ∀ code : ExecutableOrdinalTally,
      evalExecutable code <
        Ordinal.epsilon 0

@[simp] theorem eval_zero
    (limits : LimitSemantics) :
    eval limits .zero = 0 :=
  rfl

@[simp] theorem eval_tall
    (limits : LimitSemantics)
    (count : Nat) :
    eval limits (.tall count) = count :=
  rfl

@[simp] theorem eval_succ
    (limits : LimitSemantics)
    (value : RawCode) :
    eval limits (.succ value) =
      eval limits value + 1 :=
  rfl

@[simp] theorem eval_block
    (limits : LimitSemantics)
    (exponent remainder : RawCode)
    (coefficient : Nat) :
    eval limits
        (.block exponent coefficient remainder) =
      Ordinal.omega ^ eval limits exponent *
          (coefficient : Ordinal) +
        eval limits remainder :=
  rfl

@[simp] theorem evalExecutable_zero :
    evalExecutable .zero = 0 :=
  rfl

@[simp] theorem evalExecutable_block
    (exponent remainder : ExecutableOrdinalTally)
    (coefficient : Nat)
    (positive : 0 < coefficient) :
    evalExecutable
        (.block exponent coefficient positive remainder) =
      Ordinal.omega ^ evalExecutable exponent *
          (coefficient : Ordinal) +
        evalExecutable remainder :=
  rfl

theorem eval_reify
    (limits : LimitSemantics)
    (code : ExecutableOrdinalTally) :
    eval limits code.reify =
      evalExecutable code := by
  induction code with
  | zero => rfl
  | block exponent coefficient positive remainder
      exponentIH remainderIH =>
      simp [ExecutableOrdinalTally.reify, eval,
        evalRaw, evalExecutable, exponentIH, remainderIH]

theorem eval_appendTall
    (limits : LimitSemantics)
    (left right : Nat) :
    eval limits (RawCode.appendTall left right) =
      (left + right : Nat) :=
  rfl

end Mathematics.StratifiedBoundary.OrdinalTally
```
