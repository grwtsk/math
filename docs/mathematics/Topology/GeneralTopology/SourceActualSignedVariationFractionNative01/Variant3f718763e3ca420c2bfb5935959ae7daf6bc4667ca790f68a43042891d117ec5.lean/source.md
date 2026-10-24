# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualSignedVariationFractionNative01.Variant3f718763e3ca420c2bfb5935959ae7daf6bc4667ca790f68a43042891d117ec5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f82ca21d1316077da5ed730d035627107838162` · SHA-256 `671be0a237fa13677e00a1188fd2784193059a9c36f26e48eb771bf37f9e6137`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualPositivePrimeVariation.Variantd253aa764dbd53e0189ab989b1a1103a7b669b5714eded99369ce31e56fb12c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d253aa764dbd53e0189ab989b1a1103a7b669b5714eded99369ce31e56fb12c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualPositivePrimeVariation.Variantd253aa764dbd53e0189ab989b1a1103a7b669b5714eded99369ce31e56fb12c3","mathematical_subject":"Topology.GeneralTopology","original_sha256":"d253aa764dbd53e0189ab989b1a1103a7b669b5714eded99369ce31e56fb12c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-signed-variation-fraction/SourceActualSignedVariationFraction-native01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualZeroStretchedRate
import SourceActualAbsolutePrimeMomentObstruction

/-!
The positive and negative parts are literal partitions of the original closed
prime-power inventory. Their relative balance follows from the actual absolute
mass lower bound and the quantitative full-zero estimate. No uniform upper cap
for their signed difference is inferred.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Topology.GeneralTopology.ActualPositivePrimeVariation.Variantd253aa764dbd53e0189ab989b1a1103a7b669b5714eded99369ce31e56fb12c3

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualSignedVariationFraction
open Filter ArithmeticFunction
open scoped BigOperators Topology
open SourceActualZeroStretchedRate SourceActualAbsolutePrimeMomentObstruction
open SourceActualNegativeEdgeMangoldt
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMobiusSplit EstimateMertensResidual
noncomputable section

/-- Every original positive atom, with its source weight and all prime powers. -/
def actualPositivePrimeVariation (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
    max 0 (vonMangoldt n * closedPrimeWeight A n)

/-- Every original negative atom; no complementary block is removed. -/
def actualNegativePrimeVariation (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
    max 0 (-(vonMangoldt n * closedPrimeWeight A n))

theorem actualPositivePrimeVariation_nonneg (A : ℝ) :
    0 ≤ actualPositivePrimeVariation A :=
  Finset.sum_nonneg (fun _ _ => le_max_left _ _)

theorem actualNegativePrimeVariation_nonneg (A : ℝ) :
    0 ≤ actualNegativePrimeVariation A :=
  Finset.sum_nonneg (fun _ _ => le_max_left _ _)

private theorem signed_atom_parts (x : ℝ) : max 0 x - max 0 (-x) = x := by
  by_cases hx : 0 ≤ x
  · rw [max_eq_right hx,max_eq_left (by linarith : -x ≤ 0)]
    ring
  · rw [max_eq_left (le_of_not_ge hx),max_eq_right (by linarith : 0 ≤ -x)]
    ring

private theorem absolute_atom_parts (x : ℝ) : |x| = max 0 x + max 0 (-x) := by
  by_cases hx : 0 ≤ x
  · rw [abs_of_nonneg hx,max_eq_right hx,max_eq_left (by linarith : -x ≤ 0)]
    ring
  · rw [abs_of_neg (lt_of_not_ge hx),max_eq_left (le_of_not_ge hx),
      max_eq_right (by linarith : 0 ≤ -x)]
    ring

/-- The unchanged residual is exactly the full positive-minus-negative inventory. -/
theorem actualMertensResidual_eq_variation_difference {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = actualPositivePrimeVariation A - actualNegativePrimeVariation A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  unfold closedPrimeMoment actualPositivePrimeVariation actualNegativePrimeVariation
  change (∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
    vonMangoldt n * closedPrimeWeight A n) = _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _hn
  exact (signed_atom_parts _).symm

/-- The independently defined absolute moment contains both complete signed parts. -/
theorem actualClosedAbsolutePrimeMoment_eq_variation_sum (A : ℝ) :
    actualClosedAbsolutePrimeMoment A =
      actualPositivePrimeVariation A + actualNegativePrimeVariation A := by
  unfold actualClosedAbsolutePrimeMoment actualPositivePrimeVariation actualNegativePrimeVariation
  rw [← Finset.sum_add_distrib]
  exact Finset.sum_congr rfl (fun n _ => absolute_atom_parts _)

/-- This quantitative relative cancellation is an actual-source consequence,
using the literal full absolute inventory as denominator. -/
theorem actualResidual_absoluteVariation_ratio_bound :
    ∃ K c R : ℝ, 0 ≤ K ∧ 0 < c ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      0 < actualClosedAbsolutePrimeMoment A ∧
        |mertensResidual A| / actualClosedAbsolutePrimeMoment A ≤
          K * Real.exp (-c * A ^ (1 / 10 : ℝ)) := by
  obtain ⟨C,c,Rr,hC,hc,hRr,hr⟩ := actualMertensResidual_stretched_unscaled_bound
  obtain ⟨Rv,hRv,hv⟩ := actualClosedAbsolutePrimeMoment_eventually_lower
  have hd := actualNegativeEdgeConstant_pos
  refine ⟨2 * C / actualNegativeEdgeConstant,c,max Rr Rv,by positivity,hc,
    hRr.trans (le_max_left _ _),?_⟩
  intro A hA
  have hAr : Rr ≤ A := (le_max_left _ _).trans hA
  have hAv : Rv ≤ A := (le_max_right _ _).trans hA
  have hAp : 0 < A := by linarith [hRr.trans hAr]
  have hl : 0 < (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9 := by positivity
  have hmass := hv A hAv
  refine ⟨hl.trans_le hmass,?_⟩
  calc
    _ ≤ (C * Real.exp (A - c * A ^ (1 / 10 : ℝ)) / A ^ 9) /
        ((actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9) :=
      div_le_div₀ (abs_nonneg _) (hr A hAr) hl hmass
    _ = _ := by
      rw [Real.exp_sub,Real.exp_neg]
      field_simp

/-- Both literal variation fractions differ from one half by exactly the
relative residual magnitude, including its original sign. -/
theorem actualVariation_half_errors_eq {A : ℝ} (hA : 1 ≤ A)
    (hV : 0 < actualClosedAbsolutePrimeMoment A) :
    |actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2| +
      |actualNegativePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2| =
        |mertensResidual A| / actualClosedAbsolutePrimeMoment A := by
  have hs := actualClosedAbsolutePrimeMoment_eq_variation_sum A
  have hd := actualMertensResidual_eq_variation_difference hA
  have hpos : actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2 =
      mertensResidual A / (2 * actualClosedAbsolutePrimeMoment A) := by
    field_simp
    linarith
  have hneg : actualNegativePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2 =
      -(mertensResidual A / (2 * actualClosedAbsolutePrimeMoment A)) := by
    field_simp
    linarith
  rw [hpos,hneg,abs_neg,abs_div,abs_of_pos (by positivity :
    0 < 2 * actualClosedAbsolutePrimeMoment A)]
  field_simp
  ring

/-- The whole positive and negative inventory has this simultaneous relative budget. -/
theorem actualVariation_half_errors_stretched_bound :
    ∃ K c R : ℝ, 0 ≤ K ∧ 0 < c ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      |actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2| +
        |actualNegativePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2| ≤
          K * Real.exp (-c * A ^ (1 / 10 : ℝ)) := by
  obtain ⟨K,c,R,hK,hc,hR,hb⟩ := actualResidual_absoluteVariation_ratio_bound
  refine ⟨K,c,R,hK,hc,hR,?_⟩
  intro A hA
  obtain ⟨hV,hv⟩ := hb A hA
  rw [actualVariation_half_errors_eq (hR.trans hA) hV]
  exact hv

private theorem stretched_budget_tendsto_zero (K c : ℝ) (hc : 0 < c) :
    Tendsto (fun A : ℝ => K * Real.exp (-c * A ^ (1 / 10 : ℝ))) atTop (𝓝 0) := by
  have he : Tendsto (fun x : ℝ => Real.exp (-c * x)) atTop (𝓝 0) := by
    simpa only [Real.rpow_zero,one_mul] using
      tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 0 c hc
  have hx := tendsto_rpow_atTop (by norm_num : (0 : ℝ) < 1 / 10)
  simpa only [mul_zero] using (he.comp hx).const_mul K

/-- Every sufficiently large real source scale has positive fraction tending to one half. -/
theorem actualPositivePrimeVariation_fraction_tendsto_half :
    Tendsto (fun A : ℝ => actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A)
      atTop (𝓝 (1 / 2)) := by
  obtain ⟨K,c,R,hK,hc,hR,hb⟩ := actualVariation_half_errors_stretched_bound
  have he : Tendsto (fun A : ℝ =>
      actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2)
      atTop (𝓝 0) := by
    apply squeeze_zero_norm' _ (stretched_budget_tendsto_zero K c hc)
    filter_upwards [eventually_ge_atTop R] with A hA
    rw [Real.norm_eq_abs]
    exact (le_add_of_nonneg_right (abs_nonneg _)).trans (hb A hA)
  simpa only [sub_add_cancel,zero_add] using he.add_const (1 / 2)

/-- The negative fraction also tends to one half; this bounds no signed difference. -/
theorem actualNegativePrimeVariation_fraction_tendsto_half :
    Tendsto (fun A : ℝ => actualNegativePrimeVariation A / actualClosedAbsolutePrimeMoment A)
      atTop (𝓝 (1 / 2)) := by
  obtain ⟨K,c,R,hK,hc,hR,hb⟩ := actualVariation_half_errors_stretched_bound
  have he : Tendsto (fun A : ℝ =>
      actualNegativePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2)
      atTop (𝓝 0) := by
    apply squeeze_zero_norm' _ (stretched_budget_tendsto_zero K c hc)
    filter_upwards [eventually_ge_atTop R] with A hA
    rw [Real.norm_eq_abs]
    exact (le_add_of_nonneg_left (abs_nonneg _)).trans (hb A hA)
  simpa only [sub_add_cancel,zero_add] using he.add_const (1 / 2)

end
end FormalResearch.RiemannHypothesis.SourceActualSignedVariationFraction
```
