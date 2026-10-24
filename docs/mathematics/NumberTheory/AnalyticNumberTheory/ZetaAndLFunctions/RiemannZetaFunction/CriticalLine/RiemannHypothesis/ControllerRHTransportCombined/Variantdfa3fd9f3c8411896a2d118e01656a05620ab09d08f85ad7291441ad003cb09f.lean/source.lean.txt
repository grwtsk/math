-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CumulativeCost.Variant284b7a4447f5dad623ae8a71b625ad3f00c5d4361d704fde98dd010ecac8a91f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"284b7a4447f5dad623ae8a71b625ad3f00c5d4361d704fde98dd010ecac8a91f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CumulativeCost.Variant284b7a4447f5dad623ae8a71b625ad3f00c5d4361d704fde98dd010ecac8a91f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"284b7a4447f5dad623ae8a71b625ad3f00c5d4361d704fde98dd010ecac8a91f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/ControllerRHTransportCombined.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerEnergy
import FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor
import FormalResearch.RiemannHypothesis.Defect
import FormalResearch.RiemannHypothesis.ZeroSymmetry

/-!
The exact user-proposed regularization schedule for controllers in the actual
half-line Hilbert space. Input norms may grow without bound. The final transport
retains full residual convergence as an explicit hypothesis; it does not prove
that arithmetic estimate or assert RH.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CumulativeCost.Variant284b7a4447f5dad623ae8a71b625ad3f00c5d4361d704fde98dd010ecac8a91f

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.ControllerSchedule
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
end FormalResearch.RiemannHypothesis.SourceComparison.ControllerSchedule

/-!
Conditional transport from an actual vanishing source-mass subsequence to
Mathlib's unchanged RH proposition. The full-residual convergence hypothesis in
the controller specialization remains explicit and is not proved here.
-/
set_option autoImplicit false
namespace ControllerRHTransportScratch
open Filter
open FormalResearch.RiemannHypothesis
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator SourceResolventTruncation
open FixedSourceResolventFloor ControllerSchedule
noncomputable section

/-- A vanishing subsequence at positive parameters contradicts each actual right-zero floor. -/
theorem nontrivial_re_le_half_of_mass_subsequence (α : ℕ → ℝ)
    (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0))
    (ρ : ℂ) (hρ : NontrivialZetaZero ρ) : ρ.re ≤ 1 / 2 := by
  by_contra hn
  obtain ⟨c, hc, hfloor⟩ := nontrivial_sourceMass_uniform_positive_floor ρ hρ
    (lt_of_not_ge hn)
  have hle : c ≤ 0 := le_of_tendsto_of_tendsto tendsto_const_nhds hmass (by
    filter_upwards [eventually_ge_atTop 1] with j hj
    exact hfloor (α j) (hα j hj))
  exact (not_le_of_gt hc) hle

/-- Functional-equation reflection rules out left zeros while retaining all original exclusions. -/
theorem nontrivial_re_eq_half_of_mass_subsequence (α : ℕ → ℝ)
    (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0))
    (ρ : ℂ) (hρ : NontrivialZetaZero ρ) : ρ.re = 1 / 2 := by
  have hright := nontrivial_re_le_half_of_mass_subsequence α hα hmass ρ hρ
  have hleft := nontrivial_re_le_half_of_mass_subsequence α hα hmass
    (zeroReflect ρ) hρ.reflect
  simp only [zeroReflect, Complex.sub_re, Complex.one_re] at hleft
  linarith

/-- Conditional transport reaches the unchanged root target through its exact defect equivalence. -/
theorem conditional_rh_of_mass_subsequence (α : ℕ → ℝ)
    (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0)) :
    _root_.RiemannHypothesis := by
  apply riemann_hypothesis_iff_defect_zero.mpr
  intro ρ hρ
  exact (rh_defect_eq_zero_iff ρ).mpr
    (nontrivial_re_eq_half_of_mass_subsequence α hα hmass ρ hρ)

/-- The exact controller schedule transports a separately proved full residual limit to root RH.
This declaration is conditional; it does not discharge its arithmetic convergence hypothesis. -/
theorem conditional_rh_of_full_residual (q : ℕ → H)
    (hres : Tendsto (fun j => ‖referenceVector - sourceOperator (q j)‖) atTop (nhds 0)) :
    _root_.RiemannHypothesis :=
  conditional_rh_of_mass_subsequence (controllerAlpha q) (controllerAlpha_pos q)
    (sourceMass_controllerAlpha_tendsto_zero q hres)

end
end ControllerRHTransportScratch
