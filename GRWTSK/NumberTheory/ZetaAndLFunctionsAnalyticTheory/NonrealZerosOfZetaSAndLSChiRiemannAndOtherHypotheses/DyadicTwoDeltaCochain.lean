/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicModTwoSharedShadow
import GRWTSK.CommutativeAlgebra.IntegralTwoDeltaFrobenius
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Real signed Möbius dyadic incidence on the integral 2-delta cochain

At each geometric stage 2^j, use EXACTLY the n=1,...,2^j
original integer Möbius coefficients. The finite incidence
matrix contains BOTH ordered source directions and the
original off-diagonal exclusion. It is *not* an arbitrary
user-supplied abstract adjacency matrix. It is not a
probability-normalized or absolute-value kernel.

The coefficient ring is the actually constructed p=2
torsion-free delta ring Z with Frobenius lift identity.
The repository's finiteCoboundary theorem now applies
to a concrete source-derived matrix with actual entries.
Reducing this matrix and the input cochain modulo two
is compatible with the finite coboundary; however this
reduction loses signs, so the upper signed integer
matrix and the reified carry data MUST be retained.

This is the COMPLETE FINITE incidence/coboundary mechanism
for the chosen source and cutoff. It is not the completed
crystalline prism (Z_2,(2)) or a construction of its
prismatic site, prismatic cohomology or any RH estimate.
-/

namespace GRWTSK.NumberTheory.Moebius.DyadicTwoDeltaCochain

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DyadicModTwoPairLift
open GRWTSK.NumberTheory.Moebius.DyadicModTwoSharedShadow
open GRWTSK.Algebra.FinitePrismaticSurfaceModel.DividedFrobeniusCochain
open GRWTSK.Algebra.FinitePrismaticSurfaceModel.IntegralTwoDeltaFrobenius

/-- The exact original dyadic index, not a rounded height. -/
abbrev DyadicIndex (j : ℕ) := Fin (2 ^ j)

/-- Ordered signed arithmetic incidence, omitting only the original
m=n diagonal. Every unsifted and repeated-prime integer is present. -/
def signedIncidence (j : ℕ) (m n : DyadicIndex j) : ℤ :=
  if m = n then 0 else
    signedMu (m.val + 1) * signedMu (n.val + 1)

/-- Incidence uses the unmodified ORIGINAL two-source coordinates
inside the actual shared-shadow reifier. -/
theorem incidence_eq_reified_original (j : ℕ) (m n : DyadicIndex j) :
    signedIncidence j m n =
      if m = n then 0 else
        (pairShadow.toLeft (mobiusPair (m.val + 1) (n.val + 1))).1 *
          (pairShadow.toLeft (mobiusPair (m.val + 1) (n.val + 1))).2 :=
  rfl

/-- The full signed incidence at p=2 has exactly the residue-plus-two-carry
decomposition, including the diagonal zero convention. -/
def digitIncidence (j : ℕ) (m n : DyadicIndex j) : ℤ :=
  if m = n then 0 else
    muDigit (m.val + 1) * muDigit (n.val + 1)

def carryIncidence (j : ℕ) (m n : DyadicIndex j) : ℤ :=
  if m = n then 0 else
    pairCarry (m.val + 1) (n.val + 1)

theorem signedIncidence_eq_digit_add_carry
    (j : ℕ) (m n : DyadicIndex j) :
    signedIncidence j m n =
      digitIncidence j m n + 2 * carryIncidence j m n := by
  by_cases h : m = n
  · simp [signedIncidence, digitIncidence, carryIncidence, h]
  · simp only [signedIncidence, digitIncidence, carryIncidence, if_neg h]
    exact signed_pair_roundtrip (m.val + 1) (n.val + 1)

/-- The integer Frobenius lift fixes the EXACT arithmetic coefficient;
no matrix-fixity supplier is assumed. -/
theorem signedIncidence_frobenius_fixed
    (j : ℕ) (m n : DyadicIndex j) :
    integerTwoDelta.frobeniusLift (signedIncidence j m n) =
      signedIncidence j m n :=
  integerTwoFrobenius_identity _

/-- Actual signed arithmetic finite coboundary, with full dyadic
source card 2^j. It is NOT an analytic integral or a zeta operator. -/
def signedCoboundary (j : ℕ) (x : DyadicIndex j → ℤ)
    (m : DyadicIndex j) : ℤ :=
  finiteCoboundary (signedIncidence j) x m

/-- This is a concrete finite Frobenius/cochain compatibility theorem
for the actual signed Möbius arithmetic matrix at every 2^j. -/
theorem signedCoboundary_frobenius
    (j : ℕ) (x : DyadicIndex j → ℤ) (m : DyadicIndex j) :
    integerTwoDelta.frobeniusLift (signedCoboundary j x m) =
      signedCoboundary j
        (fun n => integerTwoDelta.frobeniusLift (x n)) m :=
  integer_two_finiteCoboundary_commutes (signedIncidence j) x m

/-- The literal coefficient projection into F2 discards twice
the COMPLETE signed carry term. It is a ring reduction,
not an equivalence of signed arithmetic observations. -/
theorem signedIncidence_mod_two
    (j : ℕ) (m n : DyadicIndex j) :
    (signedIncidence j m n : ZMod 2) =
      (digitIncidence j m n : ZMod 2) := by
  rw [signedIncidence_eq_digit_add_carry]
  push_cast
  simp

/-- Mod-two reduction of the finite cochain commutes with the
actual finite incidence matrix and the original signed input. -/
theorem signedCoboundary_mod_two
    (j : ℕ) (x : DyadicIndex j → ℤ) (m : DyadicIndex j) :
    (signedCoboundary j x m : ZMod 2) =
      finiteCoboundary
        (fun k i => (signedIncidence j k i : ZMod 2))
        (fun i => (x i : ZMod 2)) m := by
  simp [signedCoboundary, finiteCoboundary]

/-- Full signed real coefficient return at the same index, without
zeroing a prime-power sector or reversing one pair orientation. -/
theorem signedIncidence_real_source (j : ℕ) (m n : DyadicIndex j) :
    (signedIncidence j m n : ℝ) =
      if m = n then 0 else
        moebiusReal (m.val + 1) * moebiusReal (n.val + 1) := by
  by_cases h : m = n
  · simp [signedIncidence, h]
  · simp only [signedIncidence, if_neg h]
    rw [source_mu_cast, source_mu_cast]
    push_cast
    rfl


/-- Exact integral base change of the actual signed Möbius
matrix to ANY commutative coefficient ring, including a p-adic
ring if a genuine such ring is independently constructed.
No completion or compatibility of the real response weights
is inferred from this scalar extension. -/
theorem signedCoboundary_baseChange
    {A : Type*} [CommRing A] (j : ℕ)
    (x : DyadicIndex j → ℤ) (m : DyadicIndex j) :
    ((signedCoboundary j x m : ℤ) : A) =
      finiteCoboundary
        (fun k i => (signedIncidence j k i : A))
        (fun i => (x i : A)) m := by
  simp [signedCoboundary, finiteCoboundary]

/-- With an actual p=2 torsion-free δ-ring supplier on A, the
INTEGER incidence coefficients are Frobenius-fixed by the
canonical integer cast. The complete finite cochain therefore
commutes with its *untwisted* Frobenius lift over A.
No δ structure or prism is invented by this theorem. -/
theorem signedCoboundary_frobenius_baseChange
    {A : Type*} [CommRing A]
    (D : TorsionFreeDeltaStructure 2 A)
    (j : ℕ) (x : DyadicIndex j → A) (m : DyadicIndex j) :
    D.frobeniusLift
      (finiteCoboundary
        (fun k i => (signedIncidence j k i : A)) x m) =
      finiteCoboundary
        (fun k i => (signedIncidence j k i : A))
        (fun i => D.frobeniusLift (x i)) m := by
  apply D.finiteCoboundary_commutes_of_coefficients_fixed
  intro k i
  simp

end GRWTSK.NumberTheory.Moebius.DyadicTwoDeltaCochain
