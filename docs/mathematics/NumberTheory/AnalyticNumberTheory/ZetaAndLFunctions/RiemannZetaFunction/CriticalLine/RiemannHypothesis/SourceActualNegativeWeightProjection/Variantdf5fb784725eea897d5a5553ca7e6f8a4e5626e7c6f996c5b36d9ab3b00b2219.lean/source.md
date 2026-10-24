# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualNegativeWeightProjection.Variantdf5fb784725eea897d5a5553ca7e6f8a4e5626e7c6f996c5b36d9ab3b00b2219

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c683d20ded35a6753778cbb9221c6f7832e371e6` · SHA-256 `df5fb784725eea897d5a5553ca7e6f8a4e5626e7c6f996c5b36d9ab3b00b2219`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualSignedVariationFraction
import FormalResearch.RiemannHypothesis.SourceOperatorObservable

/-!
An actual coordinate projection keeps both complete Möbius/log copies exactly
at outer indices with negative closed source weight. Its Euclidean contraction
has changed readout at most zero, while its complete evaluated defect has no
uniform lower bound. This tests a transformation method, not the unchanged
signed Estimate. No physical Gram contraction or future-stage admissibility is
asserted. Every original prime power and closed divisor atom remains represented.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualNegativeWeightProjection
open Matrix Filter ArithmeticFunction
open scoped Topology
open MangoldtMobiusJacobi SourceOperatorObservable SourceActualSignedVariationFraction
open SourceActualNegativeEdgeMangoldt SourceActualEdgeComplementCancellation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMobiusSplit EstimateMertensResidual PrimePowerDescent
noncomputable section

private def negativeMask (A : ℝ) (q : SourceAtom A) : ℝ :=
  if closedPrimeWeight A q.1.val < 0 then 1 else 0

private def coordinateMask (A : ℝ) : SourceIndex A → ℝ :=
  Sum.elim (negativeMask A) (negativeMask A)

/-- The literal coordinate projection uses the same mask on both raw arithmetic rows. -/
def actualNegativeWeightProjection (A : ℝ) : Matrix (SourceIndex A) (SourceIndex A) ℝ :=
  Matrix.diagonal (coordinateMask A)

private theorem coordinateMask_sq (A : ℝ) (i : SourceIndex A) :
    coordinateMask A i * coordinateMask A i = coordinateMask A i := by
  cases i <;> simp [coordinateMask, negativeMask] <;> split_ifs <;> norm_num

/-- Coordinate symmetry is Euclidean; it is not a physical Gram assertion. -/
theorem actualNegativeWeightProjection_transpose (A : ℝ) :
    (actualNegativeWeightProjection A).transpose = actualNegativeWeightProjection A := by
  simp [actualNegativeWeightProjection]

/-- Both complete arithmetic copies are retained or removed together. -/
theorem actualNegativeWeightProjection_idempotent (A : ℝ) :
    actualNegativeWeightProjection A * actualNegativeWeightProjection A =
      actualNegativeWeightProjection A := by
  simp only [actualNegativeWeightProjection, Matrix.diagonal_mul_diagonal]
  congr 1
  funext i
  exact coordinateMask_sq A i

/-- This is contraction of the raw Euclidean coordinate energy only. -/
theorem actualNegativeWeightProjection_raw_energy_le (A : ℝ) (v : SourceIndex A → ℝ) :
    (∑ i, ((actualNegativeWeightProjection A).mulVec v i) ^ 2) ≤ ∑ i, (v i) ^ 2 := by
  rw [actualNegativeWeightProjection]
  simp only [Matrix.mulVec_diagonal]
  apply Finset.sum_le_sum
  intro i _
  cases i <;> simp [coordinateMask, negativeMask] <;> split_ifs <;> nlinarith [sq_nonneg (v _)]

private theorem projection_source_vector (A : ℝ) :
    (actualNegativeWeightProjection A).mulVec (sourceJointVector A) =
      jointVector (fun q => negativeMask A q * sourceMobiusRow A q)
        (fun q => negativeMask A q * sourceLogRow A q) := by
  funext i
  cases i <;> simp [actualNegativeWeightProjection, Matrix.mulVec_diagonal,
    coordinateMask, sourceJointVector, jointVector]

private theorem projected_atom_readout (A : ℝ) :
    changedSourceReadout A (actualNegativeWeightProjection A) =
      2 * ∑ q : SourceAtom A,
        if closedPrimeWeight A q.1.val < 0 then
          sourceMobiusRow A q * sourceLogRow A q * sourceAtomWeight A q else 0 := by
  rw [changedSourceReadout, projection_source_vector]
  change jointVector _ _ ⬝ᵥ signedDilation (pairKernel _) *ᵥ jointVector _ _ = _
  rw [pairKernel_covariance]
  congr 1
  apply Finset.sum_congr rfl
  intro q _
  by_cases h : closedPrimeWeight A q.1.val < 0 <;> simp [negativeMask, h] <;> ring

private theorem projected_mangoldt_readout (A : ℝ) :
    changedSourceReadout A (actualNegativeWeightProjection A) =
      2 * ∑ n ∈ primePowerInventory (2 * A),
        if closedPrimeWeight A n < 0 then vonMangoldt n * closedPrimeWeight A n else 0 := by
  rw [projected_atom_readout]
  congr 1
  simp only [SourceAtom, Fintype.sum_sigma]
  have inner (n : {n : ℕ // n ∈ primePowerInventory (2 * A)}) :
      (∑ dk : {dk : ℕ × ℕ // dk ∈ n.val.divisorsAntidiagonal},
        if closedPrimeWeight A n.val < 0 then
          sourceMobiusRow A ⟨n,dk⟩ * sourceLogRow A ⟨n,dk⟩ *
            sourceAtomWeight A ⟨n,dk⟩ else 0) =
        if closedPrimeWeight A n.val < 0 then
          vonMangoldt n.val * closedPrimeWeight A n.val else 0 := by
    by_cases h : closedPrimeWeight A n.val < 0
    · simp only [h, if_true, sourceMobiusRow, sourceLogRow, sourceAtomWeight]
      rw [Finset.sum_coe_sort]
      rw [← Finset.sum_mul, ← vonMangoldt_eq_mobius_log_convolution]
    · simp [h]
  simp_rw [inner]
  exact Finset.sum_coe_sort _ _

/-- Complete Möbius/log inversion gives the literal full negative variation. -/
theorem actualNegativeWeightProjection_changed_eq (A : ℝ) :
    changedSourceReadout A (actualNegativeWeightProjection A) =
      -2 * actualNegativePrimeVariation A := by
  rw [projected_mangoldt_readout]
  unfold actualNegativePrimeVariation primePowerInventory
  have ht : ∀ n : ℕ, (if closedPrimeWeight A n < 0 then
      vonMangoldt n * closedPrimeWeight A n else 0) =
        -max 0 (-(vonMangoldt n * closedPrimeWeight A n)) := by
    intro n
    by_cases h : closedPrimeWeight A n < 0
    · rw [if_pos h, max_eq_right]
      · ring
      · exact neg_nonneg.mpr (mul_nonpos_of_nonneg_of_nonpos vonMangoldt_nonneg h.le)
    · rw [if_neg h, max_eq_left]
      · ring
      · exact neg_nonpos.mpr (mul_nonneg vonMangoldt_nonneg (le_of_not_gt h))
  simp_rw [ht]
  rw [Finset.sum_neg_distrib]
  ring

/-- The full evaluated defect is the negative of the complete positive inventory. -/
theorem actualNegativeWeightProjection_defect_eq {A : ℝ} (hA : 1 ≤ A) :
    sourceDefectReadout A (actualNegativeWeightProjection A) =
      -2 * actualPositivePrimeVariation A := by
  have h := changedSourceReadout_eq_twice_residual_add_defect A hA
    (actualNegativeWeightProjection A)
  rw [actualNegativeWeightProjection_changed_eq,
    actualMertensResidual_eq_variation_difference hA] at h
  linarith

/-- The actual changed readout has a uniform upper zero, without a defect cap. -/
theorem actualNegativeWeightProjection_changed_nonpos (A : ℝ) :
    changedSourceReadout A (actualNegativeWeightProjection A) ≤ 0 := by
  rw [actualNegativeWeightProjection_changed_eq]
  have h := actualNegativePrimeVariation_nonneg A
  linarith

private theorem complement_le_positive (A : ℝ) :
    actualNegativeEdgeComplement A ≤ actualPositivePrimeVariation A := by
  unfold actualNegativeEdgeComplement actualPositivePrimeVariation
  calc
    _ ≤ ∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊) \ actualNegativeEdgeWindow A,
        max 0 (vonMangoldt n * closedPrimeWeight A n) := by
      apply Finset.sum_le_sum
      intro n _
      exact le_max_right _ _
    _ ≤ _ := Finset.sum_le_sum_of_subset_of_nonneg Finset.sdiff_subset
      (fun _ _ _ => le_max_left _ _)

/-- A coordinate-contractive actual stage can have arbitrarily negative full defect. -/
theorem actualNegativeWeightProjection_defect_below (D R : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ R ≤ A ∧
      sourceDefectReadout A (actualNegativeWeightProjection A) < D := by
  have hev := actualNegativeEdgeComplement_tendsto_atTop.eventually
    (eventually_gt_atTop (-D / 2))
  obtain ⟨R0,hT0⟩ := eventually_atTop.1 hev
  let A := max 1 (max R R0)
  have hA : 1 ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left R R0).trans (le_max_right _ _)
  have hR0 : R0 ≤ A := (le_max_right R R0).trans (le_max_right _ _)
  refine ⟨A,hA,hR,?_⟩
  rw [actualNegativeWeightProjection_defect_eq hA]
  have hc := hT0 A hR0
  have hp := complement_le_positive A
  linarith

/-- The complete defect has no eventual constant lower bound on the actual source family. -/
theorem actualNegativeWeightProjection_no_defect_lower :
    ¬∃ D R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      D ≤ sourceDefectReadout A (actualNegativeWeightProjection A) := by
  rintro ⟨D,R,_hR,hbound⟩
  obtain ⟨A,_hA,hRA,hbad⟩ := actualNegativeWeightProjection_defect_below D R
  exact (not_le.mpr hbad) (hbound A hRA)

end
end FormalResearch.RiemannHypothesis.SourceActualNegativeWeightProjection
```
