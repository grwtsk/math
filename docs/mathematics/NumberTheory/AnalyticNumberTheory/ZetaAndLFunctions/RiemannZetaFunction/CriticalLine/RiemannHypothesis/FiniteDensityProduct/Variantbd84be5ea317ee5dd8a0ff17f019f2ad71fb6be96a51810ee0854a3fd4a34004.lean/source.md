# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteDensityProduct.Variantbd84be5ea317ee5dd8a0ff17f019f2ad71fb6be96a51810ee0854a3fd4a34004

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `098026f567d309a994f362a5461fadff64bd35ad` · SHA-256 `c4ef58327b5d9e752608d8319d3d99bf87f41e7bc3c8dd1fc3acf113d4f35172`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeDensityFactor.Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PrimeDensityFactor.Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-budget/FiniteDensityProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeRatioProduct
import Mathlib.Analysis.SpecialFunctions.ExpDeriv


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeDensityFactor.Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d

set_option autoImplicit false

namespace FiniteDensityProductScratch

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

def primeDensityFactor (p : ℝ) : ℝ := (Real.sqrt p - 1)^2 / (p+1)

theorem primeDensityFactor_eq (p : ℝ) (hp : 0 ≤ p) :
    primeDensityFactor p = 1 - 2 * Real.sqrt p / (p+1) := by
  have hs := Real.sq_sqrt hp
  have hp1 : p+1 ≠ 0 := by linarith
  unfold primeDensityFactor
  field_simp
  nlinarith

theorem primeDensityFactor_nonneg (p : ℝ) (hp : 0 ≤ p) :
    0 ≤ primeDensityFactor p := by
  unfold primeDensityFactor
  positivity

theorem primeDensityFactor_le_exp (p : ℝ) (hp : 1 ≤ p) :
    primeDensityFactor p ≤ Real.exp (-(1 / Real.sqrt p)) := by
  have hp0 : 0 < p := by linarith
  have hs0 : 0 < Real.sqrt p := Real.sqrt_pos.mpr hp0
  have hs := Real.sq_sqrt hp0.le
  have hfrac : 1/Real.sqrt p ≤ 2*Real.sqrt p/(p+1) := by
    apply (div_le_div_iff₀ hs0 (by linarith : 0 < p+1)).mpr
    nlinarith
  rw [primeDensityFactor_eq p hp0.le]
  calc
    _ ≤ Real.exp (-(2*Real.sqrt p/(p+1))) := by
      simpa only [sub_eq_add_neg, add_comm] using Real.add_one_le_exp (-(2*Real.sqrt p/(p+1)))
    _ ≤ _ := Real.exp_le_exp.mpr (neg_le_neg hfrac)

theorem finite_prime_density_product_le_exp (P : Finset ℕ)
    (hP : ∀ p ∈ P, 1 ≤ p) :
    (∏ p ∈ P, primeDensityFactor (p:ℝ)) ≤
      Real.exp (-(∑ p ∈ P, 1 / Real.sqrt (p:ℝ))) := by
  calc
    _ ≤ ∏ p ∈ P, Real.exp (-(1 / Real.sqrt (p:ℝ))) := by
      apply prod_le_prod
      · intro p _
        exact primeDensityFactor_nonneg p (Nat.cast_nonneg p)
      · intro p hp
        exact primeDensityFactor_le_exp p (by exact_mod_cast hP p hp)
    _ = _ := by rw [← Real.exp_sum, sum_neg_distrib]

theorem ordered_density_assignment_product (P : Finset ℕ) :
    (∑ U ∈ P.powerset, ∑ V ∈ (P\U).powerset,
      (∏ p ∈ U, -Real.sqrt (p:ℝ)/((p:ℝ)+1)) *
      (∏ p ∈ V, -Real.sqrt (p:ℝ)/((p:ℝ)+1))) =
      ∏ p ∈ P, primeDensityFactor (p:ℝ) := by
  rw [PrimeRatioProduct.ordered_disjoint_assignment_product]
  apply prod_congr rfl
  intro p _
  rw [primeDensityFactor_eq p (Nat.cast_nonneg p)]
  ring

end
end FiniteDensityProductScratch
```
