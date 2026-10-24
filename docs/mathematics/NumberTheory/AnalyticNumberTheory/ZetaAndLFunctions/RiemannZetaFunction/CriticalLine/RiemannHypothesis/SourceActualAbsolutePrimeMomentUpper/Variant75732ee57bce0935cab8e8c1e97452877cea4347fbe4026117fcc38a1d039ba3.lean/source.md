# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualAbsolutePrimeMomentUpper.Variant75732ee57bce0935cab8e8c1e97452877cea4347fbe4026117fcc38a1d039ba3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1313ca2b0fc11bbf8abd3a53b12d3a787b15848f` · SHA-256 `050974b44b49be524f82eb17cdf008dead3057b0feafd9a40d3dc19871d12e0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualAbsolutePrimeMomentUpperConstant.Variant35251cfde0942fcaf0eb96ca0181991ffc7b020892f0df2a32b4330919a7a5a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"35251cfde0942fcaf0eb96ca0181991ffc7b020892f0df2a32b4330919a7a5a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualAbsolutePrimeMomentUpperConstant.Variant35251cfde0942fcaf0eb96ca0181991ffc7b020892f0df2a32b4330919a7a5a2","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"35251cfde0942fcaf0eb96ca0181991ffc7b020892f0df2a32b4330919a7a5a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/SourceActualAbsolutePrimeMomentUpper-AuthorNative01/SourceActualAbsolutePrimeMomentUpper.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualSignedPrecisionCriterion
import ActualSupportEdgeMangoldtMoments
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation

/-!
The full unchanged absolute prime-power inventory has an explicit exponential
upper budget from the genuine global correlation edge profile and closed
Mangoldt moments. This fixes the scale of the required signed fraction excess;
it does not construct a constant signed residual bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualAbsolutePrimeMomentUpperConstant.Variant35251cfde0942fcaf0eb96ca0181991ffc7b020892f0df2a32b4330919a7a5a2

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualAbsolutePrimeMomentUpper
open Filter ArithmeticFunction
open scoped BigOperators Topology
open SourceActualAbsolutePrimeMomentObstruction SourceActualSignedVariationFraction
open SourceActualSignedPrecisionCriterion SourceActualNegativeEdgeMangoldt
open ActualSupportEdgeMangoldtMoments
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateSourceEdgeCorrelation Realization PrimePowerDescent EstimateMobiusSplit
noncomputable section

/-- The exact factorial edge-moment allowance for all original prime powers. -/
def actualAbsolutePrimeMomentUpperConstant : ℝ := 262731202560 * (Real.log 4 + 4)

theorem actualAbsolutePrimeMomentUpperConstant_pos :
    0 < actualAbsolutePrimeMomentUpperConstant := by
  unfold actualAbsolutePrimeMomentUpperConstant
  positivity

private theorem closed_atom_abs_le {A : ℝ} (hA : 1 ≤ A) {n : ℕ}
    (hn : n ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊) :
    |vonMangoldt n * closedPrimeWeight A n| ≤
      (512 / A ^ 9) * (vonMangoldt n / Real.sqrt (n : ℝ) *
        (2304 * (2 * A - Real.log n) ^ 5 +
          96 * (2 * A - Real.log n) ^ 7 + (2 * A - Real.log n) ^ 9)) := by
  have hn1 := (Finset.mem_Icc.mp hn).1
  have hn0 : 0 < n := by omega
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn0
  have hl0 : 0 ≤ Real.log n := Real.log_nonneg (by exact_mod_cast hn1)
  have hl : Real.log n ≤ 2 * A := (Real.log_le_iff_le_exp hnR).mpr
    ((Nat.le_floor_iff (Real.exp_pos _).le).mp (Finset.mem_Icc.mp hn).2)
  have hz0 : 0 ≤ 2 * A - Real.log n := by linarith
  have hzA : 2 * A - Real.log n ≤ 2 * A := by linarith
  have hc := sourceCorrelation_upper_edge_abs_le A (2 * A - Real.log n) hA hz0 hzA
  have ht : 2 * A - (2 * A - Real.log n) = Real.log n := by ring
  rw [ht] at hc
  have hs : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hnR
  rw [closedPrimeWeight, exponentialTest_log _ _ hn0, abs_mul,
    abs_of_nonneg (vonMangoldt_nonneg n), abs_div, abs_of_pos hs]
  calc
    _ ≤ vonMangoldt n * (edgePolynomial (2 * A - Real.log n) / A ^ 9 /
        Real.sqrt (n : ℝ)) :=
      mul_le_mul_of_nonneg_left (div_le_div_of_nonneg_right hc hs.le)
        (vonMangoldt_nonneg n)
    _ = _ := by unfold edgePolynomial; ring

private theorem full_polynomial_sum_eq (A : ℝ) :
    (∑ n ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
      vonMangoldt n / Real.sqrt (n : ℝ) *
        (2304 * (2 * A - Real.log n) ^ 5 +
          96 * (2 * A - Real.log n) ^ 7 + (2 * A - Real.log n) ^ 9)) =
      2304 * actualHalfMangoldtEdgeMoment 5 (2 * A) +
        96 * actualHalfMangoldtEdgeMoment 7 (2 * A) +
          actualHalfMangoldtEdgeMoment 9 (2 * A) := by
  calc
    _ = ∑ n ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
        (2304 * (vonMangoldt n / Real.sqrt (n : ℝ) * (2 * A - Real.log n) ^ 5) +
          96 * (vonMangoldt n / Real.sqrt (n : ℝ) * (2 * A - Real.log n) ^ 7) +
            vonMangoldt n / Real.sqrt (n : ℝ) * (2 * A - Real.log n) ^ 9) := by
      apply Finset.sum_congr rfl
      intro n _
      ring
    _ = _ := by
      simp only [Finset.sum_add_distrib, ← Finset.mul_sum, actualHalfMangoldtEdgeMoment]

/-- The true unit atom is zero before adding it to the closed prefix inventory. -/
theorem actualClosedPrimeMoment_unit_atom (A : ℝ) :
    vonMangoldt 1 * closedPrimeWeight A 1 = 0 := by simp

/-- The complete absolute mass, including fractional last cutoffs, has this real-scale budget. -/
theorem actualClosedAbsolutePrimeMoment_le {A : ℝ} (hA : 1 ≤ A) :
    actualClosedAbsolutePrimeMoment A ≤
      actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9 := by
  have hA0 : 0 < A := by linarith
  have hL : 0 ≤ 2 * A := by linarith
  have h5 := actualHalfMangoldtEdgeMoment_le 4 hL
  have h7 := actualHalfMangoldtEdgeMoment_le 6 hL
  have h9 := actualHalfMangoldtEdgeMoment_le 8 hL
  norm_num at h5 h7 h9
  have hsum : 2304 * actualHalfMangoldtEdgeMoment 5 (2 * A) +
      96 * actualHalfMangoldtEdgeMoment 7 (2 * A) +
        actualHalfMangoldtEdgeMoment 9 (2 * A) ≤
      513146880 * (Real.log 4 + 4) * Real.exp A := by
    nlinarith
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
        |vonMangoldt n * closedPrimeWeight A n| := by
      unfold actualClosedAbsolutePrimeMoment
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.Icc_subset_Icc (by norm_num) le_rfl) (fun _ _ _ => abs_nonneg _)
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
        (512 / A ^ 9) * (vonMangoldt n / Real.sqrt (n : ℝ) *
          (2304 * (2 * A - Real.log n) ^ 5 +
            96 * (2 * A - Real.log n) ^ 7 + (2 * A - Real.log n) ^ 9)) :=
      Finset.sum_le_sum (fun _ hn => closed_atom_abs_le hA hn)
    _ = (512 / A ^ 9) *
        (2304 * actualHalfMangoldtEdgeMoment 5 (2 * A) +
          96 * actualHalfMangoldtEdgeMoment 7 (2 * A) +
            actualHalfMangoldtEdgeMoment 9 (2 * A)) := by
      rw [← Finset.mul_sum, full_polynomial_sum_eq]
    _ ≤ (512 / A ^ 9) * (513146880 * (Real.log 4 + 4) * Real.exp A) :=
      mul_le_mul_of_nonneg_left hsum (by positivity)
    _ = _ := by unfold actualAbsolutePrimeMomentUpperConstant; ring

/-- A positive actual mass has the complementary reciprocal lower scale. -/
theorem actualAbsoluteVariation_inverse_exp_lower {A : ℝ} (hA : 1 ≤ A)
    (hV : 0 < actualClosedAbsolutePrimeMoment A) :
    A ^ 9 * Real.exp (-A) / actualAbsolutePrimeMomentUpperConstant ≤
      1 / actualClosedAbsolutePrimeMoment A := by
  have hA0 : 0 < A := by linarith
  have hD := actualAbsolutePrimeMomentUpperConstant_pos
  have hu := actualClosedAbsolutePrimeMoment_le hA
  have hp : 0 < actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9 := by
    positivity
  calc
    _ = 1 / (actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9) := by
      rw [Real.exp_neg]
      field_simp
    _ ≤ _ := div_le_div₀ (by norm_num : (0 : ℝ) ≤ 1) le_rfl hV hu

/-- Both reciprocal bounds concern the same literal complete source mass. -/
theorem actualAbsoluteVariation_inverse_eventually_two_sided :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      0 < actualClosedAbsolutePrimeMoment A ∧
        A ^ 9 * Real.exp (-A) / actualAbsolutePrimeMomentUpperConstant ≤
          1 / actualClosedAbsolutePrimeMoment A ∧
        1 / actualClosedAbsolutePrimeMoment A ≤
          2 * A ^ 9 * Real.exp (-A) / actualNegativeEdgeConstant := by
  obtain ⟨R,hR,hbound⟩ := actualAbsoluteVariation_inverse_eventually_exp_bound
  refine ⟨R,hR,?_⟩
  intro A hA
  obtain ⟨hV,hupper⟩ := hbound A hA
  exact ⟨hV,actualAbsoluteVariation_inverse_exp_lower (hR.trans hA) hV,hupper⟩

/-- Existence of one fixed exponential one-sided precision constant, without a witness. -/
def ActualPositiveVariationExponentialPrecisionTailBound : Prop :=
  ∃ K : ℝ, 0 ≤ K ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    0 < actualClosedAbsolutePrimeMoment A ∧
      actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A ≤
        1 / 2 + K * A ^ 9 * Real.exp (-A)

/-- The proved full mass upper bound makes existence-level exponential precision exact. -/
theorem actualPositiveVariationExponentialPrecisionTailBound_iff_residual :
    ActualPositiveVariationExponentialPrecisionTailBound ↔
      ∃ K : ℝ, 0 ≤ K ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
        mertensResidual A ≤ K := by
  constructor
  · rintro ⟨K,hK,R,hR,hbound⟩
    refine ⟨2 * actualAbsolutePrimeMomentUpperConstant * K,by positivity,R,hR,?_⟩
    intro A hA
    obtain ⟨hV,hfrac⟩ := hbound A hA
    have hu := actualClosedAbsolutePrimeMoment_le (hR.trans hA)
    have hs := actualResidual_eq_twice_variation_skew (hR.trans hA) (ne_of_gt hV)
    have hA0 : 0 < A := by linarith [hR.trans hA]
    have hscale : 0 ≤ K * A ^ 9 * Real.exp (-A) := by positivity
    calc
      _ = 2 * actualClosedAbsolutePrimeMoment A *
          (actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2) := hs
      _ ≤ 2 * actualClosedAbsolutePrimeMoment A * (K * A ^ 9 * Real.exp (-A)) :=
        mul_le_mul_of_nonneg_left (by linarith) (by positivity)
      _ ≤ 2 * (actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9) *
          (K * A ^ 9 * Real.exp (-A)) := by nlinarith [mul_le_mul_of_nonneg_right hu hscale]
      _ = _ := by rw [Real.exp_neg]; field_simp; ring
  · rintro ⟨K,hK,R,hR,hcap⟩
    obtain ⟨R1,hR1,hfrac⟩ := actualResidual_cap_implies_positive_fraction_exp_budget hK hR hcap
    obtain ⟨Rv,hRv,hpositive⟩ := actualAbsoluteVariation_inverse_eventually_exp_bound
    refine ⟨K / actualNegativeEdgeConstant,by positivity,max R1 Rv,
      hR1.trans (le_max_left _ _),?_⟩
    intro A hA
    have hA1 : R1 ≤ A := (le_max_left _ _).trans hA
    obtain ⟨hV,_⟩ := hpositive A ((le_max_right _ _).trans hA)
    refine ⟨hV,?_⟩
    convert hfrac A hA1 using 1 <;> ring

/-- This exponential precision criterion is equivalent to the unchanged original Estimate. -/
theorem actualPositiveVariationExponentialPrecisionTailBound_iff_estimate :
    ActualPositiveVariationExponentialPrecisionTailBound ↔ CorrelationAssembly.EstimateObligation := by
  rw [actualPositiveVariationExponentialPrecisionTailBound_iff_residual,
    ← actualPositiveVariationPrecisionTailBound_iff_residual]
  exact actualPositiveVariationPrecisionTailBound_iff_estimate

end
end FormalResearch.RiemannHypothesis.SourceActualAbsolutePrimeMomentUpper
```
