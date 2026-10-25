# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZetaNonvanishingHalfPlane.Variant66d3a27c49792dc5d593a6f2976d1ffa4ea3f4c55cbc9da64a9048ad502aa69a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c198ba373b2862a47cce03c33dc31fe7c12be2d6` · SHA-256 `66d3a27c49792dc5d593a6f2976d1ffa4ea3f4c55cbc9da64a9048ad502aa69a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.DirichletInverse

/-!
# Folder.Rebuild.AnalyticNumberTheory.ZetaNonvanishingHalfPlane

Nonvanishing of the ordinary complex zeta Dirichlet series in the half-plane
of absolute convergence.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

theorem zetaComplexHalfPlane_mul_mobiusDirichletSeries
    {s : Complex}
    (hs : 1 < s.re) :
    zetaComplexHalfPlane s * mobiusDirichletSeries s = 1 := by
  rw [zetaComplexHalfPlane_eq_complexDirichletSeries_one]
  exact dirichletSeries_mul_inverse_eq_one
    oneArithFnComplex
    mobiusComplex
    (complexDirichletSeries_absSummable_of_bounded_coeff
      oneArithFnComplex
      (s := s)
      (C := 1)
      hs
      zero_le_one
      (by intro n; simp [oneArithFnComplex]))
    (mobiusDirichlet_absSummable hs)
    one_has_mobius_inverse

theorem zeta_mul_mobiusDirichletSeries
    {s : Complex}
    (hs : 1 < s.re) :
    zetaComplexHalfPlane s * mobiusDirichletSeries s = 1 :=
  zetaComplexHalfPlane_mul_mobiusDirichletSeries hs

/--
Checked nonvanishing of the ordinary zeta Dirichlet series in the half-plane
`Re(s) > 1`.

This is the classical elementary half-plane nonvanishing theorem obtained from
the absolutely convergent Möbius inverse. It is not analytic continuation, not
the zero-free line `Re(s)=1`, not PNT, not RH, and not generalized RH.
-/
theorem zetaComplexHalfPlane_ne_zero
    {s : Complex}
    (hs : 1 < s.re) :
    zetaComplexHalfPlane s ≠ 0 := by
  rw [zetaComplexHalfPlane_eq_complexDirichletSeries_one]
  exact dirichletSeries_ne_zero_of_has_absSummable_inverse
    oneArithFnComplex
    mobiusComplex
    (complexDirichletSeries_absSummable_of_bounded_coeff
      oneArithFnComplex
      (s := s)
      (C := 1)
      hs
      zero_le_one
      (by intro n; simp [oneArithFnComplex]))
    (mobiusDirichlet_absSummable hs)
    one_has_mobius_inverse

end AnalyticNumberTheory
end Rebuild
end Folder
```
