# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.HarmonicPartialSums.Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f167680ccea32222ca2214be2a611f05d9cf27ff` · SHA-256 `c41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.RealEulerProductConvergence
import Mathlib.Analysis.PSeries

/-!
# Folder.Rebuild.AnalyticNumberTheory.HarmonicPartialSums

Finite harmonic partial sums and their elementary unboundedness.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def harmonicPartial
    (N : Nat) : Real :=
  ∑ n ∈ Finset.Icc 1 N, (n : Real)⁻¹

theorem harmonicPartial_nonneg
    (N : Nat) :
    0 ≤ harmonicPartial N := by
  unfold harmonicPartial
  exact
    Finset.sum_nonneg
      (fun n _hn => inv_nonneg.mpr (Nat.cast_nonneg n))

theorem harmonicPartial_mono :
    Monotone harmonicPartial := by
  intro M N hMN
  unfold harmonicPartial
  exact
    Finset.sum_le_sum_of_subset_of_nonneg
      (by
        intro n hn
        exact
          Finset.mem_Icc.mpr
            ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hMN⟩)
      (fun n _hn _hnot => inv_nonneg.mpr (Nat.cast_nonneg n))

theorem harmonicPartial_eq_range_sum
    (N : Nat) :
    harmonicPartial N =
      ∑ i ∈ Finset.range N, (1 / (i + 1) : Real) := by
  classical
  have himage :
      (Finset.range N).image (fun i : Nat => i + 1) = Finset.Icc 1 N := by
    ext n
    constructor
    · intro hn
      rcases Finset.mem_image.mp hn with ⟨i, hi, rfl⟩
      exact
        Finset.mem_Icc.mpr
          ⟨Nat.succ_pos i, Nat.succ_le_of_lt (Finset.mem_range.mp hi)⟩
    · intro hn
      have h1 : 1 ≤ n := (Finset.mem_Icc.mp hn).1
      have hN : n ≤ N := (Finset.mem_Icc.mp hn).2
      refine Finset.mem_image.mpr ⟨n - 1, ?_, ?_⟩
      · exact Finset.mem_range.mpr (Nat.sub_one_lt_of_le h1 hN)
      · omega
  unfold harmonicPartial
  rw [← himage]
  rw [Finset.sum_image]
  · refine Finset.sum_congr rfl ?_
    intro i _hi
    norm_num
  · intro a _ha b _hb h
    exact Nat.succ.inj (by simpa [Nat.succ_eq_add_one] using h)

theorem harmonicPartial_unbounded :
    ∀ B : Real, ∃ N : Nat, B ≤ harmonicPartial N := by
  intro B
  have ht := Real.tendsto_sum_range_one_div_nat_succ_atTop
  rcases (Filter.eventually_atTop.mp (ht.eventually_ge_atTop B)) with ⟨N, hN⟩
  refine ⟨N, ?_⟩
  have h := hN N le_rfl
  simpa [harmonicPartial_eq_range_sum N] using h

end AnalyticNumberTheory
end Rebuild
end Folder
```
