# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualZeroHeadReality.Variant791590fb0f4aaf90b1c59e0f867e01d120020921d62c9c2ee55163241cd80a73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `adad11e9ee8e95bdc4f7aacc1a161f4bf79699f4` · SHA-256 `0d3f510f2701971ca325ae4bfb17f756c5a6c84e3cf763fe2efc1f92a5141c0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualInitialPrimeMellinConj.Variant4fac25a9c01756260f58cb139964f20bf7f77b92c05e1fa2162e735c4538fd23","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4fac25a9c01756260f58cb139964f20bf7f77b92c05e1fa2162e735c4538fd23","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualInitialPrimeMellinConj.Variant4fac25a9c01756260f58cb139964f20bf7f77b92c05e1fa2162e735c4538fd23","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4fac25a9c01756260f58cb139964f20bf7f77b92c05e1fa2162e735c4538fd23","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T093028Z-1791365428946333000/SourceActualZeroHeadReality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualCriticalZeroHead
import SourceActualZeroArithmeticDictionary
import Zeta23.ZetaReflect

/-!
Conjugation of the actual carrier preserves each analytic multiplicity and the
original ordinary complex Mellin weight. The complete open-height head, its
off-axis piece, and both closed tails are real. This is an exact phase statement;
it gives no sign or uniform lower bound for the actual off-axis contribution.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualInitialPrimeMellinConj.Variant4fac25a9c01756260f58cb139964f20bf7f77b92c05e1fa2162e735c4538fd23

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualZeroHeadReality
open MeasureTheory Set Finset Zeta23
open scoped ComplexConjugate
open SourceActualInitialPrimeContour SourceActualCriticalZeroHead
open SourceActualZeroTailBudget SourceActualFullZeroContour SourceActualZeroArithmeticDictionary
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

/-- The literal real source profile preserves the full ordinary complex phase. -/
theorem actualInitialPrimeMellin_conj (A : ℝ) (s : ℂ) :
    actualInitialPrimeMellin A (conj s) = conj (actualInitialPrimeMellin A s) := by
  unfold actualInitialPrimeMellin
  rw [← integral_conj]
  apply integral_congr_ae
  filter_upwards [] with t
  simp only [map_mul, ← Complex.exp_conj, map_sub, map_div₀,
    Complex.conj_ofReal, map_one, map_ofNat]

private def actualConjugateZero (rho : (zetaZeros zetaSeam).carrier) :
    (zetaZeros zetaSeam).carrier :=
  ⟨conj (rho : ℂ), by
    have hn : (rho : ℂ) ≠ 1 := rho.2.not_trivial.2
    refine ⟨?_, ?_, ?_⟩
    · rw [Zeta23.riemannZeta_conj hn, rho.2.1, map_zero]
    · simpa only [Complex.conj_re] using rho.2.2.1
    · simpa only [Complex.conj_re] using rho.2.2.2⟩

private theorem actualConjugateZero_involutive
    (rho : (zetaZeros zetaSeam).carrier) :
    actualConjugateZero (actualConjugateZero rho) = rho := by
  apply Subtype.ext
  exact Complex.conj_conj _

private theorem actualConjugateZero_mult (rho : (zetaZeros zetaSeam).carrier) :
    (zetaZeros zetaSeam).mult (actualConjugateZero rho) =
      (zetaZeros zetaSeam).mult rho := by
  change zeroMult (conj (rho : ℂ)) = zeroMult (rho : ℂ)
  unfold zeroMult
  rw [analyticOrderAt_zeta_conj rho.2.not_trivial.2]

private theorem actualConjugateZero_weight (A : ℝ)
    (rho : (zetaZeros zetaSeam).carrier) :
    ((zetaZeros zetaSeam).mult (actualConjugateZero rho) : ℂ) *
        actualInitialPrimeMellin A (actualConjugateZero rho) =
      conj (((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho) := by
  rw [actualConjugateZero_mult]
  change _ * actualInitialPrimeMellin A (conj (rho : ℂ)) = _
  rw [actualInitialPrimeMellin_conj, map_mul, Complex.conj_natCast]

/-- Actual conjugate pairs cancel only the imaginary part of the complete finite head. -/
theorem actualZeroHeightHead_conj_eq (A R : ℝ) :
    conj (actualZeroHeightHead A R) = actualZeroHeightHead A R := by
  classical
  let F := (actualZeroHeightHead_finite R).toFinset
  let w : (zetaZeros zetaSeam).carrier → ℂ := fun rho =>
    ((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho
  have hmem (rho : (zetaZeros zetaSeam).carrier) (hrho : rho ∈ F) :
      actualConjugateZero rho ∈ F := by
    simp only [F, Set.Finite.mem_toFinset, Set.mem_ofPred_eq] at hrho ⊢
    simpa only [actualConjugateZero, Complex.conj_im, abs_neg] using hrho
  have he : (∑ rho ∈ F, w (actualConjugateZero rho)) = ∑ rho ∈ F, w rho := by
    apply Finset.sum_bij (fun rho _ => actualConjugateZero rho)
    · exact hmem
    · intro rho hrho eta heta h
      have hi := congrArg actualConjugateZero h
      simpa only [actualConjugateZero_involutive] using hi
    · intro rho hrho
      exact ⟨actualConjugateZero rho, hmem rho hrho,
        actualConjugateZero_involutive rho⟩
    · intro rho hrho
      rfl
  calc
    _ = ∑ rho ∈ F, conj (w rho) := by
      unfold actualZeroHeightHead
      simp only [map_sum]
      rfl
    _ = ∑ rho ∈ F, w (actualConjugateZero rho) := by
      apply sum_congr rfl
      intro rho hrho
      exact (actualConjugateZero_weight A rho).symm
    _ = _ := he

/-- Every real open height gives an exactly real actual full finite contribution. -/
theorem actualZeroHeightHead_im_zero (A R : ℝ) :
    (actualZeroHeightHead A R).im = 0 := by
  have hi := congrArg Complex.im (actualZeroHeightHead_conj_eq A R)
  simp only [Complex.conj_im] at hi
  linarith

/-- Removing the true nonnegative critical piece leaves a real, still signed off-axis sum. -/
theorem actualOffAxisZeroHeightHead_im_zero (A R : ℝ) (hA : 1 ≤ A) :
    (actualOffAxisZeroHeightHead A R).im = 0 := by
  have he := congrArg Complex.im (actualZeroHeightHead_eq_critical_add_offAxis A R)
  rw [Complex.add_im, actualZeroHeightHead_im_zero,
    actualCriticalZeroHeightHead_im_zero A R hA] at he
  linarith

/-- The actual omitted tail has both ordinate signs and remains exactly real. -/
theorem actualZeroHeightTail_im_zero (A R : ℝ) (hA : 1 ≤ A) :
    (actualZeroHeightTail A R).im = 0 := by
  have he := congrArg Complex.im (actualFullZeroContribution_eq_head_add_tail A R hA)
  rw [actualFullZeroContribution_eq_original_sourceQuadraticValue A hA,
    Complex.ofReal_im, Complex.add_im, actualZeroHeightHead_im_zero] at he
  linarith

end FormalResearch.RiemannHypothesis.SourceActualZeroHeadReality
```
