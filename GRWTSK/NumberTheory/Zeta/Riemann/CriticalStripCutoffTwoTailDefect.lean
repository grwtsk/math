/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticTangentDefect
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoSource

set_option autoImplicit false

/-!
# A separately derived norm saving at cutoff two

The same signed sextic kernel and all 112 existing Bernstein coefficients are
used on [2,3]. This is not transport of a cutoff-one integral estimate. Exact
polynomial moments of the translated density are integrated against a rational
tangent to t^-7. The varying real exponent is aligned at t=2 before normalization.
The complement (3,infinity) has separately proved nonnegative integrable defect.
Only cutoff TWO and 1/2<=Re(s)<=1 receive the new factor 3/4.
SOURCE SCRIPTS: Lean elaboration and transitive axiom audit NOT_RUN.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo.SecondCell
open Complex MeasureTheory Set Filter MellinPrimitiveStep KernelDefect BernsteinMass
open scoped Topology
noncomputable section

def node (j : ℕ) : ℝ := 2 + (j : ℝ) / 16

def center (i : Fin 16) : ℝ := (node i.val + node (i.val + 1)) / 2

lemma node_order (j : ℕ) : 2 ≤ node j ∧ node j ≤ node (j + 1) := by
  unfold node
  push_cast
  have hj : (0 : ℝ) ≤ j := by positivity
  constructor <;> linarith

/-- The right endpoint t=3 is checked separately: its fractional part resets. -/
lemma source_on_second_cell {t : ℝ} (ht : 2 ≤ t) (ht3 : t ≤ 3) :
    sixthKernel.value t = ((normalized (t - 2) / 30240 : ℝ) : ℂ) := by
  have ht1 : 1 ≤ t := by linarith
  by_cases htlt : t < 3
  · have hf : ⌊t⌋₊ = 2 := (Nat.floor_eq_iff' (by decide : (2 : ℕ) ≠ 0)).mpr
      ⟨by simpa using ht, by simpa using htlt⟩
    simp only [sixthKernel, sixthRawKernel, realFractionalKernel, if_pos ht1, hf]
    unfold sixthRaw normalized
    push_cast
    ring
  · have heq : t = 3 := le_antisymm ht3 (le_of_not_gt htlt)
    subst t
    norm_num [sixthKernel, sixthRawKernel, sixthRaw, realFractionalKernel, normalized]

lemma density_bound (i : Fin 16) {t : ℝ}
    (ht : node i.val ≤ t) (ht1 : t ≤ node (i.val + 1)) :
    30240 * ‖sixthKernel.value t‖ ≤ 1 - density i (16 * (t - 2) - (i.val : ℝ)) := by
  have hi : (i.val : ℝ) ≤ 15 := by exact_mod_cast (show i.val ≤ 15 by omega)
  have htlo : 2 ≤ t := (node_order i.val).1.trans ht
  have hthi : t ≤ 3 := by dsimp [node] at ht1; push_cast at ht1; linarith
  have hv : 0 ≤ 16 * (t - 2) - (i.val : ℝ) := by dsimp [node] at ht; linarith
  have hv1 : 16 * (t - 2) - (i.val : ℝ) ≤ 1 := by
    dsimp [node] at ht1; push_cast at ht1; linarith
  have hd := density_le_deficit i hv hv1
  rw [show ((i.val : ℝ) + (16 * (t - 2) - (i.val : ℝ))) / 16 = t - 2 by ring] at hd
  rw [source_on_second_cell htlo hthi, Complex.norm_real, Real.norm_eq_abs, abs_div]
  norm_num
  linarith

def lower (i : Fin 16) (t : ℝ) : ℝ :=
  density i (16 * (t - 2) - (i.val : ℝ)) * tangent7 (center i) t

def mass (i : Fin 16) : ℝ := (1 / 16 : ℝ) *
  (∑ j : Fin 7, deficitCoefficient i j *
    ((8 * center i - 7 * node i.val) * moment j 0 - (7 / 16) * moment j 1)) /
      (center i) ^ 8

lemma lower_integral (i : Fin 16) :
    (∫ t : ℝ in node i.val..node (i.val + 1), lower i t) = mass i := by
  have hs := intervalIntegral.mul_integral_comp_mul_add (f := lower i)
    (a := 0) (b := 1) (1 / 16 : ℝ) (node i.val)
  have hnext : (1 / 16 : ℝ) + node i.val = node (i.val + 1) := by
    unfold node; push_cast; ring
  simp only [mul_zero, zero_add, mul_one, hnext] at hs
  rw [← hs]
  have hf : (fun v : ℝ => lower i (v / 16 + node i.val)) = fun v =>
      (∑ j : Fin 7, deficitCoefficient i j * (basis j v *
        ((8 * center i - 7 * node i.val) + (-(7 / 16)) * v))) / center i ^ 8 := by
    funext v
    unfold lower density tangent7
    rw [show 16 * (v / 16 + node i.val - 2) - (i.val : ℝ) = v by unfold node; ring]
    rw [Finset.sum_mul, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro j _
    ring
  simp only [one_div, inv_mul_eq_div]
  rw [hf, intervalIntegral.integral_div, intervalIntegral.integral_finsetSum]
  · simp_rw [intervalIntegral.integral_const_mul, linear_moment]
    unfold mass
    simp only [neg_mul, add_neg_eq_sub]
    ring
  · intro j _
    exact (by fun_prop : Continuous _).intervalIntegrable _ _

/-- Finite rational arithmetic from the old exact coefficient table, not quadrature. -/
theorem total_mass : (1 / 1408 : ℝ) ≤ ∑ i : Fin 16, mass i := by
  norm_num [mass, moment, center, node, deficitCoefficient, powerCoefficients,
    coefficients, binomialWeight, Fin.sum_univ_succ]

lemma weight_lower {x t : ℝ} (hx : x ≤ 1) (ht : 2 ≤ t) :
    (2 : ℝ) ^ (1 - x) * t ^ (-(7 : ℝ)) ≤ t ^ (-(x + 6)) := by
  have ht0 : 0 < t := by linarith
  have hp := Real.rpow_le_rpow (by norm_num : (0 : ℝ) ≤ 2) ht (sub_nonneg.mpr hx)
  have h := mul_le_mul_of_nonneg_right hp (Real.rpow_nonneg ht0.le (-(7 : ℝ)))
  rw [← Real.rpow_add ht0, show (1 - x) + -(7 : ℝ) = -(x + 6) by ring] at h
  exact h

lemma defect_lower (i : Fin 16) {s : ℂ} (hx1 : s.re ≤ 1) {t : ℝ}
    (ht : node i.val ≤ t) (ht1 : t ≤ node (i.val + 1)) :
    (2 : ℝ) ^ (1 - s.re) * lower i t ≤ defect s t := by
  have htlo : 2 ≤ t := (node_order i.val).1.trans ht
  have ht0 : 0 < t := by linarith
  have hc : 0 < center i := by
    unfold center; linarith [(node_order i.val).1, (node_order (i.val + 1)).1]
  have hv : 0 ≤ 16 * (t - 2) - (i.val : ℝ) := by dsimp [node] at ht; linarith
  have hv1 : 16 * (t - 2) - (i.val : ℝ) ≤ 1 := by
    dsimp [node] at ht1; push_cast at ht1; linarith
  have hd := density_nonneg i hv hv1
  have hA : 0 ≤ (2 : ℝ) ^ (1 - s.re) := Real.rpow_nonneg (by norm_num) _
  have htan := mul_le_mul_of_nonneg_left (tangent7_le hc ht0) (mul_nonneg hA hd)
  have hw := mul_le_mul_of_nonneg_left (weight_lower hx1 htlo) hd
  have hk := mul_le_mul_of_nonneg_right (density_bound i ht ht1)
    (Real.rpow_nonneg ht0.le (-(s.re + 6)))
  unfold lower defect
  rw [integrand_norm ht0]
  nlinarith

lemma subcell_integral {s : ℂ} (hs : 0 < s.re) (hx1 : s.re ≤ 1) (i : Fin 16) :
    (2 : ℝ) ^ (1 - s.re) * mass i ≤
      ∫ t : ℝ in node i.val..node (i.val + 1), defect s t := by
  have hab := (node_order i.val).2
  have hl : Continuous (lower i) := by unfold lower tangent7; fun_prop
  have hi := real_interval_of_tail (defect_integrable hs)
    (by linarith [(node_order i.val).1]) hab
  have hb : (∫ t : ℝ in node i.val..node (i.val + 1),
      (2 : ℝ) ^ (1 - s.re) * lower i t) ≤
      ∫ t : ℝ in node i.val..node (i.val + 1), defect s t := by
    rw [intervalIntegral.integral_of_le hab, intervalIntegral.integral_of_le hab]
    apply integral_mono_ae
      ((intervalIntegrable_iff_integrableOn_Ioc_of_le hab).mp
        ((hl.intervalIntegrable _ _).const_mul ((2 : ℝ) ^ (1 - s.re))))
      ((intervalIntegrable_iff_integrableOn_Ioc_of_le hab).mp hi)
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    exact defect_lower i hx1 ht.1.le ht.2
  rw [intervalIntegral.integral_const_mul, lower_integral] at hb
  exact hb

lemma cell_defect_lower {s : ℂ} (hs : 0 < s.re) (hx1 : s.re ≤ 1) :
    (2 : ℝ) ^ (1 - s.re) / 1408 ≤ ∫ t : ℝ in (2 : ℝ)..3, defect s t := by
  have heq : (∑ i : Fin 16, ∫ t : ℝ in node i.val..node (i.val + 1), defect s t) =
      ∫ t : ℝ in (2 : ℝ)..3, defect s t := by
    rw [Fin.sum_univ_eq_sum_range]
    have h := intervalIntegral.sum_integral_adjacent_intervals (a := node) (n := 16)
      (fun k _ => real_interval_of_tail (defect_integrable hs)
        (by linarith [(node_order k).1]) (node_order k).2)
    simpa only [node, Nat.cast_zero, zero_div, add_zero, Nat.cast_ofNat,
      show (2 + (16 : ℝ) / 16) = 3 by norm_num] using h
  calc
    _ ≤ (2 : ℝ) ^ (1 - s.re) * ∑ i : Fin 16, mass i := by
      simpa only [mul_one_div] using mul_le_mul_of_nonneg_left total_mass
        (Real.rpow_nonneg (by norm_num : (0 : ℝ) ≤ 2) _)
    _ = ∑ i : Fin 16, (2 : ℝ) ^ (1 - s.re) * mass i := Finset.mul_sum _ _ _
    _ ≤ _ := Finset.sum_le_sum (fun i _ => subcell_integral hs hx1 i)
    _ = _ := heq

lemma full_defect_lower {s : ℂ} (hs : 0 < s.re) (hx1 : s.re ≤ 1) :
    (2 : ℝ) ^ (1 - s.re) / 1408 ≤ ∫ t : ℝ in Ioi 2, defect s t := by
  have hi := defect_integrable hs
  have hd : Disjoint (Ioc (2 : ℝ) 3) (Ioi 3) := by
    apply Set.disjoint_left.mpr
    intro t ht ht3
    exact (not_lt_of_ge ht.2) ht3
  have hu : Ioc (2 : ℝ) 3 ∪ Ioi 3 = Ioi 2 := by
    ext t
    constructor
    · rintro (h | h)
      · exact h.1
      · linarith
    · intro ht
      by_cases h3 : t ≤ 3
      · exact Or.inl ⟨ht, h3⟩
      · exact Or.inr (lt_of_not_ge h3)
  have hsplit := setIntegral_union hd measurableSet_Ioi
    (hi.mono_set (by intro t ht; linarith [ht.1]))
    (hi.mono_set (Ioi_subset_Ioi (by norm_num : (1 : ℝ) ≤ 3)))
  rw [hu, ← intervalIntegral.integral_of_le (by norm_num : (2 : ℝ) ≤ 3)] at hsplit
  have htail : 0 ≤ ∫ t : ℝ in Ioi 3, defect s t := by
    apply setIntegral_nonneg measurableSet_Ioi
    intro t ht
    exact defect_nonneg s (by linarith)
  have hcell := cell_defect_lower hs hx1
  linarith

lemma weight_shift (x : ℝ) : (2 : ℝ) ^ (1 - x) = 64 * (2 : ℝ) ^ (-(x + 5)) := by
  rw [show 1 - x = (6 : ℝ) + -(x + 5) by ring,
    Real.rpow_add (by norm_num : (0 : ℝ) < 2)]
  norm_num

/-- This is a new cutoff-two theorem, not reuse of any cutoff-one saving. -/
theorem tail_improved {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) :
    ‖tail 2 s‖ ≤ (3 / 4 : ℝ) *
      ((2 : ℝ) ^ (-(s.re + 5)) / (30240 * (s.re + 5))) := by
  have hs : 0 < s.re := by linarith
  have hden : 0 < s.re + 5 := by linarith
  have hp : IntegrableOn (fun t : ℝ => t ^ (-(s.re + 6))) (Ioi 2) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) (by norm_num)
  have hi := sixthKernel.integrand_integrable (T := 2) (z := s + 6) (by norm_num)
    (by simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  have heq : (∫ t : ℝ in Ioi 2, defect s t) =
      (2 : ℝ) ^ (-(s.re + 5)) / (s.re + 5) -
        30240 * ∫ t : ℝ in Ioi 2, ‖sixthKernel.integrand (s + 6) t‖ := by
    rw [defect, integral_sub hp (hi.norm.const_mul 30240), integral_const_mul]
    rw [integral_Ioi_rpow_of_lt (by linarith : -(s.re + 6) < -1) (by norm_num : (0 : ℝ) < 2),
      show -(s.re + 6) + 1 = -(s.re + 5) by ring, neg_div_neg_eq]
  have hn : ‖tail 2 s‖ ≤ ∫ t : ℝ in Ioi 2, ‖sixthKernel.integrand (s + 6) t‖ :=
    norm_integral_le_integral_norm _
  have hd := full_defect_lower hs hx1
  rw [heq, weight_shift] at hd
  have hb : 30240 * ‖tail 2 s‖ + (2 : ℝ) ^ (-(s.re + 5)) / 22 ≤
      (2 : ℝ) ^ (-(s.re + 5)) / (s.re + 5) := by nlinarith
  have hm := mul_le_mul_of_nonneg_right hb hden.le
  rw [div_mul_cancel₀ _ hden.ne'] at hm
  have hpow : 0 ≤ (2 : ℝ) ^ (-(s.re + 5)) := Real.rpow_nonneg (by norm_num) _
  have hsave := mul_nonneg hpow (show 0 ≤ s.re - 1 / 2 by linarith)
  rw [← mul_div_assoc]
  apply (le_div_iff₀ (mul_pos (by norm_num : (0 : ℝ) < 30240) hden)).mpr
  change ‖tail 2 s‖ * (30240 * (s.re + 5)) ≤ (3 / 4 : ℝ) * (2 : ℝ) ^ (-(s.re + 5))
  nlinarith

/-- The exact residual and all seven parameter factors remain attached to H. -/
theorem source_error_improved {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) :
    ‖poleNormalizedZeta s - finiteModel 2 s‖ ≤
      (3 / 4 : ℝ) * ‖power s‖ * tailCoefficient s * ‖s - 1‖ := by
  rw [finiteModel_residual (by decide : 1 ≤ (2 : ℕ)) (by linarith), norm_mul, norm_neg]
  have h := mul_le_mul_of_nonneg_left (tail_improved hx hx1) (norm_nonneg (multiplier s))
  rw [cutoff_power, ← power_norm, multiplier_norm] at h
  refine h.trans_eq ?_
  unfold tailCoefficient
  have hd : s.re + 5 ≠ 0 := ne_of_gt (by linarith : 0 < s.re + 5)
  field_simp [hd] <;> ring

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo.SecondCell
