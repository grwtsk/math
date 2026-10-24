# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticTailDefect

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `859b686b504c0960ca8aedcf3a49bbc6263371b0` · SHA-256 `8e459ce46b943baa1cf99d38e0d4e69291cdf9c2dbb7d9fb5c82905b144724fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticKernelDefect
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

set_option autoImplicit false

/-!
# An integrated, nonnegative defect improves the first sextic tail

The supremum bound for the SAME sextic kernel is not attained throughout its
first cell. We integrate a certified lower bound for that missing mass. Sixteen
closed subcell bounds feed a disjoint interval telescope; all remaining points
contribute a nonnegative defect. No mean-zero weighted cancellation is assumed.
The improved factor 33/40 is proved at cutoff ONE and 1/2<=Re(s)<=1 only.
It is not claimed for arbitrary integer cutoffs or for changing primitive order.
Source scripts: exact Lean elaboration and transitive axiom audit NOT_RUN.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.KernelDefect
open Complex MeasureTheory Set Filter MellinPrimitiveStep
open scoped Topology
noncomputable section

/-- Defect from the normalized pointwise norm majorant, not a signed error label. -/
def defect (s : ℂ) (t : ℝ) : ℝ :=
  t ^ (-(s.re + 6)) - 30240 * ‖sixthKernel.integrand (s + 6) t‖

lemma integrand_norm {s : ℂ} {t : ℝ} (ht : 0 < t) :
    ‖sixthKernel.integrand (s + 6) t‖ =
      ‖sixthKernel.value t‖ * t ^ (-(s.re + 6)) := by
  rw [BoundedKernel.integrand, norm_mul, Complex.norm_cpow_eq_rpow_re_of_pos ht]
  simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]

lemma defect_nonneg (s : ℂ) {t : ℝ} (ht : 1 < t) : 0 ≤ defect s t := by
  have h := mul_le_mul_of_nonneg_right (sixthKernel.norm_le t)
    (Real.rpow_nonneg (zero_lt_one.trans ht).le (-(s.re + 6)))
  change ‖sixthKernel.value t‖ * t ^ (-(s.re + 6)) ≤
    (1 / 30240 : ℝ) * t ^ (-(s.re + 6)) at h
  unfold defect
  rw [integrand_norm (zero_lt_one.trans ht)]
  linarith

lemma defect_integrable {s : ℂ} (hs : 0 < s.re) : IntegrableOn (defect s) (Ioi 1) := by
  have hp : IntegrableOn (fun t : ℝ => t ^ (-(s.re + 6))) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) zero_lt_one
  have hi := sixthKernel.integrand_integrable (T := 1) (z := s + 6) le_rfl
    (by simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  exact hp.sub (hi.norm.const_mul 30240)

lemma real_interval_of_tail {f : ℝ → ℝ} (hf : IntegrableOn f (Ioi 1))
    {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) : IntervalIntegrable f volume a b := by
  apply (intervalIntegrable_iff_integrableOn_Ioc_of_le hab).mpr
  exact hf.mono_set (by intro t ht; exact ha.trans_lt ht.1)

/-- Both power exponents refer to the same real integration variable. -/
lemma defect_on_subcell {s : ℂ} (hs1 : s.re ≤ 1) (i : Fin 16) {t : ℝ}
    (ht : node i.val ≤ t) (ht1 : t ≤ node (i.val + 1)) :
    (1 - cap i) * t ^ (-(7 : ℝ)) ≤ defect s t := by
  have htlo : 1 ≤ t := (node_order i.val).1.trans ht
  have hw0 : 0 ≤ t ^ (-(s.re + 6)) := Real.rpow_nonneg (zero_le_one.trans htlo) _
  have hk := mul_le_mul_of_nonneg_right (kernel_on_subcell i ht ht1) hw0
  have hw : t ^ (-(7 : ℝ)) ≤ t ^ (-(s.re + 6)) :=
    Real.rpow_le_rpow_of_exponent_le htlo (by linarith)
  have hc : 0 ≤ 1 - cap i := sub_nonneg.mpr (cap_bounds i).2
  have hm := mul_le_mul_of_nonneg_left hw hc
  unfold defect
  rw [integrand_norm (zero_lt_one.trans_le htlo)]
  nlinarith

/-- Exact mass of the lower power weight on each subcell; all endpoints are positive. -/
def cellMass (i : Fin 16) : ℝ :=
  (1 / (node i.val) ^ 6 - 1 / (node (i.val + 1)) ^ 6) / 6

lemma cell_power_integral (i : Fin 16) :
    (∫ t : ℝ in node i.val..node (i.val + 1), t ^ (-(7 : ℝ))) = cellMass i := by
  have h0 : (0 : ℝ) ∉ uIcc (node i.val) (node (i.val + 1)) := by
    rw [uIcc_of_le (node_order i.val).2]
    intro h
    linarith [(node_order i.val).1, h.1]
  rw [integral_rpow (Or.inr ⟨by norm_num, h0⟩)]
  fin_cases i <;> norm_num [cellMass, node, Real.rpow_neg, Real.rpow_natCast]

lemma subcell_defect_integral {s : ℂ} (hs : 0 < s.re) (hs1 : s.re ≤ 1) (i : Fin 16) :
    (1 - cap i) * cellMass i ≤
      ∫ t : ℝ in node i.val..node (i.val + 1), defect s t := by
  have hab := (node_order i.val).2
  have hd := real_interval_of_tail (defect_integrable hs) (node_order i.val).1 hab
  have hp : IntegrableOn (fun t : ℝ => t ^ (-(7 : ℝ))) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by norm_num) zero_lt_one
  have hpi := real_interval_of_tail hp (node_order i.val).1 hab
  have hbound : (∫ t : ℝ in node i.val..node (i.val + 1),
      (1 - cap i) * t ^ (-(7 : ℝ))) ≤
      ∫ t : ℝ in node i.val..node (i.val + 1), defect s t := by
    rw [intervalIntegral.integral_of_le hab, intervalIntegral.integral_of_le hab]
    apply integral_mono_ae
      ((intervalIntegrable_iff_integrableOn_Ioc_of_le hab).mp
        (hpi.const_mul (1 - cap i)))
      ((intervalIntegrable_iff_integrableOn_Ioc_of_le hab).mp hd)
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    exact defect_on_subcell hs1 i ht.1.le ht.2
  rw [intervalIntegral.integral_const_mul, cell_power_integral] at hbound
  exact hbound

/-- The numerical inequality is a finite rational identity/inequality, not quadrature. -/
theorem rational_saving : (7 / 220 : ℝ) ≤ ∑ i : Fin 16, (1 - cap i) * cellMass i := by
  norm_num [cap, capNumerator, cellMass, node, Fin.sum_univ_succ]

lemma first_cell_defect_lower {s : ℂ} (hs : 0 < s.re) (hs1 : s.re ≤ 1) :
    (7 / 220 : ℝ) ≤ ∫ t : ℝ in (1 : ℝ)..2, defect s t := by
  have heq : (∑ i : Fin 16, ∫ t : ℝ in node i.val..node (i.val + 1), defect s t) =
      ∫ t : ℝ in (1 : ℝ)..2, defect s t := by
    rw [Fin.sum_univ_eq_sum_range]
    have h := intervalIntegral.sum_integral_adjacent_intervals (a := node) (n := 16)
      (fun k _ => real_interval_of_tail (defect_integrable hs)
        (node_order k).1 (node_order k).2)
    simpa only [node, Nat.cast_zero, zero_div, add_zero, Nat.cast_ofNat,
      show (1 + (16 : ℝ) / 16) = 2 by norm_num] using h
  calc
    (7 / 220 : ℝ) ≤ ∑ i : Fin 16, (1 - cap i) * cellMass i := rational_saving
    _ ≤ ∑ i : Fin 16, ∫ t : ℝ in node i.val..node (i.val + 1), defect s t := by
      exact Finset.sum_le_sum (fun i _ => subcell_defect_integral hs hs1 i)
    _ = _ := heq

lemma full_defect_lower {s : ℂ} (hs : 0 < s.re) (hs1 : s.re ≤ 1) :
    (7 / 220 : ℝ) ≤ ∫ t : ℝ in Ioi 1, defect s t := by
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
      · exact Or.inl ⟨ht, h2⟩
      · exact Or.inr (lt_of_not_ge h2)
  have hsplit := setIntegral_union hd measurableSet_Ioi
    (hi.mono_set Ioc_subset_Ioi_self) (hi.mono_set (Ioi_subset_Ioi (by norm_num : (1 : ℝ) ≤ 2)))
  rw [hu, ← intervalIntegral.integral_of_le (by norm_num : (1 : ℝ) ≤ 2)] at hsplit
  have htail : 0 ≤ ∫ t : ℝ in Ioi 2, defect s t := by
    apply setIntegral_nonneg measurableSet_Ioi
    intro t ht
    exact defect_nonneg s (by linarith)
  have hfirst := first_cell_defect_lower hs hs1
  linarith

/-- The exact integrated deficit is subtracted only from this same integral norm bound. -/
theorem first_tail_with_saving {s : ℂ} (hs : 0 < s.re) (hs1 : s.re ≤ 1) :
    30240 * ‖tail 1 s‖ + 7 / 220 ≤ 1 / (s.re + 5) := by
  have hp : IntegrableOn (fun t : ℝ => t ^ (-(s.re + 6))) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) zero_lt_one
  have hi := sixthKernel.integrand_integrable (T := 1) (z := s + 6) le_rfl
    (by simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  have heq : (∫ t : ℝ in Ioi 1, defect s t) = 1 / (s.re + 5) -
      30240 * ∫ t : ℝ in Ioi 1, ‖sixthKernel.integrand (s + 6) t‖ := by
    rw [defect, integral_sub hp (hi.norm.const_mul 30240), integral_const_mul]
    rw [integral_Ioi_rpow_of_lt (by linarith : -(s.re + 6) < -1) zero_lt_one,
      show -(s.re + 6) + 1 = -(s.re + 5) by ring, Real.one_rpow, neg_div_neg_eq]
  have hn : ‖tail 1 s‖ ≤ ∫ t : ℝ in Ioi 1, ‖sixthKernel.integrand (s + 6) t‖ :=
    norm_integral_le_integral_norm _
  have hd := full_defect_lower hs hs1
  rw [heq] at hd
  nlinarith

/-- The smaller multiplier needs BOTH the lower and upper real-part bounds. -/
theorem first_tail_improved {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) :
    ‖tail 1 s‖ ≤ (33 / 40 : ℝ) / (30240 * (s.re + 5)) := by
  have hs : 0 < s.re := by linarith
  have hden : 0 < s.re + 5 := by linarith
  have h := first_tail_with_saving hs hx1
  have hm := mul_le_mul_of_nonneg_right h hden.le
  have hcancel : (1 / (s.re + 5)) * (s.re + 5) = 1 := by field_simp [hden.ne']
  rw [hcancel] at hm
  apply (le_div_iff₀ (mul_pos (by norm_num : (0 : ℝ) < 30240) hden)).mpr
  nlinarith

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.KernelDefect
```
