/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
AI-assisted drafting. SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTIC_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimePhaseDiffusion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralWindow
import GRWTSK.Combinatorics.GraphTheory.TypedSpinDiffusionLoop
import Mathlib

/-!
# Weil prime-phase diffusion: positive compensated spin form

## Actual arithmetic source and the two-sheet graph comparison

This source consumes the EXISTING `OddSineForm.primeEnergy`,
`LowSchur.primeMass`, `LowSchur.activePrimePowers` and `primeWeight`.
The full active von Mangoldt inventory, the real physical Lebesgue mass,
the strict support endpoint and the original factor of two are unchanged.
The graph counterpart in `TypedSpinDiffusionLoop` proves gauge-invariant
square positivity on typed Quiver edges, and mass/positivity invariance for
finite source-supported, column-stochastic two-sheet processing steps.

The analytic identity, for real square-integrable f and each finite shift r,

  integral_R (f(t)-s*f(t+r))^2 dt
       = 2*integral_R f(t)^2 dt - 2*s*integral_R f(t)f(t+r) dt,

holds for s=+1 or -1 by expanding the square, translating the second
square and applying Cauchy--Schwarz for integrability. Its full finite
prime-power sum is a NONNEGATIVE spin Dirichlet form. For zeta (s=+1):

  Spin_zeta(T,f)=primeMass(T)*||f||_2^2-primeEnergy(T,f) >= 0.

This last inequality is proved in Lean candidate form directly from the
original `OddSineForm.abs_primeEnergy_le`, without requiring the square
integral to be transported through an unproved formal source map.

## The operator and the actual processing loop (written analysis)

At fixed T the active prime-power set is FINITE. Let U_r be the unitary
translation `U_r f(t)=f(t+r)` on physical L²(R). For real phase signs
s_q in {-1,1} and nonnegative original weights w_q define the bounded operator

  L_spin,T = sum_q w_q (2*I - s_q*(U_logq + U_(-logq))).

Each bracket is self-adjoint and has the exact form

  <f, (2*I-s_q*(U_r+U_(-r))) f> = ||f-s_q*U_r f||² >= 0.

Hence L_spin,T is bounded, self-adjoint and positive semidefinite; it has
operator norm at most 4*sum_q w_q. On the actual L² domain its heat
processing loop F(tau)=exp(-tau*L_spin,T)F(0) satisfies

  d/dtau ||F(tau)||² = -2*<F,L_spin,T F> <= 0,
  d/dtau <F(tau),L_spin,T F(tau)> = -2*||L_spin,T F(tau)||² <= 0.

This proves nonnegative *form energy* and monotone dissipation. It does
NOT imply the signed single-sheet heat is pointwise positivity-preserving:
that property belongs to the nonnegative two-sheet lift when a correct
Markov generator is constructed. For an arbitrary character with complex
phases a distinct Hermitian conjugation convention is needed.

The operator/heat assertions above are a complete standard bounded-
operator argument, but are only WRITTEN here. No Mathlib realization of
`U_r`, bounded self-adjoint L or its exponential is created by this file;
those are explicit future formalization obligations.

For a real signed character, an active prime power has coefficient
-1, +1, or 0. The ZERO case must not be replaced by a phantom positive
edge. The `SignedPrimePhase` carrier retains `Option Bool`: `none` is a
zero coefficient; `some false` is +1; `some true` is -1. The finite
nonnegative square ledger and its compensation identity are supplied
below, with the per-shift analytic integration kept as a typed comparison
premise pending Lean elaboration.

## What DOES NOT follow

The original zeta odd Weil source is
  Q_zeta,T(f) = gammaConstant(1,0)*mass(f)
              + oddArchimedeanEnergy(f) - primeEnergy(T,f)
              - 2*(integral f(t)*sinh(t/2) dt)^2.
Replacing the prime term gives
  Q_zeta,T(f) = Spin_zeta(T,f) + oddArchimedeanEnergy(f)
              + (gammaConstant(1,0)-primeMass(T))*mass(f)
              - 2*poleMoment(f)^2.
The spin contribution is nonnegative; the remaining scalar and pole
terms have NOT been bounded from below sufficiently. A positive spin
form is NOT a proof of `OddLiteralCofinal.StageLower`, RH or Dirichlet
GRH. The complex non-real character sector requires its original
conjugate-character and gamma-parity data, not the real sign carrier.

Proof comparison: the graph square argument is pointwise sum-of-squares;
the source zeta proof is a DIFFERENT derivation from the actual existing
absolute-correlation estimate, so it is not an independent proof of RH.
The signed ±1/0 ledger is a finite algebraic specialization, not a
claim that every Dirichlet character is real. Hostile boundary: taking
`M=2` and `P=1` makes `M-P>=0` although `-P<0`.

Primary arithmetic normalization: Connes--Consani--Moscovici, *Zeta
Spectral Triples*, arXiv:2511.22755v1, formulas (3.19)--(3.20).
Source inspection revision: grwtsk/math@9404b5698d0da5ee97d289a830f76ab75e3ef84f.
No new source theorem or reference semigroup is assumed. The full
analytical comparison and universal half-gap remain open. All Lean
verification statuses NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SpinPhaseReturn

open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineForm
open GRWTSK.NumberTheory.WeilQuadraticForm.OddHighComplement
open GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralWindow
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk

/-- The original physical whole-line mass, not a theta-weighted substitute. -/
def physicalMass (f : ℝ → ℝ) : ℝ :=
  ∫ t : ℝ, (f t) ^ 2

/-- Retain the exact translation orientation of the original prime source. -/
def shiftCorrelation (f : ℝ → ℝ) (r : ℝ) : ℝ :=
  ∫ t : ℝ, f t * f (t + r)

/-- Positive zeta spin compensation on the ORIGINAL finite prime source. -/
def zetaSpinForm (T : ℝ) (f : ℝ → ℝ) : ℝ :=
  primeMass T * physicalMass f - primeEnergy T f

/-- This is unconditional on the actual finite prime inventory: the original
complete correlation norm bound proves the compensated positive form. -/
theorem zetaSpinForm_nonneg (T : ℝ) (f : ℝ → ℝ)
    (hf : Integrable (fun t : ℝ => (f t) ^ 2)) :
    0 ≤ zetaSpinForm T f := by
  have h := abs_primeEnergy_le T f hf
  have hupper : primeEnergy T f ≤ primeMass T * physicalMass f :=
    (le_abs_self _).trans h
  unfold zetaSpinForm
  exact sub_nonneg.mpr hupper

/-- The original negative prime readout is not itself positive. The exact
mass charge MUST be returned before using the spin positivity lemma. -/
theorem neg_primeEnergy_eq_spin_sub_mass (T : ℝ) (f : ℝ → ℝ) :
    -primeEnergy T f = zetaSpinForm T f - primeMass T * physicalMass f := by
  unfold zetaSpinForm
  ring

/-- The ACTUAL pole-inclusive odd Weil form (at beta=0) decomposes into
spin energy, original gamma jump energy, scalar mass and the negative
pole. No part of the pole is converted into a positive edge. -/
theorem zetaWeil_eq_spin_remainder (T : ℝ) (f : ℝ → ℝ) :
    shiftedOddWeilEnergy T 0 f =
      zetaSpinForm T f + oddArchimedeanEnergy f +
        (gammaConstant 1 0 - primeMass T) * physicalMass f -
        2 * (∫ t : ℝ, f t * Real.sinh (t / 2)) ^ 2 := by
  unfold shiftedOddWeilEnergy shiftedOddCoreEnergy zetaSpinForm physicalMass
  ring

/-- Exact remaining budget that would suffice for nonnegativity of the
full original physical odd Weil form. It is a premise, not a theorem here. -/
def SpinRemainderLower (T : ℝ) (f : ℝ → ℝ) : Prop :=
  0 ≤ oddArchimedeanEnergy f +
      (gammaConstant 1 0 - primeMass T) * physicalMass f -
      2 * (∫ t : ℝ, f t * Real.sinh (t / 2)) ^ 2

/-- Positivity of the spin FORM plus the separately proved full remainder
would give the original source sign. The second premise is still open. -/
theorem zetaWeil_nonneg_of_spin_remainder (T : ℝ) (f : ℝ → ℝ)
    (hf : Integrable (fun t : ℝ => (f t) ^ 2))
    (hremain : SpinRemainderLower T f) :
    0 ≤ shiftedOddWeilEnergy T 0 f := by
  rw [zetaWeil_eq_spin_remainder]
  have hs := zetaSpinForm_nonneg T f hf
  unfold SpinRemainderLower at hremain
  linarith

/-! ## Real-character spin with explicitly typed zero coefficients. -/

/-- `none` retains a vanishing character value at a ramified prime;
`some false` is +1, and `some true` is -1. These are NOT general
complex phases. -/
abbrev SignedPrimePhase := ℕ → Option Bool

def signedCoefficient (phase : SignedPrimePhase) (q : ℕ) : ℝ :=
  match phase q with
  | none => 0
  | some b => bitSign ℝ b

/-- |character| is one on unramified real-phase primes and zero otherwise. -/
def magnitudeCoefficient (phase : SignedPrimePhase) (q : ℕ) : ℝ :=
  match phase q with
  | none => 0
  | some _ => 1

theorem signedCoefficient_abs (phase : SignedPrimePhase) (q : ℕ) :
    |signedCoefficient phase q| = magnitudeCoefficient phase q := by
  cases h : phase q with
  | none => simp [signedCoefficient, magnitudeCoefficient, h]
  | some b =>
      cases b <;> norm_num [signedCoefficient, magnitudeCoefficient, h, bitSign]

/-- Exactly the phase-retained active sum of squared-difference deficits.
All q are enumerated, but a missing coefficient adds ZERO, not a fake
edge. -/
def signedSpinForm (T : ℝ) (phase : SignedPrimePhase)
    (f : ℝ → ℝ) : ℝ :=
  2 * ∑ q ∈ activePrimePowers T,
    primeWeight q *
      (magnitudeCoefficient phase q * physicalMass f -
        signedCoefficient phase q * shiftCorrelation f (Real.log q))

/-- Every compensated real character phase term is NONNEGATIVE,
including all prime powers and zero-valued character locations. -/
theorem signedSpinForm_nonneg (T : ℝ) (phase : SignedPrimePhase)
    (f : ℝ → ℝ)
    (hf : Integrable (fun t : ℝ => (f t) ^ 2)) :
    0 ≤ signedSpinForm T phase f := by
  unfold signedSpinForm
  apply mul_nonneg (by norm_num)
  apply Finset.sum_nonneg
  intro q hq
  have hcorr : |shiftCorrelation f (Real.log q)| ≤ physicalMass f :=
    abs_integral_mul_translate_le_sq f (Real.log q) hf
  have hbound :
      signedCoefficient phase q * shiftCorrelation f (Real.log q) ≤
        magnitudeCoefficient phase q * physicalMass f := by
    calc
      _ ≤ |signedCoefficient phase q * shiftCorrelation f (Real.log q)| :=
        le_abs_self _
      _ = |signedCoefficient phase q| * |shiftCorrelation f (Real.log q)| :=
        abs_mul _ _
      _ ≤ magnitudeCoefficient phase q * physicalMass f := by
        rw [signedCoefficient_abs]
        exact mul_le_mul_of_nonneg_left hcorr (by
          cases h : phase q with
          | none => simp [magnitudeCoefficient, h]
          | some _ => simp [magnitudeCoefficient, h])
  exact mul_nonneg (primeWeight_nonneg q) (sub_nonneg.mpr hbound)

/-- The untwisted all-present phase specializes EXACTLY to the source's
`primeMass * mass - primeEnergy` without a normalization adjustment. -/
theorem all_positive_phase_eq_zeta_spin (T : ℝ) (f : ℝ → ℝ) :
    signedSpinForm T (fun _ => some false) f = zetaSpinForm T f := by
  unfold signedSpinForm zetaSpinForm primeMass primeEnergy
  simp only [signedCoefficient, magnitudeCoefficient, bitSign_false,
    one_mul, mul_one]
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, Finset.sum_mul]
  ring

/-- The actual physical squared-difference integrand; this definition
tracks its original shift, not a sampled or periodized sine approximation. -/
def signedSquare (f : ℝ → ℝ) (r : ℝ) (sign : ℝ) : ℝ :=
  ∫ t : ℝ, (f t - sign * f (t + r)) ^ 2

/-- The signed square source comparison is a precise remaining Lean
integration obligation (valid for L² inputs and signs ±1). -/
def SignedSquareComparison (T : ℝ) (phase : SignedPrimePhase)
    (f : ℝ → ℝ) : Prop :=
  ∀ q ∈ activePrimePowers T,
    match phase q with
    | none => True
    | some b =>
        signedSquare f (Real.log q) (bitSign ℝ b) =
          2 * physicalMass f -
            2 * bitSign ℝ b * shiftCorrelation f (Real.log q)

/-- The literal sum of nonnegative spin differences; no zero-valued prime
is silently assigned a phase. -/
def signedSquareLedger (T : ℝ) (phase : SignedPrimePhase)
    (f : ℝ → ℝ) : ℝ :=
  ∑ q ∈ activePrimePowers T,
    match phase q with
    | none => 0
    | some b => primeWeight q * signedSquare f (Real.log q) (bitSign ℝ b)

theorem signedSquareLedger_nonneg (T : ℝ) (phase : SignedPrimePhase)
    (f : ℝ → ℝ) : 0 ≤ signedSquareLedger T phase f := by
  unfold signedSquareLedger
  apply Finset.sum_nonneg
  intro q hq
  cases h : phase q with
  | none => simp [h]
  | some b =>
      change 0 ≤ primeWeight q * signedSquare f (Real.log q) (bitSign ℝ b)
      exact mul_nonneg (primeWeight_nonneg q)
        (integral_nonneg (fun t : ℝ => sq_nonneg _))

/-- The source-to-squares comparison is an AND-premise, not inferred
from a checksum or from graph adjacency. Once discharged, the actual
weighted positive ledger equals the compensated signed prime source. -/
theorem signedSquareLedger_eq_signedSpinForm (T : ℝ)
    (phase : SignedPrimePhase) (f : ℝ → ℝ)
    (hcompare : SignedSquareComparison T phase f) :
    signedSquareLedger T phase f = signedSpinForm T phase f := by
  unfold signedSquareLedger signedSpinForm
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro q hq
  cases h : phase q with
  | none => simp [signedCoefficient, magnitudeCoefficient, h]
  | some b =>
      have hqcmp := hcompare q hq
      simp only [h] at hqcmp
      change primeWeight q * signedSquare f (Real.log q) (bitSign ℝ b) =
        2 * (primeWeight q *
          (physicalMass f - bitSign ℝ b * shiftCorrelation f (Real.log q)))
      rw [hqcmp]
      ring

/-- A direct finite hostile test: positive compensated form DOES NOT
establish nonnegativity of the uncorrected negative prime response. -/
theorem positive_compensation_not_negative_response :
    ¬ (∀ (mass response : ℝ), 0 ≤ mass - response → 0 ≤ -response) := by
  intro h
  have htest := h 2 1 (by norm_num)
  norm_num at htest

end GRWTSK.NumberTheory.WeilQuadraticForm.SpinPhaseReturn
