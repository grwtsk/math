/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalPowerEvaluation
import GRWTSK.Analysis.Complex.RationalComplexQuotient
import GRWTSK.NumberTheory.Zeta.Riemann.FiniteNewtonCenter

set_option autoImplicit false

/-!
# Raw rational joint evaluation of zeta and its first derivative

The exact center and prefix length are fixed outside the plan. All integer
bases, the common exponent, terminal coefficients, complete tails and final
rounding are recomputed. A claimed output contains no trusted analytic facts.
These computational definitions use only finite rational/integer operations.
No byte parser, resource bound or actual zero packet is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.RationalZetaCenterEvaluation

open scoped BigOperators
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic

/-- Precision data only. Prefix inputs have exactly the declared finite size. -/
structure Plan (N : ℕ) where
  «prefix» : Fin N → GRWTSK.Analysis.Complex.RationalPowerEvaluation.Schedule
  terminal : GRWTSK.Analysis.Complex.RationalPowerEvaluation.Schedule
  cauchyRadius : ℚ
  valueBits : ℕ
  slopeBits : ℕ

/-- Both components and BOTH complete error budgets are checked. -/
structure CenterState where
  value : State
  slope : State
  deriving DecidableEq, Repr

def sourceExponent (c : QComplex) : QComplex := QComplex.smul (-1) c

def cutoffQ (N : ℕ) : ℚ := (N : ℚ) + 1

def sumQ {N : ℕ} (f : Fin N → QComplex) : QComplex :=
  ⟨∑ i, (f i).re, ∑ i, (f i).im⟩

/-- Exact rational form of L/(c-1)+1/2+c/(12L), with L=N+1. -/
def factorQ (N : ℕ) (c : QComplex) : QComplex :=
  QComplex.add
    (QComplex.add (QComplex.div (QComplex.smul (cutoffQ N) QComplex.one)
      (QComplex.sub c QComplex.one)) (QComplex.smul (1 / 2) QComplex.one))
    (QComplex.smul (1 / (12 * cutoffQ N)) c)

/-- Includes the minus sign in the derivative of the pole coefficient. -/
def factorSlopeQ (N : ℕ) (c : QComplex) : QComplex :=
  QComplex.add (QComplex.div (QComplex.smul (-cutoffQ N) QComplex.one)
    (QComplex.pow (QComplex.sub c QComplex.one) 2))
    (QComplex.smul (1 / (12 * cutoffQ N)) QComplex.one)

def powerLogValue (q : ℚ) (c : QComplex)
    (p : GRWTSK.Analysis.Complex.RationalPowerEvaluation.Schedule) : QComplex :=
  QComplex.smul (-GRWTSK.Analysis.Complex.RationalPowerEvaluation.logCenter q p)
    (GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute q (sourceExponent c) p).value

def powerLogError (q : ℚ) (c : QComplex)
    (p : GRWTSK.Analysis.Complex.RationalPowerEvaluation.Schedule) : ℚ :=
  let out := GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute q (sourceExponent c) p
  let l := GRWTSK.Analysis.Complex.RationalPowerEvaluation.logCenter q p
  let e := GRWTSK.Analysis.Complex.RationalPowerEvaluation.logError q p
  (|l| + e) * out.error + QComplex.rect out.value * e

def finiteValueQ (N : ℕ) (c : QComplex) (p : Plan N) : QComplex :=
  QComplex.add
    (sumQ (fun i => (GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute
      ((i.1 : ℚ) + 1) (sourceExponent c) (p.«prefix» i)).value))
    (QComplex.mul (factorQ N c) (GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute
      (cutoffQ N) (sourceExponent c) p.terminal).value)

def finiteSlopeQ (N : ℕ) (c : QComplex) (p : Plan N) : QComplex :=
  QComplex.add (sumQ (fun i => powerLogValue ((i.1 : ℚ) + 1) c (p.«prefix» i)))
    (QComplex.add
      (QComplex.mul (factorSlopeQ N c) (GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute
        (cutoffQ N) (sourceExponent c) p.terminal).value)
      (QComplex.mul (factorQ N c) (powerLogValue (cutoffQ N) c p.terminal)))

def finiteValueErrorQ (N : ℕ) (c : QComplex) (p : Plan N) : ℚ :=
  (∑ i, (GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute
    ((i.1 : ℚ) + 1) (sourceExponent c) (p.«prefix» i)).error) +
  QComplex.rect (factorQ N c) * (GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute
    (cutoffQ N) (sourceExponent c) p.terminal).error

def finiteSlopeErrorQ (N : ℕ) (c : QComplex) (p : Plan N) : ℚ :=
  (∑ i, powerLogError ((i.1 : ℚ) + 1) c (p.«prefix» i)) +
    (QComplex.rect (factorSlopeQ N c) *
        (GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute
          (cutoffQ N) (sourceExponent c) p.terminal).error +
      QComplex.rect (factorQ N c) * powerLogError (cutoffQ N) c p.terminal)

/-- Complete analytic tails are charged before the two separate output roundings. -/
def compute (N : ℕ) (c : QComplex) (p : Plan N) : CenterState :=
  ⟨initialState p.valueBits (finiteValueQ N c p)
      (FiniteNewtonCenter.diskBudgetQ N c 0 + finiteValueErrorQ N c p),
    initialState p.slopeBits (finiteSlopeQ N c p)
      (FiniteNewtonCenter.diskBudgetQ N c p.cauchyRadius / p.cauchyRadius +
        finiteSlopeErrorQ N c p)⟩

/-- No actual-zeta value, derivative or finite-evaluation proof is a field. -/
def Admissible (N : ℕ) (c : QComplex) (p : Plan N) : Prop :=
  0 < p.cauchyRadius ∧ p.cauchyRadius ≤ c.re ∧
  0 < QComplex.normSq (QComplex.sub c QComplex.one) ∧
  (∀ i, GRWTSK.Analysis.Complex.RationalPowerEvaluation.Admissible
    ((i.1 : ℚ) + 1) (sourceExponent c) (p.«prefix» i)) ∧
  GRWTSK.Analysis.Complex.RationalPowerEvaluation.Admissible
    (cutoffQ N) (sourceExponent c) p.terminal

instance (N : ℕ) (c : QComplex) (p : Plan N) : Decidable (Admissible N c p) := by
  unfold Admissible
  infer_instance

def evaluate (N : ℕ) (c : QComplex) (p : Plan N) (valueTol slopeTol : ℚ) :
    Option CenterState :=
  if Admissible N c p then
    let out := compute N c p
    if out.value.error ≤ valueTol ∧ out.slope.error ≤ slopeTol then some out else none
  else none

/-- Exact recomputation includes six rational fields: four coordinates and two errors. -/
def verify (N : ℕ) (c : QComplex) (p : Plan N) (valueTol slopeTol : ℚ)
    (claimed : CenterState) : Bool :=
  decide (evaluate N c p valueTol slopeTol = some claimed)

theorem evaluate_some_iff (N : ℕ) (c : QComplex) (p : Plan N)
    (valueTol slopeTol : ℚ) (out : CenterState) :
    evaluate N c p valueTol slopeTol = some out ↔
      Admissible N c p ∧
        ((compute N c p).value.error ≤ valueTol ∧ (compute N c p).slope.error ≤ slopeTol) ∧
        compute N c p = out := by
  unfold evaluate
  split_ifs <;> simp_all

theorem evaluate_none_iff (N : ℕ) (c : QComplex) (p : Plan N)
    (valueTol slopeTol : ℚ) :
    evaluate N c p valueTol slopeTol = none ↔
      ¬Admissible N c p ∨ valueTol < (compute N c p).value.error ∨
        slopeTol < (compute N c p).slope.error := by
  unfold evaluate
  by_cases hg : Admissible N c p
  · by_cases hv : (compute N c p).value.error ≤ valueTol
    · simp [hg, hv, not_lt_of_ge hv]
    · have hv' : valueTol < (compute N c p).value.error := lt_of_not_ge hv
      simp [hg, hv, hv']
  · simp [hg]

theorem verify_iff (N : ℕ) (c : QComplex) (p : Plan N)
    (valueTol slopeTol : ℚ) (out : CenterState) :
    verify N c p valueTol slopeTol out = true ↔
      Admissible N c p ∧
        ((compute N c p).value.error ≤ valueTol ∧ (compute N c p).slope.error ≤ slopeTol) ∧
        compute N c p = out := by
  simp only [verify, decide_eq_true_eq, evaluate_some_iff]

end GRWTSK.RiemannHypothesis.RationalZetaCenterEvaluation
