import GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct
import GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Function.LpSpace.InfiniteSum

/-! Exact Laplace transform of the actual globally completed Möbius pickup.
The source is a locally finite signed atom sum. Each atom is integrated exactly,
and its absolute integral is bounded by the absolutely summable Möbius Dirichlet
series on Re(z) > 1/2. This proves both actual L1 convergence and justified
sum/integral interchange. No reciprocal-zeta formula is used in the critical
strip, and no polynomial energy or RH hypothesis is used in this module. -/

noncomputable section
open scoped BigOperators
open MeasureTheory
namespace EulerP04RH.FEMI

def signedAtom (n : ℕ) (u : ℝ) : ℂ :=
  (ArithmeticFunction.moebius n : ℂ) * (PPNCP04.atom n u : ℂ)
def atomKernel (z : ℂ) (n : ℕ) (u : ℝ) : ℂ :=
  Complex.exp (-z * (u : ℂ)) * (PPNCP04.atom n u : ℂ)
def laplaceTerm (z : ℂ) (n : ℕ) (u : ℝ) : ℂ :=
  (ArithmeticFunction.moebius n : ℂ) * atomKernel z n u
def atomSmooth (z : ℂ) (n : ℕ) (u : ℝ) : ℂ :=
  2 * ((Real.sqrt (n : ℝ))⁻¹ : ℂ) * Complex.exp (-z * (u : ℂ)) -
    2 * Complex.exp (-(z + 1/2) * (u : ℂ))

theorem shifted_exp (z : ℂ) (u : ℝ) :
    Complex.exp (-(z + 1/2) * (u : ℂ)) =
      Complex.exp (-z * (u : ℂ)) * (Real.exp (-u/2) : ℂ) := by
  rw [Complex.ofReal_exp, ← Complex.exp_add]
  congr 1
  push_cast
  ring

theorem atomKernel_eq_indicator (z : ℂ) (n : ℕ) (hn : 0 < n) :
    atomKernel z n = (Set.Ioi (Real.log (n : ℝ))).indicator (atomSmooth z n) := by
  funext u
  by_cases hu : Real.log (n : ℝ) < u
  · simp only [atomKernel, Set.indicator, Set.mem_Ioi, if_pos hu, PPNCP04.atom, if_pos hu.le,
      atomSmooth, Complex.ofReal_mul, Complex.ofReal_sub, Complex.ofReal_ofNat]
    simp only [Complex.ofReal_inv]
    rw [shifted_exp]
    ring
  · have hz : PPNCP04.atom n u = 0 := by
      by_cases hle : Real.log (n : ℝ) ≤ u
      · have he : u = Real.log (n : ℝ) := le_antisymm (le_of_not_gt hu) hle
        rw [he]
        exact PPNCP04.atom_entry_zero hn
      · simp [PPNCP04.atom, hle]
    simp [atomKernel, Set.indicator, Set.mem_Ioi, hu, hz]

theorem atomSmooth_integrable (z : ℂ) (hz : 0 < z.re) (n : ℕ) :
    IntegrableOn (atomSmooth z n) (Set.Ioi (Real.log (n : ℝ))) := by
  have h₁ := integrableOn_exp_mul_complex_Ioi
    (a := -z) (by simpa using hz) (Real.log (n : ℝ))
  have h₂ := integrableOn_exp_mul_complex_Ioi
    (a := -(z + 1/2)) (by simp; linarith) (Real.log (n : ℝ))
  exact (h₁.const_mul _).sub (h₂.const_mul _)

theorem atomKernel_integrable (z : ℂ) (hz : 0 < z.re) (n : ℕ) (hn : 0 < n) :
    Integrable (atomKernel z n) volume := by
  rw [atomKernel_eq_indicator z n hn]
  exact (atomSmooth_integrable z hz n).integrable_indicator measurableSet_Ioi

theorem log_nonneg_nat (n : ℕ) (hn : 0 < n) : 0 ≤ Real.log (n : ℝ) :=
  Real.log_nonneg (by exact_mod_cast hn)

theorem atomKernel_integral (z : ℂ) (hz : 0 < z.re) (n : ℕ) (hn : 0 < n) :
    (∫ u : ℝ in Set.Ioi 0, atomKernel z n u) =
      2 * ((Real.sqrt (n : ℝ))⁻¹ : ℂ) * Complex.exp (-z * (Real.log (n : ℝ) : ℂ)) / z -
        2 * Complex.exp (-(z + 1/2) * (Real.log (n : ℝ) : ℂ)) / (z + 1/2) := by
  rw [atomKernel_eq_indicator z n hn, setIntegral_indicator measurableSet_Ioi]
  have hsub : Set.Ioi (Real.log (n : ℝ)) ⊆ Set.Ioi 0 :=
    fun u hu => lt_of_le_of_lt (log_nonneg_nat n hn) hu
  rw [Set.inter_eq_right.mpr hsub]
  have h₁ := integrableOn_exp_mul_complex_Ioi
    (a := -z) (by simpa using hz) (Real.log (n : ℝ))
  have h₂ := integrableOn_exp_mul_complex_Ioi
    (a := -(z + 1/2)) (by simp; linarith) (Real.log (n : ℝ))
  change (∫ u : ℝ in Set.Ioi (Real.log (n : ℝ)),
    2 * ((Real.sqrt (n : ℝ))⁻¹ : ℂ) * Complex.exp (-z * (u : ℂ)) -
      2 * Complex.exp (-(z + 1/2) * (u : ℂ))) = _
  rw [integral_sub (h₁.const_mul _) (h₂.const_mul _),
    integral_const_mul, integral_const_mul,
    integral_exp_mul_complex_Ioi (a := -z) (by simpa using hz),
    integral_exp_mul_complex_Ioi (a := -(z + 1/2)) (by simp; linarith)]
  simp only [div_neg]
  ring

theorem sqrtInverse_exp_log (n : ℕ) (hn : 0 < n) :
    ((Real.sqrt (n : ℝ))⁻¹ : ℂ) = Complex.exp (-(Real.log (n : ℝ) : ℂ)/2) := by
  have hr : Real.exp (-Real.log (n : ℝ)/2) = (Real.sqrt (n : ℝ))⁻¹ := by
    rw [show -Real.log (n : ℝ)/2 = -(Real.log (n : ℝ)/2) by ring,
      Real.exp_neg, ← Real.log_sqrt (by positivity : (0 : ℝ) ≤ n),
      Real.exp_log (Real.sqrt_pos.mpr (by exact_mod_cast hn))]
  rw [← Complex.ofReal_inv, ← hr, Complex.ofReal_exp]
  congr 1
  push_cast
  rfl

theorem atomKernel_laplace (z : ℂ) (hz : 0 < z.re) (n : ℕ) (hn : 0 < n) :
    (∫ u : ℝ in Set.Ioi 0, atomKernel z n u) =
      (n : ℂ) ^ (-(z + 1/2)) / (z * (z + 1/2)) := by
  have hmul : (2 : ℂ) * Complex.exp (-(Real.log (n : ℝ) : ℂ)/2) *
      Complex.exp (-z * (Real.log (n : ℝ) : ℂ)) =
      2 * Complex.exp (-(z + 1/2) * (Real.log (n : ℝ) : ℂ)) := by
    rw [mul_assoc, ← Complex.exp_add]
    congr 2
    ring
  have hcpow : (n : ℂ) ^ (-(z + 1/2)) =
      Complex.exp (-(z + 1/2) * (Real.log (n : ℝ) : ℂ)) := by
    rw [Complex.cpow_def_of_ne_zero (by exact_mod_cast hn.ne'), ← Complex.natCast_log]
    congr 1
    ring
  rw [atomKernel_integral z hz n hn, sqrtInverse_exp_log n hn, hmul,
    hcpow]
  have hz₀ : z ≠ 0 := by intro h; simp [h] at hz
  have hz₁ : z + 1/2 ≠ 0 := by
    intro h
    have he := congrArg Complex.re h
    simp at he
    linarith
  have hz₂ : 1 + z * 2 ≠ 0 := by
    intro h
    apply hz₁
    linear_combination h / 2
  field_simp [hz₀, hz₁, hz₂]
  ring_nf
  field_simp [hz₂]
  ring

theorem signedAtom_outside_inventory (u : ℝ) (n : ℕ)
    (hn : n ∉ PPNCP04.integerInventory u) : signedAtom n u = 0 := by
  by_cases hz : n = 0
  · simp [signedAtom, hz]
  · have hpos : 0 < n := Nat.pos_of_ne_zero hz
    have hsize : ¬ (n : ℝ) ≤ Real.exp u := by
      intro h
      apply hn
      exact PPNCP04.mem_integerInventory.mpr ⟨hpos, h⟩
    have hlog : u < Real.log (n : ℝ) :=
      (Real.lt_log_iff_exp_lt (by exact_mod_cast hpos)).mpr (lt_of_not_ge hsize)
    simp [signedAtom, PPNCP04.atom, not_le_of_gt hlog]

theorem completedPickup_eq_tsum (u : ℝ) :
    completedPickup u = ∑' n : ℕ, signedAtom n u := by
  rw [tsum_eq_sum (s := PPNCP04.integerInventory u)
    (fun n hn => signedAtom_outside_inventory u n hn)]
  simp only [completedPickup, PPNCP04.pickup, Complex.ofReal_sum, signedAtom,
    PPNCP04.realMoebius, Complex.ofReal_mul, Complex.ofReal_intCast]

theorem completedPickup_horizon (T u : ℝ) (hu : u ≤ T) :
    completedPickup u = (PPNCP04.pickup T u : ℂ) := by
  have hsub : PPNCP04.integerInventory u ⊆ PPNCP04.integerInventory T := by
    intro n hn
    obtain ⟨hn₁, hn₂⟩ := PPNCP04.mem_integerInventory.mp hn
    exact PPNCP04.mem_integerInventory.mpr
      ⟨hn₁, hn₂.trans (Real.exp_le_exp.mpr hu)⟩
  change (PPNCP04.pickup u u : ℂ) = _
  simp only [PPNCP04.pickup, Complex.ofReal_sum, Complex.ofReal_mul,
    PPNCP04.realMoebius, Complex.ofReal_intCast]
  apply Finset.sum_subset hsub
  intro n _hn hn
  exact signedAtom_outside_inventory u n hn

theorem completedPickup_energy (T : ℝ) :
    (∫ u : ℝ in Set.Icc 0 T, ‖completedPickup u‖ ^ 2) = PPNCP04.energy T := by
  unfold PPNCP04.energy
  apply setIntegral_congr_fun measurableSet_Icc
  intro u hu
  change ‖completedPickup u‖ ^ 2 = PPNCP04.pickup T u ^ 2
  rw [completedPickup_horizon T u hu.2]
  simp only [Complex.norm_real, Real.norm_eq_abs, sq_abs]

theorem laplaceTerm_eq_tsum (z : ℂ) (u : ℝ) :
    Complex.exp (-z * (u : ℂ)) * completedPickup u = ∑' n : ℕ, laplaceTerm z n u := by
  rw [tsum_eq_sum (s := PPNCP04.integerInventory u)]
  · simp only [completedPickup, PPNCP04.pickup, Complex.ofReal_sum,
      PPNCP04.realMoebius, Complex.ofReal_mul, Complex.ofReal_intCast,
      Finset.mul_sum, laplaceTerm, atomKernel]
    apply Finset.sum_congr rfl
    intro n hn
    ring
  · intro n hn
    have hzero := signedAtom_outside_inventory u n hn
    simpa only [signedAtom, laplaceTerm, atomKernel, mul_left_comm, mul_zero] using
      congrArg (fun a : ℂ => Complex.exp (-z * (u : ℂ)) * a) hzero

theorem laplaceTerm_integrable (z : ℂ) (hz : 0 < z.re) (n : ℕ) :
    IntegrableOn (laplaceTerm z n) (Set.Ioi 0) := by
  by_cases hn : n = 0
  · have hzero : laplaceTerm z 0 = 0 := by funext u; simp [laplaceTerm]
    rw [hn, hzero]
    exact integrable_zero _ _ _
  · exact ((atomKernel_integrable z hz n (Nat.pos_of_ne_zero hn)).const_mul _).restrict

theorem laplaceTerm_integral (z : ℂ) (hz : 0 < z.re) (n : ℕ) :
    (∫ u : ℝ in Set.Ioi 0, laplaceTerm z n u) =
      moebiusDirichletTerm (z + 1/2) n / (z * (z + 1/2)) := by
  by_cases hn : n = 0
  · simp [laplaceTerm, moebiusDirichletTerm, hn]
  · change (∫ u : ℝ in Set.Ioi 0,
      (ArithmeticFunction.moebius n : ℂ) * atomKernel z n u) = _
    rw [integral_const_mul, atomKernel_laplace z hz n (Nat.pos_of_ne_zero hn)]
    simp only [moebiusDirichletTerm, Complex.cpow_neg, div_eq_mul_inv]
    ring

theorem atomKernel_real (σ : ℝ) (n : ℕ) (u : ℝ) :
    atomKernel (σ : ℂ) n u =
      (Real.exp (-σ*u) * PPNCP04.atom n u : ℝ) := by
  simp only [atomKernel, Complex.ofReal_mul, Complex.ofReal_exp, Complex.ofReal_neg]

theorem kernel_norm_integral_real (σ : ℝ) (n : ℕ) (hn : 0 < n) :
    (∫ u : ℝ in Set.Ioi 0, ‖atomKernel (σ : ℂ) n u‖) =
      ‖∫ u : ℝ in Set.Ioi 0, atomKernel (σ : ℂ) n u‖ := by
  have heq : atomKernel (σ : ℂ) n =
      fun u : ℝ => ((Real.exp (-σ*u) * PPNCP04.atom n u : ℝ) : ℂ) := by
    funext u
    exact atomKernel_real σ n u
  have hnon : ∀ u : ℝ, 0 ≤ Real.exp (-σ*u) * PPNCP04.atom n u :=
    fun u => mul_nonneg (Real.exp_pos _).le (PPNCP04.atom_nonneg hn u)
  rw [heq, integral_complex_ofReal, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (integral_nonneg hnon)]
  apply integral_congr_ae
  filter_upwards [] with u
  simp only [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (hnon u)]

theorem laplaceTerm_norm_integral (z : ℂ) (hz : 0 < z.re) (n : ℕ) :
    (∫ u : ℝ in Set.Ioi 0, ‖laplaceTerm z n u‖) =
      ‖moebiusDirichletTerm (z + 1/2) n‖ / (z.re * (z.re + 1/2)) := by
  by_cases hn : n = 0
  · simp [laplaceTerm, moebiusDirichletTerm, hn]
  · have hpos := Nat.pos_of_ne_zero hn
    have heq : (fun u : ℝ => ‖laplaceTerm z n u‖) =
        fun u => ‖(ArithmeticFunction.moebius n : ℂ)‖ *
          ‖atomKernel (z.re : ℂ) n u‖ := by
      funext u
      simp only [laplaceTerm, atomKernel, norm_mul, Complex.norm_exp,
        Complex.mul_re, Complex.neg_re, Complex.neg_im, Complex.ofReal_re,
        Complex.ofReal_im, mul_zero, sub_zero, Complex.ofReal_re]
    rw [heq, integral_const_mul, kernel_norm_integral_real z.re n hpos,
      atomKernel_laplace (z.re : ℂ) (by simpa using hz) n hpos,
      norm_div, norm_mul, Complex.norm_natCast_cpow_of_pos hpos,
      Complex.neg_re, Complex.add_re, Complex.ofReal_re]
    have hden : ‖(z.re : ℂ) + 1/2‖ = z.re + 1/2 := by
      have hc : (z.re : ℂ) + 1/2 = ((z.re + 1/2 : ℝ) : ℂ) := by push_cast; rfl
      rw [hc, Complex.norm_real, Real.norm_eq_abs, abs_of_pos (by linarith)]
    rw [hden, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hz]
    simp only [moebiusDirichletTerm, norm_div, Complex.norm_natCast_cpow_of_pos hpos]
    norm_num
    rw [show -(1/2 : ℝ) + -z.re = -(z.re + 1/2) by ring]
    rw [Real.rpow_neg (Nat.cast_nonneg n)]
    ring

theorem laplaceTerm_norm_summable (z : ℂ) (hz : 1/2 < z.re) :
    Summable (fun n : ℕ => ∫ u : ℝ in Set.Ioi 0, ‖laplaceTerm z n u‖) := by
  have hs : 1 < (z + 1/2).re := by simp; linarith
  have hm := (moebiusDirichlet_summable (z + 1/2) hs).norm
  exact (hm.div_const (z.re * (z.re + 1/2))).congr
    (fun n => (laplaceTerm_norm_integral z (by linarith) n).symm)

theorem pickupLaplace_integrable (z : ℂ) (hz : 1/2 < z.re) :
    IntegrableOn (fun u : ℝ => Complex.exp (-z * (u : ℂ)) * completedPickup u)
      (Set.Ioi 0) := by
  let m : Measure ℝ := volume.restrict (Set.Ioi 0)
  have hpos : 0 < z.re := by linarith
  let h : ∀ n : ℕ, Integrable (laplaceTerm z n) m :=
    fun n => laplaceTerm_integrable z hpos n
  let f : ℕ → Lp ℂ 1 m := fun n => (h n).toL1 (laplaceTerm z n)
  have hn : ∀ n, ‖f n‖ = ∫ u : ℝ, ‖laplaceTerm z n u‖ ∂m := by
    intro n
    rw [L1.norm_eq_integral_norm]
    apply integral_congr_ae
    filter_upwards [(h n).coeFn_toL1] with u hu
    rw [hu]
  have hf : Summable (fun n => ‖f n‖) :=
    (laplaceTerm_norm_summable z hz).congr (fun n => (hn n).symm)
  have he : ∑' n, ‖f n‖ₑ ≠ (⊤ : ENNReal) := tsum_enorm_ne_top_iff_summable_norm.mpr hf
  have hae := Lp.coeFn_tsum he
  have hall : ∀ᵐ u ∂m, ∀ n : ℕ, f n u = laplaceTerm z n u :=
    ae_all_iff.mpr (fun n => (h n).coeFn_toL1)
  have hout : (fun u : ℝ => (∑' n, f n) u) =ᵐ[m]
      fun u : ℝ => Complex.exp (-z * (u : ℂ)) * completedPickup u := by
    filter_upwards [hae, hall] with u hu hallu
    rw [hu]
    simp_rw [hallu]
    exact (laplaceTerm_eq_tsum z u).symm
  exact (L1.integrable_coeFn (∑' n, f n)).congr hout

theorem pickupLaplace_eq_reciprocal (z : ℂ) (hz : 1/2 < z.re) :
    pickupLaplace z = 1 / (z * (z + 1/2) * riemannZeta (z + 1/2)) := by
  have hpos : 0 < z.re := by linarith
  have hs : 1 < (z + 1/2).re := by simp; linarith
  have hswap := integral_tsum_of_summable_integral_norm
    (fun n => laplaceTerm_integrable z hpos n) (laplaceTerm_norm_summable z hz)
  have heq : (fun u : ℝ => ∑' n : ℕ, laplaceTerm z n u) =
      fun u : ℝ => Complex.exp (-z * (u : ℂ)) * completedPickup u := by
    funext u
    exact (laplaceTerm_eq_tsum z u).symm
  rw [heq] at hswap
  rw [pickupLaplace, ← hswap]
  simp_rw [laplaceTerm_integral z hpos]
  rw [tsum_div_const, moebiusDirichlet_eq_inv_zeta (z + 1/2) hs]
  simp only [div_eq_mul_inv, mul_inv_rev, one_mul]

end EulerP04RH.FEMI

#print axioms EulerP04RH.FEMI.completedPickup_eq_tsum
#print axioms EulerP04RH.FEMI.completedPickup_energy
#print axioms EulerP04RH.FEMI.atomKernel_laplace
#print axioms EulerP04RH.FEMI.laplaceTerm_norm_summable
#print axioms EulerP04RH.FEMI.pickupLaplace_integrable
#print axioms EulerP04RH.FEMI.pickupLaplace_eq_reciprocal
