/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicModTwoPairLift
import GRWTSK.GeneralAlgebraicSystems.AlgebraicStructures.SharedShadowPullback
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Actual signed Möbius pairs reified over their two mod-two shadows

The upper structures really ARE distinct mathematical types:

  original pair: Z × Z,
  coded pair: ((ZMod 2 × Z) × (ZMod 2 × Z)).

Both project additively to a common (ZMod 2)². Their
matched lower-shadow pullback is the existing SharedShadow,
not a quotient and not a claim that the two upper groups are
isomorphic. The nonlinear Euclidean byte/digit-and-carry map
does not pretend to be an additive homomorphism.

The ACTUAL signed Möbius source yields one explicit pair in
this matched group, at EVERY original ordered source index,
with exact independent reconstruction from the coded side.
All integer sign carries survive. The full reified pair record
also uses the existing unconditional decode_encode theorem.

Reduction mod two identifies +1 and -1; the signed carry
restores their distinction. No path, prism, pointwise
cancellation or RH bound is manufactured.
-/

namespace GRWTSK.NumberTheory.Moebius.DyadicModTwoSharedShadow

open GRWTSK.Algebra.SharedShadowPullback
open GRWTSK.NumberTheory.Moebius.DyadicModTwoPairLift

abbrev OriginalPair := ℤ × ℤ
abbrev CodedOne := ZMod 2 × ℤ
abbrev CodedPair := CodedOne × CodedOne
abbrev PairShadow := ZMod 2 × ZMod 2

/-- Both original integers are projected to their genuine additive
mod-two shadow (not their Euclidean signed carries). -/
def originalParity : OriginalPair →+ PairShadow where
  toFun x := ((x.1 : ZMod 2), (x.2 : ZMod 2))
  map_zero' := by ext <;> simp
  map_add' := by intro x y; ext <;> simp

/-- The coded upper group exposes the two stored parity labels.
Its additional integer carries are NOT mapped into the shadow. -/
def codedParity : CodedPair →+ PairShadow where
  toFun x := (x.1.1, x.2.1)
  map_zero' := by rfl
  map_add' := by intro x y; rfl

/-- Actual shared shadow: additive equality is imposed only DOWNSTAIRS.
The two distinct upper groups remain independently readable. -/
def pairShadow : SharedShadow OriginalPair CodedPair PairShadow PairShadow where
  left := originalParity
  right := codedParity
  shadowEquiv := AddEquiv.refl PairShadow

/-- One exact mod-two digit PLUS its signed integer vertical carry. -/
def codeOne (z : ℤ) : CodedOne := ((z : ZMod 2), carry z)

/-- Nonlinear decoding is correct on the image of the exact code. -/
def decodeOne (code : CodedOne) : ℤ :=
  (code.1.val : ℤ) + 2 * code.2

theorem decodeOne_codeOne (z : ℤ) : decodeOne (codeOne z) = z := by
  calc
    decodeOne (codeOne z) = digit z + 2 * carry z := by
      simp [decodeOne, codeOne, digit, carry, ZMod.val_intCast]
    _ = z := (signed_roundtrip z).symm

/-- Complete pair reification from any two integer source values.
The matching premise is proved by the actual coded digit. -/
def codePair (a b : ℤ) : pairShadow.Paired :=
  pairShadow.pair (a, b) (codeOne a, codeOne b) (by rfl)

/-- The two original Möbius signs are still the original coefficients. -/
def mobiusPair (m n : ℕ) : pairShadow.Paired :=
  codePair (signedMu m) (signedMu n)

theorem mobiusPair_originals (m n : ℕ) :
    pairShadow.toLeft (mobiusPair m n) = (signedMu m, signedMu n) :=
  rfl

theorem mobiusPair_shadow (m n : ℕ) :
    pairShadow.shadow (mobiusPair m n) =
      ((signedMu m : ZMod 2), (signedMu n : ZMod 2)) :=
  rfl

/-- The coded side independently reconstructs BOTH original signed
coefficients without consulting the stored original coordinates. -/
def decodeCoded (code : CodedPair) : OriginalPair :=
  (decodeOne code.1, decodeOne code.2)

theorem coded_pair_roundtrip (a b : ℤ) :
    decodeCoded (pairShadow.toRight (codePair a b)) = (a, b) := by
  simp [decodeCoded, codePair, codeOne, pairShadow,
    SharedShadow.toRight, decodeOne_codeOne]

theorem mobius_coded_pair_roundtrip (m n : ℕ) :
    decodeCoded (pairShadow.toRight (mobiusPair m n)) =
      (signedMu m, signedMu n) :=
  coded_pair_roundtrip _ _

/-- The existing proof-bearing shared-shadow reifier retains the
complete actual source and its lower shadow. -/
theorem original_and_coded_record_roundtrip (m n : ℕ) :
    pairShadow.decode (pairShadow.encode (mobiusPair m n)) =
      mobiusPair m n :=
  pairShadow.decode_encode _

/-- Distinct signed values have an identical parity shadow. -/
def positivePair : pairShadow.Paired := codePair 1 0
def negativePair : pairShadow.Paired := codePair (-1) 0

theorem positive_negative_shadow_collision :
    pairShadow.shadow positivePair = pairShadow.shadow negativePair := by
  norm_num [positivePair, negativePair, codePair, pairShadow,
    SharedShadow.shadow, codedParity]

theorem positive_negative_source_distinct :
    positivePair ≠ negativePair := by
  intro h
  have hs := congrArg (fun x : pairShadow.Paired =>
    (pairShadow.toLeft x).1) h
  norm_num [positivePair, negativePair, codePair, pairShadow,
    SharedShadow.toLeft] at hs

theorem shadow_only_cannot_recover_signs :
    ¬ ∃ decode : PairShadow → pairShadow.Paired,
      ∀ x : pairShadow.Paired,
        decode (pairShadow.shadow x) = x :=
  pairShadow.no_shadow_only_decoder_of_collision
    positivePair negativePair
    positive_negative_shadow_collision positive_negative_source_distinct

end GRWTSK.NumberTheory.Moebius.DyadicModTwoSharedShadow
