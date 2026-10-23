/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalPowerValue
import GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleNormalizedJet

set_option autoImplicit false

/-!
# Actual normalized-source values from complete finite rational expressions

Every positive base 1..N is generated, with its scale checked independently of
Nat.log2's implementation. The OLD finite model and OLD analytic source remainder
supply the result; there is no caller-provided source-value ball or accuracy proof.
extraCorrections=p means p+1 actual Bernoulli corrections, exactly as upstream.
The derivative component is ONLY a finite-model derivative, not a source jet.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.RationalPoleValue

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open CriticalStripHeightDescent

structure Parameters where
  cutoff : ℕ
  extraCorrections : ℕ
  bits : ℕ
  logTwoTerms : ℕ
  logMantissaTerms : ℕ
  squarings : ℕ
  expTerms : ℕ
  deriving DecidableEq

/-- Base k is its position in 1..N; there is no separately asserted base label. -/
def resolution (p : Parameters) (k : ℕ) : RationalPowerValue.Resolution :=
  ⟨Nat.log2 k, p.logTwoTerms, p.logMantissaTerms, p.bits, p.squarings, p.expTerms⟩

def logs (p : Parameters) (k : ℕ) : Ball :=
  RationalPowerValue.logBall (k : ℚ) (resolution p k)

def powers (c : Coordinates) (p : Parameters) (k : ℕ) : Ball :=
  RationalPowerValue.valueBall c (k : ℚ) (resolution p k)

def Valid (c : Coordinates) (p : Parameters) : Prop :=
  0 < c.1 ∧ 1 ≤ p.cutoff ∧ ∀ k ∈ Finset.Icc 1 p.cutoff,
    RationalPowerValue.check c (k : ℚ) (resolution p k) = true

instance validDecidable (c : Coordinates) (p : Parameters) : Decidable (Valid c p) := by
  unfold Valid; infer_instance

def check (c : Coordinates) (p : Parameters) : Bool := decide (Valid c p)

theorem check_iff_valid (c : Coordinates) (p : Parameters) :
    check c p = true ↔ Valid c p := by simp [check]

/-- Both components refer to the same inclusive, pole-free finite model. -/
def finiteJet (c : Coordinates) (p : Parameters) : Ball × Ball :=
  RationalPoleNormalizedJet.assemble p.bits c p.cutoff (p.extraCorrections + 1)
    (logs p) (powers c p)

def valueBall (c : Coordinates) (p : Parameters) : Ball :=
  RationalPoleNormalizedJet.sourceBall c p.cutoff p.extraCorrections (finiteJet c p).1

theorem logs_sound {c : Coordinates} {p : Parameters} (h : check c p = true)
    {k : ℕ} (hk : k ∈ Finset.Icc 1 p.cutoff) :
    Holds (logs p k) (Real.log (k : ℝ) : ℂ) := by
  simpa only [logs, Rat.cast_natCast] using
    RationalPowerValue.logBall_sound (((check_iff_valid _ _).mp h).2.2 k hk)

theorem powers_sound {c : Coordinates} {p : Parameters} (h : check c p = true)
    {k : ℕ} (hk : k ∈ Finset.Icc 1 p.cutoff) :
    Holds (powers c p k) ((k : ℂ) ^ (-toComplex c)) := by
  simpa only [powers, Rat.cast_natCast] using
    RationalPowerValue.valueBall_sound (((check_iff_valid _ _).mp h).2.2 k hk)

/-- No leaf logarithm or inverse-power accuracy premise remains. -/
theorem finiteJet_sound {c : Coordinates} {p : Parameters} (h : check c p = true) :
    Holds (finiteJet c p).1
      (PoleNormalizedEndpointJet.model p.cutoff (p.extraCorrections + 1) (toComplex c)) ∧
    Holds (finiteJet c p).2
      (deriv (PoleNormalizedEndpointJet.model p.cutoff (p.extraCorrections + 1)) (toComplex c)) :=
  RationalPoleNormalizedJet.assemble_sound p.bits c ((check_iff_valid _ _).mp h).2.1
    (p.extraCorrections + 1) (logs p) (powers c p)
    (fun _ hk => logs_sound h hk) (fun _ hk => powers_sound h hk)

/-- Actual F(c), including c=1. The independently derived tail remains charged. -/
theorem valueBall_sound {c : Coordinates} {p : Parameters} (h : check c p = true) :
    Holds (valueBall c p) (poleNormalizedZeta (toComplex c)) :=
  RationalPoleNormalizedJet.sourceBall_sound ((check_iff_valid _ _).mp h).2.1
    p.extraCorrections ((check_iff_valid _ _).mp h).1 (finiteJet_sound h).1

def evaluate (c : Coordinates) (p : Parameters) : Option Ball :=
  if check c p then some (valueBall c p) else none

theorem evaluate_eq_some_iff (c : Coordinates) (p : Parameters) (b : Ball) :
    evaluate c p = some b ↔ check c p = true ∧ valueBall c p = b := by
  by_cases h : check c p = true <;> simp [evaluate, h]

theorem evaluate_sound {c : Coordinates} {p : Parameters} {b : Ball}
    (h : evaluate c p = some b) : Holds b (poleNormalizedZeta (toComplex c)) := by
  obtain ⟨hc,rfl⟩ := (evaluate_eq_some_iff _ _ _).mp h
  exact valueBall_sound hc

/-- Validity alone is not a requested-precision certificate. -/
def checkWithin (c : Coordinates) (p : Parameters) (epsilon : ℚ) : Bool :=
  check c p && decide (0 ≤ epsilon ∧ (valueBall c p).rad ≤ epsilon)

theorem checkWithin_sound {c : Coordinates} {p : Parameters} {epsilon : ℚ}
    (h : checkWithin c p epsilon = true) :
    ‖poleNormalizedZeta (toComplex c) - toComplex (valueBall c p).mid‖ ≤ (epsilon : ℝ) := by
  have hh : check c p = true ∧ (0 ≤ epsilon ∧ (valueBall c p).rad ≤ epsilon) := by
    simpa only [checkWithin, Bool.and_eq_true, decide_eq_true_eq] using h
  exact (valueBall_sound hh.1).trans (by exact_mod_cast hh.2.2)

end GRWTSK.RiemannHypothesis.RationalPoleValue
