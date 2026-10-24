# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimitivePrimeInteraction.Variant76ac2011e13705675e5b6db560c0c8440949265fde1ce29f79247537ebe5e3f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a42ac1b4df53084f1664553258f4dab5dc33c36` · SHA-256 `9a965017d7774b7b1e7ab94c644c50aa3cfdabdcd1b8956cf8d2ea8113640826`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimitiveCorrelationZero.Variantd888387408862793e6022617cb134c7801981f7776ec52224cb098e9633965a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d888387408862793e6022617cb134c7801981f7776ec52224cb098e9633965a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PrimitiveCorrelationZero.Variantd888387408862793e6022617cb134c7801981f7776ec52224cb098e9633965a0","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d888387408862793e6022617cb134c7801981f7776ec52224cb098e9633965a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle14/next-primitive-prime-interaction/attempt-02/SourcePrimitivePrimeInteraction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCausalEnergy
import FormalResearch.RiemannHypothesis.SourcePrimePowerPartition

/-!
# Private actual primitive-source prime interaction candidate

This focused private candidate expands the literal source differential filter
inside its correlations and the unchanged closed first-prime inventory. Compact
ordinary integration by parts preserves both mixed signs. Shifted derivative
correlations are signed; no arithmetic positivity or eventual bound is claimed.
This source is outside the current canonical cycle14 seven-root/full snapshot.

AI attribution: developed with OpenAI Codex; focused Lean status is external.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimitiveCorrelationZero.Variantd888387408862793e6022617cb134c7801981f7776ec52224cb098e9633965a0

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction

open MeasureTheory
open SourceCausalEnergy SourcePairing SourcePrimePowerPartition WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMobiusSplit PrimePowerDescent

/-- The literal compact primitive's shifted correlation. -/
def primitiveCorrelationZero (A s : ℝ) : ℝ :=
  ∫ x : ℝ, normalizedPrimitiveBump A x * normalizedPrimitiveBump A (x - s)

/-- The first ordinary derivative keeps its signed shifted correlation. -/
def primitiveCorrelationOne (A s : ℝ) : ℝ :=
  ∫ x : ℝ, deriv (normalizedPrimitiveBump A) x *
    deriv (normalizedPrimitiveBump A) (x - s)

/-- The second ordinary derivative is correlated at the same frozen shift. -/
def primitiveCorrelationTwo (A s : ℝ) : ℝ :=
  ∫ x : ℝ, deriv (deriv (normalizedPrimitiveBump A)) x *
    deriv (deriv (normalizedPrimitiveBump A)) (x - s)

private theorem compact_shifted_product_integrable {f g : ℝ → ℝ}
    (hf : Continuous f) (hg : Continuous g) (hs : HasCompactSupport f) (s : ℝ) :
    Integrable (fun x : ℝ => f x * g (x - s)) :=
  (hf.mul (hg.comp (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
    hs.mul_right

/-- Both mixed terms have the same IBP minus sign for the actual x-s convention. -/
theorem primitive_mixed_second_integrals {A : ℝ} (hA : 0 < A) (s : ℝ) :
    (∫ x : ℝ, deriv (deriv (normalizedPrimitiveBump A)) x *
      normalizedPrimitiveBump A (x - s)) = -primitiveCorrelationOne A s ∧
    (∫ x : ℝ, normalizedPrimitiveBump A x *
      deriv (deriv (normalizedPrimitiveBump A)) (x - s)) =
        -primitiveCorrelationOne A s := by
  let b := normalizedPrimitiveBump A
  have hc : ContDiff ℝ 2 b := normalizedPrimitiveBump_contDiff hA
  have hc' : ContDiff ℝ 1 (deriv b) := hc.deriv'
  have hb := hc.continuous
  have hb' := hc'.continuous
  have hb'' := hc'.continuous_deriv_one
  have hs : HasCompactSupport b := normalizedPrimitiveBump_hasCompactSupport hA
  have hd (x : ℝ) : HasDerivAt b (deriv b x) x :=
    (hc.differentiable (by norm_num) x).hasDerivAt
  have hd' (x : ℝ) : HasDerivAt (deriv b) (deriv (deriv b) x) x :=
    (hc'.differentiable (by norm_num) x).hasDerivAt
  have left := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := deriv b) (u' := deriv (deriv b))
    (v := fun x => b (x - s)) (v' := fun x => deriv b (x - s))
    (fun x _ => hd' x)
    (fun x _ => by
      simpa only [Function.comp_def, mul_one] using
        (hd (x - s)).comp x ((hasDerivAt_id x).sub_const s))
    (compact_shifted_product_integrable hb' hb' hs.deriv s)
    (compact_shifted_product_integrable hb'' hb hs.deriv.deriv s)
    (compact_shifted_product_integrable hb' hb hs.deriv s)
  have right := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := b) (u' := deriv b)
    (v := fun x => deriv b (x - s)) (v' := fun x => deriv (deriv b) (x - s))
    (fun x _ => hd x)
    (fun x _ => by
      simpa only [Function.comp_def, mul_one] using
        (hd' (x - s)).comp x ((hasDerivAt_id x).sub_const s))
    (compact_shifted_product_integrable hb hb'' hs s)
    (compact_shifted_product_integrable hb' hb' hs.deriv s)
    (compact_shifted_product_integrable hb hb' hs s)
  change (∫ x : ℝ, deriv (deriv b) x * b (x - s)) =
      -(∫ x : ℝ, deriv b x * deriv b (x - s)) ∧
    (∫ x : ℝ, b x * deriv (deriv b) (x - s)) =
      -(∫ x : ℝ, deriv b x * deriv b (x - s))
  exact ⟨by linarith, right⟩

/-- The unchanged q=b''-b/4 source retains its three signed primitive correlations. -/
theorem sourceCorrelation_eq_primitive_filter {A : ℝ} (hA : 0 < A) (s : ℝ) :
    sourceCorrelation explicitSecondDerivative A s =
      primitiveCorrelationTwo A s + primitiveCorrelationOne A s / 2 +
        primitiveCorrelationZero A s / 16 := by
  let b := normalizedPrimitiveBump A
  have hc : ContDiff ℝ 2 b := normalizedPrimitiveBump_contDiff hA
  have hc' : ContDiff ℝ 1 (deriv b) := hc.deriv'
  have hb := hc.continuous
  have hb' := hc'.continuous
  have hb'' := hc'.continuous_deriv_one
  have hs : HasCompactSupport b := normalizedPrimitiveBump_hasCompactSupport hA
  have h22 := compact_shifted_product_integrable hb'' hb'' hs.deriv.deriv s
  have h20 := compact_shifted_product_integrable hb'' hb hs.deriv.deriv s
  have h02 := compact_shifted_product_integrable hb hb'' hs s
  have h00 := compact_shifted_product_integrable hb hb hs s
  have he : (fun x : ℝ => normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - s)) =
      fun x => deriv (deriv b) x * deriv (deriv b) (x - s) -
        (deriv (deriv b) x * b (x - s)) / 4 -
        (b x * deriv (deriv b) (x - s)) / 4 + (b x * b (x - s)) / 16 := by
    funext x
    rw [← normalizedPrimitiveBump_second_sub_quarter hA x,
      ← normalizedPrimitiveBump_second_sub_quarter hA (x - s)]
    dsimp only [b]
    ring
  have hadd := integral_add
    ((h22.sub (h20.div_const 4)).sub (h02.div_const 4)) (h00.div_const 16)
  have hsub1 := integral_sub (h22.sub (h20.div_const 4)) (h02.div_const 4)
  have hsub2 := integral_sub h22 (h20.div_const 4)
  simp only [Pi.sub_apply] at hadd hsub1 hsub2
  rw [sourceCorrelation, he, hadd, hsub1, hsub2, integral_div, integral_div, integral_div]
  have hm := primitive_mixed_second_integrals hA s
  change primitiveCorrelationTwo A s -
      (∫ x : ℝ, deriv (deriv (normalizedPrimitiveBump A)) x *
        normalizedPrimitiveBump A (x - s)) / 4 -
      (∫ x : ℝ, normalizedPrimitiveBump A x *
        deriv (deriv (normalizedPrimitiveBump A)) (x - s)) / 4 +
      primitiveCorrelationZero A s / 16 = _
  rw [hm.1, hm.2]
  ring

/-- The finite prime adapter preserves the literal floor and every signed lag term. -/
theorem firstPrimeMoment_eq_primitive_filter {A : ℝ} (hA : 0 < A) :
    firstPrimeMoment A =
      (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
        Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationTwo A (Real.log p)) +
      (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
        Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationOne A (Real.log p)) / 2 +
      (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
        Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationZero A (Real.log p)) / 16 := by
  rw [firstPrimeMoment, Finset.sum_div, Finset.sum_div,
    ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  rw [ArithmeticFunction.vonMangoldt_apply_prime (Finset.mem_filter.mp hp).2]
  unfold closedPrimeWeight exponentialTest
  rw [sourceCorrelation_eq_primitive_filter hA]
  ring

end FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction
```
