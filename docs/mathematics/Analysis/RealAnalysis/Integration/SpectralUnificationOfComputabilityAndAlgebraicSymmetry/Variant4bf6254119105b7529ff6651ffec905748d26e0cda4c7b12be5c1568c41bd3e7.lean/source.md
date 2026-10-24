# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant4bf6254119105b7529ff6651ffec905748d26e0cda4c7b12be5c1568c41bd3e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c407497b6a607f832537cf7881bf5c17da19ff9` · SHA-256 `4bf6254119105b7529ff6651ffec905748d26e0cda4c7b12be5c1568c41bd3e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceKernelLogProfile

/-!
# Exact signed logarithmic blocks for the actual Möbius pairing

Every block retains its lower primitive value and both source-profile endpoint
values. The finite dyadic partition clips its last interval at the exact real
endpoint 2A. These are source-preserving identities, not an absolute-value
estimate or an assertion that the signed residual is uniformly bounded.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSignedMobiusBlocks

open MeasureTheory Set
open EstimateWeightedMobiusPairing EstimateSourceKernelLogProfile

noncomputable section

/-- The actual signed logarithmic integrand is integrable on each contained block. -/
theorem signed_block_integrable (A u v : ℝ) (hA : 1 ≤ A)
    (hu : 0 ≤ u) (huv : u ≤ v) (hv : v ≤ 2 * A) :
    IntervalIntegrable
      (fun s ↦ weightedMobiusPrimitive s * deriv (sourceLogKernel A) s) volume u v := by
  apply (intervalIntegrable_iff_integrableOn_Icc_of_le huv).mpr
  exact (weightedMobiusPrimitive_mul_deriv_integrable A hA).mono_set
    (fun _ hs ↦ ⟨hu.trans hs.1, hs.2.trans hv⟩)

/-- Exact centering of one actual signed block, including its endpoint contribution. -/
theorem signed_block_centering (A u v : ℝ) (hA : 1 ≤ A)
    (hu : 0 ≤ u) (huv : u ≤ v) (hv : v ≤ 2 * A) :
    -(∫ s in u..v, weightedMobiusPrimitive s * deriv (sourceLogKernel A) s) =
      -weightedMobiusPrimitive u * (sourceLogKernel A v - sourceLogKernel A u) -
        ∫ s in u..v, (weightedMobiusPrimitive s - weightedMobiusPrimitive u) *
          deriv (sourceLogKernel A) s := by
  have hG := sourceLogKernel_contDiff A (by linarith)
  have hdi : IntervalIntegrable (deriv (sourceLogKernel A)) volume u v :=
    (hG.continuous_deriv (by norm_num)).intervalIntegrable u v
  have hprod := signed_block_integrable A u v hA hu huv hv
  have hconst := hdi.const_mul (weightedMobiusPrimitive u)
  have hFTC : (∫ s in u..v, deriv (sourceLogKernel A) s) =
      sourceLogKernel A v - sourceLogKernel A u :=
    intervalIntegral.integral_deriv_eq_sub
      (fun s _ ↦ (hG.differentiable (by norm_num) s)) hdi
  have heq : (fun s ↦ (weightedMobiusPrimitive s - weightedMobiusPrimitive u) *
      deriv (sourceLogKernel A) s) =
      fun s ↦ weightedMobiusPrimitive s * deriv (sourceLogKernel A) s -
        weightedMobiusPrimitive u * deriv (sourceLogKernel A) s := by
    funext s
    ring
  rw [heq, intervalIntegral.integral_sub hprod hconst,
    intervalIntegral.integral_const_mul, hFTC]
  ring

/-- The number of logarithmic dyadic blocks needed to cover the full real source window. -/
def dyadicBlockCount (A : ℝ) : ℕ := ⌈(2 * A) / Real.log 2⌉₊

/-- Logarithmic dyadic nodes, with the final interval clipped at the exact endpoint 2A. -/
def dyadicBlockPoint (A : ℝ) (j : ℕ) : ℝ := min ((j : ℝ) * Real.log 2) (2 * A)

/-- Every clipped node remains inside the complete source interval. -/
theorem dyadicBlockPoint_mem (A : ℝ) (hA : 1 ≤ A) (j : ℕ) :
    dyadicBlockPoint A j ∈ Icc 0 (2 * A) := by
  have hlog : 0 ≤ Real.log 2 := (Real.log_pos (by norm_num : (1 : ℝ) < 2)).le
  constructor
  · apply le_min
    · positivity
    · linarith
  · exact min_le_right _ _

/-- The clipped partition is increasing, including any final degenerate intervals. -/
theorem dyadicBlockPoint_le_succ (A : ℝ) (j : ℕ) :
    dyadicBlockPoint A j ≤ dyadicBlockPoint A (j + 1) := by
  apply min_le_min_right
  have hlog : 0 ≤ Real.log 2 := (Real.log_pos (by norm_num : (1 : ℝ) < 2)).le
  exact mul_le_mul_of_nonneg_right (by exact_mod_cast Nat.le_succ j) hlog

/-- The first clipped node is the actual lower endpoint zero. -/
theorem dyadicBlockPoint_zero (A : ℝ) (hA : 1 ≤ A) : dyadicBlockPoint A 0 = 0 := by
  simp only [dyadicBlockPoint, Nat.cast_zero, zero_mul]
  exact min_eq_left (by linarith)

/-- The ceiling count reaches exactly 2A; no remainder interval is discarded. -/
theorem dyadicBlockPoint_last (A : ℝ) :
    dyadicBlockPoint A (dyadicBlockCount A) = 2 * A := by
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num : (1 : ℝ) < 2)
  unfold dyadicBlockPoint dyadicBlockCount
  exact min_eq_right ((div_le_iff₀ hlog).mp (Nat.le_ceil ((2 * A) / Real.log 2)))

/-- Exact dyadic decomposition of the complete signed logarithmic pairing.
The summands preserve every primitive-weighted endpoint difference and the final clipped block. -/
theorem signed_pairing_eq_dyadic_centered_blocks (A : ℝ) (hA : 1 ≤ A) :
    -(∫ s in (0 : ℝ)..(2 * A),
      weightedMobiusPrimitive s * deriv (sourceLogKernel A) s) =
      ∑ j ∈ Finset.range (dyadicBlockCount A),
        (-weightedMobiusPrimitive (dyadicBlockPoint A j) *
          (sourceLogKernel A (dyadicBlockPoint A (j + 1)) -
            sourceLogKernel A (dyadicBlockPoint A j)) -
          ∫ s in (dyadicBlockPoint A j)..(dyadicBlockPoint A (j + 1)),
            (weightedMobiusPrimitive s - weightedMobiusPrimitive (dyadicBlockPoint A j)) *
              deriv (sourceLogKernel A) s) := by
  have hi : ∀ j < dyadicBlockCount A,
      IntervalIntegrable
        (fun s ↦ weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)
        volume (dyadicBlockPoint A j) (dyadicBlockPoint A (j + 1)) := by
    intro j _
    exact signed_block_integrable A _ _ hA (dyadicBlockPoint_mem A hA j).1
      (dyadicBlockPoint_le_succ A j) (dyadicBlockPoint_mem A hA (j + 1)).2
  have hsum := intervalIntegral.sum_integral_adjacent_intervals hi
  rw [dyadicBlockPoint_zero A hA, dyadicBlockPoint_last A] at hsum
  rw [← hsum, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro j _
  exact signed_block_centering A _ _ hA (dyadicBlockPoint_mem A hA j).1
    (dyadicBlockPoint_le_succ A j) (dyadicBlockPoint_mem A hA (j + 1)).2

/-- The unchanged residual is exactly the complete collection of centered dyadic blocks. -/
theorem mertensResidual_eq_dyadic_centered_blocks (A : ℝ) (hA : 1 ≤ A) :
    EstimateMertensResidual.mertensResidual A =
      ∑ j ∈ Finset.range (dyadicBlockCount A),
        (-weightedMobiusPrimitive (dyadicBlockPoint A j) *
          (sourceLogKernel A (dyadicBlockPoint A (j + 1)) -
            sourceLogKernel A (dyadicBlockPoint A j)) -
          ∫ s in (dyadicBlockPoint A j)..(dyadicBlockPoint A (j + 1)),
            (weightedMobiusPrimitive s - weightedMobiusPrimitive (dyadicBlockPoint A j)) *
              deriv (sourceLogKernel A) s) := by
  rw [mertensResidual_eq_weighted_log_pairing A hA]
  exact signed_pairing_eq_dyadic_centered_blocks A hA

private theorem finite_boundary_telescope (A : ℝ) (n : ℕ) :
    (∑ j ∈ Finset.range n,
      -weightedMobiusPrimitive (dyadicBlockPoint A j) *
        (sourceLogKernel A (dyadicBlockPoint A (j + 1)) -
          sourceLogKernel A (dyadicBlockPoint A j))) =
      weightedMobiusPrimitive (dyadicBlockPoint A 0) * sourceLogKernel A (dyadicBlockPoint A 0) -
        weightedMobiusPrimitive (dyadicBlockPoint A n) *
          sourceLogKernel A (dyadicBlockPoint A n) +
      ∑ j ∈ Finset.range n,
        (weightedMobiusPrimitive (dyadicBlockPoint A (j + 1)) -
          weightedMobiusPrimitive (dyadicBlockPoint A j)) *
            sourceLogKernel A (dyadicBlockPoint A (j + 1)) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_range_succ, Finset.sum_range_succ, ih]
    ring

/-- Exact telescoping of all primitive-weighted endpoint contributions.
The lower endpoint survives. The upper term vanishes by the actual source support theorem. -/
theorem dyadic_boundary_telescoping (A : ℝ) (hA : 1 ≤ A) :
    (∑ j ∈ Finset.range (dyadicBlockCount A),
      -weightedMobiusPrimitive (dyadicBlockPoint A j) *
        (sourceLogKernel A (dyadicBlockPoint A (j + 1)) -
          sourceLogKernel A (dyadicBlockPoint A j))) =
      weightedMobiusPrimitive 0 * sourceLogKernel A 0 +
      ∑ j ∈ Finset.range (dyadicBlockCount A),
        (weightedMobiusPrimitive (dyadicBlockPoint A (j + 1)) -
          weightedMobiusPrimitive (dyadicBlockPoint A j)) *
            sourceLogKernel A (dyadicBlockPoint A (j + 1)) := by
  rw [finite_boundary_telescope, dyadicBlockPoint_zero A hA, dyadicBlockPoint_last,
    sourceLogKernel_upper_zero A hA, mul_zero, sub_zero]

/-- The residual retains its lower atom, all signed block increments, and all centered remainders.
No absolute values or growth assumptions for the weighted Möbius primitive are introduced. -/
theorem mertensResidual_eq_dyadic_jumps_sub_centered (A : ℝ) (hA : 1 ≤ A) :
    EstimateMertensResidual.mertensResidual A =
      weightedMobiusPrimitive 0 * sourceLogKernel A 0 +
        (∑ j ∈ Finset.range (dyadicBlockCount A),
          (weightedMobiusPrimitive (dyadicBlockPoint A (j + 1)) -
            weightedMobiusPrimitive (dyadicBlockPoint A j)) *
              sourceLogKernel A (dyadicBlockPoint A (j + 1))) -
        ∑ j ∈ Finset.range (dyadicBlockCount A),
          ∫ s in (dyadicBlockPoint A j)..(dyadicBlockPoint A (j + 1)),
            (weightedMobiusPrimitive s - weightedMobiusPrimitive (dyadicBlockPoint A j)) *
              deriv (sourceLogKernel A) s := by
  rw [mertensResidual_eq_dyadic_centered_blocks A hA, Finset.sum_sub_distrib,
    dyadic_boundary_telescoping A hA]

end
end EstimateSignedMobiusBlocks
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
