# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualRieszRealConstantCenter.Variantac789248a38393d01a24bd1682c6ed1f3f552e0187ba0cb71a4e3dfef6d202d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10178aefe36d73a8aa125a705f7745094d79e16b` · SHA-256 `81b914eb06616b7b3ae35debf2625bcd6bc38a8a0aa9f16a38b92bdf24353964`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualZetaDerivConj.Variant8dfe58f9c8cf70734ed932bb626c815928bc6ad06a3c3d6bc8baf1457b711485","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8dfe58f9c8cf70734ed932bb626c815928bc6ad06a3c3d6bc8baf1457b711485","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualZetaDerivConj.Variant8dfe58f9c8cf70734ed932bb626c815928bc6ad06a3c3d6bc8baf1457b711485","mathematical_subject":"Analysis.Calculus","original_sha256":"8dfe58f9c8cf70734ed932bb626c815928bc6ad06a3c3d6bc8baf1457b711485","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T083720Z-1791362240280060000/SourceActualRieszRealConstantCenter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualRieszCriticalCenter
import Mathlib.Analysis.Calculus.Deriv.Star
import Mathlib.NumberTheory.Harmonic.ZetaAsymp

/-!
The actual local constant center is real by genuine global zeta conjugation and
its derivative symmetry. This identifies a real intercept for the literal
Riesz primitive; it supplies no critical integral or signed upper bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualZetaDerivConj.Variant8dfe58f9c8cf70734ed932bb626c815928bc6ad06a3c3d6bc8baf1457b711485

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszRealConstantCenter
open Complex
open scoped ComplexConjugate
open SourceActualRieszCriticalCenter

private theorem actualZeta_deriv_conj (z : ℂ) :
    deriv riemannZeta (conj z) = conj (deriv riemannZeta z) := by
  have heq : (conj ∘ riemannZeta ∘ conj) = riemannZeta := by
    ext w
    simp only [Function.comp_apply, riemannZeta_conj, conj_conj]
  have hd := congrFun (deriv_conj_conj (f := riemannZeta)) (conj z)
  rw [heq] at hd
  simpa only [Function.comp_apply, conj_conj] using hd

private theorem actualZeta_logDeriv_conj (z : ℂ) :
    logDeriv riemannZeta (conj z) = conj (logDeriv riemannZeta z) := by
  simp only [logDeriv_apply, actualZeta_deriv_conj, riemannZeta_conj, map_div₀]

/-- Literal numerator symmetry includes the genuine zeta derivative. -/
theorem actualRieszCriticalNumerator_conj (z : ℂ) :
    actualRieszCriticalNumerator (conj z) = conj (actualRieszCriticalNumerator z) := by
  have hs : (1 / 2 : ℂ) + conj z = conj ((1 / 2 : ℂ) + z) := by simp
  unfold actualRieszCriticalNumerator
  rw [hs, actualZeta_logDeriv_conj]
  simp

/-- The real intercept uses the actual complex derivative, not an auxiliary center. -/
def actualRieszRealConstantCenter : ℝ := actualRieszLocalConstantCenter.re

/-- The genuine local derivative center equals the cast of this real intercept. -/
theorem actualRieszLocalConstantCenter_eq_real :
    (actualRieszRealConstantCenter : ℂ) = actualRieszLocalConstantCenter := by
  have heq : (conj ∘ actualRieszCriticalNumerator ∘ conj) =
      actualRieszCriticalNumerator := by
    ext w
    simp only [Function.comp_apply, actualRieszCriticalNumerator_conj, conj_conj]
  have hd := congrFun (deriv_conj_conj (f := actualRieszCriticalNumerator)) 0
  rw [heq] at hd
  simp only [Function.comp_apply, map_zero] at hd
  exact conj_eq_iff_re.mp hd.symm

/-- The local quotient extension has two authentic real centers away from zero. -/
theorem actualRieszCriticalRegularization_eq_real_centers {z : ℂ} (hz : z ≠ 0) :
    actualRieszCriticalRegularization z =
      (actualRieszCriticalNumerator z - (actualRieszLimitingLinearCenter : ℂ) -
        (actualRieszRealConstantCenter : ℂ) * z) / z ^ 2 := by
  rw [actualRieszLocalConstantCenter_eq_real]
  exact actualRieszCriticalRegularization_eq hz

end FormalResearch.RiemannHypothesis.SourceActualRieszRealConstantCenter
```
