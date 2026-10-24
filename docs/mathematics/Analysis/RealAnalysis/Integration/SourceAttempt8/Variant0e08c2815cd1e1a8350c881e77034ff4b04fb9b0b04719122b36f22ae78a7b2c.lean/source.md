# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt8.Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3a5a015e85b6e477f0b7ee5bb344cd6310eee41` · SHA-256 `0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CompensatedGammaProfile
import Mathlib.Analysis.SpecialFunctions.FrullaniIntegral
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic

/-!
Scratch child #320, direct parent #146. Physical terms retain n >= 1 and
all exponential compensation. Reuse Louis (Yiyang) Liu's pinned Frullani
proof; prove rather than assume its global divided-difference integrability.
grwtsk contributors's mathematical direction; OpenAI Codex proof/review.
-/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.CompensatedGammaIntegral
open MeasureTheory Set Filter
open scoped Topology

def dividedDifference (a b t : ℝ) : ℝ :=
  (Real.exp (-a * t) - Real.exp (-b * t)) / t

theorem dividedDifference_bound {a b t : ℝ} (_ha : 0 < a) (_hb : 0 < b) (ht : 0 < t) :
    ‖dividedDifference a b t‖ ≤ |a - b| * Real.exp (-min a b * t) := by
  have hder (u : ℝ) : HasDerivAt (fun v : ℝ ↦ Real.exp (-v * t))
      (Real.exp (-u * t) * (-t)) u := by
    convert ((hasDerivAt_id u).neg.mul_const t).exp using 1 <;> simp
  have hbound (u : ℝ) (hu : u ∈ Ici (min a b)) :
      ‖Real.exp (-u * t) * (-t)‖ ≤ t * Real.exp (-min a b * t) := by
    rw [norm_mul, Real.norm_of_nonneg (Real.exp_pos _).le, norm_neg, Real.norm_of_nonneg ht.le]
    have he : Real.exp (-u * t) ≤ Real.exp (-min a b * t) := by
      apply Real.exp_le_exp.mpr
      exact mul_le_mul_of_nonneg_right (neg_le_neg hu) ht.le
    nlinarith [Real.exp_pos (-u * t), Real.exp_pos (-min a b * t)]
  have hv := (convex_Ici (min a b)).norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun u _ ↦ (hder u).hasDerivWithinAt) hbound
    (show b ∈ Ici (min a b) from min_le_right a b)
    (show a ∈ Ici (min a b) from min_le_left a b)
  rw [dividedDifference, norm_div, Real.norm_of_nonneg ht.le]
  apply (div_le_iff₀ ht).2
  simpa only [Real.norm_eq_abs, mul_comm, mul_left_comm, mul_assoc] using hv

theorem dividedDifference_integrable {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    IntegrableOn (dividedDifference a b) (Ioi 0) := by
  have hm : 0 < min a b := lt_min ha hb
  have hd : ContinuousOn (dividedDifference a b) (Ioi 0) := by
    unfold dividedDifference
    fun_prop (disch := aesop)
  refine ((integrableOn_exp_mul_Ioi (by linarith : -min a b < 0) 0).const_mul |a - b|).mono'
    (hd.aestronglyMeasurable measurableSet_Ioi) ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact dividedDifference_bound ha hb ht

theorem dividedDifference_integral {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    (∫ t : ℝ in Ioi 0, dividedDifference a b t) = Real.log (b / a) := by
  have hf : LocallyIntegrableOn (fun t : ℝ ↦ Real.exp (-t)) (Ioi 0) := by
    exact (integrableOn_exp_neg_Ioi 0).locallyIntegrableOn
  have hL : Tendsto (fun t : ℝ ↦ Real.exp (-t)) (𝓝[>] 0) (𝓝 1) := by
    simpa using ((by fun_prop : Continuous (fun t : ℝ ↦ Real.exp (-t))).tendsto 0).mono_left
      nhdsWithin_le_nhds
  have h := Frullani.integral_Ioi_eq hf ha hb hL Real.tendsto_exp_neg_atTop_nhds_zero
    (by convert dividedDifference_integrable ha hb using 1; ext t; simp [dividedDifference, smul_eq_mul, div_eq_mul_inv, mul_comm])
  simpa [dividedDifference, smul_eq_mul, div_eq_mul_inv, mul_comm, neg_mul] using h


def physicalRate (n : ℕ) : ℝ := 2 * ((n : ℝ) + 1)

def compensatedTerm (x : ℝ) (n : ℕ) (t : ℝ) : ℝ :=
  (Real.exp (-x * t) - 1 + x * t) * Real.exp (-physicalRate n * t) / t

theorem physicalRate_pos (n : ℕ) : 0 < physicalRate n := by unfold physicalRate; positivity

theorem shifted_physicalRate_pos {x : ℝ} (hx : -2 < x) (n : ℕ) :
    0 < physicalRate n + x := by
  unfold physicalRate
  nlinarith [Nat.cast_nonneg (α := ℝ) n]

theorem compensatedTerm_nonneg (x : ℝ) (n : ℕ) {t : ℝ} (ht : 0 < t) :
    0 ≤ compensatedTerm x n t := by
  have he := Real.add_one_le_exp (-x * t)
  apply div_nonneg (mul_nonneg ?_ (Real.exp_pos _).le) ht.le
  linarith

theorem compensatedTerm_split (x : ℝ) (n : ℕ) {t : ℝ} (ht : t ≠ 0) :
    compensatedTerm x n t = dividedDifference (physicalRate n + x) (physicalRate n) t +
      x * Real.exp (-physicalRate n * t) := by
  have he : Real.exp (-(physicalRate n + x) * t) =
      Real.exp (-x * t) * Real.exp (-physicalRate n * t) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold compensatedTerm dividedDifference
  rw [he]
  field_simp

theorem compensatedTerm_integrable {x : ℝ} (hx : -2 < x) (n : ℕ) :
    IntegrableOn (compensatedTerm x n) (Ioi 0) := by
  have hb := physicalRate_pos n
  have hs := (dividedDifference_integrable (shifted_physicalRate_pos hx n) hb).add
    ((integrableOn_exp_mul_Ioi (by linarith : -physicalRate n < 0) 0).const_mul x)
  apply hs.congr
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact (compensatedTerm_split x n (ne_of_gt ht)).symm

theorem compensatedTerm_integral {x : ℝ} (hx : -2 < x) (n : ℕ) :
    (∫ t : ℝ in Ioi 0, compensatedTerm x n t) =
      ContinuousResearch.CompensatedGammaProfile.term x n := by
  have hb := physicalRate_pos n
  have ha := shifted_physicalRate_pos hx n
  have hdd := dividedDifference_integrable ha hb
  have hexp := (integrableOn_exp_mul_Ioi (by linarith : -physicalRate n < 0) 0).const_mul x
  have heq : (compensatedTerm x n) =ᵐ[volume.restrict (Ioi 0)]
      (fun t ↦ dividedDifference (physicalRate n + x) (physicalRate n) t +
        x * Real.exp (-physicalRate n * t)) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact compensatedTerm_split x n (ne_of_gt ht)
  rw [integral_congr_ae heq, integral_add hdd hexp, dividedDifference_integral ha hb,
    integral_const_mul, integral_exp_mul_Ioi (by linarith : -physicalRate n < 0)]
  simp only [mul_zero, Real.exp_zero, neg_div_neg_eq, one_div]
  unfold ContinuousResearch.CompensatedGammaProfile.term
  change Real.log (physicalRate n / (physicalRate n + x)) + x / physicalRate n = _
  have hlog : Real.log (physicalRate n / (physicalRate n + x)) =
      -Real.log (1 + x / physicalRate n) := by
    have hratio : physicalRate n / (physicalRate n + x) = (1 + x / physicalRate n)⁻¹ := by
      field_simp
    rw [hratio, Real.log_inv]
  rw [hlog]
  unfold physicalRate
  ring


def compensatedIntegrand (x t : ℝ) : ℝ :=
  (Real.exp (-x * t) - 1 + x * t) / (t * (Real.exp (2 * t) - 1))

theorem exponential_kernel_hasSum {t : ℝ} (ht : 0 < t) :
    HasSum (fun n : ℕ ↦ Real.exp (-physicalRate n * t)) (1 / (Real.exp (2 * t) - 1)) := by
  have hq : |Real.exp (-2 * t)| < 1 := by
    rw [abs_of_pos (Real.exp_pos _)]
    simpa using Real.exp_lt_exp.mpr (by linarith : -2 * t < 0)
  have h := (hasSum_geometric_of_abs_lt_one hq).mul_left (Real.exp (-2 * t))
  have hr : Real.exp (2 * t) - 1 ≠ 0 := by
    exact ne_of_gt (sub_pos.mpr (by simpa using Real.exp_lt_exp.mpr (by linarith : 0 < 2 * t)))
  have hfun (n : ℕ) : Real.exp (-physicalRate n * t) =
      Real.exp (-2 * t) * Real.exp (-2 * t) ^ n := by
    have he : -physicalRate n * t = ((n + 1 : ℕ) : ℝ) * (-2 * t) := by
      unfold physicalRate
      push_cast
      ring
    rw [he, Real.exp_nat_mul]
    simp [pow_succ, mul_comm]
  have hv : Real.exp (-2 * t) * (1 - Real.exp (-2 * t))⁻¹ =
      1 / (Real.exp (2 * t) - 1) := by
    rw [show -2 * t = -(2 * t) by ring, Real.exp_neg]
    field_simp [hr]
  rw [← hv]
  exact h.congr_fun hfun

theorem compensatedTerm_hasSum (x : ℝ) {t : ℝ} (ht : 0 < t) :
    HasSum (fun n : ℕ ↦ compensatedTerm x n t) (compensatedIntegrand x t) := by
  have h := (exponential_kernel_hasSum ht).mul_left ((Real.exp (-x * t) - 1 + x * t) / t)
  have hv : (Real.exp (-x * t) - 1 + x * t) / t * (1 / (Real.exp (2 * t) - 1)) =
      compensatedIntegrand x t := by
    unfold compensatedIntegrand
    rw [div_mul_div_comm, mul_one]
  rw [← hv]
  exact h.congr_fun (fun n ↦ by unfold compensatedTerm; ring)

theorem compensatedIntegrand_nonneg (x : ℝ) {t : ℝ} (ht : 0 < t) :
    0 ≤ compensatedIntegrand x t := by
  rw [← (compensatedTerm_hasSum x ht).tsum_eq]
  exact tsum_nonneg (fun n ↦ compensatedTerm_nonneg x n ht)

theorem compensatedIntegrand_continuousOn (x : ℝ) :
    ContinuousOn (compensatedIntegrand x) (Ioi 0) := by
  unfold compensatedIntegrand
  apply ContinuousOn.div (by fun_prop) (by fun_prop)
  intro t ht
  change 0 < t at ht
  apply mul_ne_zero (ne_of_gt ht)
  exact ne_of_gt (sub_pos.mpr (by simpa using Real.exp_lt_exp.mpr (by linarith : 0 < 2 * t)))

theorem compensatedTerm_integral_norm {x : ℝ} (hx : -2 < x) (n : ℕ) :
    (∫ t : ℝ in Ioi 0, ‖compensatedTerm x n t‖) =
      ContinuousResearch.CompensatedGammaProfile.term x n := by
  rw [show (∫ t : ℝ in Ioi 0, ‖compensatedTerm x n t‖) =
      ∫ t : ℝ in Ioi 0, compensatedTerm x n t from integral_congr_ae (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact Real.norm_of_nonneg (compensatedTerm_nonneg x n ht))]
  exact compensatedTerm_integral hx n

theorem compensatedTerm_integral_norm_summable {x : ℝ} (hx : -2 < x) :
    Summable (fun n : ℕ ↦ ∫ t : ℝ in Ioi 0, ‖compensatedTerm x n t‖) := by
  have he : (fun n : ℕ ↦ ∫ t : ℝ in Ioi 0, ‖compensatedTerm x n t‖) =
      ContinuousResearch.CompensatedGammaProfile.term x := by
    ext n
    exact compensatedTerm_integral_norm hx n
  rw [he]
  exact ContinuousResearch.CompensatedGammaProfile.term_summable hx

theorem compensatedTerm_lintegral_enorm_tsum_lt_top {x : ℝ} (hx : -2 < x) :
    (∑' n : ℕ, ∫⁻ t : ℝ in Ioi 0, ‖compensatedTerm x n t‖ₑ) < ⊤ := by
  calc
    _ = ∑' n : ℕ, ENNReal.ofReal (ContinuousResearch.CompensatedGammaProfile.term x n) := by
      apply tsum_congr
      intro n
      rw [← ofReal_integral_norm_eq_lintegral_enorm (compensatedTerm_integrable hx n),
        compensatedTerm_integral_norm hx n]
    _ = ENNReal.ofReal (∑' n : ℕ, ContinuousResearch.CompensatedGammaProfile.term x n) :=
      (ENNReal.ofReal_tsum_of_nonneg
        (ContinuousResearch.CompensatedGammaProfile.term_nonneg hx)
        (ContinuousResearch.CompensatedGammaProfile.term_summable hx)).symm
    _ < ⊤ := ENNReal.ofReal_lt_top

theorem compensatedIntegrand_integrable {x : ℝ} (hx : -2 < x) :
    IntegrableOn (compensatedIntegrand x) (Ioi 0) := by
  refine ⟨(compensatedIntegrand_continuousOn x).aestronglyMeasurable measurableSet_Ioi, ?_⟩
  apply hasFiniteIntegral_iff_enorm.mpr
  calc
    _ ≤ ∫⁻ t : ℝ in Ioi 0, ∑' n : ℕ, ‖compensatedTerm x n t‖ₑ := by
      apply lintegral_mono_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      rw [← (compensatedTerm_hasSum x ht).tsum_eq]
      exact enorm_tsum_le_tsum_enorm
    _ = ∑' n : ℕ, ∫⁻ t : ℝ in Ioi 0, ‖compensatedTerm x n t‖ₑ :=
      lintegral_tsum (fun n ↦ (compensatedTerm_integrable hx n).1.enorm)
    _ < ⊤ := compensatedTerm_lintegral_enorm_tsum_lt_top hx

theorem actualGamma_eq_compensatedIntegral {x : ℝ} (hx : -2 < x) :
    ContinuousResearch.CompensatedGammaProfile.actualProfile x =
      ∫ t : ℝ in Ioi 0, compensatedIntegrand x t := by
  have hI := hasSum_integral_of_summable_integral_norm
    (fun n ↦ compensatedTerm_integrable hx n) (compensatedTerm_integral_norm_summable hx)
  have hD : HasSum (fun n : ℕ ↦ ∫ t : ℝ in Ioi 0, compensatedTerm x n t)
      (ContinuousResearch.CompensatedGammaProfile.actualProfile x) := by
    exact (ContinuousResearch.CompensatedGammaProfile.hasSum_actual_gamma hx).congr_fun
      (fun n ↦ compensatedTerm_integral hx n)
  apply (hD.unique hI).trans
  apply integral_congr_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact (compensatedTerm_hasSum x ht).tsum_eq

theorem compensatedIntegrand_zero (t : ℝ) : compensatedIntegrand 0 t = 0 := by
  simp [compensatedIntegrand]

end ContinuousResearch.CompensatedGammaIntegral

#check ContinuousResearch.CompensatedGammaIntegral.dividedDifference_bound
#check ContinuousResearch.CompensatedGammaIntegral.dividedDifference_integrable
#check ContinuousResearch.CompensatedGammaIntegral.dividedDifference_integral
#check ContinuousResearch.CompensatedGammaIntegral.physicalRate_pos
#check ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_nonneg
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_split
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integrable
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integral
#check ContinuousResearch.CompensatedGammaIntegral.exponential_kernel_hasSum
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_hasSum
#check ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_nonneg
#check ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_continuousOn
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integral_norm
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integral_norm_summable
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_lintegral_enorm_tsum_lt_top
#check ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_integrable
#check ContinuousResearch.CompensatedGammaIntegral.actualGamma_eq_compensatedIntegral
#check ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_zero
#print axioms ContinuousResearch.CompensatedGammaIntegral.dividedDifference_bound
#print axioms ContinuousResearch.CompensatedGammaIntegral.dividedDifference_integrable
#print axioms ContinuousResearch.CompensatedGammaIntegral.dividedDifference_integral
#print axioms ContinuousResearch.CompensatedGammaIntegral.physicalRate_pos
#print axioms ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_nonneg
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_split
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integrable
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integral
#print axioms ContinuousResearch.CompensatedGammaIntegral.exponential_kernel_hasSum
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_hasSum
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_nonneg
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_continuousOn
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integral_norm
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integral_norm_summable
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_lintegral_enorm_tsum_lt_top
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_integrable
#print axioms ContinuousResearch.CompensatedGammaIntegral.actualGamma_eq_compensatedIntegral
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_zero
```
