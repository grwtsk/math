# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ZetaPartialSums.Variant6a23fa7283a62d59f37fc33f532373c2233744e9b7d824f836a78bae29a87968

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9db2e5a8cac020af7748c656c875be8bca052b56` · SHA-256 `6a23fa7283a62d59f37fc33f532373c2233744e9b7d824f836a78bae29a87968`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.ZetaRealHalfPlane
import Mathlib.Order.Interval.Finset.Nat

/-!
# Folder.Rebuild.AnalyticNumberTheory.ZetaPartialSums

Positive real zeta partial sums over initial intervals.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def zetaPartialReal
    (σ : Real)
    (N : Nat) : Real :=
  ∑ n ∈ Finset.Icc 1 N, posWeightReal σ n

theorem zetaPartialReal_nonneg
    (σ : Real)
    (N : Nat) :
    0 ≤ zetaPartialReal σ N := by
  unfold zetaPartialReal
  exact Finset.sum_nonneg (fun n _hn => posWeightReal_nonneg σ n)

theorem zetaPartialReal_mono
    (σ : Real) :
    Monotone (zetaPartialReal σ) := by
  intro M N hMN
  unfold zetaPartialReal
  exact
    Finset.sum_le_sum_of_subset_of_nonneg
      (by
        intro n hn
        exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hMN⟩)
      (fun n _hn _hnot => posWeightReal_nonneg σ n)

theorem zetaPartialReal_eq_range_sum
    (σ : Real)
    (N : Nat) :
    zetaPartialReal σ N =
      ∑ n ∈ Finset.range (N + 1), posWeightReal σ n := by
  unfold zetaPartialReal
  refine Finset.sum_subset ?hsub ?hzero
  · intro n hn
    exact Finset.mem_range.mpr (Nat.lt_succ_of_le (Finset.mem_Icc.mp hn).2)
  · intro n hnrange hnnot
    have hn0 : n = 0 := by
      have hnlt : n < N + 1 := Finset.mem_range.mp hnrange
      by_contra hne
      have hpos : 1 ≤ n := Nat.succ_le_of_lt (Nat.pos_of_ne_zero hne)
      apply hnnot
      exact Finset.mem_Icc.mpr ⟨hpos, Nat.le_of_lt_succ hnlt⟩
    simp [hn0, posWeightReal]

/--
Checked convergence of positive real zeta partial sums for `σ > 1`.

This is ordinary summability of the positive Dirichlet series and does not use
analytic continuation, Euler products, zero-free regions, PNT, or RH.
-/
theorem tendsto_zetaPartialReal
    {σ : Real}
    (hσ : 1 < σ) :
    Filter.Tendsto
      (fun N : Nat => zetaPartialReal σ N)
      Filter.atTop
      (nhds (zetaRealHalfPlane σ)) := by
  have hs : HasSum (fun n : Nat => posWeightReal σ n) (zetaRealHalfPlane σ) :=
    (summable_posWeightReal_of_one_lt hσ).hasSum
  have ht := hs.tendsto_sum_nat
  have heq :
      (fun N : Nat => zetaPartialReal σ N) =
        fun N : Nat => ∑ n ∈ Finset.range (N + 1), posWeightReal σ n := by
    funext N
    exact zetaPartialReal_eq_range_sum σ N
  rw [heq]
  exact ht.comp (Filter.tendsto_add_atTop_nat 1)

end AnalyticNumberTheory
end Rebuild
end Folder
```
