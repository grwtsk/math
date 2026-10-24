# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti.Variantdb5c2af70bbda9bd8632ebcc51152b2450f1a96220fdb4897eee335f726c8bf0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0541375e404448f64801a18da5d3fab04805cbb` · SHA-256 `eb06ad67d7f57b40cbef2ba0b19413dc768d212c092fa6922a503dbbb14e1875`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredXi.Variant6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CenteredXi.Variant6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/6e/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8--DerivativeIdentities.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.XiToeplitz
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredXi.Variant6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8

namespace FormalResearch.RiemannHypothesis.ThetaCoefficientScratch

noncomputable section

/-- The centered function uses the actual entire pole-removed xi definition. -/
def centeredXi (u : ℂ) : ℂ := XiToeplitz.xi (1 / 2 + u)

/-- Translation to the center preserves every complex iterated derivative. -/
theorem iteratedDeriv_centeredXi_zero (m : ℕ) :
    iteratedDeriv m centeredXi 0 = iteratedDeriv m XiToeplitz.xi (1 / 2) := by
  change iteratedDeriv m (fun u : ℂ => XiToeplitz.xi (1 / 2 + u)) 0 = _
  rw [iteratedDeriv_comp_const_add]
  simp

/-- The even complex derivative of the literal cosh kernel at its center. -/
theorem iteratedDeriv_cosh_linear_zero (n : ℕ) (t : ℝ) :
    iteratedDeriv (2 * n) (fun u : ℂ => Complex.cosh (2 * u * (t : ℂ))) 0 =
      (2 * (t : ℂ)) ^ (2 * n) := by
  have harg : (fun u : ℂ => Complex.cosh (2 * u * (t : ℂ))) =
      fun u : ℂ => Complex.cosh ((2 * (t : ℂ)) * u) := by
    funext u
    congr 1
    ring
  rw [harg, iteratedDeriv_comp_const_mul Complex.contDiff_cosh,
    Complex.iteratedDeriv_even_cosh]
  simp

#print axioms iteratedDeriv_centeredXi_zero
#print axioms iteratedDeriv_cosh_linear_zero

#check iteratedDeriv_comp_const_add
#check iteratedDeriv_comp_add_const
#check iteratedDeriv_comp_neg
#check iteratedDeriv_comp_const_sub
#check iteratedDeriv_fun_add
#check iteratedDeriv_const_mul_field
#check iteratedDeriv_mul_const_field
#check iteratedDeriv_div_const
#check iteratedDeriv_comp_const_mul
#check iteratedDeriv_cexp_const_mul
#check Complex.iteratedDeriv_even_cosh
#check Complex.iteratedDeriv_odd_cosh
#check iteratedDeriv_sum

end
end FormalResearch.RiemannHypothesis.ThetaCoefficientScratch
```
