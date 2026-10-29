-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NonzeroLengthGuardRequired.Variant3925498de79c1d1cfff171633707ce6211e70ba748bbd3e434188dac0883bbf2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3925498de79c1d1cfff171633707ce6211e70ba748bbd3e434188dac0883bbf2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.NonzeroLengthGuardRequired.Variant3925498de79c1d1cfff171633707ce6211e70ba748bbd3e434188dac0883bbf2","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3925498de79c1d1cfff171633707ce6211e70ba748bbd3e434188dac0883bbf2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle21/regent-green-tent/ScopeFixtures.v2.prepared.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCriticalGreenTent

/-! Independent cycle21 scope fixtures. UNCOMPILED until root-approved replay.
These are review-only and excluded from the six proposed public roots.
AI construction: OpenAI Codex independent regent. -/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NonzeroLengthGuardRequired.Variant3925498de79c1d1cfff171633707ce6211e70ba748bbd3e434188dac0883bbf2

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
noncomputable section
namespace Cycle21GreenTentScope

open Set
open FormalResearch.RiemannHypothesis
open SourceCriticalGreenTent SourceCriticalDecayWork WeightedPrimeAbel

theorem nonzero_length_guard_required :
    max ((2 : ℝ) - 1) 0 - (2 / 0) * (0 - 1) ≠
      -criticalDirichletTent 0 2 1 := by
  norm_num [criticalDirichletTent]

theorem u_domain_guard_required : criticalDirichletTent 1 2 (1/2) = -1/2 := by
  norm_num [criticalDirichletTent]

theorem s_domain_guard_required : criticalDirichletTent 1 (1/2) (-1) = -1/2 := by
  norm_num [criticalDirichletTent]

theorem negative_nonzero_length_identity :
    max ((3 : ℝ) - 1) 0 - (3 / (-2)) * ((-2) - 1) =
      -criticalDirichletTent (-2) 3 1 := by
  exact positivePart_sub_affine_eq_neg_tent (by norm_num) 3 1

theorem internal_touching_hinge_zero_tent_positive :
    max ((1 : ℝ) - 1) 0 = 0 ∧ criticalDirichletTent 2 1 1 = 1/2 := by
  norm_num [criticalDirichletTent]

theorem upper_touching_tent_zero : criticalDirichletTent 2 1 2 = 0 := by
  norm_num [criticalDirichletTent]

theorem actual_two_closed_upper_inventory : 2 ∈ primeLogInventory (Real.log 2) := by
  norm_num [primeLogInventory, Real.exp_log (by norm_num : (0 : ℝ) < 2)]

theorem actual_two_upper_tent_zero {u : ℝ} (hu : u ∈ Icc 0 (Real.log 2)) :
    criticalDirichletTent (Real.log 2) u (Real.log 2) = 0 := by
  have hp : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  exact (criticalDirichletTent_endpoints hp ⟨hp.le, le_rfl⟩).2.2 u hu

theorem actual_two_internal_touching :
    max (Real.log (2 : ℝ) - Real.log 2) 0 = 0 ∧
      0 < criticalDirichletTent 2 (Real.log 2) (Real.log 2) := by
  have hp : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have hb : Real.log (2 : ℝ) < 1 := by
    have h := Real.log_lt_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
      (by norm_num : (2 : ℝ) ≠ 1)
    linarith
  constructor
  · simp
  · unfold criticalDirichletTent
    rw [min_self, max_self]
    exact div_pos (mul_pos hp (by linarith)) (by norm_num)

theorem actual_decay_midpoint_correction_negative :
    2 * (criticalDecay 1 - 1 - ((1 : ℝ) / 2) * (criticalDecay 2 - 1)) < 0 := by
  have he : criticalDecay 2 = criticalDecay 1 ^ 2 := by
    unfold criticalDecay
    rw [pow_two, ← Real.exp_add]
    congr 1
    norm_num
  have hlt : criticalDecay 1 < 1 := by
    unfold criticalDecay
    exact Real.exp_lt_one_iff.mpr (by norm_num)
  have hn : criticalDecay 1 - 1 ≠ 0 := by linarith
  have hs := sq_pos_of_ne_zero hn
  rw [he]
  nlinarith

theorem actual_decay_correction_endpoints :
    2 * (criticalDecay 0 - 1 - ((0 : ℝ) / 2) * (criticalDecay 2 - 1)) = 0 ∧
      2 * (criticalDecay 2 - 1 - ((2 : ℝ) / 2) * (criticalDecay 2 - 1)) = 0 := by
  norm_num [criticalDecay]

theorem positive_tents_do_not_force_positive_synthetic_bridge :
    0 < criticalDirichletTent 2 1 1 ∧
      (1/2 : ℝ) - 2 * criticalDirichletTent 2 1 1 < 0 := by
  norm_num [criticalDirichletTent]

theorem actual_two_closed_internal_inventory : 2 ∈ primeLogInventory 2 := by
  have hlog : Real.log (2 : ℝ) ≤ 2 := by
    have h := Real.log_lt_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
      (by norm_num : (2 : ℝ) ≠ 1)
    linarith
  simp only [primeLogInventory, Finset.mem_filter, Finset.mem_Ioc]
  refine ⟨⟨by norm_num, ?_⟩, by norm_num⟩
  exact (Nat.le_floor_iff (Real.exp_pos 2).le).mpr
    ((Real.log_le_iff_le_exp (by norm_num : (0 : ℝ) < 2)).mp hlog)

theorem actual_two_prime_weight_positive : 0 < Real.log (2 : ℝ) / 2 := by
  exact div_pos (Real.log_pos (by norm_num)) (by norm_num)

end Cycle21GreenTentScope
