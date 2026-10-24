/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CubicRemainder
import Mathlib.Analysis.Calculus.ParametricIntervalIntegral

set_option autoImplicit false

/-!
# Holomorphy of the specified cubic remainder

Every retained unit-cell integral is entire in s. The complete series has a
summable majorant uniform on each closed half-plane Re(s)>=sigma0>-2.
The pinned locally-uniform-limit theorem therefore proves holomorphy on
Re(s)>-2. This is not analytic continuation of an inequality, and does not yet
identify the Euler--Maclaurin expression with the actual riemannZeta source.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CubicRemainderHolomorphic

open MeasureTheory Set Filter
open scoped Topology Interval BigOperators
open GRWTSK.Analysis.RealAnalysis.PowerCellMajorant
open GRWTSK.Analysis.RealAnalysis.CubicEulerMaclaurin
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.RiemannHypothesis.CubicPowerSummation
open GRWTSK.RiemannHypothesis.CubicRemainder

noncomputable section

/-- The actual signed logarithmic moment; the minus sign is from exponent -s. -/
def cellLogMoment (q : ℝ) (s : ℂ) : ℂ :=
  ∫ u in (0 : ℝ)..1, ((third u : ℂ) * logPower (q + u) (-s - 3)) *
    (-(Real.log (q + u) : ℂ))

theorem cellLogMoment_integrable (q : ℝ) (hq : 0 < q) (s : ℂ) :
    IntervalIntegrable (fun u : ℝ =>
      ((third u : ℂ) * logPower (q + u) (-s - 3)) * (-(Real.log (q + u) : ℂ)))
      volume 0 1 := by
  have ht : Continuous (fun u : ℝ => (third u : ℂ)) := by unfold third; fun_prop
  have hl : ContinuousOn (fun u : ℝ => (-(Real.log (q + u) : ℂ))) (Icc (0 : ℝ) 1) := by
    intro u hu
    have hqu : q + u ≠ 0 := ne_of_gt (by linarith [hu.1])
    exact (by fun_prop (disch := assumption) :
      ContinuousAt (fun v : ℝ => (-(Real.log (q + v) : ℂ))) u).continuousWithinAt
  have hc := ht.continuousOn.mul (continuousOn_shifted_power q hq (-s - 3))
  exact (hc.mul hl).intervalIntegrable_of_Icc (by norm_num)

/-- A compact spatial majorant for parameter derivatives; no logarithmic moment is omitted. -/
theorem norm_cell_log_density_le (q B : ℝ) (hq : 1 ≤ q) (hB : 0 ≤ B)
    (s : ℂ) (hs : -s.re - 3 ≤ B) (u : ℝ) (hu : u ∈ Icc (0 : ℝ) 1) :
    ‖((third u : ℂ) * logPower (q + u) (-s - 3)) * (-(Real.log (q + u) : ℂ))‖ ≤
      (1 / 48 : ℝ) * Real.exp (B * Real.log (q + 1)) * Real.log (q + 1) := by
  have hqu : 1 ≤ q + u := by linarith [hu.1]
  have hl : Real.log (q + u) ≤ Real.log (q + 1) :=
    Real.log_le_log (by linarith) (by linarith [hu.2])
  have hn : ‖logPower (q + u) (-s - 3)‖ ≤ Real.exp (B * Real.log (q + 1)) := by
    apply (norm_logPower_le (β := B) (z := -s - 3) hqu (by simpa using hs)).trans
    exact Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hl hB)
  rw [norm_mul, norm_mul, norm_neg, Complex.norm_real, Complex.norm_real,
    Real.norm_eq_abs, Real.norm_eq_abs, abs_of_nonneg (Real.log_nonneg hqu)]
  exact mul_le_mul (mul_le_mul (abs_third_le u hu) hn (norm_nonneg _)
    (by norm_num)) hl (Real.log_nonneg hqu) (by positivity)

/-- The parameter derivative is derived under the finite integral, including q=1. -/
theorem hasDerivAt_cell (q : ℝ) (hq : 1 ≤ q) (s₀ : ℂ) :
    HasDerivAt (fun s : ℂ => cellRemainder q (-s)) (cellLogMoment q s₀) s₀ := by
  let F : ℂ → ℝ → ℂ := fun s u => (third u : ℂ) * logPower (q + u) (-s - 3)
  let F' : ℂ → ℝ → ℂ := fun s u => F s u * (-(Real.log (q + u) : ℂ))
  let U : Set ℂ := {s | s₀.re - 1 < s.re}
  let B : ℝ := max 0 (-s₀.re - 2)
  have hB : 0 ≤ B := le_max_left _ _
  have hU : U ∈ 𝓝 s₀ :=
    (isOpen_lt continuous_const Complex.continuous_re).mem_nhds (by dsimp [U]; linarith)
  have hq0 : 0 < q := by linarith
  have hd (s : ℂ) (u : ℝ) : HasDerivAt (fun w : ℂ => F w u) (F' s u) s := by
    have he := ((((hasDerivAt_id s).neg).sub_const 3).mul_const
      (Real.log (q + u) : ℂ)).cexp
    have hh := he.const_mul (third u : ℂ)
    apply hh.congr_deriv
    dsimp [F, F', logPower]
    ring
  have hb : ∀ᵐ u ∂volume, u ∈ Ι (0 : ℝ) 1 → ∀ s ∈ U,
      ‖F' s u‖ ≤ (1 / 48 : ℝ) * Real.exp (B * Real.log (q + 1)) * Real.log (q + 1) := by
    exact Eventually.of_forall (fun u hu s hs => by
      have hu' : u ∈ Icc (0 : ℝ) 1 := by
        have hu'' : u ∈ Ioc (0 : ℝ) 1 := by simpa using hu
        exact ⟨hu''.1.le, hu''.2⟩
      have hs' : s₀.re - 1 < s.re := hs
      have hupper : -s.re - 3 ≤ B := by
        have hm : -s₀.re - 2 ≤ B := le_max_right _ _
        linarith
      exact norm_cell_log_density_le q B hq hB s hupper u hu')
  have h := intervalIntegral.hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (F := F) (F' := F')
    (bound := fun _ => (1 / 48 : ℝ) * Real.exp (B * Real.log (q + 1)) * Real.log (q + 1)) hU
    (Eventually.of_forall (fun s => (cell_integrable q hq0 s).def'.aestronglyMeasurable))
    (cell_integrable q hq0 s₀) (cellLogMoment_integrable q hq0 s₀).def'.aestronglyMeasurable hb
    intervalIntegrable_const (Eventually.of_forall (fun u _ s _ => hd s u))
  exact h.2

/-- Each cell is entire; the complete sum will have a restricted proved domain. -/
theorem differentiable_cell (q : ℝ) (hq : 1 ≤ q) :
    Differentiable ℂ (fun s : ℂ => cellRemainder q (-s)) :=
  fun s => (hasDerivAt_cell q hq s).differentiableAt

/-- Normal convergence uses an actual summable, all-point majorant on a fixed half-plane. -/
theorem differentiableOn_above (σ₀ : ℝ) (hσ : -2 < σ₀) :
    DifferentiableOn ℂ cubicRemainder {s : ℂ | σ₀ < s.re} := by
  have hu : Summable (fun k : ℕ => powerCell ((k : ℝ) + 1) (σ₀ + 2) / 48) := by
    simpa only [add_comm (1 : ℝ)] using summable_cell_majorant 1 σ₀ (by norm_num) hσ
  exact Complex.differentiableOn_tsum_of_summable_norm (U := {w : ℂ | σ₀ < w.re}) hu
    (fun k => (differentiable_cell ((k : ℝ) + 1) (by linarith [Nat.cast_nonneg (α := ℝ) k])).differentiableOn)
    (isOpen_lt continuous_const Complex.continuous_re)
    (fun k s hs => norm_cell_le ((k : ℝ) + 1) σ₀ (by linarith [Nat.cast_nonneg (α := ℝ) k]) hσ s hs.le)

/-- Every point strictly to the right of -2 has a smaller half-plane neighborhood. -/
theorem differentiableAt_cubicRemainder (s : ℂ) (hs : -2 < s.re) :
    DifferentiableAt ℂ cubicRemainder s := by
  let σ₀ : ℝ := (s.re - 2) / 2
  have hσ : -2 < σ₀ := by dsimp [σ₀]; linarith
  have hmem : s ∈ {w : ℂ | σ₀ < w.re} := by dsimp [σ₀]; linarith
  exact (differentiableOn_above σ₀ hσ).differentiableAt
    ((isOpen_lt continuous_const Complex.continuous_re).mem_nhds hmem)

theorem analyticOnNhd_cubicRemainder :
    AnalyticOnNhd ℂ cubicRemainder {s : ℂ | -2 < s.re} := by
  have hd : DifferentiableOn ℂ cubicRemainder {s : ℂ | -2 < s.re} :=
    fun s hs => (differentiableAt_cubicRemainder s hs).differentiableWithinAt
  exact hd.analyticOnNhd (isOpen_lt continuous_const Complex.continuous_re)

/-- The differentiated cell series represents the derivative of the specified full remainder. -/
theorem hasSum_cellLogMoment (s : ℂ) (hs : -2 < s.re) :
    HasSum (fun k : ℕ => cellLogMoment ((k : ℝ) + 1) s) (deriv cubicRemainder s) := by
  let σ₀ : ℝ := (s.re - 2) / 2
  have hσ : -2 < σ₀ := by dsimp [σ₀]; linarith
  have hu : Summable (fun k : ℕ => powerCell ((k : ℝ) + 1) (σ₀ + 2) / 48) := by
    simpa only [add_comm (1 : ℝ)] using summable_cell_majorant 1 σ₀ (by norm_num) hσ
  have h := Complex.hasSum_deriv_of_summable_norm (U := {w : ℂ | σ₀ < w.re}) hu
    (fun k => (differentiable_cell ((k : ℝ) + 1) (by linarith [Nat.cast_nonneg (α := ℝ) k])).differentiableOn)
    (isOpen_lt continuous_const Complex.continuous_re)
    (fun k w hw => norm_cell_le ((k : ℝ) + 1) σ₀ (by linarith [Nat.cast_nonneg (α := ℝ) k]) hσ w hw.le)
    (show s ∈ {w : ℂ | σ₀ < w.re} by dsimp [σ₀]; linarith)
  have hd (k : ℕ) : deriv (fun w : ℂ => cellRemainder ((k : ℝ) + 1) (-w)) s =
      cellLogMoment ((k : ℝ) + 1) s := (hasDerivAt_cell _ (by linarith [Nat.cast_nonneg (α := ℝ) k]) s).deriv
  convert h using 1 <;> first | rfl | (simp only [hd])

end
end GRWTSK.RiemannHypothesis.CubicRemainderHolomorphic
