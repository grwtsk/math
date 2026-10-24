# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.130SourceJointMangoldtColumn.Variantbf3b13c4651e3618b7810fbef37c33297b4d0733b1ee54704c9928e1f4d46c48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `999731dae046c743e2224259714c6f91b8159fa2` · SHA-256 `bf3b13c4651e3618b7810fbef37c33297b4d0733b1ee54704c9928e1f4d46c48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceVaughanHankel
import Mathlib.Algebra.BigOperators.Module

/-!
# Literal joint Mangoldt-column Abel readout

Research candidate; local kernel checks and maintained acceptance are separate
receipt gates. Both long axes, the centered coefficient and the actual source
weight remain unchanged. The terminal is removed only by source support.
-/

namespace FormalResearch.RiemannHypothesis.SourceJointMangoldtColumn

open ArithmeticFunction
open scoped InnerProductSpace
open SourceVaughanHankel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel
open EstimateBetaCentering

noncomputable section

private def mangoldtColumn (A : ℝ) (k : ℕ) : ℝ :=
  ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)

private def centeredLongPrefix (A : ℝ) (k : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n

private theorem mangoldtColumn_upper_zero (A : ℝ) (hA : 1 ≤ A) :
    mangoldtColumn A (sourceKernelCutoff A) = 0 := by
  classical
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hN : 1 ≤ sourceKernelCutoff A := hU.trans hUN
  apply Finset.sum_eq_zero
  intro m hm
  have hmU := (Finset.mem_Ioc.mp hm).1
  have hm2 : 2 ≤ m := by omega
  have hcut : sourceKernelCutoff A < m * sourceKernelCutoff A := by nlinarith
  rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m * sourceKernelCutoff A) hcut]
  exact mul_zero _

private theorem sourcePairing_eq_prefix_column_increments (A : ℝ) (hA : 1 ≤ A) :
    sourceHankelPairing A =
      ∑ k ∈ Finset.Ico (vaughanCutoff A + 1) (sourceKernelCutoff A),
        centeredLongPrefix A k * (mangoldtColumn A k - mangoldtColumn A (k + 1)) := by
  classical
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let b : ℕ → ℝ := fun n => if U < n then centeredBeta U n else 0
  let B := centeredLongPrefix A
  let R := mangoldtColumn A
  have hUN : U ≤ N := vaughanCutoff_le_sourceKernelCutoff A hA
  change sourceHankelPairing A =
    ∑ k ∈ Finset.Ico (U + 1) N, B k * (R k - R (k + 1))
  by_cases he : N = U
  · have hI : longInventory A = ∅ := by
      change Finset.Ioc U N = ∅
      rw [he]
      simp
    have hJ : Finset.Ico (U + 1) N = ∅ := Finset.Ico_eq_empty (by omega)
    rw [sourceHankelPairing_eq_centeredRectangle A hA]
    simp only [centeredRectangle, hI, hJ, Finset.sum_empty]
  have hlt : U < N := by omega
  have hprefix (k : ℕ) : (∑ n ∈ Finset.range (k + 1), b n) = B k := by
    have hsub : Finset.Ioc U k ⊆ Finset.range (k + 1) := by
      intro n hn
      have hnk := (Finset.mem_Ioc.mp hn).2
      exact Finset.mem_range.mpr (by omega)
    calc
      _ = ∑ n ∈ Finset.Ioc U k, b n := by
        symm
        apply Finset.sum_subset hsub
        intro n hn hnot
        have hnk : n ≤ k := by have := Finset.mem_range.mp hn; omega
        have hnU : ¬ U < n := by
          intro h
          exact hnot (Finset.mem_Ioc.mpr ⟨h, hnk⟩)
        simp only [b, if_neg hnU]
      _ = B k := by
        apply Finset.sum_congr rfl
        intro n hn
        simp only [b, if_pos (Finset.mem_Ioc.mp hn).1]
        rfl
  have hBU : B U = 0 := by simp [B, centeredLongPrefix, U]
  have hRN : R N = 0 := mangoldtColumn_upper_zero A hA
  have hinterval : Finset.Ioc U (N - 1) = Finset.Ico (U + 1) N := by
    ext k
    simp only [Finset.mem_Ioc, Finset.mem_Ico]
    omega
  have hparts := Finset.sum_Ioc_by_parts R b hlt
  simp only [smul_eq_mul] at hparts
  simp_rw [hprefix] at hparts
  rw [hRN, hBU, zero_mul, mul_zero, sub_zero, zero_sub, hinterval] at hparts
  calc
    sourceHankelPairing A = ∑ n ∈ Finset.Ioc U N, centeredBeta U n * R n := by
      rw [sourceHankelPairing_eq_centeredRectangle A hA]
      unfold centeredRectangle
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n _
      change (∑ m ∈ longInventory A,
        vonMangoldt m * centeredBeta U n * sourcePlainWeight A ((m * n : ℕ) : ℝ)) =
          centeredBeta U n *
            ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * n : ℕ) : ℝ)
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro m _
      ring
    _ = ∑ n ∈ Finset.Ioc U N, R n * b n := by
      apply Finset.sum_congr rfl
      intro n hn
      simp only [b, if_pos (Finset.mem_Ioc.mp hn).1]
      ring
    _ = -∑ k ∈ Finset.Ico (U + 1) N, (R (k + 1) - R k) * B k := hparts
    _ = _ := by
      rw [← Finset.sum_neg_distrib]
      apply Finset.sum_congr rfl
      intro k _
      ring

/-- Exact column Abel identity for the unchanged actual two-state inner product. -/
theorem mangoldt_inner_eq_centered_prefix_column_increments (A : ℝ) (hA : 1 ≤ A) :
    ⟪mangoldtL2 A hA, centeredMobiusReflectedL2 A hA⟫_ℝ =
      let U := vaughanCutoff A
      let N := sourceKernelCutoff A
      let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
      let R : ℕ → ℝ := fun k =>
        ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
      ∑ k ∈ Finset.Ico (U + 1) N, B k * (R k - R (k + 1)) := by
  rw [← sourceHankelPairing_eq_l2_inner A hA]
  exact sourcePairing_eq_prefix_column_increments A hA

end
end FormalResearch.RiemannHypothesis.SourceJointMangoldtColumn
```
