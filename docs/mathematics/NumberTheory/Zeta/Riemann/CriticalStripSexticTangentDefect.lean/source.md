# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticTangentDefect

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3da1085b5b42212c5ed5cd2f7aff14926b748e0c` · SHA-256 `14c2d005d70dd6b76334b4f9dbc93ad2c2e3e27cca24f7dc9989d158e91027a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticBernsteinMass
import Mathlib.Analysis.SpecialFunctions.Log.Basic

set_option autoImplicit false

/-!
# A first-cell sextic tail estimate retaining the varying real exponent

Positive rational tangents bound t^-7 and t^-8 from below. The actual weight
satisfies t^(-x-6) >= t^-7 + (1-x)(t-1)t^-8 for x<=1. Integrating the
nonnegative Bernstein deficit therefore uses both exact moments. The old tail,
source, and finite model are unchanged. The improvement is for cutoff ONE only.
No oscillatory cancellation, zero-free premise, or uniform all-cutoff saving.
SOURCE SCRIPTS: exact Lean elaboration and transitive axiom audit NOT_RUN.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.BernsteinMass
open Complex MeasureTheory Set Filter KernelDefect MellinPrimitiveStep
open scoped Topology
noncomputable section

lemma tangent7_le {c t : ℝ} (hc : 0 < c) (ht : 0 < t) :
    tangent7 c t ≤ t ^ (-(7 : ℝ)) := by
  have hp : 0 ≤ (c - t) ^ 2 *
      (c ^ 6 + 2*c^5*t + 3*c^4*t^2 + 4*c^3*t^3 + 5*c^2*t^4 + 6*c*t^5 + 7*t^6) := by positivity
  have he : c^8 - (8*c-7*t)*t^7 = (c-t)^2 *
      (c^6 + 2*c^5*t + 3*c^4*t^2 + 4*c^3*t^3 + 5*c^2*t^4 + 6*c*t^5 + 7*t^6) := by ring
  rw [← he] at hp
  rw [Real.rpow_neg ht.le, Real.rpow_natCast]
  change (8*c-7*t)/c^8 ≤ 1/t^7
  apply (div_le_div_iff₀ (pow_pos hc _) (pow_pos ht _)).mpr
  nlinarith

lemma tangent8_le {c t : ℝ} (hc : 0 < c) (ht : 0 < t) :
    tangent8 c t ≤ t ^ (-(8 : ℝ)) := by
  have hp : 0 ≤ (c-t)^2 *
      (c^7 + 2*c^6*t + 3*c^5*t^2 + 4*c^4*t^3 + 5*c^3*t^4 + 6*c^2*t^5 + 7*c*t^6 + 8*t^7) := by positivity
  have he : c^9 - (9*c-8*t)*t^8 = (c-t)^2 *
      (c^7 + 2*c^6*t + 3*c^5*t^2 + 4*c^4*t^3 + 5*c^3*t^4 + 6*c^2*t^5 + 7*c*t^6 + 8*t^7) := by ring
  rw [← he] at hp
  rw [Real.rpow_neg ht.le, Real.rpow_natCast]
  change (9*c-8*t)/c^9 ≤ 1/t^8
  apply (div_le_div_iff₀ (pow_pos hc _) (pow_pos ht _)).mpr
  nlinarith

/-- Keep the real exponent, using log and exp inequalities at their valid domains. -/
lemma variable_weight_lower {x t : ℝ} (hx : x ≤ 1) (ht : 0 < t) :
    t ^ (-(7 : ℝ)) + (1-x)*(t-1)*t ^ (-(8 : ℝ)) ≤ t ^ (-(x+6)) := by
  have hl : 1 - t⁻¹ ≤ Real.log t := by
    have h := Real.log_le_sub_one_of_pos (inv_pos.mpr ht)
    rw [Real.log_inv] at h
    linarith
  have he := Real.add_one_le_exp ((1-x)*Real.log t)
  have hm := mul_le_mul_of_nonneg_left hl (sub_nonneg.mpr hx)
  have hr : 1 + (1-x)*(1-t⁻¹) ≤ t ^ (1-x) := by
    rw [Real.rpow_def_of_pos ht]
    rw [mul_comm (Real.log t) (1-x)]
    linarith
  have hb := mul_le_mul_of_nonneg_left hr (Real.rpow_nonneg ht.le (-(7 : ℝ)))
  have hp : t ^ (-(7 : ℝ)) * t ^ (1-x) = t ^ (-(x+6)) := by
    rw [← Real.rpow_add ht]
    congr 1
    ring
  rw [hp] at hb
  have hi : t ^ (-(7 : ℝ)) * t⁻¹ = t ^ (-(8 : ℝ)) := by
    rw [show t⁻¹ = t ^ (-(1 : ℝ)) by simp, ← Real.rpow_add ht]
    norm_num
  have hj : t * t ^ (-(8 : ℝ)) = t ^ (-(7 : ℝ)) := by
    calc
      t * t ^ (-(8 : ℝ)) = t ^ (1 : ℝ) * t ^ (-(8 : ℝ)) := by rw [Real.rpow_one]
      _ = t ^ ((1 : ℝ) + -(8 : ℝ)) := (Real.rpow_add ht _ _).symm
      _ = _ := by norm_num
  calc
    _ = t ^ (-(7 : ℝ)) + (1-x)*(t*t ^ (-(8 : ℝ)) - t ^ (-(8 : ℝ))) := by ring
    _ = t ^ (-(7 : ℝ)) + (1-x)*(t ^ (-(7 : ℝ)) - t ^ (-(8 : ℝ))) := by rw [hj]
    _ = t ^ (-(7 : ℝ)) + (1-x)*(t ^ (-(7 : ℝ)) - t ^ (-(7 : ℝ))*t⁻¹) := by rw [hi]
    _ = t ^ (-(7 : ℝ)) * (1 + (1-x)*(1-t⁻¹)) := by ring
    _ ≤ _ := hb

/-- A pointwise lower bound for the SAME normalized absolute-norm deficit. -/
lemma defect_lower_on_subcell {s : ℂ} (hx1 : s.re ≤ 1) (i : Fin 16) {t : ℝ}
    (ht : node i.val ≤ t) (ht1 : t ≤ node (i.val + 1)) :
    lower0 i t + (1-s.re)*lower1 i t ≤ defect s t := by
  have htlo : 1 ≤ t := (node_order i.val).1.trans ht
  have ht0 : 0 < t := zero_lt_one.trans_le htlo
  have hc : 0 < center i := by
    unfold center
    linarith [(node_order i.val).1, (node_order (i.val+1)).1]
  have hv : 0 ≤ 16*(t-1)-(i.val : ℝ) := by dsimp [node] at ht; linarith
  have hv1 : 16*(t-1)-(i.val : ℝ) ≤ 1 := by
    dsimp [node] at ht1; push_cast at ht1; linarith
  have hd := density_nonneg i hv hv1
  have hk := kernel_density_bound i ht ht1
  have hweight := mul_le_mul_of_nonneg_left (variable_weight_lower hx1 ht0) hd
  have hw0 := tangent7_le hc ht0
  have hw1 := mul_le_mul_of_nonneg_left (tangent8_le hc ht0)
    (mul_nonneg (sub_nonneg.mpr hx1) (sub_nonneg.mpr htlo))
  have hw := mul_le_mul_of_nonneg_left (add_le_add hw0 hw1) hd
  have hnorm := mul_le_mul_of_nonneg_right hk (Real.rpow_nonneg ht0.le (-(s.re+6)))
  unfold lower0 lower1 defect
  rw [integrand_norm ht0]
  nlinarith

lemma subcell_integral_lower {s : ℂ} (hs : 0 < s.re) (hx1 : s.re ≤ 1) (i : Fin 16) :
    mass0 i + (1-s.re)*mass1 i ≤
      ∫ t : ℝ in node i.val..node (i.val+1), defect s t := by
  have hab := (node_order i.val).2
  have h0 : Continuous (lower0 i) := by unfold lower0 tangent7; fun_prop
  have h1 : Continuous (lower1 i) := by unfold lower1 tangent8; fun_prop
  have hd := real_interval_of_tail (defect_integrable hs) (node_order i.val).1 hab
  have hc := (h0.add (continuous_const.mul h1)).intervalIntegrable (node i.val) (node (i.val+1))
  have hb : (∫ t : ℝ in node i.val..node (i.val+1), lower0 i t + (1-s.re)*lower1 i t) ≤
      ∫ t : ℝ in node i.val..node (i.val+1), defect s t := by
    rw [intervalIntegral.integral_of_le hab, intervalIntegral.integral_of_le hab]
    apply integral_mono_ae
      ((intervalIntegrable_iff_integrableOn_Ioc_of_le hab).mp hc)
      ((intervalIntegrable_iff_integrableOn_Ioc_of_le hab).mp hd)
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    exact defect_lower_on_subcell hx1 i ht.1.le ht.2
  rw [intervalIntegral.integral_add (h0.intervalIntegrable _ _)
    ((h1.intervalIntegrable _ _).const_mul (1-s.re)),
    intervalIntegral.integral_const_mul, lower0_integral, lower1_integral] at hb
  exact hb

lemma first_cell_lower {s : ℂ} (hs : 0 < s.re) (hx1 : s.re ≤ 1) :
    23/480 + (1-s.re)*(9/1000) ≤ ∫ t : ℝ in (1 : ℝ)..2, defect s t := by
  have heq : (∑ i : Fin 16, ∫ t : ℝ in node i.val..node (i.val+1), defect s t) =
      ∫ t : ℝ in (1 : ℝ)..2, defect s t := by
    rw [Fin.sum_univ_eq_sum_range]
    have h := intervalIntegral.sum_integral_adjacent_intervals (a := node) (n := 16)
      (fun k _ => real_interval_of_tail (defect_integrable hs) (node_order k).1 (node_order k).2)
    simpa only [node, Nat.cast_zero, zero_div, add_zero, Nat.cast_ofNat,
      show (1+(16 : ℝ)/16)=2 by norm_num] using h
  calc
    _ ≤ (∑ i : Fin 16, mass0 i) + (1-s.re)*(∑ i : Fin 16, mass1 i) :=
      add_le_add total_mass0 (mul_le_mul_of_nonneg_left total_mass1 (sub_nonneg.mpr hx1))
    _ = ∑ i : Fin 16, (mass0 i + (1-s.re)*mass1 i) := by
      rw [Finset.sum_add_distrib, Finset.mul_sum]
    _ ≤ _ := Finset.sum_le_sum (fun i _ => subcell_integral_lower hs hx1 i)
    _ = _ := heq

lemma full_defect_lower {s : ℂ} (hs : 0 < s.re) (hx1 : s.re ≤ 1) :
    23/480 + (1-s.re)*(9/1000) ≤ ∫ t : ℝ in Ioi 1, defect s t := by
  have hi := defect_integrable hs
  have hd : Disjoint (Ioc (1 : ℝ) 2) (Ioi 2) := by
    apply Set.disjoint_left.mpr
    intro t ht ht2
    exact (not_lt_of_ge ht.2) ht2
  have hu : Ioc (1 : ℝ) 2 ∪ Ioi 2 = Ioi 1 := by
    ext t
    constructor
    · rintro (h | h)
      · exact h.1
      · linarith
    · intro ht
      by_cases h2 : t ≤ 2
      · exact Or.inl ⟨ht,h2⟩
      · exact Or.inr (lt_of_not_ge h2)
  have heq := setIntegral_union hd measurableSet_Ioi
    (hi.mono_set Ioc_subset_Ioi_self) (hi.mono_set (Ioi_subset_Ioi (by norm_num : (1 : ℝ) ≤ 2)))
  rw [hu, ← intervalIntegral.integral_of_le (by norm_num : (1 : ℝ) ≤ 2)] at heq
  have htail : 0 ≤ ∫ t : ℝ in Ioi 2, defect s t := by
    apply setIntegral_nonneg measurableSet_Ioi
    intro t ht
    exact defect_nonneg s (by linarith)
  have hfirst := first_cell_lower hs hx1
  linarith

lemma normalized_saving {x : ℝ} (hx : (1/2 : ℝ) ≤ x) (hx1 : x ≤ 1) :
    (2/7 : ℝ) ≤ (x+5)*(23/480+(1-x)*(9/1000)) := by
  have h : 0 ≤ (1-x)*(108*x-35) :=
    mul_nonneg (sub_nonneg.mpr hx1) (by linarith)
  nlinarith

/-- Cutoff ONE only. This is a norm-integral theorem, not an assumed cancellation. -/
theorem first_tail_improved {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) :
    ‖tail 1 s‖ ≤ (5/7 : ℝ) / (30240*(s.re+5)) := by
  have hs : 0 < s.re := by linarith
  have hden : 0 < s.re+5 := by linarith
  have hp : IntegrableOn (fun t : ℝ => t ^ (-(s.re+6))) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) zero_lt_one
  have hi := sixthKernel.integrand_integrable (T := 1) (z := s+6) le_rfl
    (by simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  have heq : (∫ t : ℝ in Ioi 1, defect s t) = 1/(s.re+5) -
      30240 * ∫ t : ℝ in Ioi 1, ‖sixthKernel.integrand (s+6) t‖ := by
    rw [defect, integral_sub hp (hi.norm.const_mul 30240), integral_const_mul]
    rw [integral_Ioi_rpow_of_lt (by linarith : -(s.re+6) < -1) zero_lt_one,
      show -(s.re+6)+1 = -(s.re+5) by ring, Real.one_rpow, neg_div_neg_eq]
  have hn : ‖tail 1 s‖ ≤ ∫ t : ℝ in Ioi 1, ‖sixthKernel.integrand (s+6) t‖ :=
    norm_integral_le_integral_norm _
  have hd := full_defect_lower hs hx1
  rw [heq] at hd
  have hb : 30240*‖tail 1 s‖ + (23/480+(1-s.re)*(9/1000)) ≤ 1/(s.re+5) := by nlinarith
  have hm := mul_le_mul_of_nonneg_right hb hden.le
  have hc : (1/(s.re+5))*(s.re+5)=1 := by field_simp [hden.ne']
  rw [hc] at hm
  apply (le_div_iff₀ (mul_pos (by norm_num : (0 : ℝ) < 30240) hden)).mpr
  have hsaving := normalized_saving hx hx1
  nlinarith

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.BernsteinMass
```
