# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteDensityProductAudit.Variant3726fbea1a394ee94fb215289f2c2f011be835c6e5896c43b6290197c1d86eac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14a95ea8125f8286b7638fee1534b2e7570d178d` · SHA-256 `c404cf2f9b452da1f6a9d87b0ee3df8cbde5cc6ce9654a8f9698c9eb62364fc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeDensityFactor.Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PrimeDensityFactor.Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-budget/FiniteDensityProductAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeRatioProduct
import Mathlib.Analysis.SpecialFunctions.ExpDeriv


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeDensityFactor.Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d

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

#print FiniteDensityProductScratch.primeDensityFactor
#print axioms FiniteDensityProductScratch.primeDensityFactor
#print FiniteDensityProductScratch.primeDensityFactor_eq
#print axioms FiniteDensityProductScratch.primeDensityFactor_eq
#print FiniteDensityProductScratch.primeDensityFactor_nonneg
#print axioms FiniteDensityProductScratch.primeDensityFactor_nonneg
#print FiniteDensityProductScratch.primeDensityFactor_le_exp
#print axioms FiniteDensityProductScratch.primeDensityFactor_le_exp
#print FiniteDensityProductScratch.finite_prime_density_product_le_exp
#print axioms FiniteDensityProductScratch.finite_prime_density_product_le_exp
#print FiniteDensityProductScratch.ordered_density_assignment_product
#print axioms FiniteDensityProductScratch.ordered_density_assignment_product
```
