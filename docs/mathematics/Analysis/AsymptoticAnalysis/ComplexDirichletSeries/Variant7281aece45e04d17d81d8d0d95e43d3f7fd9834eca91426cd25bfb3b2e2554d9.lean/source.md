# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ComplexDirichletSeries.Variant7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7540aab9d95b6222ad12d00e0893f765c752019` · SHA-256 `7281aece45e04d17d81d8d0d95e43d3f7fd9834eca91426cd25bfb3b2e2554d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.ComplexWeights
import Mathlib.Topology.Algebra.InfiniteSum.Ring

/-!
# Folder.Rebuild.AnalyticNumberTheory.ComplexDirichletSeries

Complex Dirichlet series in the absolutely convergent half-plane.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open Folder.Rebuild.NumberTheory
open scoped BigOperators

noncomputable def complexDirichletTerm
    (a : ArithFn Complex)
    (s : Complex)
    (n : Nat) : Complex :=
  a n * complexWeight s n

def ComplexDirichletAbsSummable
    (a : ArithFn Complex)
    (s : Complex) : Prop :=
  Summable fun n : Nat => ‖complexDirichletTerm a s n‖

noncomputable def complexDirichletSeries
    (a : ArithFn Complex)
    (s : Complex) : Complex :=
  ∑' n : Nat, complexDirichletTerm a s n

theorem complexDirichletSeries_absSummable_of_bounded_coeff
    (a : ArithFn Complex)
    {s : Complex}
    {C : Real}
    (hs : 1 < s.re)
    (hC : 0 ≤ C)
    (hbound : ∀ n : Nat, ‖a n‖ ≤ C) :
    ComplexDirichletAbsSummable a s := by
  have hmajor :
      Summable fun n : Nat => C * posWeightReal s.re n :=
    (summable_posWeightReal_of_one_lt hs).mul_left C
  refine Summable.of_nonneg_of_le (fun n => norm_nonneg _) ?_ hmajor
  intro n
  calc
    ‖complexDirichletTerm a s n‖
        = ‖a n‖ * ‖complexWeight s n‖ := by
            simp [complexDirichletTerm]
    _ ≤ C * posWeightReal s.re n :=
            mul_le_mul (hbound n) (norm_complexWeight_le_posWeightReal_re s n)
              (norm_nonneg _) hC

def oneArithFnComplex : ArithFn Complex :=
  fun _ => 1

theorem complexZeta_terms_summable
    {s : Complex}
    (hs : 1 < s.re) :
    Summable fun n : Nat => complexWeight s n := by
  have habs :
      ComplexDirichletAbsSummable oneArithFnComplex s :=
    complexDirichletSeries_absSummable_of_bounded_coeff
      oneArithFnComplex (s := s) (C := 1) hs zero_le_one
      (by intro n; simp [oneArithFnComplex])
  have hnorm :
      Summable fun n : Nat => ‖complexWeight s n‖ := by
    simpa [ComplexDirichletAbsSummable, complexDirichletTerm, oneArithFnComplex]
      using habs
  exact Summable.of_norm hnorm

theorem complexDirichletSeries_add
    (a b : ArithFn Complex)
    (s : Complex)
    (ha : ComplexDirichletAbsSummable a s)
    (hb : ComplexDirichletAbsSummable b s) :
    complexDirichletSeries (fun n => a n + b n) s =
      complexDirichletSeries a s + complexDirichletSeries b s := by
  have ha' : Summable fun n => complexDirichletTerm a s n :=
    Summable.of_norm ha
  have hb' : Summable fun n => complexDirichletTerm b s n :=
    Summable.of_norm hb
  have hterm :
      (fun n => complexDirichletTerm (fun n => a n + b n) s n) =
        fun n => complexDirichletTerm a s n + complexDirichletTerm b s n := by
    funext n
    simp [complexDirichletTerm, add_mul]
  calc
    complexDirichletSeries (fun n => a n + b n) s
        = ∑' n : Nat,
            (complexDirichletTerm a s n + complexDirichletTerm b s n) := by
            simp [complexDirichletSeries, hterm]
    _ = complexDirichletSeries a s + complexDirichletSeries b s := by
            simpa [complexDirichletSeries] using ha'.tsum_add hb'

end AnalyticNumberTheory
end Rebuild
end Folder
```
