# Complete source: GRWTSK.Topology.GeneralTopology.ControllerSchedule.Variant79cc30ea4c1a2363049a8708166125c76807581dac67cc7497d08caa34843853

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a61d26c3fd7c9a2c2fa8f2f186e645ae5383f00e` · SHA-256 `0bd9c81b22241542c52d5247846a418f51ba79d9819eddc4e1f1e9ca21a10dfe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.CumulativeCost.Variant4d215058b749499f5cdb097f2ed741613457546d9ea05be5029fc3d98b45c806","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d215058b749499f5cdb097f2ed741613457546d9ea05be5029fc3d98b45c806","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.CumulativeCost.Variant4d215058b749499f5cdb097f2ed741613457546d9ea05be5029fc3d98b45c806","mathematical_subject":"Topology.GeneralTopology","original_sha256":"4d215058b749499f5cdb097f2ed741613457546d9ea05be5029fc3d98b45c806","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/ControllerSchedule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerEnergy

/-!
The exact user-proposed regularization schedule for controllers in the actual
half-line Hilbert space. Input norms may grow without bound. The final transport
retains full residual convergence as an explicit hypothesis; it does not prove
that arithmetic estimate or assert RH.
-/

namespace GRWTSK.Topology.GeneralTopology.CumulativeCost.Variant4d215058b749499f5cdb097f2ed741613457546d9ea05be5029fc3d98b45c806

set_option autoImplicit false
namespace ControllerScheduleScratch
open Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator SourceResolventTruncation SourceControllerEnergy
noncomputable section

/-- The cumulative actual Hilbert input cost, retaining every index from one through j. -/
def cumulativeCost (q : ℕ → H) (j : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 j, ‖q k‖ ^ 2

/-- The exact controller-dependent schedule; its positive-index values are used below. -/
def controllerAlpha (q : ℕ → H) (j : ℕ) : ℝ :=
  1 / ((j : ℝ) * (1 + cumulativeCost q j))

/-- All cumulative input costs are nonnegative, without any uniform norm bound. -/
theorem cumulativeCost_nonneg (q : ℕ → H) (j : ℕ) : 0 ≤ cumulativeCost q j := by
  exact Finset.sum_nonneg (fun k _ => sq_nonneg ‖q k‖)

/-- The exact finite cumulative cost increases with its closed-right cutoff. -/
theorem cumulativeCost_monotone (q : ℕ → H) : Monotone (cumulativeCost q) := by
  intro i j hij
  exact Finset.sum_le_sum_of_subset_of_nonneg (Finset.Icc_subset_Icc_right hij)
    (fun k _ _ => sq_nonneg ‖q k‖)

/-- The proposed regularization parameter is strictly positive at every positive index. -/
theorem controllerAlpha_pos (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    0 < controllerAlpha q j := by
  have hjr : 0 < (j : ℝ) := by exact_mod_cast (show 0 < j by omega)
  have hcost := cumulativeCost_nonneg q j
  unfold controllerAlpha
  positivity

/-- The parameter strictly decreases on the positive integers, even for zero controllers. -/
theorem controllerAlpha_strictAntiOn (q : ℕ → H) :
    StrictAntiOn (controllerAlpha q) (Set.Ici 1) := by
  intro i hi j _hj hij
  have hir : 0 < (i : ℝ) := by
    exact_mod_cast (show 0 < i by change 1 ≤ i at hi; omega)
  have hijr : (i : ℝ) < j := by exact_mod_cast hij
  have hci := cumulativeCost_nonneg q i
  have hcj := cumulativeCost_nonneg q j
  have hmono := cumulativeCost_monotone q hij.le
  unfold controllerAlpha
  apply one_div_lt_one_div_of_lt (by positivity)
  nlinarith

/-- The positive-index parameters are bounded by the elementary reciprocal sequence. -/
theorem controllerAlpha_le_one_div (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    controllerAlpha q j ≤ 1 / (j : ℝ) := by
  have hjr : 0 < (j : ℝ) := by exact_mod_cast (show 0 < j by omega)
  have hcost := cumulativeCost_nonneg q j
  unfold controllerAlpha
  apply one_div_le_one_div_of_le hjr
  nlinarith

/-- The full actual j-th input cost is at most 1/j under the proposed schedule. -/
theorem controllerAlpha_input_cost_le (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    controllerAlpha q j * ‖q j‖ ^ 2 ≤ 1 / (j : ℝ) := by
  have hjr : 0 < (j : ℝ) := by exact_mod_cast (show 0 < j by omega)
  have hcost := cumulativeCost_nonneg q j
  have hsingle : ‖q j‖ ^ 2 ≤ cumulativeCost q j :=
    Finset.single_le_sum (fun k _ => sq_nonneg ‖q k‖)
      (Finset.mem_Icc.mpr ⟨hj, le_rfl⟩)
  have hd : 0 < (j : ℝ) * (1 + cumulativeCost q j) := by positivity
  unfold controllerAlpha
  rw [one_div_mul_eq_div, div_le_div_iff₀ hd hjr]
  nlinarith

/-- The proposed parameters tend to zero; the input sequence need not be bounded. -/
theorem controllerAlpha_tendsto_zero (q : ℕ → H) :
    Tendsto (controllerAlpha q) atTop (nhds 0) := by
  apply squeeze_zero'
  · filter_upwards [eventually_ge_atTop 1] with j hj
    exact (controllerAlpha_pos q j hj).le
  · filter_upwards [eventually_ge_atTop 1] with j hj
    exact controllerAlpha_le_one_div q j hj
  · simpa only [one_div, Function.comp_def] using
      (tendsto_inv_atTop_zero.comp (tendsto_natCast_atTop_atTop (R := ℝ)))

/-- The exact full-energy theorem bounds the actual output-side TT* mass on this schedule. -/
theorem sourceMass_controllerAlpha_le (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    sourceMass (controllerAlpha q j) ≤
      ‖referenceVector - sourceOperator (q j)‖ ^ 2 + 1 / (j : ℝ) := by
  exact (sourceMass_le_full_energy (controllerAlpha q j)
    (controllerAlpha_pos q j hj) (q j)).trans
      (add_le_add le_rfl (controllerAlpha_input_cost_le q j hj))

/-- Full residual convergence implies vanishing mass along the exact schedule.
This is a transport theorem, not a proof of the residual convergence hypothesis. -/
theorem sourceMass_controllerAlpha_tendsto_zero (q : ℕ → H)
    (hres : Tendsto (fun j => ‖referenceVector - sourceOperator (q j)‖) atTop (nhds 0)) :
    Tendsto (fun j => sourceMass (controllerAlpha q j)) atTop (nhds 0) := by
  apply squeeze_zero'
  · filter_upwards [eventually_ge_atTop 1] with j hj
    exact sourceMass_nonneg _ (controllerAlpha_pos q j hj)
  · filter_upwards [eventually_ge_atTop 1] with j hj
    exact sourceMass_controllerAlpha_le q j hj
  · have hinv : Tendsto (fun j : ℕ => 1 / (j : ℝ)) atTop (nhds 0) := by
      simpa only [one_div, Function.comp_def] using
        (tendsto_inv_atTop_zero.comp (tendsto_natCast_atTop_atTop (R := ℝ)))
    simpa only [zero_pow (by decide : 2 ≠ 0), zero_add] using (hres.pow 2).add hinv

end
end ControllerScheduleScratch
```
