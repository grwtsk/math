# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ComplexZetaHalfPlane.Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85b22dd378dece3fd89f70e8ebb5c58a7a065d97` · SHA-256 `461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.ComplexDirichletSeries
import Mathlib.Order.Interval.Finset.Nat

/-!
# Folder.Rebuild.AnalyticNumberTheory.ComplexZetaHalfPlane

The ordinary complex zeta Dirichlet series in the half-plane `Re(s) > 1`.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def zetaComplexHalfPlane
    (s : Complex) : Complex :=
  ∑' n : Nat, complexWeight s n

theorem zetaComplexHalfPlane_summable
    {s : Complex}
    (hs : 1 < s.re) :
    Summable fun n : Nat => complexWeight s n :=
  complexZeta_terms_summable hs

noncomputable def zetaPartialComplex
    (s : Complex)
    (N : Nat) : Complex :=
  ∑ n ∈ Finset.Icc 1 N, complexWeight s n

theorem zetaPartialComplex_eq_range_sum
    (s : Complex)
    (N : Nat) :
    zetaPartialComplex s N =
      ∑ n ∈ Finset.range (N + 1), complexWeight s n := by
  unfold zetaPartialComplex
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
    simp [hn0, complexWeight_zero]

theorem tendsto_zetaPartialComplex
    {s : Complex}
    (hs : 1 < s.re) :
    Filter.Tendsto
      (fun N : Nat => zetaPartialComplex s N)
      Filter.atTop
      (nhds (zetaComplexHalfPlane s)) := by
  have hsum : HasSum (fun n : Nat => complexWeight s n) (zetaComplexHalfPlane s) :=
    (zetaComplexHalfPlane_summable hs).hasSum
  have ht := hsum.tendsto_sum_nat
  have heq :
      (fun N : Nat => zetaPartialComplex s N) =
        fun N : Nat => ∑ n ∈ Finset.range (N + 1), complexWeight s n := by
    funext N
    exact zetaPartialComplex_eq_range_sum s N
  rw [heq]
  exact ht.comp (Filter.tendsto_add_atTop_nat 1)

def zetaComplexHalfPlane_nonzero_target : Prop :=
  ∀ s : Complex, 1 < s.re → zetaComplexHalfPlane s ≠ 0

end AnalyticNumberTheory
end Rebuild
end Folder
```
