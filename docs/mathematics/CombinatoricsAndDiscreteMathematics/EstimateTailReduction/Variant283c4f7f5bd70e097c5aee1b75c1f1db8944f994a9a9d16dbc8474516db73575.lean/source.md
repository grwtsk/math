# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EstimateTailReduction.Variant283c4f7f5bd70e097c5aee1b75c1f1db8944f994a9a9d16dbc8474516db73575

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `637d21ca985d650a4a10da5c5b6edf49ee737048` · SHA-256 `935d200d8c7f34d2a1942fa8568d63a85e65c361543303cf3c5bd19729272c8c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeIndices.Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrimeIndices.Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/EstimateTailReduction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction

/-!
# RH estimate: exact tail-to-global reduction

A finite-prefix lower bound is proved directly from the unchanged strict
prime-power cutoff. No continuity of the arithmetic quadratic family is
needed.

Consequently an eventual constant lower bound for the actual signed pairing is
already sufficient for the exact all-scale estimate obligation: the integrated
analytic correction lower bound controls the tail, and the finite prime budget
controls the bounded prefix.

The eventual signed-pairing estimate itself remains open.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeIndices.Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateTailReduction

open FormalResearch.RiemannHypothesis.SourcePairing
open CorrelationAssembly
open EstimateReduction

noncomputable section

/-- Natural indices `n ≥ 2` below the strict cutoff `exp (2 * A)` used in
the prime-power sum; prime-power support is supplied by the von Mangoldt weight. -/
def primeIndices (A : ℝ) : Finset ℕ :=
  (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter
    (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * A))

theorem mem_primeIndices_iff
    (A : ℝ) (n : ℕ) :
    n ∈ primeIndices A ↔
      2 ≤ n ∧ (n : ℝ) < Real.exp (2 * A) := by
  simp only [primeIndices, Finset.mem_filter,
    Finset.mem_Icc,
    Nat.le_floor_iff (Real.exp_pos (2 * A)).le]
  exact
    ⟨fun h ↦ ⟨h.1.1, h.2⟩,
      fun h ↦ ⟨⟨h.1, h.2.le⟩, h.2⟩⟩

theorem primeIndices_mono
    {A R : ℝ} (hAR : A ≤ R) :
    primeIndices A ⊆ primeIndices R := by
  intro n hn
  rw [mem_primeIndices_iff] at hn ⊢
  exact
    ⟨hn.1,
      hn.2.trans_le
        (Real.exp_le_exp.mpr (by linarith))⟩

theorem prime_contribution_le_finite_budget
    (A R : ℝ) (hA : 1 ≤ A) (hAR : A ≤ R) :
    primePowerContribution
        Realization.explicitSecondDerivative A ≤
      ∑ n ∈ primeIndices R,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n| := by
  change
    (∑ n ∈ primeIndices A,
      ArithmeticFunction.vonMangoldt n / Real.sqrt n *
        sourceCorrelation Realization.explicitSecondDerivative A
          (Real.log n)) ≤ _
  calc
    _ ≤
        ∑ n ∈ primeIndices A,
          |ArithmeticFunction.vonMangoldt n / Real.sqrt n| := by
      apply Finset.sum_le_sum
      intro n hn
      calc
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
              sourceCorrelation Realization.explicitSecondDerivative A
                (Real.log n)
            ≤
          |ArithmeticFunction.vonMangoldt n / Real.sqrt n *
              sourceCorrelation Realization.explicitSecondDerivative A
                (Real.log n)| :=
          le_abs_self _
        _ =
          |ArithmeticFunction.vonMangoldt n / Real.sqrt n| *
            |sourceCorrelation Realization.explicitSecondDerivative A
              (Real.log n)| := abs_mul _ _
        _ ≤
          |ArithmeticFunction.vonMangoldt n / Real.sqrt n| * 1 := by
          exact mul_le_mul_of_nonneg_left
            (EstimateCorrelation.actual_correlation_abs_le_one
              A (Real.log n) hA)
            (abs_nonneg _)
        _ = _ := mul_one _
    _ ≤ _ :=
      Finset.sum_le_sum_of_subset_of_nonneg
        (primeIndices_mono hAR)
        (fun _ _ _ ↦ abs_nonneg _)

theorem bounded_radius_lower
    (R : ℝ) :
    ∃ lower : ℝ,
      ∀ A : ℝ, 1 ≤ A → A ≤ R →
        lower ≤
          sourceQuadraticValue
            Realization.explicitSecondDerivative A := by
  refine
    ⟨archimedeanMultiplier 0 -
      2 * ∑ n ∈ primeIndices R,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|,
      ?_⟩
  intro A hA hAR
  have hp :=
    prime_contribution_le_finite_budget A R hA hAR
  have ha :=
    SourceCorrectionEstimate.actual_archimedean_lower A hA
  unfold sourceQuadraticValue
  linarith

/-- A constant lower bound for the actual source quadratic value beyond
some radius `R ≥ 1`. -/
def QuadraticTailLowerBound : Prop :=
  ∃ lower R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A →
      lower ≤
        sourceQuadraticValue
          Realization.explicitSecondDerivative A

/-- A bound `-C`, with `C ≥ 0`, for the actual signed pairing beyond
some radius `R ≥ 1`. -/
def SignedPairingTailLowerBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        -C ≤
          signedPairing
            Realization.explicitSecondDerivative A

theorem quadratic_tail_of_signed_pairing_tail
    (h : SignedPairingTailLowerBound) :
    QuadraticTailLowerBound := by
  obtain ⟨C, hC, R, hR, hpair⟩ := h
  refine
    ⟨archimedeanMultiplier 0 -
        6 * Real.sqrt 2 - 2 * C,
      R, hR, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  have hcorr :=
    SourceCorrectionEstimate.actual_correction_lower A hA
  have hp := hpair A hRA
  rw [source_arithmetic_representation A hA]
  linarith

theorem estimate_of_quadratic_tail_lower_bound
    (h : QuadraticTailLowerBound) :
    EstimateObligation := by
  obtain ⟨tailLower, R, hR, htail⟩ := h
  obtain ⟨prefixLower, hprefix⟩ :=
    bounded_radius_lower R
  refine ⟨min prefixLower tailLower, ?_⟩
  intro A hA
  by_cases hRA : R ≤ A
  · exact (min_le_right _ _).trans (htail A hRA)
  · exact
      (min_le_left _ _).trans
        (hprefix A hA (le_of_lt (lt_of_not_ge hRA)))

theorem estimate_of_signed_pairing_tail_lower_bound
    (h : SignedPairingTailLowerBound) :
    EstimateObligation :=
  estimate_of_quadratic_tail_lower_bound
    (quadratic_tail_of_signed_pairing_tail h)

theorem estimate_obligation_iff_quadratic_tail :
    EstimateObligation ↔ QuadraticTailLowerBound := by
  constructor
  · rintro ⟨lower, hlower⟩
    exact ⟨lower, 1, le_rfl, fun A hA ↦ hlower A hA⟩
  · exact estimate_of_quadratic_tail_lower_bound

theorem signed_pairing_uniform_implies_tail
    (h : SignedPairingUniformLowerBound) :
    SignedPairingTailLowerBound := by
  obtain ⟨C, hC, hp⟩ := h
  exact ⟨C, hC, 1, le_rfl, hp⟩

/-- The bounded-radius lower bound, the implication from an eventual signed
pairing lower bound, and equivalence of the global estimate with its quadratic tail bound. -/
def TailReductionCheckpoint : Prop :=
  (∀ R : ℝ,
    ∃ lower : ℝ,
      ∀ A : ℝ, 1 ≤ A → A ≤ R →
        lower ≤
          sourceQuadraticValue
            Realization.explicitSecondDerivative A) ∧
  (SignedPairingTailLowerBound → EstimateObligation) ∧
  (EstimateObligation ↔ QuadraticTailLowerBound)

theorem tail_reduction_checkpoint :
    TailReductionCheckpoint :=
  ⟨bounded_radius_lower,
    estimate_of_signed_pairing_tail_lower_bound,
    estimate_obligation_iff_quadratic_tail⟩

end
end EstimateTailReduction
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
