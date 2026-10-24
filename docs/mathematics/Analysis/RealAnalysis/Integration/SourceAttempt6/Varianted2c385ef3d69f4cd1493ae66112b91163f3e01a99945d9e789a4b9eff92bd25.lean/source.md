# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt6.Varianted2c385ef3d69f4cd1493ae66112b91163f3e01a99945d9e789a4b9eff92bd25

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `912ef78f2d7003530d4f26e61fa4a7a2a819379d` · SHA-256 `ed2c385ef3d69f4cd1493ae66112b91163f3e01a99945d9e789a4b9eff92bd25`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
#print axioms ContinuousResearch.CompensatedGammaIntegral.dividedDifference_bound
#print axioms ContinuousResearch.CompensatedGammaIntegral.dividedDifference_integrable
#print axioms ContinuousResearch.CompensatedGammaIntegral.dividedDifference_integral
#print axioms ContinuousResearch.CompensatedGammaIntegral.physicalRate_pos
#print axioms ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_nonneg
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_split
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integrable
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integral
```
