/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCenteredMellin
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

set_option autoImplicit false

/-!
# An actual quadratic primitive for the centered arithmetic kernel

The primitive is p(t)={t}({t}-1)/2 on t>=1 and zero below 1. Its values
match at every integer, while its first derivative has a jump. Integration by
parts is therefore performed on each closed integer cell using a polynomial,
NOT by asserting a global derivative across the seams. The centered integrand
is identified on the open cell, with endpoints removed only under Lebesgue
almost-everywhere equality. All infinite tails are separately integrable.

The exact tail identity at an INTEGER cutoff is
 C_tail(N,s) = (s+1) * integral_N^infty p(t) t^(-s-2) dt.
A noninteger cutoff generally has a nonzero boundary term and is not admitted.
The bound gains a cutoff power; it is not a zero-divisor or Weil tail identity.

SOURCE SCRIPTS: elaboration, imported proofs and transitive axioms are NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.QuadraticPrimitive

open Complex MeasureTheory Set Filter Asymptotics
open scoped Topology

noncomputable section

def realKernel (t : ℝ) : ℝ :=
  realFractionalKernel t * (realFractionalKernel t - 1) / 2

def kernel (t : ℝ) : ℂ := (realKernel t : ℂ)

lemma realKernel_bounds (t : ℝ) : -(1 / 8 : ℝ) ≤ realKernel t ∧ realKernel t ≤ 0 := by
  have hlo := realFractionalKernel_nonneg t
  have hhi := realFractionalKernel_le_one t
  have hprod := mul_nonpos_of_nonneg_of_nonpos hlo (sub_nonpos.mpr hhi)
  have hsq := sq_nonneg (realFractionalKernel t - 1 / 2)
  constructor <;> dsimp only [realKernel] <;> nlinarith

lemma kernel_norm_le (t : ℝ) : ‖kernel t‖ ≤ (1 / 8 : ℝ) := by
  rw [kernel, Complex.norm_real, Real.norm_eq_abs, abs_of_nonpos (realKernel_bounds t).2]
  linarith [(realKernel_bounds t).1]

lemma kernel_measurable : Measurable kernel := by
  exact Complex.continuous_ofReal.measurable.comp
    ((realFractionalKernel_measurable.mul
      (realFractionalKernel_measurable.sub measurable_const)).div_const 2)

lemma kernel_zero_below {t : ℝ} (ht : t < 1) : kernel t = 0 := by
  simp [kernel, realKernel, realFractionalKernel, not_le.mpr ht]

@[simp] lemma kernel_nat (n : ℕ) : kernel (n : ℝ) = 0 := by
  by_cases hn : 1 ≤ n
  · have hnr : (1 : ℝ) ≤ n := by exact_mod_cast hn
    simp [kernel, realKernel, realFractionalKernel, hnr]
  · have hn0 : n = 0 := by omega
    subst n
    exact kernel_zero_below (by norm_num)

lemma kernel_locallyIntegrable : LocallyIntegrableOn kernel (Ioi 0) := by
  have hi : MemLp kernel ⊤ (volume : Measure ℝ) :=
    memLp_top_of_bound kernel_measurable.aestronglyMeasurable (1 / 8)
      (Eventually.of_forall kernel_norm_le)
  exact (hi.locallyIntegrable le_top).locallyIntegrableOn _

lemma kernel_isBigO_top : kernel =O[atTop] (fun t : ℝ => t ^ (-(0 : ℝ))) := by
  refine isBigO_iff.mpr ⟨1, Eventually.of_forall ?_⟩
  intro t
  have h := (kernel_norm_le t).trans (by norm_num : (1 / 8 : ℝ) ≤ 1)
  simpa using h

lemma kernel_isBigO_zero (b : ℝ) :
    kernel =O[𝓝[>] (0 : ℝ)] (fun t : ℝ => t ^ (-b)) := by
  refine isBigO_iff.mpr ⟨0, ?_⟩
  filter_upwards [(eventually_lt_nhds (show (0 : ℝ) < 1 from zero_lt_one)).filter_mono
    nhdsWithin_le_nhds] with t ht
  simp [kernel_zero_below ht]

def integrand (s : ℂ) (t : ℝ) : ℂ := kernel t * (t : ℂ) ^ (-(s + 2))

def tail (T : ℝ) (s : ℂ) : ℂ := ∫ t : ℝ in Ioi T, integrand s t

lemma integrand_integrable {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    IntegrableOn (integrand s) (Ioi T) := by
  have hm : MellinConvergent kernel (-(s + 1)) := by
    apply mellinConvergent_of_isBigO_rpow kernel_locallyIntegrable kernel_isBigO_top
      (by simp only [Complex.neg_re, Complex.add_re, Complex.one_re]; linarith)
      (kernel_isBigO_zero (-s.re - 2))
    simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
    linarith
  have hi := hm.mono_set (Ioi_subset_Ioi (zero_le_one.trans hT))
  refine hi.congr_fun ?_ measurableSet_Ioi
  intro t ht
  simp only [integrand, smul_eq_mul]
  rw [show -(s + 1) - 1 = -(s + 2) by ring]
  exact mul_comm _ _

/-- The analytic bound keeps a positive real-part margin and a real cutoff >=1. -/
theorem tail_norm_le {T σ : ℝ} {s : ℂ}
    (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖tail T s‖ ≤ T ^ (-(σ + 1)) / (8 * (σ + 1)) := by
  have hT0 : 0 < T := zero_lt_one.trans_le hT
  have hi := integrand_integrable hT (hσ.trans_le hs)
  have hg : IntegrableOn (fun t : ℝ => t ^ (-(σ + 2))) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) hT0
  calc
    ‖tail T s‖ ≤ ∫ t in Ioi T, ‖integrand s t‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi T, (1 / 8 : ℝ) * t ^ (-(σ + 2)) := by
      apply integral_mono_ae hi.norm (hg.const_mul (1 / 8))
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      rw [integrand, norm_mul,
        Complex.norm_cpow_eq_rpow_re_of_pos (hT0.trans ht)]
      simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]
      exact mul_le_mul (kernel_norm_le t)
        (Real.rpow_le_rpow_of_exponent_le (hT.trans ht.le) (by linarith))
        (Real.rpow_nonneg (hT0.trans ht).le _) (by norm_num)
    _ = T ^ (-(σ + 1)) / (8 * (σ + 1)) := by
      rw [integral_const_mul,
        integral_Ioi_rpow_of_lt (by linarith : -(σ + 2) < -1) hT0,
        show -(σ + 2) + 1 = -(σ + 1) by ring, neg_div_neg_eq]
      ring

/-- Local polynomial, including its zero endpoint values on the CLOSED cell. -/
def cell (n : ℕ) (t : ℝ) : ℂ :=
  ((t : ℂ) - n) * ((t : ℂ) - n - 1) / 2

@[simp] lemma cell_left (n : ℕ) : cell n (n : ℝ) = 0 := by simp [cell]
@[simp] lemma cell_right (n : ℕ) : cell n ((n + 1 : ℕ) : ℝ) = 0 := by
  simp [cell, Nat.cast_add, Nat.cast_one]

lemma cell_hasDerivAt (n : ℕ) (t : ℝ) :
    HasDerivAt (cell n) ((t : ℂ) - n - 1 / 2) t := by
  have hid : HasDerivAt (fun u : ℝ => (u : ℂ)) (1 : ℂ) t := by
    simpa using (Complex.ofRealCLM.hasDerivAt (x := t))
  convert ((hid.sub_const (n : ℂ)).mul
    ((hid.sub_const (n : ℂ)).sub_const 1)).div_const 2 using 1 <;>
    dsimp only [cell] <;> ring

lemma floor_eq_on_open_cell {n : ℕ} {t : ℝ} (hn : 1 ≤ n)
    (ht : t ∈ Ioo (n : ℝ) ((n + 1 : ℕ) : ℝ)) : ⌊t⌋₊ = n := by
  have ht0 : 0 ≤ t := (show (0 : ℝ) ≤ n by positivity).trans ht.1.le
  apply (Nat.floor_eq_iff' (by omega : n ≠ 0)).mpr
  exact ⟨ht.1.le, by simpa only [Nat.cast_add, Nat.cast_one] using ht.2⟩

lemma kernel_eq_cell {n : ℕ} {t : ℝ} (hn : 1 ≤ n)
    (ht : t ∈ Ioo (n : ℝ) ((n + 1 : ℕ) : ℝ)) : kernel t = cell n t := by
  have htn : (1 : ℝ) ≤ t := (by exact_mod_cast hn : (1 : ℝ) ≤ n).trans ht.1.le
  simp only [kernel, realKernel, realFractionalKernel, if_pos htn,
    floor_eq_on_open_cell hn ht, cell]
  push_cast
  ring

lemma centered_eq_cell_derivative {n : ℕ} {t : ℝ} (hn : 1 ≤ n)
    (ht : t ∈ Ioo (n : ℝ) ((n + 1 : ℕ) : ℝ)) :
    (CenteredMellin.kernel t : ℂ) = (t : ℂ) - n - 1 / 2 := by
  have htn : (1 : ℝ) ≤ t := (by exact_mod_cast hn : (1 : ℝ) ≤ n).trans ht.1.le
  simp only [CenteredMellin.kernel, realFractionalKernel, if_pos htn,
    floor_eq_on_open_cell hn ht]
  push_cast
  ring

/-- Endpoint discrepancies of the centered derivative are removed only a.e. -/
lemma cell_integral_identity {n : ℕ} {s : ℂ} (hn : 1 ≤ n) (hs : 0 < s.re) :
    (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), CenteredMellin.integrand s t) =
      (s + 1) * ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), integrand s t := by
  have hab : (n : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ n
  let g : ℝ → ℂ := fun t => (t : ℂ) ^ (-(s + 1))
  let gp : ℝ → ℂ := fun t => -(s + 1) * (t : ℂ) ^ (-(s + 2))
  let cp : ℝ → ℂ := fun t => (t : ℂ) - n - 1 / 2
  have hpne : -(s + 1) ≠ 0 := neg_ne_zero.mpr (Complex.ne_zero_of_re_pos (by
    simp only [Complex.add_re, Complex.one_re]; linarith))
  have hg : ∀ t ∈ uIcc (n : ℝ) ((n + 1 : ℕ) : ℝ), HasDerivAt g (gp t) t := by
    intro t ht
    rw [uIcc_of_le hab] at ht
    have ht0 : 0 < t := (zero_lt_one.trans_le (by exact_mod_cast hn)).trans_le ht.1
    have h := hasDerivAt_ofReal_cpow_const ht0.ne' hpne
    simpa only [g, gp, show -(s + 1) - 1 = -(s + 2) by ring] using h
  have hgp : ContinuousOn gp (uIcc (n : ℝ) ((n + 1 : ℕ) : ℝ)) := by
    apply continuousOn_const.mul
    intro t ht
    rw [uIcc_of_le hab] at ht
    have ht0 : 0 < t := (zero_lt_one.trans_le (by exact_mod_cast hn)).trans_le ht.1
    exact (Complex.continuousAt_ofReal_cpow_const _ _ (Or.inr ht0.ne')).continuousWithinAt
  have hcp : Continuous cp := by dsimp only [cp]; fun_prop
  have hbyparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    hg (fun t _ => cell_hasDerivAt n t) hgp.intervalIntegrable
    (hcp.intervalIntegrable _ _)
  have hc : (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ),
      CenteredMellin.integrand s t) = ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), g t * cp t := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    rw [CenteredMellin.integrand, centered_eq_cell_derivative hn ht]
    dsimp only [g, cp]
    ring
  have hp : (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), integrand s t) =
      ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), cell n t * (t : ℂ) ^ (-(s + 2)) := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    simp only [integrand, kernel_eq_cell hn ht]
  rw [hc, hbyparts, hp]
  simp only [cell_left, cell_right, mul_zero, sub_self, zero_sub]
  rw [← intervalIntegral.integral_neg, ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro t ht
  dsimp only [gp]
  ring

/-- Restrict only a genuinely integrable tail to a bounded ordered interval. -/
lemma intervalIntegrable_of_tail {f : ℝ → ℂ} (hf : IntegrableOn f (Ioi 1))
    {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) : IntervalIntegrable f volume a b := by
  apply (intervalIntegrable_iff_integrableOn_Ioc_of_le hab).mpr
  exact hf.mono_set (by intro t ht; exact ha.trans_lt ht.1)

/-- Cancellation glues along all integer seams; neither boundary is silently dropped. -/
lemma finite_integral_identity {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    (∫ t : ℝ in (1 : ℝ)..(N : ℝ), CenteredMellin.integrand s t) =
      (s + 1) * ∫ t : ℝ in (1 : ℝ)..(N : ℝ), integrand s t := by
  have hC := CenteredMellin.integrand_integrable (T := 1) le_rfl hs
  have hP := integrand_integrable (T := 1) le_rfl hs
  induction N, hN using Nat.le_induction with
  | base => simp
  | succ N hN ih =>
    have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hNN : (N : ℝ) ≤ ((N + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ N
    calc
      (∫ t : ℝ in (1 : ℝ)..((N + 1 : ℕ) : ℝ), CenteredMellin.integrand s t) =
          (∫ t : ℝ in (1 : ℝ)..(N : ℝ), CenteredMellin.integrand s t) +
          ∫ t : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ), CenteredMellin.integrand s t :=
        (intervalIntegral.integral_add_adjacent_intervals
          (intervalIntegrable_of_tail hC le_rfl hNR)
          (intervalIntegrable_of_tail hC hNR hNN)).symm
      _ = (s + 1) * ((∫ t : ℝ in (1 : ℝ)..(N : ℝ), integrand s t) +
          ∫ t : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ), integrand s t) := by
        rw [ih, cell_integral_identity hN hs]; ring
      _ = _ := by rw [intervalIntegral.integral_add_adjacent_intervals
        (intervalIntegrable_of_tail hP le_rfl hNR)
        (intervalIntegrable_of_tail hP hNR hNN)]

lemma split_integral_tail {f : ℝ → ℂ} (hf : IntegrableOn f (Ioi 1))
    {T : ℝ} (hT : 1 ≤ T) :
    (∫ t : ℝ in Ioi 1, f t) = (∫ t : ℝ in (1 : ℝ)..T, f t) + ∫ t in Ioi T, f t := by
  have hd : Disjoint (Ioc (1 : ℝ) T) (Ioi T) := by
    apply Set.disjoint_left.mpr
    intro t ht hgt
    exact (not_lt_of_ge ht.2) hgt
  have hu : Ioc (1 : ℝ) T ∪ Ioi T = Ioi 1 := by
    ext t; constructor
    · rintro (h | h)
      · exact h.1
      · exact hT.trans_lt h
    · intro ht
      by_cases hb : t ≤ T
      · exact Or.inl ⟨ht, hb⟩
      · exact Or.inr (lt_of_not_ge hb)
  rw [intervalIntegral.integral_of_le hT]
  simpa only [hu] using setIntegral_union hd measurableSet_Ioi
    (hf.mono_set Ioc_subset_Ioi_self) (hf.mono_set (Ioi_subset_Ioi hT))

/-- The full source equality is obtained by a finite telescope and two vanishing,
independently integrable tails, not by a global derivative at integer seams. -/
theorem value_identity {s : ℂ} (hs : 0 < s.re) :
    CenteredMellin.value s = (s + 1) * tail 1 s := by
  let R : ℂ := CenteredMellin.value s - (s + 1) * tail 1 s
  have heq (N : ℕ) (hN : 1 ≤ N) :
      R = CenteredMellin.tail N s - (s + 1) * tail N s := by
    have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hc := split_integral_tail (CenteredMellin.integrand_integrable (T := 1) le_rfl hs) hNR
    have hp := split_integral_tail (integrand_integrable (T := 1) le_rfl hs) hNR
    change CenteredMellin.value s = _ + CenteredMellin.tail N s at hc
    change tail 1 s = _ + tail N s at hp
    dsimp only [R]
    rw [hc, hp, finite_integral_identity hN hs]
    ring
  have hbound (n : ℕ) : ‖R‖ ≤
      ((n : ℝ) + 1) ^ (-s.re) / (2 * s.re) +
      ‖s + 1‖ * (((n : ℝ) + 1) ^ (-(s.re + 1)) / (8 * (s.re + 1))) := by
    rw [heq (n + 1) (by omega)]
    calc
      _ ≤ ‖CenteredMellin.tail (n + 1) s‖ + ‖s + 1‖ * ‖tail (n + 1) s‖ := by
        simpa only [norm_mul] using norm_sub_le (CenteredMellin.tail (n + 1) s)
          ((s + 1) * tail (n + 1) s)
      _ ≤ _ := by
        simpa only [Nat.cast_add, Nat.cast_one] using add_le_add
          (CenteredMellin.tail_norm_le (T := ((n + 1 : ℕ) : ℝ))
            (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le n)) hs le_rfl)
          (mul_le_mul_of_nonneg_left
            (tail_norm_le (T := ((n + 1 : ℕ) : ℝ))
            (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le n)) hs le_rfl)
            (norm_nonneg _))
  have hn : Tendsto (fun n : ℕ => (n : ℝ) + 1) atTop atTop :=
    tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop
  have hlim : Tendsto (fun n : ℕ =>
      ((n : ℝ) + 1) ^ (-s.re) / (2 * s.re) +
      ‖s + 1‖ * (((n : ℝ) + 1) ^ (-(s.re + 1)) / (8 * (s.re + 1))))
      atTop (𝓝 0) := by
    have h1 := ((tendsto_rpow_neg_atTop hs).comp hn).div_const (2 * s.re)
    have h2 := (((tendsto_rpow_neg_atTop (by linarith : 0 < s.re + 1)).comp hn).div_const
      (8 * (s.re + 1))).const_mul ‖s + 1‖
    simpa using h1.add h2
  have hzero : ‖R‖ ≤ 0 := le_of_tendsto_of_tendsto tendsto_const_nhds hlim
    (Eventually.of_forall hbound)
  exact sub_eq_zero.mp (norm_eq_zero.mp (le_antisymm hzero (norm_nonneg _)))

/-- At each integer cutoff the primitive boundary value is zero. -/
theorem integer_tail_identity {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    CenteredMellin.tail N s = (s + 1) * tail N s := by
  have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hc := split_integral_tail (CenteredMellin.integrand_integrable (T := 1) le_rfl hs) hNR
  have hp := split_integral_tail (integrand_integrable (T := 1) le_rfl hs) hNR
  change CenteredMellin.value s = _ + CenteredMellin.tail N s at hc
  change tail 1 s = _ + tail N s at hp
  calc
    CenteredMellin.tail N s = CenteredMellin.value s -
        ∫ t : ℝ in (1 : ℝ)..(N : ℝ), CenteredMellin.integrand s t := by rw [hc]; ring
    _ = (s + 1) * (tail 1 s - ∫ t : ℝ in (1 : ℝ)..(N : ℝ), integrand s t) := by
      rw [value_identity hs, finite_integral_identity hN hs]; ring
    _ = _ := by rw [hp]; ring

theorem centered_tail_norm_le {N : ℕ} {σ : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖CenteredMellin.tail N s‖ ≤
      ‖s + 1‖ * ((N : ℝ) ^ (-(σ + 1)) / (8 * (σ + 1))) := by
  rw [integer_tail_identity hN (hσ.trans_le hs), norm_mul]
  exact mul_le_mul_of_nonneg_left (tail_norm_le (by exact_mod_cast hN) hσ hs) (norm_nonneg _)

theorem centered_value_norm_le {σ : ℝ} {s : ℂ} (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖CenteredMellin.value s‖ ≤ ‖s + 1‖ / (8 * (σ + 1)) := by
  rw [value_identity (hσ.trans_le hs), norm_mul]
  have h := mul_le_mul_of_nonneg_left (tail_norm_le (T := 1) le_rfl hσ hs) (norm_nonneg (s + 1))
  simpa only [Real.one_rpow, mul_one_div] using h

/-- The finite model is UNCHANGED from the prior exact half-endpoint correction. -/
theorem finiteModel_error_improved {N : ℕ} {σ : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖poleNormalizedZeta s - CenteredMellin.finiteModel N s‖ ≤
      ‖s‖ * ‖s - 1‖ * ‖s + 1‖ *
        ((N : ℝ) ^ (-(σ + 1)) / (8 * (σ + 1))) := by
  rw [CenteredMellin.finiteModel_residual hN (hσ.trans_le hs), norm_mul, norm_neg, norm_mul]
  exact (mul_le_mul_of_nonneg_left (centered_tail_norm_le hN hσ hs)
    (mul_nonneg (norm_nonneg _) (norm_nonneg _))).trans_eq (by ring)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.QuadraticPrimitive
