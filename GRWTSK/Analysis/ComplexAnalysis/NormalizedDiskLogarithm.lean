/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.NormalizedLogDerivativeBound
import Mathlib.Analysis.Complex.HasPrimitives

set_option autoImplicit false

/-!
# A normalized analytic logarithm constructed from a zero-free disk function

A primitive of the actual logarithmic derivative is normalized at the center.
Equality of logarithmic derivatives then recovers the original function up to
its actual center value. No principal-log branch, logarithm oracle, derivative
bound, or sampled agreement is an input. This does not construct a quotient
through the zeros of another function.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.NormalizedDiskLogarithm

open Set Metric Filter
open scoped Topology
open GRWTSK.Analysis.ComplexAnalysis.NormalizedLogDerivativeBound

noncomputable section

/-- Construct the logarithm of g/g(0) on the disk, not a global logarithm of g. -/
theorem exists_normalized_log (g : ℂ → ℂ) (r : ℝ) (hr : 0 < r)
    (hg : DifferentiableOn ℂ g (ball 0 r))
    (hn : ∀ z ∈ ball 0 r, g z ≠ 0) :
    ∃ L : ℂ → ℂ, L 0 = 0 ∧
      (∀ z ∈ ball 0 r, HasDerivAt L (logDeriv g z) z) ∧
      (∀ z ∈ ball 0 r, g z = g 0 * Complex.exp (L z)) := by
  have hd : DifferentiableOn ℂ (logDeriv g) (ball 0 r) := by
    change DifferentiableOn ℂ (fun z => deriv g z / g z) (ball 0 r)
    exact (hg.deriv isOpen_ball).div hg hn
  obtain ⟨L, h0, hL⟩ := hd.isExactOn_ball.with_val_at 0 (0 : ℂ)
  have hLd : DifferentiableOn ℂ L (ball 0 r) :=
    fun z hz => (hL z hz).differentiableAt.differentiableWithinAt
  have he : DifferentiableOn ℂ (fun z => Complex.exp (L z)) (ball 0 r) :=
    fun z hz => ((hL z hz).differentiableAt.cexp).differentiableWithinAt
  have heq : EqOn (logDeriv g) (logDeriv (fun z => Complex.exp (L z))) (ball 0 r) := by
    intro z hz
    rw [logDeriv_exp L z (hL z hz).differentiableAt, (hL z hz).deriv]
  obtain ⟨C, _hC, hCeq⟩ :=
    (logDeriv_eqOn_iff hg he isOpen_ball (convex_ball (0 : ℂ) r).isPreconnected
      (fun z _ => Complex.exp_ne_zero (L z)) hn).mp heq
  have hC0 : g 0 = C := by
    simpa only [Pi.smul_apply, smul_eq_mul, h0, Complex.exp_zero, mul_one]
      using hCeq (mem_ball_self hr)
  refine ⟨L, h0, hL, ?_⟩
  intro z hz
  simpa only [Pi.smul_apply, smul_eq_mul, ← hC0] using hCeq hz

/-- The derivative conclusion supplies differentiability on the whole open disk. -/
theorem differentiableOn_of_log_derivative (g L : ℂ → ℂ) (r : ℝ)
    (hL : ∀ z ∈ ball 0 r, HasDerivAt L (logDeriv g z) z) :
    DifferentiableOn ℂ L (ball 0 r) :=
  fun z hz => (hL z hz).differentiableAt.differentiableWithinAt

/-- Normalized primitives of the same logarithmic derivative agree on the disk. -/
theorem normalized_primitives_eqOn (g L K : ℂ → ℂ) (r : ℝ) (hr : 0 < r)
    (hL : ∀ z ∈ ball 0 r, HasDerivAt L (logDeriv g z) z)
    (hK : ∀ z ∈ ball 0 r, HasDerivAt K (logDeriv g z) z)
    (hL0 : L 0 = 0) (hK0 : K 0 = 0) : EqOn L K (ball 0 r) := by
  have hd : DifferentiableOn ℂ (fun z => L z - K z) (ball 0 r) :=
    fun z hz => ((hL z hz).sub (hK z hz)).differentiableAt.differentiableWithinAt
  have hz : EqOn (deriv (fun z => L z - K z)) 0 (ball 0 r) := by
    intro z hz
    simpa only [sub_self, Pi.zero_apply, Pi.sub_def] using ((hL z hz).sub (hK z hz)).deriv
  obtain ⟨a, ha⟩ := isOpen_ball.exists_is_const_of_deriv_eq_zero
    (convex_ball (0 : ℂ) r).isPreconnected hd hz
  have ha0 : a = 0 := by simpa [hL0, hK0] using (ha 0 (mem_ball_self hr)).symm
  intro z hz
  exact sub_eq_zero.mp (by simpa [ha0] using ha z hz)

/-- A norm ceiling and a positive anchor floor bound the real part of any exact lift. -/
theorem re_log_le_of_modulus (g L : ℂ → ℂ) (M η : ℝ)
    (hM : 0 < M) (hη : 0 < η) (hfloor : η ≤ ‖g 0‖) (z : ℂ)
    (hz : ‖g z‖ ≤ M) (he : g z = g 0 * Complex.exp (L z)) :
    (L z).re ≤ Real.log (M / η) := by
  have hg0 : 0 < ‖g 0‖ := hη.trans_le hfloor
  have hn := congrArg norm he
  rw [norm_mul, Complex.norm_exp] at hn
  have hratio : Real.exp (L z).re = ‖g z‖ / ‖g 0‖ := by
    apply (eq_div_iff hg0.ne').mpr
    simpa only [mul_comm] using hn.symm
  have hb : Real.exp (L z).re ≤ M / η := by
    rw [hratio]
    exact (div_le_div_of_nonneg_right hz hg0.le).trans
      (div_le_div_of_nonneg_left hM.le hη hfloor)
  simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hb

/-- Construct both the logarithm and its all-point ceiling from the actual function. -/
theorem exists_normalized_log_bounded (g : ℂ → ℂ) (r M η : ℝ)
    (hr : 0 < r) (hM : 0 < M) (hη : 0 < η)
    (hg : DifferentiableOn ℂ g (ball 0 r))
    (hn : ∀ z ∈ ball 0 r, g z ≠ 0)
    (hbound : ∀ z ∈ ball 0 r, ‖g z‖ ≤ M) (hfloor : η ≤ ‖g 0‖) :
    ∃ L : ℂ → ℂ, L 0 = 0 ∧ DifferentiableOn ℂ L (ball 0 r) ∧
      (∀ z ∈ ball 0 r, HasDerivAt L (logDeriv g z) z) ∧
      (∀ z ∈ ball 0 r, g z = g 0 * Complex.exp (L z)) ∧
      (∀ z ∈ ball 0 r, (L z).re ≤ Real.log (M / η)) := by
  obtain ⟨L, h0, hd, he⟩ := exists_normalized_log g r hr hg hn
  exact ⟨L, h0, differentiableOn_of_log_derivative g L r hd, hd, he,
    fun z hz => re_log_le_of_modulus g L M η hM hη hfloor z (hbound z hz) (he z hz)⟩

end
end GRWTSK.Analysis.ComplexAnalysis.NormalizedDiskLogarithm
