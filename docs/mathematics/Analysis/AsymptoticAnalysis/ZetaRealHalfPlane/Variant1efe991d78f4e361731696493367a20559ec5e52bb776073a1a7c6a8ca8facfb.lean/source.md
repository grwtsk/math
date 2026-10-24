# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ZetaRealHalfPlane.Variant1efe991d78f4e361731696493367a20559ec5e52bb776073a1a7c6a8ca8facfb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7587570c10516ed980a9fc20a8e1438c65b39aaa` · SHA-256 `1efe991d78f4e361731696493367a20559ec5e52bb776073a1a7c6a8ca8facfb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.DirichletSeries

/-!
# Folder.Rebuild.AnalyticNumberTheory.ZetaRealHalfPlane

Real half-plane zeta series positivity for `σ > 1`.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def zetaRealHalfPlane
    (σ : Real) : Real :=
  ∑' n : Nat, posWeightReal σ n

theorem zetaRealHalfPlane_summable
    {σ : Real}
    (hσ : 1 < σ) :
    Summable fun n : Nat => posWeightReal σ n :=
  summable_posWeightReal_of_one_lt hσ

theorem zetaRealHalfPlane_ge_one
    {σ : Real}
    (hσ : 1 < σ) :
    1 ≤ zetaRealHalfPlane σ := by
  have hs := zetaRealHalfPlane_summable hσ
  have hle :=
    hs.sum_le_tsum ({1} : Finset Nat)
      (fun n _hn => posWeightReal_nonneg σ n)
  simpa [zetaRealHalfPlane, posWeightReal] using hle

/--
Checked real-half-plane nonvanishing of the positive zeta Dirichlet series.

This proves only the elementary real statement `zetaRealHalfPlane σ > 0` for
real `σ > 1` under the local Dirichlet-series definition. It is not the complex
zero-free half-plane theorem, not analytic continuation, and not PNT.
-/
theorem zetaRealHalfPlane_pos
    {σ : Real}
    (hσ : 1 < σ) :
    0 < zetaRealHalfPlane σ :=
  lt_of_lt_of_le zero_lt_one (zetaRealHalfPlane_ge_one hσ)

theorem zetaRealHalfPlane_ne_zero
    {σ : Real}
    (hσ : 1 < σ) :
    zetaRealHalfPlane σ ≠ 0 :=
  ne_of_gt (zetaRealHalfPlane_pos hσ)

end AnalyticNumberTheory
end Rebuild
end Folder
```
