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
