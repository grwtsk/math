# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteEnergyFullAudit.Variantbffedaa9109a8f87d07541b6cce48768e236a9f4fcc9a0e247da52794228882a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `705c7b38ae11cb2005d0f4856de0749a4dc72439` · SHA-256 `88dd079b53ba08840eb78177808e33f49ee41c25dea478bb149829b5d7f36f84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteController.Variante81ba552b90e5582b794c53726d109a8812aaf3664334e762b69b54ad89aabfa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e81ba552b90e5582b794c53726d109a8812aaf3664334e762b69b54ad89aabfa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.FiniteController.Variante81ba552b90e5582b794c53726d109a8812aaf3664334e762b69b54ad89aabfa","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e81ba552b90e5582b794c53726d109a8812aaf3664334e762b69b54ad89aabfa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-covariance/finite-energy-full-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.ExponentialCovariance
import FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerEnergy

/-!
The exact complete energy of every finite real exponential controller retains
all signed reference and covariance terms. No matrix inverse, density assertion,
or limiting arithmetic estimate is assumed.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteController.Variante81ba552b90e5582b794c53726d109a8812aaf3664334e762b69b54ad89aabfa

set_option autoImplicit false
namespace FiniteControllerEnergyScratch
open MeasureTheory Set
open scoped ComplexConjugate BigOperators
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator ExponentialCovariance FixedLaplaceContinuation
open SourceControllerEnergy
noncomputable section

/-- A finite signed real combination of the actual admitted exponential inputs. -/
def finiteController (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i)
    (c : Fin n → ℝ) : H := ∑ i, (c i : ℂ) • controller (a i) (ha i)

/-- The actual signed response Gram coefficient on the entire positive time plane. -/
def sourceGram (a b : ℝ) : ℝ :=
  ∫ u : ℝ in Ioi 0, ∫ v : ℝ in Ioi 0, gramIntegrand a b (u, v)

/-- The exact reference row uses the actual source Laplace value at one. -/
theorem finiteController_reference_re (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i)
    (c : Fin n → ℝ) :
    (inner ℂ referenceVector (sourceOperator (finiteController n a ha c))).re =
      ∑ i, c i * (actualLaplace 1).re / (1 + a i) := by
  unfold finiteController
  simp only [map_sum, map_smul, inner_sum, inner_smul_right]
  simp_rw [show ∀ i : Fin n, inner ℂ referenceVector (sourceOperator (controller (a i) (ha i))) =
      actualLaplace 1 / (1 + (a i : ℂ)) from fun i => reference_inner_response (a i) (ha i)]
  simp only [Complex.re_sum, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero]
  apply Finset.sum_congr rfl
  intro i hi
  rw [show (1 : ℂ) + (a i : ℂ) = ((1 + a i : ℝ) : ℂ) by push_cast; rfl]
  simp only [Complex.div_ofReal_re]
  ring

/-- The complete input cost contains every cross term of the positive exponential Gram matrix. -/
theorem finiteController_norm_sq (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i)
    (c : Fin n → ℝ) :
    ‖finiteController n a ha c‖ ^ 2 =
      ∑ i, ∑ j, c i * c j / (a i + a j) := by
  rw [norm_sq_eq_re_inner (𝕜 := ℂ)]
  change (inner ℂ _ _).re = _
  simp only [finiteController, sum_inner, inner_sum, inner_smul_left, inner_smul_right,
    Complex.conj_ofReal, controller_inner, Finset.mul_sum, Complex.re_sum]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  ring

/-- The complete output cost is the signed double source Gram quadratic, without time clipping. -/
theorem finiteController_response_norm_sq (n : ℕ) (a : Fin n → ℝ)
    (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    ‖sourceOperator (finiteController n a ha c)‖ ^ 2 =
      ∑ i, ∑ j, c i * c j * sourceGram (a i) (a j) := by
  rw [norm_sq_eq_re_inner (𝕜 := ℂ)]
  change (inner ℂ _ _).re = _
  simp only [finiteController, map_sum, map_smul, sum_inner, inner_sum,
    inner_smul_left, inner_smul_right, Complex.conj_ofReal, Finset.mul_sum, Complex.re_sum]
  simp_rw [show ∀ i j : Fin n,
      inner ℂ (sourceOperator (controller (a i) (ha i)))
        (sourceOperator (controller (a j) (ha j))) = (sourceGram (a i) (a j) : ℂ) from
    fun i j => response_inner_double (a i) (a j) (ha i) (ha j)]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  ring

/-- Exact full source energy of every finite signed exponential controller at every real alpha. -/
theorem finiteController_energy (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i)
    (c : Fin n → ℝ) (α : ℝ) :
    trackingEnergy sourceOperator α referenceVector (finiteController n a ha c) =
      1 / 2 - 2 * (∑ i, c i * (actualLaplace 1).re / (1 + a i)) +
        ∑ i, ∑ j, c i * c j * (sourceGram (a i) (a j) + α / (a i + a j)) := by
  rw [trackingEnergy, norm_sub_sq (𝕜 := ℂ), referenceVector_norm_sq]
  change (1 / 2 - 2 * (inner ℂ referenceVector
    (sourceOperator (finiteController n a ha c))).re +
    ‖sourceOperator (finiteController n a ha c)‖ ^ 2) +
    α * ‖finiteController n a ha c‖ ^ 2 = _
  rw [finiteController_reference_re, finiteController_norm_sq, finiteController_response_norm_sq]
  simp only [mul_add, Finset.sum_add_distrib, Finset.mul_sum, div_eq_mul_inv,
    mul_assoc, mul_left_comm, mul_comm]
  ring

end
end FiniteControllerEnergyScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @FiniteControllerEnergyScratch.finiteController
#print FiniteControllerEnergyScratch.finiteController
#print axioms FiniteControllerEnergyScratch.finiteController
#check @FiniteControllerEnergyScratch.sourceGram
#print FiniteControllerEnergyScratch.sourceGram
#print axioms FiniteControllerEnergyScratch.sourceGram
#check @FiniteControllerEnergyScratch.finiteController_reference_re
#print FiniteControllerEnergyScratch.finiteController_reference_re
#print axioms FiniteControllerEnergyScratch.finiteController_reference_re
#check @FiniteControllerEnergyScratch.finiteController_norm_sq
#print FiniteControllerEnergyScratch.finiteController_norm_sq
#print axioms FiniteControllerEnergyScratch.finiteController_norm_sq
#check @FiniteControllerEnergyScratch.finiteController_response_norm_sq
#print FiniteControllerEnergyScratch.finiteController_response_norm_sq
#print axioms FiniteControllerEnergyScratch.finiteController_response_norm_sq
#check @FiniteControllerEnergyScratch.finiteController_energy
#print FiniteControllerEnergyScratch.finiteController_energy
#print axioms FiniteControllerEnergyScratch.finiteController_energy
```
