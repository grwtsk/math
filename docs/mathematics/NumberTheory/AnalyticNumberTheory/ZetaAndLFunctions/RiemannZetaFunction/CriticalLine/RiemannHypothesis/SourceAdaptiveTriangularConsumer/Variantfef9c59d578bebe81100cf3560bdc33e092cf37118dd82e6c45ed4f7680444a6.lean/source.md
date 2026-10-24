# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceAdaptiveTriangularConsumer.Variantfef9c59d578bebe81100cf3560bdc33e092cf37118dd82e6c45ed4f7680444a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04415c608a313f8c1d7e17edff3f6e63db0bd82a` · SHA-256 `fba3bec9f7d1d7da7c00e57bbd867c8a2b7c7003ac3e08051feaff3079b667bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Coefficient.Variantfeefc0a7ea19016c3d85aa30055478a210b7b09a47dddfc099dba925335908ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"feefc0a7ea19016c3d85aa30055478a210b7b09a47dddfc099dba925335908ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Coefficient.Variantfeefc0a7ea19016c3d85aa30055478a210b7b09a47dddfc099dba925335908ab","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"feefc0a7ea19016c3d85aa30055478a210b7b09a47dddfc099dba925335908ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-followthrough-20261006/dependencies/independent-endpoint-replay/SourceAdaptiveTriangularConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceStrictEnergyConsumer
import SourceVaughanHankelFourier

/-!
Bounded finite triangular attenuation of the literal signed source rectangle.
The finite discrepancy is proved here. Identification with an analytic Fejér
convolution and its truncated density is deliberately a separate hypothesis.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Coefficient.Variantfeefc0a7ea19016c3d85aa30055478a210b7b09a47dddfc099dba925335908ab

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceAdaptiveTriangularConsumer
open ArithmeticFunction MeasureTheory
open SourceVaughanHankel SourceVaughanHankelFourier SourceStrictEnergyConsumer
open SourceStrictColumnInterior SourceSamplingLedger SourceHankelReflection SourceHankelFourier
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateBetaCentering EstimateCorrelation
open EstimateSourceMobiusKernel EstimateMertensAbel EstimateMertensResidual
noncomputable section

def coefficient (A : ℝ) (m n : ℕ) : ℝ :=
  (vonMangoldt m / Real.sqrt (m : ℝ)) *
    (centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ))

def frequency (m n : ℕ) : ℝ := Real.log (m : ℝ) + Real.log (n : ℝ)

def B0 (A : ℝ) : ℝ :=
  ∑ m ∈ longInventory A, ∑ n ∈ longInventory A, |coefficient A m n|

def B1 (A : ℝ) : ℝ :=
  ∑ m ∈ longInventory A, ∑ n ∈ longInventory A,
    frequency m n * |coefficient A m n|

theorem frequency_nonneg (m n : ℕ) : 0 ≤ frequency m n := by
  exact add_nonneg (Real.log_natCast_nonneg m) (Real.log_natCast_nonneg n)

theorem coefficient_eq_sqrt_product (A : ℝ) {m n : ℕ} (hm : m ∈ longInventory A) :
    coefficient A m n = vonMangoldt m * centeredBeta (vaughanCutoff A) n /
      Real.sqrt ((m : ℝ) * (n : ℝ)) := by
  have hmpos : 0 < (m : ℝ) := by exact_mod_cast longInventory_pos A hm
  rw [Real.sqrt_mul hmpos.le]
  unfold coefficient
  ring

/-- Literal source polynomial uses the positive sum-log frequencies and original real rows. -/
theorem polynomial_real_product (A ξ : ℝ) :
    (mangoldtPolynomial A ξ * centeredBetaPolynomial A ξ).re =
      ∑ m ∈ longInventory A, ∑ n ∈ longInventory A,
        coefficient A m n * Real.cos (ξ * frequency m n) :=
  arithmeticPolynomial_real_product _ _ _ _ _

theorem B0_nonneg (A : ℝ) : 0 ≤ B0 A := by
  exact Finset.sum_nonneg (fun _ _ => Finset.sum_nonneg (fun _ _ => abs_nonneg _))

theorem B1_nonneg (A : ℝ) : 0 ≤ B1 A := by
  exact Finset.sum_nonneg (fun m _ => Finset.sum_nonneg
    (fun n _ => mul_nonneg (frequency_nonneg m n) (abs_nonneg _)))

def bandwidth (A : ℝ) : ℝ := 1 + 4 * A + 2 * B1 A
def truncation (A : ℝ) : ℝ := 1 + 8 * B0 A / (Real.pi * bandwidth A)
def discrepancy (A : ℝ) : ℝ := B1 A / bandwidth A +
  4 * B0 A / (Real.pi * bandwidth A * truncation A)

theorem bandwidth_pos (A : ℝ) (hA : 1 ≤ A) : 0 < bandwidth A := by
  dsimp [bandwidth]
  linarith [B1_nonneg A]

theorem inventory_log_le (A : ℝ) {m : ℕ} (hm : m ∈ longInventory A) :
    Real.log (m : ℝ) ≤ 2 * A := by
  have hmpos : 0 < (m : ℝ) := by exact_mod_cast longInventory_pos A hm
  apply (Real.log_le_iff_le_exp hmpos).2
  have hmcut : m ≤ sourceKernelCutoff A := (Finset.mem_Ioc.mp hm).2
  have hcast : (m : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by exact_mod_cast hmcut
  exact hcast.trans (Nat.floor_le (Real.exp_pos (2 * A)).le)

theorem frequency_lt_bandwidth (A : ℝ) (_hA : 1 ≤ A) {m n : ℕ}
    (hm : m ∈ longInventory A) (hn : n ∈ longInventory A) :
    frequency m n < bandwidth A := by
  have hmle := inventory_log_le A hm
  have hnle := inventory_log_le A hn
  unfold frequency bandwidth
  linarith [B1_nonneg A]

theorem actual_frequency_bounds (A : ℝ) (hA : 1 ≤ A) {m n : ℕ}
    (hm : m ∈ longInventory A) (hn : n ∈ longInventory A) :
    0 < frequency m n ∧ frequency m n ≤ 4 * A ∧ 4 * A < bandwidth A := by
  have hmU : vaughanCutoff A < m := (Finset.mem_Ioc.mp hm).1
  have hmone : 1 < m := lt_of_le_of_lt (vaughanCutoff_pos A hA) hmU
  have hmreal : (1 : ℝ) < m := by exact_mod_cast hmone
  have hmlog := Real.log_pos hmreal
  have hnlog := Real.log_natCast_nonneg n
  have hmle := inventory_log_le A hm
  have hnle := inventory_log_le A hn
  unfold frequency bandwidth
  constructor
  · linarith
  constructor
  · linarith
  · linarith [B1_nonneg A]

theorem triangular_factor_nonneg (A : ℝ) (hA : 1 ≤ A) {m n : ℕ}
    (hm : m ∈ longInventory A) (hn : n ∈ longInventory A) :
    0 ≤ 1 - frequency m n / bandwidth A := by
  have ht := (div_lt_one (bandwidth_pos A hA)).2 (frequency_lt_bandwidth A hA hm hn)
  linarith

theorem positive_part_multiplier_eq (A : ℝ) (hA : 1 ≤ A) {m n : ℕ}
    (hm : m ∈ longInventory A) (hn : n ∈ longInventory A) :
    max 0 (1 - |frequency m n| / bandwidth A) = 1 - frequency m n / bandwidth A := by
  rw [abs_of_nonneg (frequency_nonneg m n),
    max_eq_right (triangular_factor_nonneg A hA hm hn)]

theorem triangular_budget (A : ℝ) (hA : 1 ≤ A) : B1 A / bandwidth A ≤ 1 / 2 := by
  apply (div_le_iff₀ (bandwidth_pos A hA)).2
  dsimp [bandwidth]
  linarith

theorem truncation_budget (A : ℝ) (hA : 1 ≤ A) :
    4 * B0 A / (Real.pi * bandwidth A * truncation A) ≤ 1 / 2 := by
  have hp : 0 < Real.pi * bandwidth A := mul_pos Real.pi_pos (bandwidth_pos A hA)
  have hz : 0 < truncation A := by
    dsimp [truncation]
    have hb := B0_nonneg A
    positivity
  apply (div_le_iff₀ (mul_pos hp hz)).2
  have he : Real.pi * bandwidth A * truncation A =
      Real.pi * bandwidth A + 8 * B0 A := by
    dsimp [truncation]
    field_simp [(bandwidth_pos A hA).ne']
  rw [he]
  linarith

theorem adaptive_budget (A : ℝ) (hA : 1 ≤ A) : discrepancy A ≤ 1 := by
  dsimp [discrepancy]
  linarith [triangular_budget A hA, truncation_budget A hA]

def triangularPairing (A : ℝ) : ℝ :=
  ∑ m ∈ longInventory A, ∑ n ∈ longInventory A,
    coefficient A m n * (1 - frequency m n / bandwidth A) *
      sourceCorrelation explicitSecondDerivative A (frequency m n)

def triangularInterior (A : ℝ) : ℝ := triangularPairing A -
  centeredDeletedDiagonal A - independentMainTerm A - sourceEndpoint A

theorem sourcePairing_eq_finite (A : ℝ) (hA : 1 ≤ A) :
    sourceHankelPairing A = ∑ m ∈ longInventory A, ∑ n ∈ longInventory A,
      coefficient A m n * sourceCorrelation explicitSecondDerivative A (frequency m n) := by
  unfold sourceHankelPairing mangoldtForwardProfile centeredMobiusReflectedProfile
  rw [finite_hankel_pairing (by linarith : 0 < A) _ _ _ _
    (fun _ hm => longInventory_pos A hm) (fun _ hn => longInventory_pos A hn)]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  have hmpos : 0 < (m : ℝ) := by exact_mod_cast longInventory_pos A hm
  have hnpos : 0 < (n : ℝ) := by exact_mod_cast longInventory_pos A hn
  rw [Real.log_mul hmpos.ne' hnpos.ne']
  rfl

theorem sourcePairing_triangular_discrepancy (A : ℝ) (hA : 1 ≤ A) :
    |sourceHankelPairing A - triangularPairing A| ≤ B1 A / bandwidth A := by
  classical
  rw [sourcePairing_eq_finite A hA]
  unfold triangularPairing B1
  rw [← Finset.sum_sub_distrib, Finset.sum_div]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro m hm
  rw [← Finset.sum_sub_distrib, Finset.sum_div]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro n hn
  have hc := actual_correlation_abs_le_one A (frequency m n) hA
  have he : coefficient A m n * sourceCorrelation explicitSecondDerivative A (frequency m n) -
      coefficient A m n * (1 - frequency m n / bandwidth A) *
        sourceCorrelation explicitSecondDerivative A (frequency m n) =
      (frequency m n * coefficient A m n / bandwidth A) *
        sourceCorrelation explicitSecondDerivative A (frequency m n) := by ring
  rw [he, abs_mul, abs_div, abs_mul, abs_of_nonneg (frequency_nonneg m n),
    abs_of_pos (bandwidth_pos A hA)]
  exact mul_le_of_le_one_right
    (div_nonneg (mul_nonneg (frequency_nonneg m n) (abs_nonneg _))
      (bandwidth_pos A hA).le) hc

theorem strictInterior_eq_pairing (A : ℝ) (hA : 1 ≤ A) :
    strictColumnInterior A = sourceHankelPairing A - centeredDeletedDiagonal A -
      independentMainTerm A - sourceEndpoint A := by
  rw [strictColumnInterior_eq_complete_source_energy A hA,
    sourceEnergySurplus_eq_four_joint_remainder A hA,
    covarianceOperator_half_eq_pairing_sub_diagonal A hA]
  ring

theorem strictInterior_triangular_discrepancy (A : ℝ) (hA : 1 ≤ A) :
    |strictColumnInterior A - triangularInterior A| ≤ 1 / 2 := by
  rw [strictInterior_eq_pairing A hA]
  unfold triangularInterior
  have he : sourceHankelPairing A - centeredDeletedDiagonal A - independentMainTerm A -
      sourceEndpoint A - (triangularPairing A - centeredDeletedDiagonal A -
      independentMainTerm A - sourceEndpoint A) =
      sourceHankelPairing A - triangularPairing A := by ring
  rw [he]
  exact (sourcePairing_triangular_discrepancy A hA).trans (triangular_budget A hA)

/-- The finite attenuation target has the same existence content at the same real radius. -/
theorem strict_tail_iff_triangular_tail (R : ℝ) (hR : 1 ≤ R) :
    (∃ D : ℝ, 0 ≤ D ∧ ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D) ↔
      (∃ D : ℝ, 0 ≤ D ∧ ∀ A : ℝ, R ≤ A → triangularInterior A ≤ D) := by
  constructor
  · rintro ⟨D, hD, ht⟩
    refine ⟨D + 1 / 2, by linarith, ?_⟩
    intro A hRA
    have he := (abs_le.mp (strictInterior_triangular_discrepancy A (hR.trans hRA))).1
    have hs := ht A hRA
    linarith
  · rintro ⟨D, hD, ht⟩
    refine ⟨D + 1 / 2, by linarith, ?_⟩
    intro A hRA
    have he := (abs_le.mp (strictInterior_triangular_discrepancy A (hR.trans hRA))).2
    have hs := ht A hRA
    linarith

/-- A finite triangular upper witness gives the unchanged strict source target. -/
theorem estimate_of_triangular_tail (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_strictColumnInterior_tail (D + 1 / 2) R (by linarith) hR
  intro A hRA
  have he := (abs_le.mp (strictInterior_triangular_discrepancy A (hR.trans hRA))).2
  have hg := hG A hRA
  linarith

theorem residual_tail_of_triangular_tail (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + 1 / 2 + 12 + C_F := by
  apply residual_tail_of_strictColumnInterior_tail (D + 1 / 2) R (by linarith) hR
  intro A hRA
  have he := (abs_le.mp (strictInterior_triangular_discrepancy A (hR.trans hRA))).2
  have hg := hG A hRA
  linarith

/-- Explicit angular Fejér density. Its analytic properties are not asserted here. -/
def fejerDensity (T v : ℝ) : ℝ :=
  if v = 0 then T / (2 * Real.pi) else (1 - Real.cos (T * v)) / (Real.pi * T * v ^ 2)

/-- Literal density obtained by cutting the Fejér convolution at the adaptive Z. -/
def truncatedDensity (A ξ : ℝ) : ℝ :=
  ∫ v in Set.Icc (-truncation A) (truncation A),
    fejerDensity (bandwidth A) v * sourceFourierSquare A (ξ - v)

def smoothedInterior (A : ℝ) : ℝ :=
  (1 / (2 * Real.pi)) * (∫ ξ : ℝ,
    (mangoldtPolynomial A ξ * centeredBetaPolynomial A ξ).re * truncatedDensity A ξ) -
      centeredDeletedDiagonal A - independentMainTerm A - sourceEndpoint A

/-- The remaining explicit analytic discrepancy is charged separately from finite attenuation.
No integrability, Fourier multiplier or truncation estimate is smuggled into this hypothesis. -/
theorem estimate_of_truncated_smoothing_tail (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → smoothedInterior A ≤ D)
    (hTrunc : ∀ A : ℝ, R ≤ A →
      |triangularPairing A - (1 / (2 * Real.pi)) * (∫ ξ : ℝ,
        (mangoldtPolynomial A ξ * centeredBetaPolynomial A ξ).re * truncatedDensity A ξ)| ≤
          4 * B0 A / (Real.pi * bandwidth A * truncation A)) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_strictColumnInterior_tail (D + 1) R (by linarith) hR
  intro A hRA
  have hA := hR.trans hRA
  have hfinite := (abs_le.mp (sourcePairing_triangular_discrepancy A hA)).2
  have htrunc := (abs_le.mp (hTrunc A hRA)).2
  have hbudget := adaptive_budget A hA
  have hg := hG A hRA
  rw [strictInterior_eq_pairing A hA]
  unfold smoothedInterior at hg
  unfold discrepancy at hbudget
  linarith

/-- The conservative original endpoint and independent ledger constants remain explicit. -/
theorem residual_tail_of_truncated_smoothing_tail (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → smoothedInterior A ≤ D)
    (hTrunc : ∀ A : ℝ, R ≤ A →
      |triangularPairing A - (1 / (2 * Real.pi)) * (∫ ξ : ℝ,
        (mangoldtPolynomial A ξ * centeredBetaPolynomial A ξ).re * truncatedDensity A ξ)| ≤
          4 * B0 A / (Real.pi * bandwidth A * truncation A)) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + 1 + 12 + C_F := by
  apply residual_tail_of_strictColumnInterior_tail (D + 1) R (by linarith) hR
  intro A hRA
  have hA := hR.trans hRA
  have hfinite := (abs_le.mp (sourcePairing_triangular_discrepancy A hA)).2
  have htrunc := (abs_le.mp (hTrunc A hRA)).2
  have hbudget := adaptive_budget A hA
  have hg := hG A hRA
  rw [strictInterior_eq_pairing A hA]
  unfold smoothedInterior at hg
  unfold discrepancy at hbudget
  linarith

end
end FormalResearch.RiemannHypothesis.SourceAdaptiveTriangularConsumer
```
