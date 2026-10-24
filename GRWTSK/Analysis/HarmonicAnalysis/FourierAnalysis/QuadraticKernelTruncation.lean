import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ReciprocalZetaQuadraticKernel
import GRWTSK.NumberTheory.Zeta.ReciprocalDecayBounds
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.MeasureTheory.Measure.Lebesgue.Integral

/-! Quantitative truncation of the fixed reciprocal-Laplace quadratic kernel.
Every L1 and product-density integrability statement is proved from the
unconditional right line c>1. The time factor's exponential T cost is kept
explicit and paid by the declared moving height. Source identification and
signed finite-head settlement are separate research obligations.
-/
set_option maxHeartbeats 800000
noncomputable section
open MeasureTheory Set Filter
namespace EulerP04RH.ConcreteTail
open ConcreteRightLine RightLine

/-- Actual finite time-window cost, uniform in the frequency difference. -/
theorem timeKernel_norm_bound {c T : ℝ} (hc : 1 < c) (hT : 0 ≤ T) (τ : ℝ) :
    ‖timeKernel c T τ‖ ≤ T*Real.exp ((2*c-1)*T) := by
  have hbound : ∀ u ∈ Icc 0 T,
      ‖Complex.exp (((2*c-1:ℝ)+τ*Complex.I)*(u:ℂ))‖ ≤ Real.exp ((2*c-1)*T) := by
    intro u hu
    rw [Complex.norm_exp]
    have he : (((2*c-1:ℝ)+τ*Complex.I)*(u:ℂ)).re = (2*c-1)*u := by simp
    rw [he]
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_left hu.2 (by linarith)
  have h := norm_setIntegral_le_of_norm_le_const
    (f := fun u : ℝ => Complex.exp (((2*c-1:ℝ)+τ*Complex.I)*(u:ℂ)))
    (μ := volume) (s := Icc 0 T) isCompact_Icc.measure_lt_top hbound
  rw [Real.volume_real_Icc_of_le hT] at h
  simpa only [timeKernel, sub_zero, mul_comm] using h

/-- Parameter continuity comes from a continuous integrand on a compact time interval. -/
theorem timeKernel_continuous (c T : ℝ) : Continuous (timeKernel c T) := by
  exact continuous_parametric_integral_of_continuous (by fun_prop) isCompact_Icc

/-- Absolute mass, rather than cancellation in an oscillatory integral, is paid. -/
theorem pickupKernel_absolute_right_tail {c H : ℝ} (hc : 1 < c) (hH : 1 ≤ H) :
    IntegrableOn (fun t => ‖pickupKernel c t‖) (Ioi H) ∧
      (∫ t : ℝ in Ioi H, ‖pickupKernel c t‖) ≤ absoluteDirichletBudget c/H := by
  obtain ⟨hi, heq⟩ := EulerP04RH.right_tail_majorant
    (A := absoluteDirichletBudget c) (m := 2) (by norm_num) (by linarith : 0 < H)
  have hdom : ∀ᵐ t ∂volume.restrict (Ioi H),
      ‖pickupKernel c t‖ ≤ absoluteDirichletBudget c*t^(-2:ℝ) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    have htpos : 0 < t := lt_trans (by linarith : 0 < H) ht
    have hd := pickupKernel_norm_decay hc
      (show 1 ≤ |t| by rw [abs_of_pos htpos]; exact hH.trans ht.le)
    simpa only [abs_of_pos htpos] using hd
  have hiF : IntegrableOn (fun t => ‖pickupKernel c t‖) (Ioi H) :=
    hi.mono' (pickupKernel_continuous hc).norm.aestronglyMeasurable
      (hdom.mono (fun t ht => by simpa only [norm_norm] using ht))
  refine ⟨hiF, ?_⟩
  have hb := integral_mono_ae hiF hi hdom
  rw [heq] at hb
  simpa only [show (1:ℝ)-2 = -1 by norm_num, Real.rpow_neg_one,
    show (2:ℝ)-1 = 1 by norm_num, div_one, div_eq_mul_inv, inv_one, mul_one] using hb

/-- Reflection gives the left absolute tail without assuming kernel evenness. -/
theorem pickupKernel_reflected_right_tail {c H : ℝ} (hc : 1 < c) (hH : 1 ≤ H) :
    IntegrableOn (fun t => ‖pickupKernel c (-t)‖) (Ioi H) ∧
      (∫ t : ℝ in Ioi H, ‖pickupKernel c (-t)‖) ≤ absoluteDirichletBudget c/H := by
  obtain ⟨hi, heq⟩ := EulerP04RH.right_tail_majorant
    (A := absoluteDirichletBudget c) (m := 2) (by norm_num) (by linarith : 0 < H)
  have hdom : ∀ᵐ t ∂volume.restrict (Ioi H),
      ‖pickupKernel c (-t)‖ ≤ absoluteDirichletBudget c*t^(-2:ℝ) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    have htpos : 0 < t := lt_trans (by linarith : 0 < H) ht
    have hd := pickupKernel_norm_decay (t := -t) hc
      (show 1 ≤ |-t| by rw [abs_neg, abs_of_pos htpos]; exact hH.trans ht.le)
    simpa only [abs_neg, abs_of_pos htpos] using hd
  have hiF : IntegrableOn (fun t => ‖pickupKernel c (-t)‖) (Ioi H) :=
    hi.mono' ((pickupKernel_continuous hc).comp continuous_neg).norm.aestronglyMeasurable
      (hdom.mono (fun t ht => by simpa only [norm_norm] using ht))
  refine ⟨hiF, ?_⟩
  have hb := integral_mono_ae hiF hi hdom
  rw [heq] at hb
  simpa only [show (1:ℝ)-2 = -1 by norm_num, Real.rpow_neg_one,
    show (2:ℝ)-1 = 1 by norm_num, div_one, div_eq_mul_inv, inv_one, mul_one] using hb

theorem pickupKernel_absolute_left_tail {c H : ℝ} (hc : 1 < c) (hH : 1 ≤ H) :
    IntegrableOn (fun t => ‖pickupKernel c t‖) (Iio (-H)) ∧
      (∫ t : ℝ in Iio (-H), ‖pickupKernel c t‖) ≤ absoluteDirichletBudget c/H := by
  have h := pickupKernel_reflected_right_tail hc hH
  refine ⟨?_, ?_⟩
  · have hi : IntegrableOn (fun t => ‖pickupKernel c (-t)‖) (Ioi (-(-H))) := by
      simpa only [neg_neg] using h.1
    simpa only [neg_neg] using hi.comp_neg_Iio
  · rw [← integral_Iic_eq_integral_Iio, ← integral_comp_neg_Ioi]
    exact h.2

/-- Full L1 convergence of the literal unconditional right-line transform. -/
theorem pickupKernel_integrable {c : ℝ} (hc : 1 < c) : Integrable (pickupKernel c) := by
  have hl := (pickupKernel_absolute_left_tail hc (le_refl 1)).1
  have hr := (pickupKernel_absolute_right_tail hc (le_refl 1)).1
  have hm : IntegrableOn (fun t => ‖pickupKernel c t‖) (Icc (-1:ℝ) 1) :=
    (pickupKernel_continuous hc).norm.integrableOn_Icc
  have hu := hl.union (hm.union hr)
  have hs : Iio (-1:ℝ) ∪ (Icc (-1:ℝ) 1 ∪ Ioi (1:ℝ)) = univ := by
    ext x
    simp only [mem_union, mem_Iio, mem_Icc, mem_Ioi, mem_univ, iff_true]
    rcases lt_or_ge x (-1) with h | h
    · exact Or.inl h
    · rcases le_or_gt x 1 with h' | h'
      · exact Or.inr (Or.inl ⟨h,h'⟩)
      · exact Or.inr (Or.inr h')
  rw [hs, integrableOn_univ] at hu
  exact (integrable_norm_iff (pickupKernel_continuous hc).aestronglyMeasurable).mp hu

def kernelL1Mass (c : ℝ) : ℝ := ∫ t : ℝ, ‖pickupKernel c t‖

theorem kernelL1Mass_nonnegative (c : ℝ) : 0 ≤ kernelL1Mass c :=
  integral_nonneg (fun _ => norm_nonneg _)

theorem density_norm_bound {c T : ℝ} (hc : 1 < c) (hT : 0 ≤ T) (t s : ℝ) :
    ‖density c T t s‖ ≤ (T*Real.exp ((2*c-1)*T))*‖pickupKernel c t‖*‖pickupKernel c s‖ := by
  have h := mul_le_mul_of_nonneg_left (timeKernel_norm_bound hc hT (t-s))
    (mul_nonneg (norm_nonneg (pickupKernel c t)) (norm_nonneg (pickupKernel c s)))
  simpa only [density, norm_mul, Complex.norm_conj, mul_assoc, mul_comm, mul_left_comm] using h

theorem density_continuous {c T : ℝ} (hc : 1 < c) :
    Continuous (fun pair : ℝ×ℝ => density c T pair.1 pair.2) := by
  unfold density
  exact (((pickupKernel_continuous hc).comp continuous_fst).mul
    (((pickupKernel_continuous hc).comp continuous_snd).star)).mul
      ((timeKernel_continuous c T).comp (continuous_fst.sub continuous_snd))

/-- Actual joint absolute convergence, available independently of source inversion. -/
theorem density_integrable {c T : ℝ} (hc : 1 < c) (hT : 0 ≤ T) :
    Integrable (fun pair : ℝ×ℝ => density c T pair.1 pair.2) := by
  have hg := (pickupKernel_integrable hc).norm.mul_prod (pickupKernel_integrable hc).norm
  apply (hg.const_mul (T*Real.exp ((2*c-1)*T))).mono' (density_continuous hc).aestronglyMeasurable
  exact Eventually.of_forall (fun pair => by
    simpa only [mul_assoc] using density_norm_bound hc hT pair.1 pair.2)

theorem density_section_integrable {c T : ℝ} (hc : 1 < c) (hT : 0 ≤ T) (t : ℝ) :
    Integrable (density c T t) := by
  have hg := (pickupKernel_integrable hc).norm.const_mul
    ((T*Real.exp ((2*c-1)*T))*‖pickupKernel c t‖)
  have hcont : Continuous (density c T t) := by
    unfold density
    exact (continuous_const.mul (pickupKernel_continuous hc).star).mul
      ((timeKernel_continuous c T).comp (continuous_const.sub continuous_id))
  apply hg.mono' hcont.aestronglyMeasurable
  exact Eventually.of_forall (density_norm_bound hc hT t)

theorem density_outer_integrable {c T : ℝ} (hc : 1 < c) (hT : 0 ≤ T) :
    Integrable (fun t : ℝ => ∫ s : ℝ, density c T t s) :=
  (density_integrable hc hT).integral_prod_left


theorem tensor_truncation_norm_bound (F : ℝ×ℝ → ℂ) (g : ℝ → ℝ) (K : ℝ)
    (hF : Integrable F) (hg : Integrable g) (hK : 0 ≤ K)
    (hg0 : ∀ t, 0 ≤ g t) (hbound : ∀ p, ‖F p‖ ≤ K*g p.1*g p.2)
    (S : Set ℝ) (hS : MeasurableSet S) :
    ‖(∫ p : ℝ×ℝ, F p)-(∫ p : ℝ×ℝ in S×ˢS, F p)‖ ≤
      2*K*(∫ t : ℝ, g t)*(∫ t : ℝ in Sᶜ, g t) := by
  let outside : ℝ → ℝ := Sᶜ.indicator g
  have ho : Integrable outside := hg.indicator hS.compl
  have hleft := ho.mul_prod hg
  have hright := hg.mul_prod ho
  have hmajor : Integrable (fun p : ℝ×ℝ => K*(outside p.1*g p.2+g p.1*outside p.2)) :=
    (hleft.add hright).const_mul K
  have hdom : ∀ p : ℝ×ℝ,
      ‖(S×ˢS)ᶜ.indicator F p‖ ≤ K*(outside p.1*g p.2+g p.1*outside p.2) := by
    intro p
    have hb := hbound p
    have hn : 0 ≤ K*g p.1*g p.2 := mul_nonneg (mul_nonneg hK (hg0 p.1)) (hg0 p.2)
    by_cases hx : p.1 ∈ S <;> by_cases hy : p.2 ∈ S
    · simp [outside,Set.indicator,hx,hy]
    · simpa [outside,Set.indicator,hx,hy,mul_assoc] using hb
    · simpa [outside,Set.indicator,hx,hy,mul_assoc] using hb
    · simp only [outside,Set.indicator,mem_compl_iff,mem_prod,hx,hy,
        and_false,not_false_eq_true,if_pos] at ⊢
      nlinarith
  have h := norm_integral_le_of_norm_le hmajor (Eventually.of_forall hdom)
  rw [integral_indicator (hS.prod hS).compl, setIntegral_compl (hS.prod hS) hF] at h
  rw [integral_const_mul] at h
  rw [Measure.volume_eq_prod] at h
  rw [integral_add hleft hright, integral_prod_mul, integral_prod_mul] at h
  dsimp only [outside] at h
  rw [integral_indicator hS.compl] at h
  calc
    _ ≤ K*((∫ t : ℝ in Sᶜ, g t)*(∫ t : ℝ, g t)+
      (∫ t : ℝ, g t)*(∫ t : ℝ in Sᶜ, g t)) := h
    _ = _ := by ring

/-- The two omitted frequency rays carry genuine absolute mass O(1/H). -/
theorem pickupKernel_absolute_complement_tail {c H : ℝ} (hc : 1 < c) (hH : 1 ≤ H) :
    (∫ t : ℝ in (Icc (-H) H)ᶜ, ‖pickupKernel c t‖) ≤
      2*absoluteDirichletBudget c/H := by
  have hl := pickupKernel_absolute_left_tail hc hH
  have hr := pickupKernel_absolute_right_tail hc hH
  have hs : (Icc (-H) H)ᶜ = Iio (-H) ∪ Ioi H := by
    ext t
    simp only [mem_compl_iff, mem_Icc, mem_union, mem_Iio, mem_Ioi]
    constructor
    · intro ht
      by_cases hx : -H ≤ t
      · exact Or.inr (lt_of_not_ge (fun hy => ht ⟨hx,hy⟩))
      · exact Or.inl (lt_of_not_ge hx)
    · rintro (ht | ht) ⟨hx,hy⟩
      · exact (not_lt_of_ge hx) ht
      · exact (not_lt_of_ge hy) ht
  have hd : Disjoint (Iio (-H)) (Ioi H) := by
    apply Set.disjoint_left.mpr
    intro t ht hs
    simp only [mem_Iio,mem_Ioi] at ht hs
    linarith
  rw [hs,setIntegral_union hd measurableSet_Ioi hl.1 hr.1]
  calc
    _ ≤ absoluteDirichletBudget c/H+absoluteDirichletBudget c/H := add_le_add hl.2 hr.2
    _ = _ := by ring

/-- Explicit c-dependent constant, independent of T and H. -/
def tailConstant (c : ℝ) : ℝ :=
  ((2*Real.pi)^2)⁻¹*4*absoluteDirichletBudget c*kernelL1Mass c

theorem tailConstant_nonnegative (c : ℝ) : 0 ≤ tailConstant c := by
  unfold tailConstant
  exact mul_nonneg
    (mul_nonneg (mul_nonneg (inv_nonneg.mpr (sq_nonneg _)) (by norm_num))
      (absoluteDirichletBudget_nonnegative c)) (kernelL1Mass_nonnegative c)

/-- Square truncation returns to the literal nested quadratic kernel. -/
theorem tail_bound {c H T : ℝ} (hc : 1 < c) (hH : 1 ≤ H) (hT : 0 ≤ T) :
    |tail c H T| ≤ tailConstant c*T*Real.exp ((2*c-1)*T)/H := by
  let F : ℝ×ℝ → ℂ := fun p => density c T p.1 p.2
  let S : Set ℝ := Icc (-H) H
  let K : ℝ := T*Real.exp ((2*c-1)*T)
  let z : ℂ := (∫ p : ℝ×ℝ, F p)-(∫ p : ℝ×ℝ in S×ˢS, F p)
  have hF : Integrable F := density_integrable hc hT
  have hK : 0 ≤ K := mul_nonneg hT (Real.exp_pos _).le
  have ht := tensor_truncation_norm_bound F (fun t => ‖pickupKernel c t‖) K
    hF (pickupKernel_integrable hc).norm hK (fun _ => norm_nonneg _)
    (fun p => density_norm_bound hc hT p.1 p.2) S measurableSet_Icc
  have hnorm : ‖z‖ ≤ 4*K*kernelL1Mass c*absoluteDirichletBudget c/H := by
    calc
      ‖z‖ ≤ 2*K*kernelL1Mass c*(∫ t : ℝ in Sᶜ, ‖pickupKernel c t‖) := ht
      _ ≤ 2*K*kernelL1Mass c*(2*absoluteDirichletBudget c/H) :=
        mul_le_mul_of_nonneg_left (pickupKernel_absolute_complement_tail hc hH)
          (mul_nonneg (mul_nonneg (by norm_num) hK) (kernelL1Mass_nonnegative c))
      _ = _ := by ring
  have hfull : (∫ p : ℝ×ℝ, F p) = ∫ t : ℝ, ∫ s : ℝ, density c T t s := by
    rw [Measure.volume_eq_prod]
    exact integral_prod F hF
  have hcore : (∫ p : ℝ×ℝ in S×ˢS, F p) =
      ∫ t : ℝ in Icc (-H) H, ∫ s : ℝ in Icc (-H) H, density c T t s := by
    rw [Measure.volume_eq_prod]
    exact setIntegral_prod F hF.integrableOn
  have hreturn : tail c H T = ((2*Real.pi)^2)⁻¹*z.re := by
    dsimp only [tail,kernelEnergy,head,z]
    rw [hfull,hcore,Complex.sub_re]
    ring
  rw [hreturn,abs_mul,abs_of_nonneg (inv_nonneg.mpr (sq_nonneg _))]
  calc
    _ ≤ ((2*Real.pi)^2)⁻¹*‖z‖ :=
      mul_le_mul_of_nonneg_left (Complex.abs_re_le_norm z) (inv_nonneg.mpr (sq_nonneg _))
    _ ≤ ((2*Real.pi)^2)⁻¹*(4*K*kernelL1Mass c*absoluteDirichletBudget c/H) :=
      mul_le_mul_of_nonneg_left hnorm (inv_nonneg.mpr (sq_nonneg _))
    _ = tailConstant c*T*Real.exp ((2*c-1)*T)/H := by dsimp only [tailConstant,K]; ring

/-- The height pays precisely the exposed exponential time cost. -/
def quadraticHeight (c T : ℝ) : ℝ := Real.exp ((2*c-1)*T)

theorem quadraticHeight_valid {c T : ℝ} (hc : 1 < c) (hT : 0 ≤ T) :
    1 ≤ quadraticHeight c T := by
  unfold quadraticHeight
  exact Real.one_le_exp (mul_nonneg (by linarith) hT)

theorem tail_at_quadraticHeight {c T : ℝ} (hc : 1 < c) (hT : 0 ≤ T) :
    |tail c (quadraticHeight c T) T| ≤ tailConstant c*T := by
  have h := tail_bound hc (quadraticHeight_valid hc hT) hT
  simpa only [quadraticHeight, mul_div_cancel_right₀ _ (Real.exp_ne_zero _)] using h

/-- Unconditional polynomial tail producer for the fixed source transform model. -/
theorem polynomial_tail_budget {c : ℝ} (hc : 1 < c) :
    ConcreteRightLine.TailBudget c (quadraticHeight c) := by
  refine ⟨tailConstant c,1,tailConstant_nonnegative c,by norm_num,?_⟩
  intro T hT
  calc
    _ ≤ tailConstant c*T := tail_at_quadraticHeight hc hT
    _ ≤ tailConstant c*(1+T) :=
      mul_le_mul_of_nonneg_left (by linarith) (tailConstant_nonnegative c)
    _ = tailConstant c*(1+T)^((1:ℝ)) := by rw [Real.rpow_one]

end EulerP04RH.ConcreteTail
#print axioms EulerP04RH.ConcreteTail.pickupKernel_integrable
#print axioms EulerP04RH.ConcreteTail.timeKernel_norm_bound
#print axioms EulerP04RH.ConcreteTail.density_integrable
#print axioms EulerP04RH.ConcreteTail.tail_bound
#print axioms EulerP04RH.ConcreteTail.polynomial_tail_budget
