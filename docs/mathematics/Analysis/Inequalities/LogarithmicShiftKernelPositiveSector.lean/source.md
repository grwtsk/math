# Complete source: GRWTSK.Analysis.Inequalities.LogarithmicShiftKernelPositiveSector

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1905b4267d00b696ce5d9e787dbfa09fb49e5e4` · SHA-256 `fd8061c8482f32d794d4384733ed3751561c97b71d776c34c446a52905f90021`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Convolution.CompactProfileTailSigns

/-!
A strict positive sector of the literal finite logarithmic-shift kernel for A >= 1.

Exact historical declaration names, hypotheses and proof bodies are retained.
The inherited base dependency extraction remains deferred.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourcePositiveSector

open MeasureTheory Set
open scoped Convolution
open ArithmeticSupplier SourceResidual SourceRegularity

noncomputable section

def tailReading (A : ℝ) : ℝ := 2 * A - Real.log 2 - 1 / 16

theorem tail_reading_strict_inside {A : ℝ} (hA : 1 ≤ A) :
    2 * Real.log A < tailReading A ∧ tailReading A < 2 * A := by
  have positive : 0 < A := by linarith
  have radiusLog := Real.log_le_sub_one_of_pos positive
  have twoLog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
  have twoLogPositive : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  dsimp [tailReading]
  constructor <;> linarith

theorem two_mem_inventory {A : ℝ} (hA : 1 ≤ A) :
    2 ∈ Finset.Icc 2 (integerCutoff A) := by
  have bound := Real.add_one_le_exp (2 * A)
  have two : (2 : ℝ) ≤ Real.exp (2 * A) := by linarith
  refine Finset.mem_Icc.mpr ⟨le_rfl, ?_⟩
  exact (Nat.le_floor_iff (Real.exp_pos _).le).mpr two

theorem higher_shift_above_support {A : ℝ} (k : ℕ) (hk : 3 ≤ k) :
    2 * A < tailReading A + Real.log (k : ℝ) := by
  have castBound : (3 : ℝ) ≤ k := by exact_mod_cast hk
  have logBound : Real.log (3 : ℝ) ≤ Real.log (k : ℝ) :=
    Real.log_le_log (by norm_num) castBound
  have gap := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 3 / 2)
  rw [Real.log_div (by norm_num) (by norm_num)] at gap
  norm_num at gap
  dsimp [tailReading]
  linarith

theorem polarity_kernel_tail_eq_atom {A : ℝ} (hA : 1 ≤ A) :
    polarityKernel A (tailReading A) = Real.log 2 / Real.sqrt 2 *
      (deriv (deriv (correlation A)) (2 * A - 1 / 16) -
        (1 / 2 : ℝ) * deriv (correlation A) (2 * A - 1 / 16)) := by
  have positive : 0 < A := by linarith
  unfold polarityKernel
  rw [Finset.sum_eq_single 2]
  · simp only [Nat.cast_ofNat]
    congr 2 <;> congr 1 <;> dsimp [tailReading] <;> ring
  · intro k hk different
    have lower := (Finset.mem_Icc.mp hk).1
    have hkThree : 3 ≤ k := by omega
    obtain ⟨first, second⟩ := correlation_derivatives_zero_of_two_mul_lt positive
      (higher_shift_above_support k hkThree)
    rw [first, second]
    ring
  · exact fun absent ↦ False.elim (absent (two_mem_inventory hA))

theorem strict_positive_sector_of_tail_atom {A : ℝ} (hA : 1 ≤ A)
    (atomPositive : 0 < deriv (deriv (correlation A)) (2 * A - 1 / 16) -
      (1 / 2 : ℝ) * deriv (correlation A) (2 * A - 1 / 16)) :
    {t | t ∈ readingWindow A ∧ 0 < polarityKernel A t}.Nonempty := by
  obtain ⟨lower, upper⟩ := tail_reading_strict_inside hA
  refine ⟨tailReading A, ⟨⟨lower.le, upper.le⟩, ?_⟩⟩
  rw [polarity_kernel_tail_eq_atom hA]
  exact mul_pos (div_pos (Real.log_pos (by norm_num)) (Real.sqrt_pos.mpr (by norm_num)))
    atomPositive

theorem polarity_kernel_tail_pos {A : ℝ} (hA : 1 ≤ A) :
    0 < polarityKernel A (tailReading A) := by
  rw [polarity_kernel_tail_eq_atom hA]
  exact mul_pos (div_pos (Real.log_pos (by norm_num)) (Real.sqrt_pos.mpr (by norm_num)))
    (tail_atom_pos hA)

theorem strict_positive_sector_nonempty {A : ℝ} (hA : 1 ≤ A) :
    {t | t ∈ readingWindow A ∧ 0 < polarityKernel A t}.Nonempty :=
  strict_positive_sector_of_tail_atom hA (tail_atom_pos hA)

theorem strict_positive_sector_volume_pos {A : ℝ} (hA : 1 ≤ A) :
    0 < volume {t | t ∈ readingWindow A ∧ 0 < polarityKernel A t} := by
  let inside : Set ℝ := Ioo (2 * Real.log A) (2 * A) ∩ {t | 0 < polarityKernel A t}
  have openInside : IsOpen inside :=
    isOpen_Ioo.inter (isOpen_lt continuous_const (polarity_kernel_continuous
      (by linarith : 0 < A)))
  have interiorPositive : 0 < volume inside := openInside.measure_pos volume
    ⟨tailReading A, tail_reading_strict_inside hA, polarity_kernel_tail_pos hA⟩
  apply lt_of_lt_of_le interiorPositive
  apply measure_mono
  intro t ht
  exact ⟨⟨ht.1.1.le, ht.1.2.le⟩, ht.2⟩

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourcePositiveSector
```
