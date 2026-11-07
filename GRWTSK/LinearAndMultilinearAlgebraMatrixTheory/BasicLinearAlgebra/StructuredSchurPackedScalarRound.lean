/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Data.Int.Basic

/-!
# Packed signed quotients with a shared scalar and denominator

A lane is a fixed-width natural digit minus its signed bias. Subtracting
one packed bias gives the positional sum of the decoded signed lanes.
`checkPacked` compares one entire linear residual, while separate lane
magnitude and remainder checks constrain carries and nearest-even ties.

`checkMask` bounds all lane digits by a power of two with one bitwise
comparison. It is useful when many rounded generator corrections share
one pivot numerator and denominator. These definitions alone do not
identify the input with a source row or establish a Schur recurrence.
The soundness module returns the original nearest-even quotient under
explicit positivity, width, magnitude, range and tie hypotheses.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.PackedScalarRound

def unit (base : ℤ) : ℕ → ℤ
  | 0 => 0
  | n+1 => 1+base*unit base n

def digit (width raw : ℕ) (bias : ℤ) (i : ℕ) : ℤ :=
  Int.ofNat ((raw >>> (width*i)) % 2^width) - bias

def packed (width raw n : ℕ) (bias : ℤ) : ℤ :=
  Int.ofNat raw - bias*unit (Int.ofNat (2^width)) n

def checkPacked (width n rawC rawQ rawE : ℕ) (biasC biasQ biasE a d : ℤ) : Bool :=
  decide (a*packed width rawC n biasC - d*packed width rawQ n biasQ = packed width rawE n biasE)

def checkMagnitude (width n raw : ℕ) (bias : ℤ) (limit : ℕ) : Bool :=
  decide (∀ i : Fin n, (digit width raw bias i.val).natAbs ≤ limit)

def checkRemainder (width n rawQ rawE : ℕ) (biasQ biasE d : ℤ) : Bool :=
  decide (∀ i : Fin n,
    2*(digit width rawE biasE i.val).natAbs ≤ d.natAbs ∧
      (2*(digit width rawE biasE i.val).natAbs = d.natAbs →
        digit width rawQ biasQ i.val % 2 = 0))


def laneMask (low width : ℕ) : ℕ → ℕ
  | 0 => 0
  | n+1 => (2^low-1) + 2^width * laneMask low width n

def checkMask (low width n raw : ℕ) : Bool := decide (raw &&& laneMask low width n = raw)


end GRWTSK.Algebra.LinearAlgebra.PackedScalarRound
