/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.MeasureTheory.Constructions.Polish.Basic
import Mathlib.Tactic

/-!
# The Rodgers–Tao heat source and its forward-time normalization

Brad Rodgers and Terence Tao, *The De Bruijn–Newman constant is non-negative*,
Forum of Mathematics, Pi 8 (2020), e6, §1, definitions of `Φ` and `H_t`
(https://doi.org/10.1017/fmp.2020.6). The source uses `exp(t * u^2)` and the
backward heat equation. In forward time `s = -t` the multiplier is
`exp(-s * u^2)`, as in `FiniteHeatNewmanNormalization`.

This file retains the original theta series and half-line transform. A
summable majorant gives absolute integrability and a cutoff estimate. The
finite quadrature discrepancy remains a hypothesis. The normalization at
the Riemann xi function and transfer of zeros require separate arguments.
-/

set_option autoImplicit false

noncomputable section

namespace GRWTSK.RiemannHypothesis.RodgersTaoHeatSource

open MeasureTheory Set

/-- The `n+1` summand of the kernel `Φ` in Rodgers–Tao §1. -/
def kernelTerm (n : ℕ) (u : ℝ) : ℝ :=
  let k : ℝ := (n : ℝ) + 1
  (2 * Real.pi ^ 2 * k ^ 4 * Real.exp (9 * u) -
    3 * Real.pi * k ^ 2 * Real.exp (5 * u)) *
    Real.exp (-(Real.pi * k ^ 2 * Real.exp (4 * u)))

/-- The exact theta kernel on the nonnegative real half-line. -/
def kernel (u : ℝ) : ℝ := ∑' n : ℕ, kernelTerm n u

theorem kernelTerm_pos (n : ℕ) {u : ℝ} (hu : 0 ≤ u) : 0 < kernelTerm n u := by
  have hk : 1 ≤ (n : ℝ) + 1 := le_add_of_nonneg_left (Nat.cast_nonneg n)
  have hk2 : 1 ≤ ((n : ℝ) + 1) ^ 2 := by nlinarith
  have hE : 1 ≤ Real.exp (4 * u) := Real.one_le_exp_iff.mpr (by positivity)
  have hprod : 1 ≤ ((n : ℝ) + 1) ^ 2 * Real.exp (4 * u) :=
    one_le_mul_of_one_le_of_one_le hk2 hE
  have hpi := Real.pi_gt_three
  have hinner : 0 < 2 * Real.pi * (((n : ℝ) + 1) ^ 2 * Real.exp (4 * u)) - 3 := by
    nlinarith [mul_nonneg (show 0 ≤ Real.pi by positivity) (sub_nonneg.mpr hprod)]
  unfold kernelTerm
  change 0 < _ * Real.exp _
  apply mul_pos ?_ (Real.exp_pos _)
  rw [show 9 * u = 5 * u + 4 * u by ring, Real.exp_add]
  convert mul_pos (show 0 < Real.pi * ((n : ℝ) + 1) ^ 2 * Real.exp (5 * u) by positivity)
    hinner using 1
  ring

/-- A summable geometric-exponential majorant with an explicit decay factor in `u`. -/
theorem kernelTerm_le (n : ℕ) {u : ℝ} (hu : 0 ≤ u) :
    kernelTerm n u ≤
      (2 * Real.pi ^ 2 * Real.exp (9 * u) *
        Real.exp (-(Real.pi * (Real.exp (4 * u) - 1)))) *
      (((n : ℝ) + 1) ^ 4 * Real.exp (-Real.pi * ((n : ℝ) + 1))) := by
  let k : ℝ := (n : ℝ) + 1
  let E : ℝ := Real.exp (4 * u)
  have hk : 1 ≤ k := le_add_of_nonneg_left (Nat.cast_nonneg n)
  have hk2 : k ≤ k ^ 2 := by nlinarith
  have hE : 1 ≤ E := Real.one_le_exp_iff.mpr (by positivity)
  have hproduct : k + (E - 1) ≤ k ^ 2 * E := by
    nlinarith [mul_nonneg (show 0 ≤ k ^ 2 - 1 by nlinarith) (sub_nonneg.mpr hE)]
  have hexp : Real.exp (-(Real.pi * k ^ 2 * E)) ≤
      Real.exp (-(Real.pi * (E - 1))) * Real.exp (-Real.pi * k) := by
    rw [← Real.exp_add]
    apply Real.exp_monotone
    nlinarith [mul_nonneg Real.pi_pos.le (sub_nonneg.mpr hproduct)]
  change (2 * Real.pi ^ 2 * k ^ 4 * Real.exp (9 * u) -
    3 * Real.pi * k ^ 2 * Real.exp (5 * u)) * Real.exp (-(Real.pi * k ^ 2 * E)) ≤ _
  calc
    _ ≤ (2 * Real.pi ^ 2 * k ^ 4 * Real.exp (9 * u)) *
        Real.exp (-(Real.pi * k ^ 2 * E)) := by
      gcongr
      exact sub_le_self _ (by positivity)
    _ ≤ (2 * Real.pi ^ 2 * k ^ 4 * Real.exp (9 * u)) *
        (Real.exp (-(Real.pi * (E - 1))) * Real.exp (-Real.pi * k)) := by
      gcongr
    _ = _ := by dsimp [k, E]; ring

private theorem summableWeights : Summable (fun n : ℕ => ((n : ℝ) + 1) ^ 4 *
    Real.exp (-Real.pi * ((n : ℝ) + 1))) := by
  have h := (Real.summable_pow_mul_exp_neg_nat_mul 4 Real.pi_pos).comp_injective
    Nat.succ_injective
  change Summable (fun n : ℕ => (n.succ : ℝ) ^ 4 * Real.exp (-Real.pi * (n.succ : ℝ))) at h
  simpa only [Nat.cast_succ] using h

theorem summable_kernelTerm {u : ℝ} (hu : 0 ≤ u) : Summable (fun n => kernelTerm n u) := by
  refine (summableWeights.mul_left (2 * Real.pi ^ 2 * Real.exp (9 * u) *
    Real.exp (-(Real.pi * (Real.exp (4 * u) - 1))))).of_nonneg_of_le
      (fun n => (kernelTerm_pos n hu).le) ?_
  exact fun n => kernelTerm_le n hu

theorem kernel_pos {u : ℝ} (hu : 0 ≤ u) : 0 < kernel u :=
  (summable_kernelTerm hu).tsum_pos (fun n => (kernelTerm_pos n hu).le) 0
    (kernelTerm_pos 0 hu)

/-- The finite constant in the global majorant for the theta kernel. -/
def majorantConstant : ℝ := 2 * Real.pi ^ 2 *
  ∑' n : ℕ, ((n : ℝ) + 1) ^ 4 * Real.exp (-Real.pi * ((n : ℝ) + 1))

theorem majorantConstant_nonneg : 0 ≤ majorantConstant := by
  unfold majorantConstant
  exact mul_nonneg (by positivity) (tsum_nonneg fun _ => by positivity)

theorem kernel_le {u : ℝ} (hu : 0 ≤ u) :
    kernel u ≤ majorantConstant * Real.exp (9 * u - Real.pi * (Real.exp (4 * u) - 1)) := by
  let c := 2 * Real.pi ^ 2 * Real.exp (9 * u) *
    Real.exp (-(Real.pi * (Real.exp (4 * u) - 1)))
  have h := (summable_kernelTerm hu).tsum_le_tsum (fun n => kernelTerm_le n hu)
    (summableWeights.mul_left c)
  rw [tsum_mul_left] at h
  rw [sub_eq_add_neg, Real.exp_add]
  exact h.trans_eq (by dsimp [c, majorantConstant]; ring)

/-- The complex cosine integrand in the published Newman time convention. -/
def integrand (t : ℝ) (z : ℂ) (u : ℝ) : ℂ :=
  ((Real.exp (t * u ^ 2) * kernel u : ℝ) : ℂ) * Complex.cos (z * (u : ℂ))

/-- The absolutely convergent half-line transform. -/
def heat (t : ℝ) (z : ℂ) : ℂ := ∫ u in Ici (0 : ℝ), integrand t z u

private theorem measurable_integrand (t : ℝ) (z : ℂ) : Measurable (integrand t z) := by
  have h : Measurable kernel := Measurable.tsum fun n => by
    unfold kernelTerm
    fun_prop
  unfold integrand
  fun_prop

private theorem norm_cos_le_exp_norm (w : ℂ) : ‖Complex.cos w‖ ≤ Real.exp ‖w‖ := by
  rw [Complex.cos, norm_div, Complex.norm_two]
  have h₁ := Complex.norm_exp_le_exp_norm (w * Complex.I)
  have h₂ := Complex.norm_exp_le_exp_norm (-w * Complex.I)
  simp only [norm_mul, Complex.norm_I, norm_neg, mul_one] at h₁ h₂
  linarith [norm_add_le (Complex.exp (w * Complex.I)) (Complex.exp (-w * Complex.I))]

theorem norm_integrand_le (t : ℝ) (z : ℂ) {u : ℝ} (hu : 0 ≤ u) :
    ‖integrand t z u‖ ≤ majorantConstant * Real.exp
      (t * u ^ 2 + (9 + ‖z‖) * u - Real.pi * (Real.exp (4 * u) - 1)) := by
  have hker := (kernel_pos hu).le
  have hcos := norm_cos_le_exp_norm (z * (u : ℂ))
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hu] at hcos
  rw [integrand, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (mul_nonneg (Real.exp_pos _).le hker)]
  calc
    _ ≤ Real.exp (t * u ^ 2) * kernel u * Real.exp (‖z‖ * u) := by gcongr
    _ ≤ Real.exp (t * u ^ 2) * (majorantConstant *
        Real.exp (9 * u - Real.pi * (Real.exp (4 * u) - 1))) * Real.exp (‖z‖ * u) := by
      gcongr
      exact kernel_le hu
    _ = _ := by
      rw [show t * u ^ 2 + (9 + ‖z‖) * u - Real.pi * (Real.exp (4 * u) - 1) =
        (t * u ^ 2 + (9 * u - Real.pi * (Real.exp (4 * u) - 1))) + ‖z‖ * u by ring]
      simp only [Real.exp_add]
      ring

/-- A simple integrable tail majorant, valid also for positive Newman time and complex `z`. -/
theorem norm_integrand_le_exp_neg {t u : ℝ} {z : ℂ} (hu : |t| + ‖z‖ + 11 ≤ u) :
    ‖integrand t z u‖ ≤ majorantConstant * Real.exp (-u) := by
  have h₁ : 1 ≤ u := by linarith [abs_nonneg t, norm_nonneg z]
  have h₀ : 0 ≤ u := by linarith
  refine (norm_integrand_le t z h₀).trans (mul_le_mul_of_nonneg_left ?_ majorantConstant_nonneg)
  apply Real.exp_monotone
  have hcubic : u ^ 3 ≤ Real.exp (4 * u) - 1 := by
    have h := Real.pow_div_factorial_le_exp (4 * u) (by positivity) 3
    norm_num [Nat.factorial] at h
    nlinarith [mul_nonneg (sub_nonneg.mpr h₁) (show 0 ≤ u ^ 2 + u + 1 by positivity)]
  have hpi : u ^ 3 ≤ Real.pi * (Real.exp (4 * u) - 1) := hcubic.trans <|
    le_mul_of_one_le_left (by linarith [show 0 ≤ u ^ 3 by positivity]) (by linarith [Real.pi_gt_three])
  have hquad : u ≤ u ^ 2 := by nlinarith [mul_nonneg h₀ (sub_nonneg.mpr h₁)]
  have hlinear := mul_le_mul_of_nonneg_left hquad (show 0 ≤ 10 + ‖z‖ by positivity)
  have ht := mul_le_mul_of_nonneg_right (le_abs_self t) (sq_nonneg u)
  have hu' := mul_le_mul_of_nonneg_right hu (sq_nonneg u)
  nlinarith

theorem integrableOn_integrand (t : ℝ) (z : ℂ) :
    IntegrableOn (integrand t z) (Ici (0 : ℝ)) := by
  let R := |t| + ‖z‖ + 11
  have hR : 0 ≤ R := by dsimp [R]; positivity
  rw [← Icc_union_Ioi_eq_Ici hR, integrableOn_union]
  refine ⟨?_, ((integrableOn_exp_neg_Ioi R).const_mul majorantConstant).mono'
    (measurable_integrand t z).aestronglyMeasurable ?_⟩
  · let B := majorantConstant * Real.exp (|t| * R ^ 2 + (9 + ‖z‖) * R)
    refine (integrableOn_const (C := B) isCompact_Icc.measure_ne_top).mono'
      (measurable_integrand t z).aestronglyMeasurable ((ae_restrict_mem measurableSet_Icc).mono ?_)
    intro u hu
    refine (norm_integrand_le t z hu.1).trans
      (mul_le_mul_of_nonneg_left (Real.exp_monotone ?_) majorantConstant_nonneg)
    have hsq : u ^ 2 ≤ R ^ 2 := by nlinarith [mul_nonneg (sub_nonneg.mpr hu.2) (add_nonneg hu.1 hR)]
    have ht := mul_le_mul (le_abs_self t) hsq (sq_nonneg u) (abs_nonneg t)
    have hlinear := mul_le_mul_of_nonneg_left hu.2 (show 0 ≤ 9 + ‖z‖ by positivity)
    have hexp := Real.one_le_exp_iff.mpr (show 0 ≤ 4 * u by linarith [hu.1])
    linarith [mul_nonneg Real.pi_pos.le (sub_nonneg.mpr hexp)]
  · exact (ae_restrict_mem measurableSet_Ioi).mono fun _ hu => norm_integrand_le_exp_neg hu.le

/-- Nonnegative forward time has the sign of a dissipative heat multiplier. -/
theorem integrand_neg_time (s : ℝ) (z : ℂ) (u : ℝ) :
    integrand (-s) z u =
      ((Real.exp (-(s * u ^ 2)) * kernel u : ℝ) : ℂ) * Complex.cos (z * (u : ℂ)) := by
  rw [integrand, neg_mul]

/-- At `z = 0` and every positive frequency the two signs give distinct integrands. -/
theorem norm_integrand_neg_time_lt_pos_time {s u : ℝ} (hs : 0 < s) (hu : 0 < u) :
    ‖integrand (-s) 0 u‖ < ‖integrand s 0 u‖ := by
  have hΦ := kernel_pos hu.le
  simp only [integrand, zero_mul, Complex.cos_zero, mul_one, Complex.norm_real,
    Real.norm_eq_abs, abs_of_pos (mul_pos (Real.exp_pos _) hΦ)]
  exact mul_lt_mul_of_pos_right (Real.exp_lt_exp.mpr (by nlinarith [mul_pos hs (sq_pos_of_pos hu)])) hΦ

/-- An exact cutoff decomposition retaining the actual theta kernel on each interval. -/
theorem heat_eq_cutoff_add_tail {t R : ℝ} {z : ℂ} (hR : 0 ≤ R) :
    heat t z = (∫ u in Icc 0 R, integrand t z u) + (∫ u in Ioi R, integrand t z u) := by
  have hsub : Icc (0 : ℝ) R ⊆ Ici 0 := fun _ hx => hx.1
  have htail : Ioi R ⊆ Ici (0 : ℝ) := fun _ hx => hR.trans hx.le
  have h := integrableOn_integrand t z
  rw [heat, ← Icc_union_Ioi_eq_Ici hR]
  exact setIntegral_union (disjoint_left.mpr fun _ hx hy => not_lt_of_ge hx.2 hy)
    measurableSet_Ioi (h.mono_set hsub) (h.mono_set htail)

/-- A finite readout approximation requires both cutoff quadrature and a genuine tail bound. -/
theorem norm_heat_sub_readout_le {t R : ℝ} {z q : ℂ} {ε : ℝ}
    (hR : |t| + ‖z‖ + 11 ≤ R)
    (hquad : ‖(∫ u in Icc 0 R, integrand t z u) - q‖ ≤ ε) :
    ‖heat t z - q‖ ≤ ε + majorantConstant * Real.exp (-R) := by
  have hR₀ : 0 ≤ R := by linarith [abs_nonneg t, norm_nonneg z]
  have htail := (integrableOn_integrand t z).mono_set
    (show Ioi R ⊆ Ici (0 : ℝ) from fun _ hu => hR₀.trans hu.le)
  have hbound := setIntegral_mono_on htail.norm ((integrableOn_exp_neg_Ioi R).const_mul majorantConstant)
    measurableSet_Ioi (fun _ hu => norm_integrand_le_exp_neg (hR.trans hu.le))
  rw [integral_const_mul, integral_exp_neg_Ioi] at hbound
  rw [heat_eq_cutoff_add_tail hR₀, add_sub_right_comm]
  exact (norm_add_le _ _).trans (add_le_add hquad ((norm_integral_le_integral_norm _).trans hbound))

end GRWTSK.RiemannHypothesis.RodgersTaoHeatSource
