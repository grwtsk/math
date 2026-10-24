# Complete source: GRWTSK.Algebra.SupplierCriticalDecay.Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `602400a08e5b8a7792355c50773dc002a04f3355` · SHA-256 `11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.SupplierEnvelopeRecurrence
import Mathlib.Algebra.Order.Ring.Pow
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Analysis.Real.Sqrt

/-!
# The actual supplier product at the critical exponential rate

Human research direction: grwtsk contributors.
Formal implementation: OpenAI Codex.

An explicit classical envelope bound is the premise, rather than a vanishing
weighted-tail premise.  Bernoulli's inequality bounds the original coefficient
product by a telescoping polynomial ratio.  At the literal step `log 2`, its
geometric factor cancels the critical exponential exactly.  A polynomial times
`exp (-c * sqrt S)` then tends to zero.  No signed supplier, classical Mertens
bound, or RH theorem is proved here.
-/

set_option autoImplicit false

noncomputable section
namespace GRWTSK.RiemannHypothesis.Conversation.SupplierCriticalDecay

open Filter Set
open scoped Topology
open GRWTSK.RiemannHypothesis.Conversation.SupplierEnvelopeRecurrence

/-- The original terminal shift. -/
def criticalStep : ℝ := Real.log 2

/-- The critical part of the original coefficient. -/
def criticalFactor : ℝ := 1 / Real.sqrt 2

theorem criticalStep_pos : 0 < criticalStep := Real.log_pos (by norm_num)

theorem criticalFactor_pos : 0 < criticalFactor := by
  unfold criticalFactor
  positivity

/-- A natural polynomial exponent exists for every fixed nonnegative `K`. -/
theorem exists_polynomial_exponent (K : ℝ) :
    ∃ m : ℕ, 2 * K ≤ (m : ℝ) * criticalStep := by
  obtain ⟨m, hm⟩ := exists_nat_ge (2 * K / criticalStep)
  exact ⟨m, (div_le_iff₀ criticalStep_pos).mp hm⟩

/-- Bernoulli's inequality controls one unchanged coefficient. -/
theorem supplierCoefficient_le_polynomialRatio {K x h : ℝ} {m : ℕ}
    (hx : 0 < x) (hh : 0 ≤ h) (hm : 2 * K ≤ (m : ℝ) * h) :
    supplierCoefficient K x ≤ criticalFactor * ((x + h) / x) ^ m := by
  have hd : 2 * K / x ≤ (m : ℝ) * (h / x) := by
    have h := div_le_div_of_nonneg_right hm hx.le
    simpa only [mul_div_assoc] using h
  have hb : 1 + (m : ℝ) * (h / x) ≤ (1 + h / x) ^ m :=
    one_add_mul_le_pow (by linarith [div_nonneg hh hx.le]) m
  have he : 1 + h / x = (x + h) / x := by rw [add_div, div_self hx.ne']
  have hnum : 1 + 2 * K / x ≤ ((x + h) / x) ^ m := by
    rw [← he]
    have hh : 1 + 2 * K / x ≤ 1 + (m : ℝ) * (h / x) := by linarith
    exact hh.trans hb
  calc
    supplierCoefficient K x = (1 + 2 * K / x) / Real.sqrt 2 := rfl
    _ ≤ ((x + h) / x) ^ m / Real.sqrt 2 :=
      div_le_div_of_nonneg_right hnum (Real.sqrt_nonneg 2)
    _ = criticalFactor * ((x + h) / x) ^ m := by dsimp [criticalFactor]; ring

/-- The complete original product is bounded by a telescoping ratio; no
coefficient is replaced in the product on the left. -/
theorem coefficientProduct_le_polynomialRatio {K T h : ℝ} {m : ℕ}
    (hK : 0 ≤ K) (hT : 0 < T) (hh : 0 ≤ h)
    (hm : 2 * K ≤ (m : ℝ) * h) (n : ℕ) :
    coefficientProduct (fun j ↦ supplierCoefficient K (T + (j : ℝ) * h)) n ≤
      criticalFactor ^ n * ((T + (n : ℝ) * h) / T) ^ m := by
  induction n with
  | zero => simp [coefficientProduct, hT.ne']
  | succ n ih =>
    have hx : 0 < T + (n : ℝ) * h := by positivity
    have ha := supplierCoefficient_nonneg hK hx
    have hb := supplierCoefficient_le_polynomialRatio hx hh hm
    have hright : 0 ≤ criticalFactor ^ n * ((T + (n : ℝ) * h) / T) ^ m := by
      have hq := criticalFactor_pos
      positivity
    rw [coefficientProduct_succ]
    calc
      _ ≤ (criticalFactor ^ n * ((T + (n : ℝ) * h) / T) ^ m) *
          (criticalFactor * (((T + (n : ℝ) * h) + h) / (T + (n : ℝ) * h)) ^ m) :=
        mul_le_mul ih hb ha hright
      _ = criticalFactor ^ (n + 1) *
          (((T + (n : ℝ) * h) / T) *
            (((T + (n : ℝ) * h) + h) / (T + (n : ℝ) * h))) ^ m := by
        rw [pow_succ, mul_pow]
        ring
      _ = criticalFactor ^ (n + 1) * ((T + ((n + 1 : ℕ) : ℝ) * h) / T) ^ m := by
        congr 2
        push_cast
        field_simp
        ring

/-- The geometric factor cancels `exp (S/2)` exactly at the fixed shift. -/
theorem critical_exponential_cancellation (T : ℝ) (n : ℕ) :
    criticalFactor ^ n * Real.exp ((T + (n : ℝ) * criticalStep) / 2) =
      Real.exp (T / 2) := by
  induction n with
  | zero => simp
  | succ n ih =>
    have he : (T + ((n + 1 : ℕ) : ℝ) * criticalStep) / 2 =
        (T + (n : ℝ) * criticalStep) / 2 + criticalStep / 2 := by push_cast; ring
    rw [he, Real.exp_add, pow_succ]
    have hh : Real.exp (criticalStep / 2) = Real.sqrt 2 := by
      rw [criticalStep, Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    rw [hh]
    calc
      _ = (criticalFactor ^ n * Real.exp ((T + (n : ℝ) * criticalStep) / 2)) *
          (criticalFactor * Real.sqrt 2) := by ring
      _ = Real.exp (T / 2) := by rw [ih]; simp [criticalFactor]

/-- Exponential decay in the square-root variable dominates every natural
polynomial, proved from Mathlib's exponential-over-power limit. -/
theorem polynomial_sqrt_decay_tendsto_zero (m : ℕ) {c : ℝ} (hc : 0 < c) :
    Tendsto (fun S : ℝ ↦ S ^ m * Real.exp (-c * Real.sqrt S)) atTop (𝓝 0) := by
  have h := (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero
    ((2 * m : ℕ) : ℝ) c hc).comp Real.tendsto_sqrt_atTop
  apply h.congr'
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with S hS
  simp only [Function.comp_apply, Real.rpow_natCast]
  rw [pow_mul, Real.sq_sqrt hS]

theorem terminal_times_tendsto_atTop (T : ℝ) :
    Tendsto (fun n : ℕ ↦ T + (n : ℝ) * criticalStep) atTop atTop :=
  tendsto_atTop_add_const_left _ T (tendsto_natCast_atTop_atTop.atTop_mul_const criticalStep_pos)

/-- A pointwise classical envelope gives an explicit bound for the actual
weighted tail. -/
theorem critical_weighted_tail_bound {E : ℝ → ℝ} {K T C c : ℝ} {m n : ℕ}
    (hK : 0 ≤ K) (hT : 0 < T) (_hC : 0 ≤ C)
    (hm : 2 * K ≤ (m : ℝ) * criticalStep)
    (hE0 : 0 ≤ E (T + (n : ℝ) * criticalStep))
    (hE : E (T + (n : ℝ) * criticalStep) ≤
      C * Real.exp ((T + (n : ℝ) * criticalStep) / 2 -
        c * Real.sqrt (T + (n : ℝ) * criticalStep))) :
    coefficientProduct (fun j ↦ supplierCoefficient K (T + (j : ℝ) * criticalStep)) n *
        E (T + (n : ℝ) * criticalStep) ≤
      (C * Real.exp (T / 2) / T ^ m) *
        ((T + (n : ℝ) * criticalStep) ^ m *
          Real.exp (-c * Real.sqrt (T + (n : ℝ) * criticalStep))) := by
  have hS : 0 < T + (n : ℝ) * criticalStep := by
    have hh := criticalStep_pos
    positivity
  have hp := coefficientProduct_le_polynomialRatio hK hT criticalStep_pos.le hm n
  have hright : 0 ≤ criticalFactor ^ n * ((T + (n : ℝ) * criticalStep) / T) ^ m := by
    have hh := criticalFactor_pos
    positivity
  apply (mul_le_mul hp hE hE0 hright).trans
  apply le_of_eq
  have he : (T + (n : ℝ) * criticalStep) / 2 -
      c * Real.sqrt (T + (n : ℝ) * criticalStep) =
      (T + (n : ℝ) * criticalStep) / 2 +
        (-c * Real.sqrt (T + (n : ℝ) * criticalStep)) := by ring
  rw [he, Real.exp_add, div_pow]
  calc
    _ = (C / T ^ m) *
        (criticalFactor ^ n * Real.exp ((T + (n : ℝ) * criticalStep) / 2)) *
        ((T + (n : ℝ) * criticalStep) ^ m *
          Real.exp (-c * Real.sqrt (T + (n : ℝ) * criticalStep))) := by ring
    _ = _ := by rw [critical_exponential_cancellation]; ring

/-- The original weighted tail vanishes from an explicit eventual classical
envelope bound.  The conclusion retains the full original coefficient product. -/
theorem critical_weighted_tail_tendsto_zero {E : ℝ → ℝ} {K T C c S₀ : ℝ}
    (hK : 0 ≤ K) (hT : 0 < T) (hC : 0 < C) (hc : 0 < c)
    (hE0 : ∀ S : ℝ, 0 ≤ E S)
    (hdecay : ∀ S : ℝ, S₀ ≤ S → E S ≤ C * Real.exp (S / 2 - c * Real.sqrt S)) :
    Tendsto (fun n : ℕ ↦
      coefficientProduct (fun j ↦ supplierCoefficient K (T + (j : ℝ) * criticalStep)) n *
        E (T + (n : ℝ) * criticalStep)) atTop (𝓝 0) := by
  obtain ⟨m, hm⟩ := exists_polynomial_exponent K
  have htime := terminal_times_tendsto_atTop T
  have hmajor := ((polynomial_sqrt_decay_tendsto_zero m hc).comp htime).const_mul
    (C * Real.exp (T / 2) / T ^ m)
  simp only [mul_zero] at hmajor
  apply squeeze_zero' _ _ hmajor
  · exact Eventually.of_forall fun n ↦ mul_nonneg
      (coefficientProduct_nonneg (fun j ↦ supplierCoefficient_nonneg hK (by
        have hh := criticalStep_pos
        positivity)) n) (hE0 _)
  · filter_upwards [htime.eventually (eventually_ge_atTop S₀)] with n hn
    exact critical_weighted_tail_bound hK hT hC.le hm (hE0 _) (hdecay _ hn)

/-- The concrete running positive maximum supplies nonnegativity internally. -/
theorem runningMaximum_critical_weighted_tail_tendsto_zero {W : ℝ → ℝ}
    {K T C c S₀ : ℝ} (hW : Continuous W)
    (hK : 0 ≤ K) (hT : 0 < T) (hC : 0 < C) (hc : 0 < c)
    (hdecay : ∀ S : ℝ, S₀ ≤ S → runningPositiveMaximum W S ≤
      C * Real.exp (S / 2 - c * Real.sqrt S)) :
    Tendsto (fun n : ℕ ↦
      coefficientProduct (fun j ↦ supplierCoefficient K (T + (j : ℝ) * criticalStep)) n *
        runningPositiveMaximum W (T + (n : ℝ) * criticalStep)) atTop (𝓝 0) :=
  critical_weighted_tail_tendsto_zero hK hT hC hc
    (runningPositiveMaximum_nonneg hW) hdecay

end GRWTSK.RiemannHypothesis.Conversation.SupplierCriticalDecay
```
