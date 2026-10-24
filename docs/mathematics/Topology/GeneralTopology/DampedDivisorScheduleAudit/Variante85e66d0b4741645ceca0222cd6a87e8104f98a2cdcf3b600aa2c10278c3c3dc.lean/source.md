# Complete source: GRWTSK.Topology.GeneralTopology.DampedDivisorScheduleAudit.Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bafbeea2b78457e2dff83c2823e8914c81cbe09c` · SHA-256 `166952ab5140c0c1dc8a3e58afd0c665df3239ab67f469d372f85903757214e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.FastEpsilon.Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.FastEpsilon.Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269","mathematical_subject":"Topology.GeneralTopology","original_sha256":"906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/DampedDivisorScheduleAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceTailSchedule
import FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-! A faster arithmetic damping schedule makes the complete tail and Taylor budgets vanish. -/

namespace GRWTSK.Topology.GeneralTopology.FastEpsilon.Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269

set_option autoImplicit false
namespace DampedDivisorScheduleScratch
open Filter MeasureTheory Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceTailSchedule MobiusEndpointBudget MobiusPoleNumerator
open LogarithmicResidual LogarithmicResidualTail
noncomputable section

/-- A positive arithmetic damping choice independent of any zero or covariance estimate. -/
def fastEpsilon (X : ℕ) : ℝ := 1 / (X : ℝ)

private theorem scale_facts (X : ℕ) (hX : 1 ≤ X) :
    0 < (X : ℝ) ∧ 1 ≤ logScale X ∧ 0 < logScale X := by
  have hx : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hL : 1 ≤ logScale X := by
    unfold logScale
    linarith [Real.log_nonneg hx]
  exact ⟨by linarith, hL, by linarith⟩

private theorem cutoff_sqrt (X : ℕ) (hX : 1 ≤ X) :
    Real.sqrt (cutoffSchedule X) = (X : ℝ) * logScale X * Real.sqrt (X : ℝ) := by
  obtain ⟨hx, hL, _⟩ := scale_facts X hX
  unfold cutoffSchedule
  rw [show (X : ℝ) ^ 3 * logScale X ^ 2 =
    ((X : ℝ) * logScale X) ^ 2 * (X : ℝ) by ring,
    Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq (by positivity)]

/-- The faster damping retains the original source cap and the unchanged expanding cutoff. -/
theorem fast_schedule_admissible (X : ℕ) (hX : 4 ≤ X) :
    0 < fastEpsilon X ∧ fastEpsilon X ≤ 1 / 4 ∧ 1 ≤ cutoffSchedule X := by
  obtain ⟨hx, _, _⟩ := scale_facts X (by omega)
  refine ⟨by unfold fastEpsilon; positivity, ?_, (schedule_admissible X (by omega)).2.2⟩
  unfold fastEpsilon
  exact one_div_le_one_div_of_le (by norm_num) (by exact_mod_cast hX)

/-- Both original endpoint quantities retain shrinking explicit bounds under faster damping. -/
theorem fast_endpoint_bounds (X : ℕ) (hX : 4 ≤ X) :
    ‖correctedNumerator X (1 / 2 + (fastEpsilon X : ℂ))‖ ≤ logScale X ^ 2 / (X : ℝ) ∧
    (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (fastEpsilon X) d|) /
      Real.sqrt (cutoffSchedule X) ≤ 3 / Real.sqrt (X : ℝ) := by
  have hXn : 1 ≤ X := by omega
  obtain ⟨hx, hL, hL0⟩ := scale_facts X hXn
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hXn
  have he := (fast_schedule_admissible X hX).1
  constructor
  · have hb := correctedNumerator_half_add_norm_le X (fastEpsilon X) hXn he.le
    simpa only [fastEpsilon, logScale, one_div_mul_eq_div] using hb
  · have hb := dampedCoefficient_abs_sum_le X (fastEpsilon X) hXn he.le
    change (∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (fastEpsilon X) d|) ≤
      2 * (X : ℝ) * logScale X at hb
    rw [cutoff_sqrt X hXn]
    have hXL : 1 ≤ (X : ℝ) * logScale X := one_le_mul_of_one_le_of_one_le hXr hL
    apply (div_le_div_iff₀ (by positivity) (Real.sqrt_pos.mpr hx)).mpr
    nlinarith [Real.sqrt_nonneg (X : ℝ)]

/-- The complete first-order Taylor norm budget vanishes without reducing the original cutoff. -/
theorem fast_taylor_bound (X : ℕ) (hX : 4 ≤ X) :
    fastEpsilon X ^ 2 * Real.sqrt (cutoffSchedule X - 1) *
      Real.log (cutoffSchedule X) ^ 2 ≤ 25 * logScale X ^ 3 / Real.sqrt (X : ℝ) := by
  have hXn : 1 ≤ X := by omega
  obtain ⟨hx, hL, hL0⟩ := scale_facts X hXn
  have hY := (fast_schedule_admissible X hX).2.2
  have hylog : Real.log (cutoffSchedule X) = 3 * Real.log (X : ℝ) + 2 * Real.log (logScale X) := by
    unfold cutoffSchedule
    rw [Real.log_mul (by positivity) (by positivity), Real.log_pow, Real.log_pow]
    norm_num
  have hlogL := Real.log_le_sub_one_of_pos hL0
  have hlog : Real.log (cutoffSchedule X) ≤ 5 * logScale X := by
    rw [hylog]
    dsimp only [logScale] at *
    linarith
  have hsq : Real.log (cutoffSchedule X) ^ 2 ≤ 25 * logScale X ^ 2 := by
    nlinarith [Real.log_nonneg hY]
  have hsqrt := Real.sqrt_le_sqrt (show cutoffSchedule X - 1 ≤ cutoffSchedule X by linarith)
  calc
    _ ≤ fastEpsilon X ^ 2 * Real.sqrt (cutoffSchedule X) * (25 * logScale X ^ 2) := by
      exact mul_le_mul (mul_le_mul_of_nonneg_left hsqrt (sq_nonneg _)) hsq
        (sq_nonneg _) (by positivity)
    _ = _ := by
      rw [cutoff_sqrt X hXn]
      unfold fastEpsilon
      have hsqx := Real.sq_sqrt hx.le
      have hsx : Real.sqrt (X : ℝ) ≠ 0 := (Real.sqrt_pos.mpr hx).ne'
      field_simp
      nlinarith

private theorem logScale_power_div_rpow_tendsto (n : ℕ) (r : ℝ) (hr : 0 < r) :
    Tendsto (fun X : ℕ => logScale X ^ n / (X : ℝ) ^ r) atTop (nhds 0) := by
  have hb : Tendsto (fun x : ℝ => Real.log x ^ n / x ^ r) atTop (nhds 0) := by
    simpa only [Real.rpow_natCast] using
      (isLittleO_log_rpow_rpow_atTop (n : ℝ) hr).tendsto_div_nhds_zero
  have hc : Tendsto (fun x : ℝ => (2 : ℝ) ^ n * (Real.log x ^ n / x ^ r))
      atTop (nhds 0) := by simpa using tendsto_const_nhds.mul hb
  have ht : Tendsto (fun x : ℝ => (1 + Real.log x) ^ n / x ^ r) atTop (nhds 0) := by
    apply squeeze_zero' _ _ hc
    · filter_upwards [eventually_ge_atTop (1 : ℝ)] with x hx
      exact div_nonneg (pow_nonneg (by linarith [Real.log_nonneg hx]) _) (Real.rpow_nonneg (by linarith : 0 ≤ x) r)
    · filter_upwards [Real.tendsto_log_atTop.eventually_ge_atTop (1 : ℝ),
        eventually_ge_atTop (1 : ℝ)] with x hl hx
      have hp : (1 + Real.log x) ^ n ≤ (2 * Real.log x) ^ n := by gcongr; linarith
      calc
        _ ≤ (2 * Real.log x) ^ n / x ^ r := div_le_div_of_nonneg_right hp (Real.rpow_nonneg (by linarith : 0 ≤ x) r)
        _ = _ := by rw [mul_pow]; ring
  exact ht.comp tendsto_natCast_atTop_atTop

/-- Damping and all three explicit error bounds vanish on the same complete natural diagonal. -/
theorem fast_explicit_budgets_tendsto :
    Tendsto fastEpsilon atTop (nhds 0) ∧
    Tendsto (fun X : ℕ => logScale X ^ 2 / (X : ℝ)) atTop (nhds 0) ∧
    Tendsto (fun X : ℕ => 3 / Real.sqrt (X : ℝ)) atTop (nhds 0) ∧
    Tendsto (fun X : ℕ => 25 * logScale X ^ 3 / Real.sqrt (X : ℝ)) atTop (nhds 0) := by
  refine ⟨tendsto_const_nhds.div_atTop tendsto_natCast_atTop_atTop, ?_,
    explicit_tail_bounds_tendsto.2, ?_⟩
  · simpa using logScale_power_div_rpow_tendsto 2 1 (by norm_num)
  · have hb : Tendsto (fun X : ℕ => logScale X ^ 3 / Real.sqrt (X : ℝ))
        atTop (nhds 0) := by
      simpa only [Real.sqrt_eq_rpow] using
        logScale_power_div_rpow_tendsto 3 (1 / 2) (by norm_num)
    simpa only [mul_zero, mul_div_assoc] using
      (tendsto_const_nhds (x := (25 : ℝ))).mul hb

/-- The actual endpoint quantities and the full Taylor budget vanish together, without a core premise. -/
theorem fast_actual_budgets_tendsto :
    Tendsto (fun X : ℕ => ‖correctedNumerator X (1 / 2 + (fastEpsilon X : ℂ))‖)
      atTop (nhds 0) ∧
    Tendsto (fun X : ℕ =>
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (fastEpsilon X) d|) /
        Real.sqrt (cutoffSchedule X)) atTop (nhds 0) ∧
    Tendsto (fun X : ℕ => fastEpsilon X ^ 2 * Real.sqrt (cutoffSchedule X - 1) *
      Real.log (cutoffSchedule X) ^ 2) atTop (nhds 0) := by
  refine ⟨?_, ?_, ?_⟩
  · exact squeeze_zero' (Eventually.of_forall (fun X => norm_nonneg _))
      (eventually_atTop.mpr ⟨4, fun X hX => (fast_endpoint_bounds X hX).1⟩)
      fast_explicit_budgets_tendsto.2.1
  · exact squeeze_zero' (Eventually.of_forall (fun X => by positivity))
      (eventually_atTop.mpr ⟨4, fun X hX => (fast_endpoint_bounds X hX).2⟩)
      fast_explicit_budgets_tendsto.2.2.1
  · exact squeeze_zero' (Eventually.of_forall (fun X => by positivity))
      (eventually_atTop.mpr ⟨4, fun X hX => fast_taylor_bound X hX⟩)
      fast_explicit_budgets_tendsto.2.2.2

/-- The bounds apply to both actual admitted full-line endpoint vectors, including their whole tails. -/
theorem fast_actual_tail_norm_bounds (X : ℕ) (hX : 4 ≤ X) :
    ‖((logResidual_memLp X (fastEpsilon X) (by omega)).indicator measurableSet_Iio).toLp
      ((Iio (0 : ℝ)).indicator (logResidual X (fastEpsilon X)))‖ ≤ logScale X ^ 2 / (X : ℝ) ∧
    ‖((logResidual_memLp X (fastEpsilon X) (by omega)).indicator measurableSet_Ioi).toLp
      ((Ioi (Real.log (cutoffSchedule X))).indicator (logResidual X (fastEpsilon X)))‖ ≤
        3 / Real.sqrt (X : ℝ) := by
  constructor
  · rw [logResidual_negative_norm X (fastEpsilon X) (by omega)]
    exact (fast_endpoint_bounds X hX).1
  · exact (logResidual_positive_norm_le X (fastEpsilon X) (by omega) (cutoffSchedule X)
      (fast_schedule_admissible X hX).2.2).trans (fast_endpoint_bounds X hX).2

end
end DampedDivisorScheduleScratch

set_option pp.proofs true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#print DampedDivisorScheduleScratch.fastEpsilon
#print axioms DampedDivisorScheduleScratch.fastEpsilon
#print DampedDivisorScheduleScratch.fast_schedule_admissible
#print axioms DampedDivisorScheduleScratch.fast_schedule_admissible
#print DampedDivisorScheduleScratch.fast_endpoint_bounds
#print axioms DampedDivisorScheduleScratch.fast_endpoint_bounds
#print DampedDivisorScheduleScratch.fast_taylor_bound
#print axioms DampedDivisorScheduleScratch.fast_taylor_bound
#print DampedDivisorScheduleScratch.fast_explicit_budgets_tendsto
#print axioms DampedDivisorScheduleScratch.fast_explicit_budgets_tendsto
#print DampedDivisorScheduleScratch.fast_actual_budgets_tendsto
#print axioms DampedDivisorScheduleScratch.fast_actual_budgets_tendsto
#print DampedDivisorScheduleScratch.fast_actual_tail_norm_bounds
#print axioms DampedDivisorScheduleScratch.fast_actual_tail_norm_bounds
```
