# Complete source: GRWTSK.Topology.GeneralTopology.RealEulerProductConvergence.Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d74038d9d3619175853a6536b0dc2f3ddd434bef` · SHA-256 `dd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.PrimeExhaustion
import Folder.Rebuild.AnalyticNumberTheory.ZetaPartialSums
import Folder.Rebuild.AnalyticNumberTheory.EulerProductApproximation
import Folder.Rebuild.AnalyticNumberTheory.SmoothNumberReindexing

/-!
# Folder.Rebuild.AnalyticNumberTheory.RealEulerProductConvergence

Checked real Euler-product convergence for the positive zeta series on
`σ > 1`.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def zetaEulerApproxReal
    (σ : Real)
    (N : Nat) : Real :=
  finiteZetaEulerProductReal (primesUpTo N) σ N

theorem zetaEulerApproxReal_expands_boundedSmoothNumbers
    (σ : Real)
    (N : Nat) :
    zetaEulerApproxReal σ N =
      ∑ n ∈ boundedSmoothNumbers (primesUpTo N) N,
        posWeightReal σ n := by
  unfold zetaEulerApproxReal
  exact
    finiteZetaEulerProductReal_expands_boundedSmoothNumbers
      (primesUpTo N) N σ
      (by intro p hp; exact primesUpTo_prime hp)

theorem zetaPartialReal_le_zetaEulerApproxReal
    (σ : Real)
    (N : Nat) :
    zetaPartialReal σ N ≤ zetaEulerApproxReal σ N := by
  rw [zetaEulerApproxReal_expands_boundedSmoothNumbers]
  unfold zetaPartialReal
  exact
    Finset.sum_le_sum_of_subset_of_nonneg
      (Icc_subset_boundedSmoothNumbers_primesUpTo N)
      (fun n _hn _hnot => posWeightReal_nonneg σ n)

theorem sum_le_tsum_of_nonneg_summable
    {f : Nat → Real}
    (hf_nonneg : ∀ n, 0 ≤ f n)
    (hf_sum : Summable f)
    (S : Finset Nat) :
    (∑ n ∈ S, f n) ≤ ∑' n, f n :=
  hf_sum.sum_le_tsum S (fun n _hn => hf_nonneg n)

theorem zetaEulerApproxReal_le_zetaRealHalfPlane
    {σ : Real}
    (hσ : 1 < σ)
    (N : Nat) :
    zetaEulerApproxReal σ N ≤ zetaRealHalfPlane σ := by
  rw [zetaEulerApproxReal_expands_boundedSmoothNumbers]
  exact
    sum_le_tsum_of_nonneg_summable
      (fun n => posWeightReal_nonneg σ n)
      (summable_posWeightReal_of_one_lt hσ)
      (boundedSmoothNumbers (primesUpTo N) N)

theorem zetaEulerApproxReal_pos
    (σ : Real)
    (N : Nat) :
    0 < zetaEulerApproxReal σ N := by
  unfold zetaEulerApproxReal
  exact
    finiteZetaEulerProductReal_pos
      (by intro p hp; exact primesUpTo_pos hp)

theorem zetaEulerApproxReal_ge_one
    (σ : Real)
    (N : Nat) :
    1 ≤ zetaEulerApproxReal σ N := by
  unfold zetaEulerApproxReal
  exact
    finiteZetaEulerProductReal_ge_one
      (by intro p hp; exact primesUpTo_pos hp)

/--
Checked real Euler-product convergence for zeta on `σ > 1`.

The approximants are finite products over primes `p ≤ N`, with local exponent
cutoff `N`. They converge to the positive real Dirichlet series
`zetaRealHalfPlane σ`.

This is not analytic continuation, not a complex Euler-product theorem, not a
zero-free region, not PNT, and not RH.
-/
theorem tendsto_zetaEulerApproxReal
    {σ : Real}
    (hσ : 1 < σ) :
    Filter.Tendsto
      (fun N : Nat => zetaEulerApproxReal σ N)
      Filter.atTop
      (nhds (zetaRealHalfPlane σ)) := by
  exact
    tendsto_of_tendsto_of_tendsto_of_le_of_le
      (tendsto_zetaPartialReal hσ)
      tendsto_const_nhds
      (fun N => zetaPartialReal_le_zetaEulerApproxReal σ N)
      (fun N => zetaEulerApproxReal_le_zetaRealHalfPlane hσ N)

end AnalyticNumberTheory
end Rebuild
end Folder
```
