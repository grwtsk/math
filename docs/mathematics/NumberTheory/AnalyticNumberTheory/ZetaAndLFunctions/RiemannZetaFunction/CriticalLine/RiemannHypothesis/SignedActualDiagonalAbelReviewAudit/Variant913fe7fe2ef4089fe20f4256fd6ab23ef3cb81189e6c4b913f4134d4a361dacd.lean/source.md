# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignedActualDiagonalAbelReviewAudit.Variant913fe7fe2ef4089fe20f4256fd6ab23ef3cb81189e6c4b913f4134d4a361dacd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e556a0a159695d15a9df877902e11c4ab322e724` · SHA-256 `5ec35a60bd3aac12a0ad6273ff127660fbf6f8e0f54b57682e663c5f5642d160`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.InventoryPrimeDiagonal.Variant3db78139e07478bf07a1339dc45b253528afa5b30dede604ca5ee8c94d35d964","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3db78139e07478bf07a1339dc45b253528afa5b30dede604ca5ee8c94d35d964","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.InventoryPrimeDiagonal.Variant3db78139e07478bf07a1339dc45b253528afa5b30dede604ca5ee8c94d35d964","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3db78139e07478bf07a1339dc45b253528afa5b30dede604ca5ee8c94d35d964","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/theta-next/signed-actual-diagonal-abel-review-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanTranslationGate

/-!
# Review-only integral replacement for the actual retained Vaughan diagonal

This adapter depends on the authored, unmerged Vaughan source closure. It reuses
the exact `typeTwoDiagonal_eq_longBase_sum` identity. Proper prime powers have
bounded weighted mass by elementary Chebyshev and Abel estimates; the prime
sector is the accepted correlation at its original separation and cutoffs.

The result is a uniform signed integral replacement. It proves neither the
normalization coefficient formula, the complete retained ledger error, nor a
joint arithmetic upper bound.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.InventoryPrimeDiagonal.Variant3db78139e07478bf07a1339dc45b253528afa5b30dede604ca5ee8c94d35d964

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.VaughanDiagonalAbelReview

open MeasureTheory Set ArithmeticFunction
open scoped BigOperators Interval
open WeightedPrimeMertens WeightedPrimeAbel SourceDiagonalPrimeAbel SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateVaughanTranslationGate
open EstimateSourceMobiusKernel EstimateMertensAbel

noncomputable section

/-- The prime sector on the full authored diagonal inventory, before support truncation. -/
def inventoryPrimeDiagonal (A : ℝ) : ℝ :=
  -(∑ p ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime,
    Real.log (p : ℝ) / (p : ℝ) * diagonalCorrelation A (Real.log p))

theorem diagonal_coefficient_error_le (A : ℝ) (hA : 1 ≤ A) (U m : ℕ) (hm : U < m) :
    |(if U < m.minFac then vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) -
      (if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0)| ≤
      properPowerCoefficient m / (m : ℝ) := by
  have hm0 : 0 < (m : ℝ) := by exact_mod_cast (lt_of_le_of_lt (Nat.zero_le U) hm)
  by_cases hp : m.Prime
  · simp [hp, hm, properPowerCoefficient, primeCoefficient, vonMangoldt_apply_prime hp]
  · simp only [hp, if_false, sub_zero, properPowerCoefficient, primeCoefficient]
    split_ifs
    · rw [abs_mul, abs_div, abs_of_nonneg (vonMangoldt_nonneg (n := m)), abs_of_pos hm0]
      calc
        vonMangoldt m / (m : ℝ) * |diagonalCorrelation A (Real.log m)| ≤
            vonMangoldt m / (m : ℝ) * 1 :=
          mul_le_mul_of_nonneg_left (diagonalCorrelation_abs_le_one A _ hA)
            (div_nonneg (vonMangoldt_nonneg (n := m)) hm0.le)
        _ = _ := by ring
    · simp only [abs_zero]
      exact div_nonneg (vonMangoldt_nonneg (n := m)) hm0.le

/-- The complete nonprime diagonal remainder has one fixed absolute budget. -/
theorem actual_diagonal_minus_inventory_prime_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      |typeTwoDiagonal A - inventoryPrimeDiagonal A| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := weighted_difference_uniformly_bounded
  refine ⟨C, hC0, ?_⟩
  intro A hA
  have hN : 1 ≤ sourceKernelCutoff A := by
    unfold sourceKernelCutoff sourceUpper
    exact (Nat.one_le_floor_iff _).mpr (Real.one_le_exp_iff.mpr (by linarith))
  have hdiff := (hC (sourceKernelCutoff A) hN).2
  rw [weighted_difference] at hdiff
  have hsub : Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A) ⊆
      Finset.Ioc 0 (sourceKernelCutoff A) := by
    intro m hm
    exact Finset.mem_Ioc.mpr ⟨lt_of_le_of_lt (Nat.zero_le _) (Finset.mem_Ioc.mp hm).1,
      (Finset.mem_Ioc.mp hm).2⟩
  have hmass := Finset.sum_le_sum_of_subset_of_nonneg
    (f := fun m : ℕ => properPowerCoefficient m / (m : ℝ)) hsub
    (fun m _ _ => div_nonneg (properPowerCoefficient_nonneg m) (by positivity))
  rw [typeTwoDiagonal_eq_longBase_sum A hA, inventoryPrimeDiagonal,
    Finset.sum_filter, Finset.sum_filter]
  have heq : (-∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
      if vaughanCutoff A < m.minFac then
        vonMangoldt m / (m : ℝ) * sourceCorrelation explicitSecondDerivative A (2 * Real.log m) else 0) -
      (-∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) =
      -(∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        ((if vaughanCutoff A < m.minFac then
          vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) -
        (if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0))) := by
    rw [Finset.sum_sub_distrib]
    unfold diagonalCorrelation
    ring
  rw [heq, abs_neg]
  calc
    _ ≤ ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        |(if vaughanCutoff A < m.minFac then
          vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) -
        (if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        properPowerCoefficient m / (m : ℝ) :=
      Finset.sum_le_sum fun m hm => diagonal_coefficient_error_le A hA _ m (Finset.mem_Ioc.mp hm).1
    _ ≤ _ := hmass
    _ ≤ C := hdiff

/-- Every extra prime in the full square-product cutoff vanishes at the actual source support. -/
theorem inventoryPrimeDiagonal_eq_retainedPrimeDiagonal (A : ℝ) (hA : 1 ≤ A) :
    inventoryPrimeDiagonal A = retainedPrimeDiagonal A := by
  have hMN : ⌊Real.exp A⌋₊ ≤ sourceKernelCutoff A := by
    unfold sourceKernelCutoff sourceUpper
    exact Nat.floor_le_floor (Real.exp_le_exp.mpr (by linarith : A ≤ 2 * A))
  have hsub : (Finset.Ioc (vaughanCutoff A) ⌊Real.exp A⌋₊).filter Nat.Prime ⊆
      (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime := by
    intro p hp
    have hp' := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr
      ⟨(Finset.mem_Ioc.mp hp'.1).1, (Finset.mem_Ioc.mp hp'.1).2.trans hMN⟩, hp'.2⟩
  have hs := Finset.sum_subset hsub
    (f := fun p : ℕ => Real.log (p : ℝ) / (p : ℝ) * diagonalCorrelation A (Real.log p))
    (by
      intro p hp hpnot
      have hp' := Finset.mem_filter.mp hp
      have hpR : 0 < (p : ℝ) := by exact_mod_cast hp'.2.pos
      have hMp : ⌊Real.exp A⌋₊ < p := by
        by_contra h
        have hpM : p ≤ ⌊Real.exp A⌋₊ := Nat.not_lt.mp h
        exact hpnot (Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr
          ⟨(Finset.mem_Ioc.mp hp'.1).1, hpM⟩, hp'.2⟩)
      have hlog : A < Real.log (p : ℝ) :=
        (Real.lt_log_iff_exp_lt hpR).mpr ((Nat.floor_lt (Real.exp_pos A).le).mp hMp)
      have hzero : diagonalCorrelation A (Real.log p) = 0 := by
        apply sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * Real.log p) (by linarith)
        rw [abs_of_pos (by linarith : 0 < 2 * Real.log (p : ℝ))]
        linarith
      rw [hzero, mul_zero])
  unfold inventoryPrimeDiagonal retainedPrimeDiagonal
  rw [← hs]
  rfl

/-- The actual retained diagonal is minus its literal correlation integral, up to one fixed error. -/
theorem actual_diagonal_integral_error :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      |typeTwoDiagonal A +
        (∫ t in Real.log (vaughanCutoff A : ℝ)..A,
          sourceCorrelation explicitSecondDerivative A (2 * t))| ≤ C := by
  obtain ⟨C₁, hC₁0, hC₁⟩ := actual_diagonal_minus_inventory_prime_bounded
  obtain ⟨C₂, hC₂0, hC₂⟩ := retainedPrimeDiagonal_integral_error
  refine ⟨C₁ + C₂, by positivity, ?_⟩
  intro A hA
  have hd := hC₁ A hA
  rw [inventoryPrimeDiagonal_eq_retainedPrimeDiagonal A hA] at hd
  have hp := hC₂ A hA
  change |typeTwoDiagonal A +
    (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)| ≤ C₁ + C₂
  calc
    _ = |(typeTwoDiagonal A - retainedPrimeDiagonal A) +
        (retainedPrimeDiagonal A +
          (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t))| := by congr 1; ring
    _ ≤ _ := abs_add_le _ _
    _ ≤ C₁ + C₂ := add_le_add hd hp

end
end FormalResearch.RiemannHypothesis.VaughanDiagonalAbelReview

#print FormalResearch.RiemannHypothesis.VaughanDiagonalAbelReview.inventoryPrimeDiagonal
#print axioms FormalResearch.RiemannHypothesis.VaughanDiagonalAbelReview.inventoryPrimeDiagonal
#print FormalResearch.RiemannHypothesis.VaughanDiagonalAbelReview.diagonal_coefficient_error_le
#print axioms FormalResearch.RiemannHypothesis.VaughanDiagonalAbelReview.diagonal_coefficient_error_le
#print FormalResearch.RiemannHypothesis.VaughanDiagonalAbelReview.actual_diagonal_minus_inventory_prime_bounded
#print axioms FormalResearch.RiemannHypothesis.VaughanDiagonalAbelReview.actual_diagonal_minus_inventory_prime_bounded
#print FormalResearch.RiemannHypothesis.VaughanDiagonalAbelReview.inventoryPrimeDiagonal_eq_retainedPrimeDiagonal
#print axioms FormalResearch.RiemannHypothesis.VaughanDiagonalAbelReview.inventoryPrimeDiagonal_eq_retainedPrimeDiagonal
#print FormalResearch.RiemannHypothesis.VaughanDiagonalAbelReview.actual_diagonal_integral_error
#print axioms FormalResearch.RiemannHypothesis.VaughanDiagonalAbelReview.actual_diagonal_integral_error
```
