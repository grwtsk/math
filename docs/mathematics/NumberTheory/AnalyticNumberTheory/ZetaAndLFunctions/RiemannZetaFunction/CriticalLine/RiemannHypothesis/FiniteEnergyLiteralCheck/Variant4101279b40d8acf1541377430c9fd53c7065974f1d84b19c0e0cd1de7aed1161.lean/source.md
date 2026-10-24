# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteEnergyLiteralCheck.Variant4101279b40d8acf1541377430c9fd53c7065974f1d84b19c0e0cd1de7aed1161

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8fedd7f24fb21a5f2a070b12cb2f34aa7f35599f` · SHA-256 `755b583fae973fd9d858339af7127489296bb4fdbacb6d1af2ccf612407ea5de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteController.Variant903708faf524e18472088c4b8ba12fd912065512e7a4f93cb732762af1313c7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"903708faf524e18472088c4b8ba12fd912065512e7a4f93cb732762af1313c7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.FiniteController.Variant903708faf524e18472088c4b8ba12fd912065512e7a4f93cb732762af1313c7b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"903708faf524e18472088c4b8ba12fd912065512e7a4f93cb732762af1313c7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-covariance/finite-energy-literal-check.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.ExponentialCovariance
import FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerEnergy

/-!
The exact complete energy of every finite real exponential controller retains
all signed reference and covariance terms. No matrix inverse, density assertion,
or limiting arithmetic estimate is assumed.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteController.Variant903708faf524e18472088c4b8ba12fd912065512e7a4f93cb732762af1313c7b

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

namespace FiniteControllerEnergyLiteral
open MeasureTheory Set
open scoped BigOperators
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator ExponentialCovariance FixedLaplaceContinuation
open FixedSourceKernel FiniteControllerEnergyScratch
noncomputable section
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    finiteController n a ha c = ∑ i, (c i : ℂ) • controller (a i) (ha i) := rfl
example (a b : ℝ) : sourceGram a b =
    ∫ u : ℝ in Ioi 0, ∫ v : ℝ in Ioi 0,
      fixedKernel u * fixedKernel v * overlap a b u v := rfl
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    (inner ℂ referenceVector (sourceOperator (finiteController n a ha c))).re =
      ∑ i, c i * (actualLaplace 1).re / (1 + a i) :=
  finiteController_reference_re n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    ‖finiteController n a ha c‖ ^ 2 = ∑ i, ∑ j, c i * c j / (a i + a j) :=
  finiteController_norm_sq n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    ‖sourceOperator (finiteController n a ha c)‖ ^ 2 =
      ∑ i, ∑ j, c i * c j * sourceGram (a i) (a j) :=
  finiteController_response_norm_sq n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) (α : ℝ) :
    ‖referenceVector - sourceOperator (finiteController n a ha c)‖ ^ 2 +
      α * ‖finiteController n a ha c‖ ^ 2 =
      1 / 2 - 2 * (∑ i, c i * (actualLaplace 1).re / (1 + a i)) +
        ∑ i, ∑ j, c i * c j * (sourceGram (a i) (a j) + α / (a i + a j)) :=
  finiteController_energy n a ha c α
end
end FiniteControllerEnergyLiteral
```
