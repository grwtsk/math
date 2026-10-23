/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.FiniteZetaPowerEnclosure
import GRWTSK.NumberTheory.Zeta.Riemann.RationalNewtonWitness

set_option autoImplicit false

/-!
# Finite power packets supply the actual Newton center facts

The zeta value and slope are no longer external analytic enclosure hypotheses
in this adapter. Finite power inputs, finite output-rounding allowances and
complete analytic tails derive them. The Cauchy radius is separate from the
Newton disk radius. No sharp complete count or successful zero packet is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.FiniteNewtonCenter

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open GRWTSK.Analysis.Complex.FiniteExponentialEnclosure
open FiniteCubicZetaTail FiniteZetaPowerEnclosure RationalNewtonWitness CanonicalZeroDivisor

/-- A rational complete-tail ceiling at a rational center; no real-power evaluation. -/
def diskBudgetQ (N : ℕ) (c : QComplex) (r : ℚ) : ℚ :=
  (QComplex.rect c + r) * (QComplex.rect (QComplex.add c QComplex.one) + r) *
    (QComplex.rect (QComplex.add c (QComplex.smul 2 QComplex.one)) + r) /
      (96 * ((N : ℚ) + 1) ^ 2)

@[simp] theorem cast_diskBudgetQ (N : ℕ) (c : QComplex) (r : ℚ) :
    (diskBudgetQ N c r : ℝ) = diskBudget N (QComplex.embed c) (r : ℝ) := by
  simp [diskBudgetQ, diskBudget, FiniteCubicZetaApproximation.cutoff]

/-- The two error budgets retain different tails and distinct finite rounding costs. -/
theorem centerEnclosures_of_power_packet (p : Data) (N : ℕ) (r : ℚ)
    (hr : 0 < r) (hreal : r ≤ p.center.re) (hpole : QComplex.embed p.center ≠ 1)
    (packet : PowerPacket N (QComplex.embed p.center)) (ev ed : ℚ)
    (hv : ‖packet.value - QComplex.embed p.value‖ ≤ (ev : ℝ))
    (hd : ‖packet.slope - QComplex.embed p.slope‖ ≤ (ed : ℝ))
    (hvalue : (diskBudgetQ N p.center 0 : ℝ) + packet.finiteValueError + (ev : ℝ) ≤
      (p.valueError : ℝ))
    (hslope : (diskBudgetQ N p.center r : ℝ) / (r : ℝ) + packet.finiteSlopeError + (ed : ℝ) ≤
      (p.slopeError : ℝ)) : CenterEnclosures p := by
  have hrR : (0 : ℝ) < r := by exact_mod_cast hr
  have hcR : (r : ℝ) ≤ (QComplex.embed p.center).re := by
    change (r : ℝ) ≤ (p.center.re : ℝ)
    exact (Rat.cast_le (K := ℝ)).2 hreal
  have h := packet.actual_rounded (r : ℝ) hrR hcR hpole
    (QComplex.embed p.value) (QComplex.embed p.slope) (ev : ℝ) (ed : ℝ) hv hd
  simp only [cast_diskBudgetQ, Rat.cast_zero] at hvalue hslope
  exact ⟨h.1.trans hvalue, h.2.trans hslope⟩

/-- No caller-supplied actual-zeta value, slope, local zero or disk curvature premise.
The finite-power and final-rounding evidence still has to be produced and audited. -/
theorem exists_zero_of_power_packet (chart : ℕ) (positive : Bool) (p : Data)
    (hnewton : RationalNewtonWitness.verify chart positive p = true)
    (N : ℕ) (r : ℚ) (hr : 0 < r) (hreal : r ≤ p.center.re)
    (hpole : QComplex.embed p.center ≠ 1)
    (packet : PowerPacket N (QComplex.embed p.center)) (ev ed : ℚ)
    (hv : ‖packet.value - QComplex.embed p.value‖ ≤ (ev : ℝ))
    (hd : ‖packet.slope - QComplex.embed p.slope‖ ≤ (ed : ℝ))
    (hvalue : (diskBudgetQ N p.center 0 : ℝ) + packet.finiteValueError + (ev : ℝ) ≤
      (p.valueError : ℝ))
    (hslope : (diskBudgetQ N p.center r : ℝ) / (r : ℝ) + packet.finiteSlopeError + (ed : ℝ) ≤
      (p.slopeError : ℝ)) :
    ∃ z : ZeroPoint, ‖z.1 - QComplex.embed p.center‖ ≤ (p.radius : ℝ) ∧
      deriv riemannZeta z.1 ≠ 0 := by
  have hc := centerEnclosures_of_power_packet p N r hr hreal hpole packet ev ed hv hd hvalue hslope
  obtain ⟨z, hz, _, hderiv, _⟩ := RationalNewtonWitness.exists_zero chart positive p hnewton hc
  exact ⟨z, hz, hderiv⟩

end GRWTSK.RiemannHypothesis.FiniteNewtonCenter
