-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaTailRatioEqProduct.Variant4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaTailRatioEqProduct.Variant4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailLogSlope
import FormalResearch.RiemannHypothesis.ThetaTailSignRegularLowRank
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset

/-!
# Arbitrary rank-two sign regularity for the literal theta tails

Strict source-tail positivity makes every higher-to-lower tail ratio a finite
product of consecutive tail ratios. The proved antitonicity of each consecutive
ratio, together with its positivity, makes that product antitone. The existing
exact rank-two equivalence then gives the unchanged oriented determinant sign
for every increasing pair of even tail orders and every nonnegative increasing
pair of nodes. No rank-three or all-orders sign condition is asserted.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaTailRatioEqProduct.Variant4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Set
open scoped BigOperators
noncomputable section

/-- Strict source-tail positivity makes the consecutive ratios telescope exactly. -/
theorem thetaTail_ratio_eq_product {r s : ℕ} (hrs : r ≤ s) {t : ℝ} (ht : 0 ≤ t) :
    thetaTail s t / thetaTail r t =
      ∏ j ∈ Finset.Ico r s, thetaTail (j + 1) t / thetaTail j t := by
  induction s, hrs using Nat.le_induction with
  | base => simp [(thetaTail_positive r ht).ne']
  | succ s hrs ih =>
    rw [Finset.prod_Ico_succ_top hrs, ← ih]
    field_simp [(thetaTail_positive r ht).ne', (thetaTail_positive s ht).ne']

/-- The pinned nonnegative-antitone finite-product API controls the whole telescope. -/
theorem thetaTail_ratio_product_antitone (r s : ℕ) :
    AntitoneOn (fun t : ℝ =>
      ∏ j ∈ Finset.Ico r s, thetaTail (j + 1) t / thetaTail j t) (Ici 0) := by
  exact AntitoneOn.finsetProd (fun j _ => thetaTail_succ_div_antitone j)
    (fun j _ t ht => div_nonneg (thetaTail_nonnegative (j + 1) ht)
      (thetaTail_nonnegative j ht))

/-- Every higher-to-lower tail ratio decreases by the proved consecutive-ratio result. -/
theorem thetaTail_div_antitone {r s : ℕ} (hrs : r < s) :
    AntitoneOn (fun t : ℝ => thetaTail s t / thetaTail r t) (Ici 0) := by
  intro x hx y hy hxy
  change thetaTail s y / thetaTail r y ≤ thetaTail s x / thetaTail r x
  rw [thetaTail_ratio_eq_product hrs.le hy, thetaTail_ratio_eq_product hrs.le hx]
  exact thetaTail_ratio_product_antitone r s hx hy hxy

/-- The existing exact rank-two equivalence closes the determinant statement. -/
theorem thetaTailSignRegular_two
    (q : Fin 2 ↪o ℕ) (t : Fin 2 ↪o ℝ) (ht : ∀ i, 0 ≤ t i) :
    0 ≤ (-1 : ℝ) ^ (2 * (2 - 1) / 2) *
      Matrix.det (fun i j => thetaTail (2 * q i) (t j)) := by
  apply (thetaTailSignRegular_two_iff_ratio q t ht).mpr
  have hq : 2 * q 0 < 2 * q 1 := by
    have hq01 := q.strictMono (by decide : (0 : Fin 2) < 1)
    omega
  exact thetaTail_div_antitone hq (ht 0) (ht 1)
    (t.monotone (by decide : (0 : Fin 2) ≤ 1))

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
