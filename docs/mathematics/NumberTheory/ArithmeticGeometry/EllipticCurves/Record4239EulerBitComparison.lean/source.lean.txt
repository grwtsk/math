/-
Copyright (c) 2026 grwtsk contributors. MIT.
Original elliptic rank-32 curve and rational points: Noam Elkies,
Zev Klagsbrun, Samuel Li, ICARM record #4239 (2026-10-15).
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
No theorem identifies the Euler bit with a global descent character.
-/
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239LocalSquareClass

/-!
# Source equality for the finite Euler-criterion bit

The old Record4239FiniteCharacterMatrix.localBit uses the Legendre-style
Euler exponent and the *same* exceptional derivative rule as
Record4239LocalSquareClass.sourceLocalInteger.

This module supplies an exact finite bit comparison which is
definitionally checkable and consumed directly by the stored source
matrix. It deliberately does not claim the separate proposition
SourceBitsMatch: that assertion additionally identifies Mathlib's
quadraticChar, a multiplicative character, with the Euler exponent
on every selected residue unit.

The remaining arithmetic gap is the source-faithful global x-T descent
character and its normalized good-prime local specialization.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

/-- Euler's finite-field exponent bit evaluated on the actual
branch-corrected integer representative. -/
def sourceEulerBit (j i : Fin 32) : ZMod 2 :=
  let p := primeLabel j
  let a := sourceLocalInteger j i
  if (((a % (p : ℤ)).toNat) ^ ((p - 1) / 2)) % p = p - 1
  then 1 else 0

/-- Both computations select precisely the same integer representative
and apply precisely the same Euler exponent. This is a source-identity
lemma, not an assertion that an arbitrary integer-to-bit function is
multiplicative. -/
theorem sourceEulerBit_eq_localBit (j i : Fin 32) :
    sourceEulerBit j i = localBit j i := by
  rfl

/-- All 1024 source Euler bits agree with the point-row/character-column
finite certificate, assuming the already staged finite computation
localBit_eq_characterMatrix is successfully elaborated and audited. -/
theorem sourceEulerBit_eq_characterMatrix (j i : Fin 32) :
    sourceEulerBit j i = characterMatrix i j := by
  rw [sourceEulerBit_eq_localBit]
  exact localBit_eq_characterMatrix j i

/-- The finite source-matching predicate for Euler bits; distinguished
from SourceBitsMatch involving the *actual* quadratic character. -/
def EulerBitsMatch : Prop :=
  ∀ j i : Fin 32, sourceEulerBit j i = characterMatrix i j

theorem eulerBitsMatch : EulerBitsMatch := by
  intro j i
  exact sourceEulerBit_eq_characterMatrix j i

/-- An exact typed statement of what is still necessary to identify
the true finite quadratic character with its Euler-criterion bit.
No unproved hypothesis is silently inserted into a theorem. -/
def QuadraticEulerAgreement : Prop :=
  ∀ j i : Fin 32, sourceQuadraticBit j i = sourceEulerBit j i

/-- A conditional logical reduction from quadratic-character/Euler
agreement to the existing SourceBitsMatch target. This does not
assert that QuadraticEulerAgreement is inhabited. -/
theorem sourceBitsMatch_of_quadraticEulerAgreement
    (h : QuadraticEulerAgreement) : SourceBitsMatch := by
  intro j i
  exact (h j i).trans (sourceEulerBit_eq_characterMatrix j i)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
