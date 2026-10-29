import FormalResearch.RiemannHypothesis.Conversation.ZeroSeamCountermodels
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecificLimits.Basic

/-!
# Fixed zero seams and unit height permit opposite normalized-mass limits

Batch 05 AC05-06 specifies the two literal polynomial families
`(4*x*(1-x))^k` and `1-(2*x-1)^(2*k)`. For positive k both have zero endpoint
values, positive interior values and maximum one. Their unit-panel integrals
converge respectively to zero and one. Dominated convergence pays the measure,
measurability and exceptional-point obligations explicitly. These are profile
countermodels, not assertions about the actual ordinary-prime excursions.

Human zero/height/shape distinction: grwtsk contributors. Local exact families
and Lean proofs: OpenAI Codex. Mathlib's dominated convergence and geometric
limits are used under their upstream names; no upstream source is renamed.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.NormalizedShapeCountermodels

open MeasureTheory Filter
open scoped Topology
noncomputable section

/-- The concentrated in this module, with the following exact parameterization.

def concentrated (k : ℕ) (x : ℝ) : ℝ := (4 * x * (1 - x)) ^ k
-/
def concentrated (k : ℕ) (x : ℝ) : ℝ := (4 * x * (1 - x)) ^ k
/-- The broad in this module, with the following exact parameterization.

def broad (k : ℕ) (x : ℝ) : ℝ := 1 - (2 * x - 1) ^ (2 * k)
-/
def broad (k : ℕ) (x : ℝ) : ℝ := 1 - (2 * x - 1) ^ (2 * k)

theorem concentrated_continuous (k : ℕ) : Continuous (concentrated k) :=
  ((continuous_const.mul continuous_id).mul
    (continuous_const.sub continuous_id)).pow k

theorem broad_continuous (k : ℕ) : Continuous (broad k) :=
  continuous_const.sub (((continuous_const.mul continuous_id).sub continuous_const).pow (2 * k))

theorem base_bounds {x : ℝ} (hx : x ∈ Set.Icc (0 : ℝ) 1) :
    0 ≤ 4 * x * (1 - x) ∧ 4 * x * (1 - x) ≤ 1 := by
  have hx0 := hx.1
  have hx1 := hx.2
  constructor
  · positivity
  · nlinarith [sq_nonneg (2 * x - 1)]

theorem square_bounds {x : ℝ} (hx : x ∈ Set.Icc (0 : ℝ) 1) :
    0 ≤ (2 * x - 1) ^ 2 ∧ (2 * x - 1) ^ 2 ≤ 1 := by
  constructor
  · positivity
  · nlinarith [mul_nonneg hx.1 (sub_nonneg.mpr hx.2)]

theorem concentrated_bounds (k : ℕ) {x : ℝ} (hx : x ∈ Set.Icc (0 : ℝ) 1) :
    0 ≤ concentrated k x ∧ concentrated k x ≤ 1 := by
  exact ⟨pow_nonneg (base_bounds hx).1 k, pow_le_one₀ (base_bounds hx).1 (base_bounds hx).2⟩

theorem broad_bounds (k : ℕ) {x : ℝ} (hx : x ∈ Set.Icc (0 : ℝ) 1) :
    0 ≤ broad k x ∧ broad k x ≤ 1 := by
  unfold broad
  rw [pow_mul]
  constructor
  · exact sub_nonneg.mpr (pow_le_one₀ (square_bounds hx).1 (square_bounds hx).2)
  · exact sub_le_self _ (pow_nonneg (square_bounds hx).1 k)

theorem fixed_seams_and_height {k : ℕ} (hk : 0 < k) :
    concentrated k 0 = 0 ∧ concentrated k 1 = 0 ∧ concentrated k (1 / 2) = 1 ∧
      broad k 0 = 0 ∧ broad k 1 = 0 ∧ broad k (1 / 2) = 1 := by
  norm_num [concentrated, broad, hk.ne', pow_mul]

theorem positive_interiors {k : ℕ} (hk : 0 < k) {x : ℝ}
    (hx : x ∈ Set.Ioo (0 : ℝ) 1) : 0 < concentrated k x ∧ 0 < broad k x := by
  have hx0 := hx.1
  have hx1 := hx.2
  have hbase : 0 < 4 * x * (1 - x) := by positivity
  have hsq : (2 * x - 1) ^ 2 < 1 := by
    nlinarith [mul_pos hx.1 (sub_pos.mpr hx.2)]
  constructor
  · exact pow_pos hbase k
  · unfold broad
    rw [pow_mul]
    exact sub_pos.mpr (pow_lt_one₀ (sq_nonneg _) hsq hk.ne')

private theorem panel_constant_integrable :
    Integrable (fun _ : ℝ => (1 : ℝ)) (volume.restrict (Set.Ioc (0 : ℝ) 1)) :=
  (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => (1 : ℝ)) volume 0 1).1

theorem concentrated_mean_tends_to_zero :
    Tendsto (fun k : ℕ => ∫ x in (0 : ℝ)..1, concentrated k x) atTop (𝓝 0) := by
  have hlim : ∀ᵐ x ∂volume.restrict (Set.Ioc (0 : ℝ) 1),
      Tendsto (fun k : ℕ => concentrated k x) atTop (𝓝 (0 : ℝ)) := by
    filter_upwards [self_mem_ae_restrict measurableSet_Ioc,
      (volume.restrict (Set.Ioc (0 : ℝ) 1)).ae_ne (1 / 2)]
      with x hx hhalf
    have hbase := base_bounds ⟨hx.1.le, hx.2⟩
    have hne : 2 * x - 1 ≠ 0 := by intro he; apply hhalf; linarith
    have hstrict : 4 * x * (1 - x) < 1 := by nlinarith [sq_pos_of_ne_zero hne]
    exact tendsto_pow_atTop_nhds_zero_of_lt_one hbase.1 hstrict
  have h := tendsto_integral_of_dominated_convergence (μ := volume.restrict (Set.Ioc (0 : ℝ) 1))
    (fun _ => (1 : ℝ)) (fun k => (concentrated_continuous k).aestronglyMeasurable)
    panel_constant_integrable (fun k => ?_) hlim
  · simpa only [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1), integral_zero] using h
  · filter_upwards [self_mem_ae_restrict measurableSet_Ioc] with x hx
    have hb := concentrated_bounds k ⟨hx.1.le, hx.2⟩
    simpa only [Real.norm_eq_abs, abs_of_nonneg hb.1] using hb.2

theorem broad_mean_tends_to_one :
    Tendsto (fun k : ℕ => ∫ x in (0 : ℝ)..1, broad k x) atTop (𝓝 1) := by
  have hlim : ∀ᵐ x ∂volume.restrict (Set.Ioc (0 : ℝ) 1),
      Tendsto (fun k : ℕ => broad k x) atTop (𝓝 (1 : ℝ)) := by
    filter_upwards [self_mem_ae_restrict measurableSet_Ioc,
      (volume.restrict (Set.Ioc (0 : ℝ) 1)).ae_ne 1] with x hx hone
    have hstrict : (2 * x - 1) ^ 2 < 1 := by
      nlinarith [mul_pos hx.1 (sub_pos.mpr (lt_of_le_of_ne hx.2 hone))]
    have hpow := tendsto_pow_atTop_nhds_zero_of_lt_one (sq_nonneg (2 * x - 1)) hstrict
    simpa only [broad, pow_mul, sub_zero] using tendsto_const_nhds.sub hpow
  have h := tendsto_integral_of_dominated_convergence (μ := volume.restrict (Set.Ioc (0 : ℝ) 1))
    (fun _ => (1 : ℝ)) (fun k => (broad_continuous k).aestronglyMeasurable)
    panel_constant_integrable (fun k => ?_) hlim
  · have hone : (∫ x in Set.Ioc (0 : ℝ) 1, (1 : ℝ)) = 1 := by
      rw [← intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1)]
      norm_num
    simpa only [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1), hone] using h
  · filter_upwards [self_mem_ae_restrict measurableSet_Ioc] with x hx
    have hb := broad_bounds k ⟨hx.1.le, hx.2⟩
    simpa only [Real.norm_eq_abs, abs_of_nonneg hb.1] using hb.2

end
end GRWTSK.RiemannHypothesis.Conversation.NormalizedShapeCountermodels
