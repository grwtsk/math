/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPrimitiveStep

set_option autoImplicit false

/-!
# Two exact primitive steps and the B6 endpoint correction

The fifth polynomial differentiates to the existing CENTERED quartic. The raw
sixth differentiates to the fifth and has mean -1/30240. Its centered version
adds 1/30240 and has norm <=1/30240. The two concrete CellPrimitive records
supply every derivative, endpoint and source-equality field, not an oracle for
the final integral identity. Only integer-cutoff identities are claimed.

The new reference R6 is R4 + A6/30240. The same correction must be added to the
finite model before using its N^(-Re(s)-5) error. Signed kernels, complex source,
height factors and the distinction between cutoff and order limits are retained.
SOURCE SCRIPTS: exact Lean elaboration and transitive axiom audit are NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive

open Complex MeasureTheory Set Filter MellinPrimitiveStep
open scoped Topology
noncomputable section

def fifth (u : ℝ) : ℝ := u ^ 5 / 120 - u ^ 4 / 48 + u ^ 3 / 72 - u / 720
def sixthRaw (u : ℝ) : ℝ := u ^ 6 / 720 - u ^ 5 / 240 + u ^ 4 / 288 - u ^ 2 / 1440

theorem fifth_factor (u : ℝ) :
    fifth u = (u * (1 - u)) * (2 * u - 1) * (3 * (u * (1 - u)) + 1) / 720 := by
  unfold fifth
  ring

theorem sixthRaw_factor (u : ℝ) :
    sixthRaw u = -(u * (1 - u)) ^ 2 * (2 * (u * (1 - u)) + 1) / 1440 := by
  unfold sixthRaw
  ring

lemma unit_product_bounds {u : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1) :
    0 ≤ u * (1 - u) ∧ u * (1 - u) ≤ (1 / 4 : ℝ) := by
  exact ⟨mul_nonneg hu (sub_nonneg.mpr hu1), by nlinarith [sq_nonneg (u - 1 / 2)]⟩

/-- A coarse bound is sufficient for the intermediate, nonterminal primitive. -/
lemma fifth_unit_bound {u : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1) :
    |fifth u| ≤ (1 / 720 : ℝ) := by
  have hv := unit_product_bounds hu hu1
  have hw : |2 * u - 1| ≤ (1 : ℝ) := abs_le.mpr ⟨by linarith, by linarith⟩
  have hz0 : 0 ≤ 3 * (u * (1 - u)) + 1 := by linarith [hv.1]
  have hz : 3 * (u * (1 - u)) + 1 ≤ (7 / 4 : ℝ) := by linarith [hv.2]
  rw [fifth_factor, abs_div, abs_mul, abs_mul, abs_of_nonneg hv.1,
    abs_of_nonneg hz0]
  rw [abs_of_pos (by norm_num : (0 : ℝ) < 720)]
  have hp := mul_le_mul hv.2 hw (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 4)
  have hpp := mul_le_mul hp hz hz0 (by norm_num : (0 : ℝ) ≤ (1 / 4) * 1)
  nlinarith

lemma sixthRaw_unit_bounds {u : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1) :
    -(1 / 15360 : ℝ) ≤ sixthRaw u ∧ sixthRaw u ≤ 0 := by
  have hv := unit_product_bounds hu hu1
  have hv2 : (u * (1 - u)) ^ 2 ≤ (1 / 16 : ℝ) := by
    have h := mul_le_mul hv.2 hv.2 hv.1 (by norm_num : (0 : ℝ) ≤ 1 / 4)
    nlinarith
  have hz : 2 * (u * (1 - u)) + 1 ≤ (3 / 2 : ℝ) := by linarith [hv.2]
  have hz0 : 0 ≤ 2 * (u * (1 - u)) + 1 := by linarith [hv.1]
  have hp := mul_le_mul hv2 hz hz0 (by norm_num : (0 : ℝ) ≤ 1 / 16)
  have hp0 := mul_nonneg (sq_nonneg (u * (1 - u))) hz0
  rw [sixthRaw_factor]
  constructor <;> nlinarith

lemma sixth_centered_unit_bound {u : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1) :
    |sixthRaw u + 1 / 30240| ≤ (1 / 30240 : ℝ) := by
  have h := sixthRaw_unit_bounds hu hu1
  exact abs_le.mpr ⟨by linarith [h.1], by linarith [h.2]⟩

/-- Compute the mean rather than attaching a zero-mean label. -/
theorem sixthRaw_unit_mean : (∫ u : ℝ in (0 : ℝ)..1, sixthRaw u) = -(1 / 30240 : ℝ) := by
  let P : ℝ → ℝ := fun u => u ^ 7 / 5040 - u ^ 6 / 1440 + u ^ 5 / 1440 - u ^ 3 / 4320
  have hd (u : ℝ) : HasDerivAt P (sixthRaw u) u := by
    convert (((((hasDerivAt_id u).pow 7).div_const 5040).sub
      (((hasDerivAt_id u).pow 6).div_const 1440)).add
      (((hasDerivAt_id u).pow 5).div_const 1440)).sub
      (((hasDerivAt_id u).pow 3).div_const 4320) using 1 <;>
      dsimp only [P, sixthRaw] <;> ring
  have hc : Continuous sixthRaw := by unfold sixthRaw; fun_prop
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ => hd u)
    (hc.intervalIntegrable 0 1)
  norm_num [P] at h
  exact h

def quarticKernel : BoundedKernel where
  value := QuarticPrimitive.centeredKernel
  bound := 1 / 720
  bound_nonneg := by norm_num
  measurable := QuarticPrimitive.kernel_measurable.sub measurable_const
  norm_le := QuarticPrimitive.centeredKernel_norm_le

def fifthKernel : BoundedKernel where
  value := fun t => (fifth (realFractionalKernel t) : ℂ)
  bound := 1 / 720
  bound_nonneg := by norm_num
  measurable := by
    apply Complex.continuous_ofReal.measurable.comp
    have h := realFractionalKernel_measurable
    exact ((((h.pow 5).div_const 120).sub ((h.pow 4).div_const 48)).add
      ((h.pow 3).div_const 72)).sub (h.div_const 720)
  norm_le := by
    intro t
    simpa only [Complex.norm_real, Real.norm_eq_abs] using
      fifth_unit_bound (realFractionalKernel_nonneg t) (realFractionalKernel_le_one t)

def sixthRawKernel : BoundedKernel where
  value := fun t => (sixthRaw (realFractionalKernel t) : ℂ)
  bound := 1 / 15360
  bound_nonneg := by norm_num
  measurable := by
    apply Complex.continuous_ofReal.measurable.comp
    have h := realFractionalKernel_measurable
    exact ((((h.pow 6).div_const 720).sub ((h.pow 5).div_const 240)).add
      ((h.pow 4).div_const 288)).sub ((h.pow 2).div_const 1440)
  norm_le := by
    intro t
    have h := sixthRaw_unit_bounds (realFractionalKernel_nonneg t) (realFractionalKernel_le_one t)
    simpa only [Complex.norm_real, Real.norm_eq_abs, abs_of_nonpos h.2] using
      (show -sixthRaw (realFractionalKernel t) ≤ (1 / 15360 : ℝ) by linarith [h.1])

def sixthKernel : BoundedKernel where
  value := fun t => sixthRawKernel.value t + 1 / 30240
  bound := 1 / 30240
  bound_nonneg := by norm_num
  measurable := sixthRawKernel.measurable.add measurable_const
  norm_le := by
    intro t
    have heq : sixthRawKernel.value t + (1 / 30240 : ℂ) =
        ((sixthRaw (realFractionalKernel t) + 1 / 30240 : ℝ) : ℂ) := by
      norm_num [sixthRawKernel]
    rw [heq, Complex.norm_real, Real.norm_eq_abs]
    exact sixth_centered_unit_bound (realFractionalKernel_nonneg t) (realFractionalKernel_le_one t)

def fifthCell (n : ℕ) (t : ℝ) : ℂ :=
  ((t : ℂ) - n) ^ 5 / 120 - ((t : ℂ) - n) ^ 4 / 48 +
    ((t : ℂ) - n) ^ 3 / 72 - ((t : ℂ) - n) / 720

def sixthCell (n : ℕ) (t : ℝ) : ℂ :=
  ((t : ℂ) - n) ^ 6 / 720 - ((t : ℂ) - n) ^ 5 / 240 +
    ((t : ℂ) - n) ^ 4 / 288 - ((t : ℂ) - n) ^ 2 / 1440

lemma fifthCell_derivative (n : ℕ) (t : ℝ) :
    HasDerivAt (fifthCell n) (QuarticPrimitive.cell n t - 1 / 720) t := by
  have h : HasDerivAt (fun t : ℝ => (t : ℂ) - n) (1 : ℂ) t :=
    (Complex.ofRealCLM.hasDerivAt (x := t)).sub_const (n : ℂ)
  convert (((((h.pow 5).div_const 120).sub ((h.pow 4).div_const 48)).add
    ((h.pow 3).div_const 72)).sub (h.div_const 720)) using 1 <;>
    dsimp only [fifthCell, QuarticPrimitive.cell] <;> ring

lemma sixthCell_derivative (n : ℕ) (t : ℝ) :
    HasDerivAt (sixthCell n) (fifthCell n t) t := by
  have h : HasDerivAt (fun t : ℝ => (t : ℂ) - n) (1 : ℂ) t :=
    (Complex.ofRealCLM.hasDerivAt (x := t)).sub_const (n : ℂ)
  convert (((((h.pow 6).div_const 720).sub ((h.pow 5).div_const 240)).add
    ((h.pow 4).div_const 288)).sub ((h.pow 2).div_const 1440)) using 1 <;>
    dsimp only [sixthCell, fifthCell] <;> ring

lemma frac_on_cell {n : ℕ} {t : ℝ} (hn : 1 ≤ n)
    (ht : t ∈ Ioo (n : ℝ) ((n + 1 : ℕ) : ℝ)) : realFractionalKernel t = t - n := by
  have htn : (1 : ℝ) ≤ t := (by exact_mod_cast hn : (1 : ℝ) ≤ n).trans ht.1.le
  simp only [realFractionalKernel, if_pos htn,
    QuadraticPrimitive.floor_eq_on_open_cell hn ht]

/-- Every field of each generic integration step is explicitly instantiated. -/
def quarticToFifth : CellPrimitive quarticKernel fifthKernel where
  cell := fifthCell
  slope := fun n t => QuarticPrimitive.cell n t - 1 / 720
  hasDeriv := fifthCell_derivative
  slope_continuous := by intro n; unfold QuarticPrimitive.cell; fun_prop
  left_zero := by intro n; simp [fifthCell]
  right_zero := by intro n; norm_num [fifthCell, Nat.cast_add, Nat.cast_one]
  source_eq := by
    intro n hn t ht
    change QuarticPrimitive.kernel t - (1 / 720 : ℂ) = _
    rw [QuarticPrimitive.kernel_eq_cell hn ht]
  target_eq := by
    intro n hn t ht
    change (fifth (realFractionalKernel t) : ℂ) = fifthCell n t
    rw [frac_on_cell hn ht]
    unfold fifth fifthCell
    push_cast
    ring

def fifthToSixth : CellPrimitive fifthKernel sixthRawKernel where
  cell := sixthCell
  slope := fifthCell
  hasDeriv := sixthCell_derivative
  slope_continuous := by intro n; unfold fifthCell; fun_prop
  left_zero := by intro n; simp [sixthCell]
  right_zero := by intro n; norm_num [sixthCell, Nat.cast_add, Nat.cast_one]
  source_eq := quarticToFifth.target_eq
  target_eq := by
    intro n hn t ht
    change (sixthRaw (realFractionalKernel t) : ℂ) = sixthCell n t
    rw [frac_on_cell hn ht]
    unfold sixthRaw sixthCell
    push_cast
    ring

def tail (T : ℝ) (s : ℂ) : ℂ := sixthKernel.tail (s + 6) T

theorem tail_norm_le {T σ : ℝ} {s : ℂ} (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖tail T s‖ ≤ T ^ (-(σ + 5)) / (30240 * (σ + 5)) := by
  have h := sixthKernel.tail_norm_le (z := s + 6) (σ := σ + 6) hT
    (by linarith) (by simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  change ‖tail T s‖ ≤ (1 / 30240 : ℝ) *
    (T ^ (-((σ + 6) - 1)) / ((σ + 6) - 1)) at h
  rw [show (σ + 6) - 1 = σ + 5 by ring] at h
  exact h.trans_eq (by ring)

/-- The mean contribution is integrated with a nonzero complex denominator. -/
theorem tail_eq_raw {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    tail T s = sixthRawKernel.tail (s + 6) T +
      (T : ℂ) ^ (-(s + 5)) / (30240 * (s + 5)) := by
  have hz : 1 < (s + 6).re := by simp only [Complex.add_re, Complex.ofNat_re]; linarith
  have hi := sixthRawKernel.integrand_integrable hT hz
  have hp : IntegrableOn (fun t : ℝ => (t : ℂ) ^ (-(s + 6))) (Ioi T) := by
    apply integrableOn_Ioi_cpow_of_lt
    · simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]; linarith
    · exact zero_lt_one.trans_le hT
  have hf : sixthKernel.integrand (s + 6) = fun t =>
      sixthRawKernel.integrand (s + 6) t + (1 / 30240 : ℂ) * (t : ℂ) ^ (-(s + 6)) := by
    funext t
    simp only [BoundedKernel.integrand, sixthKernel]
    ring
  rw [tail, BoundedKernel.tail, hf, integral_add hi (hp.const_mul (1 / 30240)),
    integral_const_mul]
  rw [integral_Ioi_cpow_of_lt (by
    simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]; linarith)
    (zero_lt_one.trans_le hT), show -(s + 6) + 1 = -(s + 5) by ring, neg_div_neg_eq]
  change sixthRawKernel.tail (s + 6) T + _ = _
  ring

theorem quartic_tail_identity {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    QuarticPrimitive.centeredTail N s =
      -(s + 4) * (N : ℂ) ^ (-(s + 5)) / 30240 + (s + 4) * (s + 5) * tail N s := by
  have h4 := quarticToFifth.integer_tail_identity (z := s + 4) hN
    (by simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  have h5 := fifthToSixth.integer_tail_identity (z := s + 5) hN
    (by simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  rw [show s + 4 + 1 = s + 5 by ring] at h4
  rw [show s + 5 + 1 = s + 6 by ring] at h5
  change QuarticPrimitive.centeredTail N s = (s + 4) * fifthKernel.tail (s + 5) N at h4
  rw [h5] at h4
  -- Resolve the centering term explicitly instead of rewriting rawTail as centeredTail.
  have hc := tail_eq_raw (T := (N : ℝ)) (by exact_mod_cast hN) hs
  simp only [Complex.ofReal_natCast] at hc
  have hsp : s + 5 ≠ 0 := Complex.ne_zero_of_re_pos (by
    simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  have heq : sixthRawKernel.tail (s + 6) N = tail N s -
      (N : ℂ) ^ (-(s + 5)) / (30240 * (s + 5)) := by linear_combination -hc
  rw [heq] at h4
  rw [h4]
  field_simp [hsp] <;> ring

def quadraticFactor (s : ℂ) : ℂ := s ^ 2 - 10 * s + 45

def reference (s : ℂ) : ℂ :=
  (s + 2) * (s + 4) * (s + 6) * (s + 7) * quadraticFactor s / 30240

def multiplier (s : ℂ) : ℂ := QuarticPrimitive.multiplier s * (s + 4) * (s + 5)

theorem reference_correction (s : ℂ) : reference s =
    QuarticPrimitive.reference s + QuarticPrimitive.multiplier s * (s + 4) / 30240 := by
  unfold reference quadraticFactor QuarticPrimitive.reference QuarticPrimitive.multiplier
    CubicPrimitive.multiplier
  ring

theorem source_identity {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s = reference s - multiplier s * tail 1 s := by
  rw [QuarticPrimitive.source_identity hs, quartic_tail_identity (N := 1) le_rfl hs,
    reference_correction]
  simp only [Nat.cast_one, Complex.one_cpow]
  unfold multiplier
  ring

/-- The positive B6 correction belongs to the finite model as well as the reference. -/
def finiteModel (N : ℕ) (s : ℂ) : ℂ := QuarticPrimitive.finiteModel N s +
  QuarticPrimitive.multiplier s * (s + 4) * (N : ℂ) ^ (-(s + 5)) / 30240

theorem finiteModel_residual {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    poleNormalizedZeta s - finiteModel N s = -multiplier s * tail N s := by
  have h := QuarticPrimitive.finiteModel_residual hN hs
  rw [quartic_tail_identity hN hs] at h
  unfold finiteModel multiplier
  linear_combination h

theorem finiteModel_error {N : ℕ} {σ : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖poleNormalizedZeta s - finiteModel N s‖ ≤
      ‖multiplier s‖ * ((N : ℝ) ^ (-(σ + 5)) / (30240 * (σ + 5))) := by
  rw [finiteModel_residual hN (hσ.trans_le hs), norm_mul, norm_neg]
  exact mul_le_mul_of_nonneg_left (tail_norm_le (by exact_mod_cast hN) hσ hs) (norm_nonneg _)

theorem finiteModel_majorant_tendsto_zero {σ : ℝ} (hσ : 0 < σ) (s : ℂ) :
    Tendsto (fun n : ℕ => ‖multiplier s‖ *
      (((n : ℝ) + 1) ^ (-(σ + 5)) / (30240 * (σ + 5)))) atTop (𝓝 0) := by
  have hn : Tendsto (fun n : ℕ => (n : ℝ) + 1) atTop atTop :=
    tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop
  simpa using (((tendsto_rpow_neg_atTop (by linarith : 0 < σ + 5)).comp hn).div_const
    (30240 * (σ + 5))).const_mul ‖multiplier s‖

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive
