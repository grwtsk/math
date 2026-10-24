# Complete source: GRWTSK.Analysis.Complex.RationalTentEvaluation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d5a94a9b3306e31e3d819315c91046fa2cc75a9` · SHA-256 `93900fefeed9597bfae66f51c4b07c46b0fa06d221a7098ede66f5102599b081`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalPowerEvaluation
import GRWTSK.Analysis.Complex.RationalComplexQuotient

set_option autoImplicit false

/-!
# Rational tent evaluation with source-bound endpoints

The three endpoint bases are computed from x and h; their exponent is the
SAME center plus one. Raw data cannot supply a different endpoint source.
Arithmetic guards and a requested final error are checked. Coordinate balls
are numerical data whose relation to an actual point remains an explicit
semantic hypothesis. Acceptance alone proves neither zero identity nor coverage.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.RationalTentEvaluation

open RationalRoundedArithmetic
open IntervalMellinKernel TentMellinKernel TentKernelEnclosure

/-- Data only. The coordinate radius is not proof that a zero lies in the ball. -/
structure Input where
  center : QComplex
  coordinateError : ℚ
  denominatorLower : ℚ
  lower : RationalPowerEvaluation.Schedule
  middle : RationalPowerEvaluation.Schedule
  upper : RationalPowerEvaluation.Schedule
  quotientBits : ℕ
  deriving DecidableEq, Repr

def exponent (p : Input) : QComplex := QComplex.add p.center QComplex.one

def Admissible (x h : ℚ) (p : Input) : Prop :=
  0 < h ∧ 1 < x - h ∧ p.center.re ≤ 1 ∧ 0 ≤ p.coordinateError ∧
  0 < p.denominatorLower ∧
  p.denominatorLower ^ 2 ≤ h ^ 2 * QComplex.normSq p.center * QComplex.normSq (exponent p) ∧
  RationalPowerEvaluation.Admissible (x - h) (exponent p) p.lower ∧
  RationalPowerEvaluation.Admissible x (exponent p) p.middle ∧
  RationalPowerEvaluation.Admissible (x + h) (exponent p) p.upper

instance (x h : ℚ) (p : Input) : Decidable (Admissible x h p) := by
  unfold Admissible
  infer_instance

def numerator (x h : ℚ) (p : Input) : QComplex :=
  QComplex.add
    (QComplex.sub (RationalPowerEvaluation.compute (x + h) (exponent p) p.upper).value
      (QComplex.smul 2 (RationalPowerEvaluation.compute x (exponent p) p.middle).value))
    (RationalPowerEvaluation.compute (x - h) (exponent p) p.lower).value

def denominator (h : ℚ) (p : Input) : QComplex :=
  QComplex.smul h (QComplex.mul p.center (exponent p))

def quotient (x h : ℚ) (p : Input) : QComplex :=
  QComplex.div (numerator x h p) (denominator h p)

/-- Three endpoint errors, coordinate transport, then quotient rounding. -/
def unroundedError (x h : ℚ) (p : Input) : ℚ :=
  4 * (x + h) * (RationalPowerEvaluation.logCenter (x + h) p.upper + RationalPowerEvaluation.logError (x + h) p.upper) *
    p.coordinateError +
  ((RationalPowerEvaluation.compute (x + h) (exponent p) p.upper).error +
    2 * (RationalPowerEvaluation.compute x (exponent p) p.middle).error +
    (RationalPowerEvaluation.compute (x - h) (exponent p) p.lower).error) / p.denominatorLower

def compute (x h : ℚ) (p : Input) : State :=
  initialState p.quotientBits (quotient x h p) (unroundedError x h p)

def evaluate (x h : ℚ) (p : Input) (tolerance : ℚ) : Option State :=
  if Admissible x h p then
    let out := compute x h p
    if out.error ≤ tolerance then some out else none
  else none

def verify (x h : ℚ) (p : Input) (tolerance : ℚ) (claimed : State) : Bool :=
  decide (evaluate x h p tolerance = some claimed)

@[simp] theorem embed_exponent (p : Input) :
    QComplex.embed (exponent p) = QComplex.embed p.center + 1 := by simp [exponent]

/-- The exact rational quotient has precisely the maintained 1,-2,1 numerator. -/
theorem quotient_refines (x h : ℚ) (p : Input) :
    QComplex.embed (quotient x h p) =
      (QComplex.embed (RationalPowerEvaluation.compute (x + h) (exponent p) p.upper).value -
        2 * QComplex.embed (RationalPowerEvaluation.compute x (exponent p) p.middle).value +
        QComplex.embed (RationalPowerEvaluation.compute (x - h) (exponent p) p.lower).value) /
      (((h : ℝ) : ℂ) * QComplex.embed p.center * (QComplex.embed p.center + 1)) := by
  simp [quotient, numerator, denominator, mul_assoc]

/-- Actual-point soundness needs the coordinate proof and real-part domain.
The entire-kernel transport does not require excluding 0 or -1 from the ball. -/
theorem unrounded_sound (x h : ℚ) (p : Input) (hp : Admissible x h p)
    (z : ℂ) (hz : z.re ≤ 1) (hcoord : ‖z - QComplex.embed p.center‖ ≤ (p.coordinateError : ℝ)) :
    ‖tentKernel (x : ℝ) (h : ℝ) z - QComplex.embed (quotient x h p)‖ ≤
      (unroundedError x h p : ℝ) := by
  rcases hp with ⟨hh, ha, hc, hr, hd, hden, hA, hX, hB⟩
  have hhR : (0 : ℝ) < h := by exact_mod_cast hh
  have haR : (1 : ℝ) < (x : ℝ) - (h : ℝ) := by exact_mod_cast ha
  have hcR : (QComplex.embed p.center).re ≤ 1 := by exact_mod_cast hc
  have hrR : (0 : ℝ) ≤ p.coordinateError := by exact_mod_cast hr
  have hdR : (0 : ℝ) < p.denominatorLower := by exact_mod_cast hd
  have hdenR := QComplex.denominator_lower h p.denominatorLower p.center hh hd hden
  have hAp := RationalPowerEvaluation.compute_sound (x - h) (exponent p) p.lower hA
  have hXp := RationalPowerEvaluation.compute_sound x (exponent p) p.middle hX
  have hBp := RationalPowerEvaluation.compute_sound (x + h) (exponent p) p.upper hB
  simp only [Rat.cast_sub, Rat.cast_add, embed_exponent] at hAp hXp hBp
  have hquot := endpoint_quotient_error (x : ℝ) (h : ℝ) hhR haR
    (QComplex.embed p.center)
    (QComplex.embed (RationalPowerEvaluation.compute (x - h) (exponent p) p.lower).value)
    (QComplex.embed (RationalPowerEvaluation.compute x (exponent p) p.middle).value)
    (QComplex.embed (RationalPowerEvaluation.compute (x + h) (exponent p) p.upper).value)
    ((RationalPowerEvaluation.compute (x - h) (exponent p) p.lower).error : ℝ)
    ((RationalPowerEvaluation.compute x (exponent p) p.middle).error : ℝ)
    ((RationalPowerEvaluation.compute (x + h) (exponent p) p.upper).error : ℝ)
    (p.denominatorLower : ℝ) hdR hdenR hAp hXp hBp
  rw [← quotient_refines x h p] at hquot
  have hlog := (RationalPowerEvaluation.toLogInput (x + h) p.upper hB.1).sound
  have hlogUpper : Real.log ((x : ℝ) + (h : ℝ)) ≤
      ((RationalPowerEvaluation.logCenter (x + h) p.upper + RationalPowerEvaluation.logError (x + h) p.upper : ℚ) : ℝ) := by
    have ht := (abs_le.mp hlog).2
    simp only [RationalPowerEvaluation.toLogInput_center, RationalPowerEvaluation.toLogInput_error, Rat.cast_add] at ht ⊢
    linarith
  have hlog0 : 0 ≤ Real.log ((x : ℝ) + (h : ℝ)) :=
    Real.log_nonneg (by linarith)
  have htransport := norm_tentKernel_sub_le_one (x : ℝ) (h : ℝ) hhR haR z
    (QComplex.embed p.center) hz hcR
  have hcoordBound : ‖tentKernel (x : ℝ) (h : ℝ) z -
      tentKernel (x : ℝ) (h : ℝ) (QComplex.embed p.center)‖ ≤
      4 * ((x : ℝ) + (h : ℝ)) *
        ((RationalPowerEvaluation.logCenter (x + h) p.upper + RationalPowerEvaluation.logError (x + h) p.upper : ℚ) : ℝ) *
          (p.coordinateError : ℝ) := by
    refine htransport.trans ?_
    exact mul_le_mul
      (mul_le_mul_of_nonneg_left hlogUpper (by linarith)) hcoord
      (norm_nonneg _) (mul_nonneg (by linarith) (hlog0.trans hlogUpper))
  calc
    _ = ‖(tentKernel (x : ℝ) (h : ℝ) z -
          tentKernel (x : ℝ) (h : ℝ) (QComplex.embed p.center)) +
        (tentKernel (x : ℝ) (h : ℝ) (QComplex.embed p.center) -
          QComplex.embed (quotient x h p))‖ := by congr 1; ring
    _ ≤ _ := by
      have ht := (norm_add_le _ _).trans (add_le_add hcoordBound hquot)
      simpa only [unroundedError, Rat.cast_add, Rat.cast_mul, Rat.cast_div,
        Rat.cast_ofNat] using ht

/-- Quotient quantization is charged AFTER endpoint and coordinate errors. -/
theorem compute_sound (x h : ℚ) (p : Input) (hp : Admissible x h p)
    (z : ℂ) (hz : z.re ≤ 1) (hcoord : ‖z - QComplex.embed p.center‖ ≤ (p.coordinateError : ℝ)) :
    ‖tentKernel (x : ℝ) (h : ℝ) z - QComplex.embed (compute x h p).value‖ ≤
      ((compute x h p).error : ℝ) :=
  initialState_sound p.quotientBits (quotient x h p) (unroundedError x h p) _
    (unrounded_sound x h p hp z hz hcoord)

theorem evaluate_some_iff (x h : ℚ) (p : Input) (tolerance : ℚ) (out : State) :
    evaluate x h p tolerance = some out ↔
      Admissible x h p ∧ (compute x h p).error ≤ tolerance ∧ compute x h p = out := by
  unfold evaluate
  split_ifs <;> simp_all

theorem evaluate_none_iff (x h : ℚ) (p : Input) (tolerance : ℚ) :
    evaluate x h p tolerance = none ↔
      ¬Admissible x h p ∨ tolerance < (compute x h p).error := by
  unfold evaluate
  split_ifs <;> simp_all

theorem verify_sound (x h : ℚ) (p : Input) (tolerance : ℚ) (out : State)
    (haccept : verify x h p tolerance out = true) (z : ℂ) (hz : z.re ≤ 1)
    (hcoord : ‖z - QComplex.embed p.center‖ ≤ (p.coordinateError : ℝ)) :
    ‖tentKernel (x : ℝ) (h : ℝ) z - QComplex.embed out.value‖ ≤ (out.error : ℝ) ∧
      out.error ≤ tolerance := by
  have he : evaluate x h p tolerance = some out := by
    simpa only [verify, decide_eq_true_eq] using haccept
  obtain ⟨hp, ht, rfl⟩ := (evaluate_some_iff x h p tolerance out).mp he
  exact ⟨compute_sound x h p hp z hz hcoord, ht⟩

end GRWTSK.Analysis.Complex.RationalTentEvaluation
```
