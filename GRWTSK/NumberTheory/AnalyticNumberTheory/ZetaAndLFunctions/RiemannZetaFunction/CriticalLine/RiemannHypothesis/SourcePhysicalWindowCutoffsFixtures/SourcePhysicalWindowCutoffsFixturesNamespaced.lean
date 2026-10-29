-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeakNaturalOrderDoesNotInsertAdjacent.Variant866efe516756920c1e1c1e0d5b4e196a5ed4980f2540b23c3bdd8466de66c267","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"866efe516756920c1e1c1e0d5b4e196a5ed4980f2540b23c3bdd8466de66c267","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.WeakNaturalOrderDoesNotInsertAdjacent.Variant866efe516756920c1e1c1e0d5b4e196a5ed4980f2540b23c3bdd8466de66c267","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"866efe516756920c1e1c1e0d5b4e196a5ed4980f2540b23c3bdd8466de66c267","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle27/mutation-issue-regent-v1/source-left-strip-control-v1/lean-preparation-v1/SourcePhysicalWindowCutoffsFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourcePhysicalWindowCutoffs
import JointMangoldtWorkScopeFixtures

/-!
# Actual window order and finite-empty scope controls

UNCOMPILED fixtures. Native execution remains held. These controls preserve the
positive-scale hypothesis, natural quotient, strict finite inventory, and the
fact that a positive strip width need not produce nonzero arithmetic work.
No fixture asserts a signed upper bound or replaces independent counterterms.

AI attribution: prepared with OpenAI Codex; verification remains pending.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeakNaturalOrderDoesNotInsertAdjacent.Variant866efe516756920c1e1c1e0d5b4e196a5ed4980f2540b23c3bdd8466de66c267

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourcePhysicalWindowCutoffFixtures

open MeasureTheory
open scoped BigOperators Interval
open SourcePhysicalWindowCutoffs SourceCutoffFlux SourceJointMangoldtWork SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel EstimateBetaCentering

noncomputable section

/-- The weak cutoff order alone cannot insert the first retained long index. -/
theorem weak_natural_order_does_not_insert_adjacent :
    (3 : ℕ) ≤ 3 ∧ ¬(3 + 1 : ℕ) ≤ 3 := by decide

/-- A negative scale refutes omission of the actual positive-scale hypothesis. -/
theorem negative_scale_adjacent_bound_fails :
    ¬vaughanCutoff (-1) + 1 ≤ sourceKernelCutoff (-1) := by
  have hU : vaughanCutoff (-1) = 1 := by norm_num [vaughanCutoff]
  have hN : sourceKernelCutoff (-1) = 0 := by
    unfold sourceKernelCutoff sourceUpper
    apply Nat.floor_eq_zero.mpr
    exact Real.exp_lt_one_iff.mpr (by norm_num)
  rw [hU, hN]
  norm_num

/-- At the actual first positive scale the two logarithmic endpoints differ. -/
theorem actual_unit_scale_strip_has_positive_width :
    0 < Real.log ((vaughanCutoff 1 + 1 : ℕ) : ℝ) -
      Real.log (vaughanCutoff 1 : ℝ) := by
  have hU : vaughanCutoff 1 = 1 := by norm_num [vaughanCutoff]
  simpa [hU] using Real.log_pos (by norm_num : (1 : ℝ) < 2)

/-- The already defined zero test has zero work on every time interval. -/
theorem empty_actual_work_on_every_interval (A l b : ℝ)
    (hK : sourceKernelCutoff A / (vaughanCutoff A + 1) ≤ vaughanCutoff A + 1) :
    (∫ t in l..b, mangoldtLogError t * deriv (jointMangoldtTestProfile A) t) = 0 := by
  have hzero : jointMangoldtTestProfile A = fun _ : ℝ => (0 : ℝ) := by
    funext t
    exact JointMangoldtWorkScopeFixtures.empty_strict_inventory_gives_zero_test A t hK
  simp [hzero]

-- Equal, strictly lower and zero quotients are separate finite-empty controls.
example (a : ℕ) : Finset.Ico a a = ∅ := by simp

example (a K : ℕ) (hK : K < a) : Finset.Ico a K = ∅ :=
  Finset.Ico_eq_empty_of_le hK.le

example : Finset.Ico (2 : ℕ) 0 = ∅ := by decide

-- Width and work must not be conflated at U=1: the actual centered row is zero.
example (n : ℕ) (hn : 1 < n) : centeredBeta 1 n = 0 :=
  centeredBeta_one_of_one_lt n hn

end
end FormalResearch.RiemannHypothesis.SourcePhysicalWindowCutoffFixtures
