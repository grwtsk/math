# Complete source: GRWTSK.Algebra.KTheory.BoundedKasparovCycle

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `903b2be5f79611c9398290781b2dd6f60304602a` · SHA-256 `59475a2b5a751a419a93d175aa379d0ab10a610cc2d233e308ecdfe8b41c5e0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.Normed.Operator.Compact.Basic

namespace GRWTSK.Algebra.KTheory.BoundedKasparovCycle

open scoped InnerProduct

universe u v

variable {A : Type u} [Semiring A]
variable {H : Type v}
variable [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]

/-- Failure of an operator to be self-adjoint. -/
noncomputable def adjointDefect (F : H →L[ℂ] H) : H →L[ℂ] H := F† - F

/-- Failure of an operator to square to the identity. -/
def squareDefect (F : H →L[ℂ] H) : H →L[ℂ] H :=
  F.comp F - ContinuousLinearMap.id ℂ H

/-- Commutator with one represented algebra element. -/
def commutator (π : A →+* (H →L[ℂ] H)) (F : H →L[ℂ] H) (a : A) :
    H →L[ℂ] H :=
  F.comp (π a) - (π a).comp F

/-- Bounded cycle with compact adjoint, square, and represented commutator defects.

The representation is a semiring homomorphism and parity is a tag. A C⋆-algebra,
star-preserving representation, and grading laws remain further obligations for analytic KK. -/
structure Cycle (A : Type u) [Semiring A]
    (H : Type v) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] where
  representation : A →+* (H →L[ℂ] H)
  operator : H →L[ℂ] H
  parity : Bool
  adjointDefectCompact : IsCompactOperator (adjointDefect operator)
  squareDefectCompact : IsCompactOperator (squareDefect operator)
  commutatorCompact : ∀ a, IsCompactOperator (commutator representation operator a)

/-- Strict cycle whose three analytic defects vanish exactly. -/
structure ExactCycle (A : Type u) [Semiring A]
    (H : Type v) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] where
  representation : A →+* (H →L[ℂ] H)
  operator : H →L[ℂ] H
  parity : Bool
  operator_selfAdjoint : operator† = operator
  operator_square : operator.comp operator = ContinuousLinearMap.id ℂ H
  commutes : ∀ a, operator.comp (representation a) = (representation a).comp operator

namespace ExactCycle

@[simp]
theorem adjointDefect_eq_zero (X : ExactCycle A H) :
    adjointDefect X.operator = 0 := by
  rw [adjointDefect, X.operator_selfAdjoint, sub_self]

@[simp]
theorem squareDefect_eq_zero (X : ExactCycle A H) :
    squareDefect X.operator = 0 := by
  rw [squareDefect, X.operator_square, sub_self]

@[simp]
theorem commutator_eq_zero (X : ExactCycle A H) (a : A) :
    commutator X.representation X.operator a = 0 := by
  rw [commutator, X.commutes a, sub_self]

/-- Zero defects are compact, so every strict cycle yields a compact-defect cycle. -/
def toCycle (X : ExactCycle A H) : Cycle A H where
  representation := X.representation
  operator := X.operator
  parity := X.parity
  adjointDefectCompact := by
    rw [X.adjointDefect_eq_zero]
    exact isCompactOperator_zero
  squareDefectCompact := by
    rw [X.squareDefect_eq_zero]
    exact isCompactOperator_zero
  commutatorCompact := by
    intro a
    rw [X.commutator_eq_zero a]
    exact isCompactOperator_zero

end ExactCycle

end GRWTSK.Algebra.KTheory.BoundedKasparovCycle
```
