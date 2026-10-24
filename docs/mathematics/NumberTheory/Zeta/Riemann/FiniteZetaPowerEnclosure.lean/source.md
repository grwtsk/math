# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.FiniteZetaPowerEnclosure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba4c5499cd38e3e8171a1af9e405c22e635e8fb7` · SHA-256 `d3f21ec13592c6b2a25df0fd4dc146a710180f856c5fbea4cbb3f64708c6dde2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.FiniteCubicZetaTail
import GRWTSK.Analysis.Complex.RoundedLogPowerEvaluation

set_option autoImplicit false

/-!
# Finite endpoint-power inputs supply zeta value AND slope enclosures

Each entry uses the same exact exponent -c and its fixed positive integer
base. Existing rounded powers and their rational-log data supply every local
error. The derivative includes the logarithm-product uncertainty separately.
This is a proof-bearing finite adapter, not a new raw-data zeta checker or an
executed certificate. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.FiniteZetaPowerEnclosure

open scoped BigOperators
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open GRWTSK.Analysis.Complex.FiniteExponentialEnclosure
open GRWTSK.Analysis.Complex.RoundedLogPowerEvaluation
open FiniteCubicZetaApproximation FiniteCubicZetaTail

noncomputable section

/-- Base and exponent identities are in the dependent types, not a metadata comparison. -/
structure PowerPacket (N : ℕ) (c : ℂ) where
  «prefix» : ∀ i : Fin N, PowerInput ((i.1 : ℝ) + 1) (-c)
  terminal : PowerInput (cutoff N) (-c)

/-- The finite approximation to -log(t)*t^z, using the power's SAME derived logarithm. -/
def logValue {t : ℝ} {z : ℂ} (p : PowerInput t z) : ℂ :=
  -((p.base.logarithm.center : ℝ) : ℂ) * p.value

/-- Multiplication by an uncertain logarithm has its own complete propagation cost. -/
def logError {t : ℝ} {z : ℂ} (p : PowerInput t z) : ℝ :=
  (|(p.base.logarithm.center : ℝ)| + (p.base.logarithm.error : ℝ)) * p.error +
    rectNorm p.value * (p.base.logarithm.error : ℝ)

theorem logValue_sound {t : ℝ} {z : ℂ} (p : PowerInput t z) :
    ‖-(Real.log t : ℂ) * logPower t z - logValue p‖ ≤ logError p := by
  let l : ℝ := (p.base.logarithm.center : ℝ)
  let eta : ℝ := (p.base.logarithm.error : ℝ)
  have heta : 0 ≤ eta := by
    dsimp [eta]
    exact_mod_cast p.base.logarithm.error_nonneg
  have hl : |Real.log t - l| ≤ eta := p.base.logarithm.sound
  have habs : |Real.log t| ≤ |l| + eta := by
    have ht := abs_add_le (Real.log t - l) l
    rw [sub_add_cancel] at ht
    linarith
  have hid : -(Real.log t : ℂ) * logPower t z - logValue p =
      -(Real.log t : ℂ) * (logPower t z - p.value) -
        ((Real.log t - l : ℝ) : ℂ) * p.value := by
    unfold logValue
    dsimp [l]
    push_cast
    ring
  rw [hid]
  calc
    _ ≤ ‖-(Real.log t : ℂ) * (logPower t z - p.value)‖ +
        ‖((Real.log t - l : ℝ) : ℂ) * p.value‖ := norm_sub_le _ _
    _ = |Real.log t| * ‖logPower t z - p.value‖ + |Real.log t - l| * ‖p.value‖ := by
      simp only [norm_mul, norm_neg, Complex.norm_real, Real.norm_eq_abs]
    _ ≤ (|l| + eta) * p.error + eta * rectNorm p.value :=
      add_le_add (mul_le_mul habs p.sound (norm_nonneg _) (by positivity))
        (mul_le_mul hl (norm_le_rectNorm p.value) (norm_nonneg _) heta)
    _ = logError p := by unfold logError; dsimp [l, eta]; ring

namespace PowerPacket

variable {N : ℕ} {c : ℂ}

def value (p : PowerPacket N c) : ℂ :=
  (∑ i, (p.«prefix» i).value) + terminalFactor N c * p.terminal.value

def slope (p : PowerPacket N c) : ℂ :=
  (∑ i, logValue (p.«prefix» i)) +
    (terminalSlope N c * p.terminal.value + terminalFactor N c * logValue p.terminal)

def finiteValueError (p : PowerPacket N c) : ℝ :=
  (∑ i, (p.«prefix» i).error) + rectNorm (terminalFactor N c) * p.terminal.error

def finiteSlopeError (p : PowerPacket N c) : ℝ :=
  (∑ i, logError (p.«prefix» i)) +
    (rectNorm (terminalSlope N c) * p.terminal.error +
      rectNorm (terminalFactor N c) * logError p.terminal)

/-- No modulus oracle is needed for these rational-coefficient products. -/
theorem coefficient_error (a u v : ℂ) (e : ℝ) (he : ‖u - v‖ ≤ e) :
    ‖a * u - a * v‖ ≤ rectNorm a * e := by
  rw [← mul_sub, norm_mul]
  exact mul_le_mul (norm_le_rectNorm a) he (norm_nonneg _) (rectNorm_nonneg a)

/-- These errors concern the finite formulas, not yet the infinite zeta source. -/
theorem finite_sound (p : PowerPacket N c) :
    ‖approximation N c - p.value‖ ≤ p.finiteValueError ∧
      ‖approximationSlope N c - p.slope‖ ≤ p.finiteSlopeError := by
  have hv : ‖(∑ i : Fin N, logPower ((i.1 : ℝ) + 1) (-c)) -
      ∑ i : Fin N, (p.«prefix» i).value‖ ≤ ∑ i, (p.«prefix» i).error := by
    rw [← Finset.sum_sub_distrib]
    exact (norm_sum_le _ _).trans (Finset.sum_le_sum (fun i _ => (p.«prefix» i).sound))
  have hd : ‖(∑ i : Fin N, -(Real.log ((i.1 : ℝ) + 1) : ℂ) *
      logPower ((i.1 : ℝ) + 1) (-c)) - ∑ i, logValue (p.«prefix» i)‖ ≤
      ∑ i, logError (p.«prefix» i) := by
    rw [← Finset.sum_sub_distrib]
    exact (norm_sum_le _ _).trans (Finset.sum_le_sum (fun i _ => logValue_sound (p.«prefix» i)))
  have ht := coefficient_error (terminalFactor N c) _ _ _ p.terminal.sound
  have hj := coefficient_error (terminalSlope N c) _ _ _ p.terminal.sound
  have hl := coefficient_error (terminalFactor N c) _ _ _ (logValue_sound p.terminal)
  constructor
  · unfold approximation value finiteValueError
    rw [add_sub_add_comm]
    exact (norm_add_le _ _).trans (add_le_add hv ht)
  · unfold approximationSlope slope finiteSlopeError
    rw [add_sub_add_comm, add_sub_add_comm]
    exact (norm_add_le _ _).trans (add_le_add hd
      ((norm_add_le _ _).trans (add_le_add hj hl)))

/-- The COMPLETE omitted tails are added exactly once after finite error propagation. -/
theorem actual_sound (p : PowerPacket N c) (r : ℝ)
    (hr : 0 < r) (hc : r ≤ c.re) (hpole : c ≠ 1) :
    ‖riemannZeta c - p.value‖ ≤ diskBudget N c 0 + p.finiteValueError ∧
      ‖deriv riemannZeta c - p.slope‖ ≤ diskBudget N c r / r + p.finiteSlopeError :=
  center_enclosures_of_finite N c r hr hc hpole p.value p.slope
    p.finiteValueError p.finiteSlopeError p.finite_sound.1 p.finite_sound.2

/-- Finite accumulation/serialization rounding is separate for the two outputs. -/
theorem actual_rounded (p : PowerPacket N c) (r : ℝ)
    (hr : 0 < r) (hc : r ≤ c.re) (hpole : c ≠ 1)
    (v d : ℂ) (ev ed : ℝ) (hv : ‖p.value - v‖ ≤ ev) (hd : ‖p.slope - d‖ ≤ ed) :
    ‖riemannZeta c - v‖ ≤ diskBudget N c 0 + p.finiteValueError + ev ∧
      ‖deriv riemannZeta c - d‖ ≤ diskBudget N c r / r + p.finiteSlopeError + ed := by
  have h := p.actual_sound r hr hc hpole
  exact ⟨(norm_sub_le_norm_sub_add_norm_sub _ p.value _).trans (add_le_add h.1 hv),
    (norm_sub_le_norm_sub_add_norm_sub _ p.slope _).trans (add_le_add h.2 hd)⟩

end PowerPacket
end
end GRWTSK.RiemannHypothesis.FiniteZetaPowerEnclosure
```
