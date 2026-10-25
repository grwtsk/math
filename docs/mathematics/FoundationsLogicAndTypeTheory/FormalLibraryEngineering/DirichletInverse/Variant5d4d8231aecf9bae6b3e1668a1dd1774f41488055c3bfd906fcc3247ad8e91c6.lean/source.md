# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DirichletInverse.Variant5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2291b7a497131ecdfec011ab90b75e349431dd29` · SHA-256 `5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.DirichletCauchyProductGeneric

/-!
# Folder.Rebuild.AnalyticNumberTheory.DirichletInverse

Dirichlet inverse API for absolutely convergent complex Dirichlet series.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open Folder.Rebuild.NumberTheory

def HasDirichletInverse
    (f g : ArithFn Complex) : Prop :=
  dirichletConv f g = epsilonComplex

theorem one_has_mobius_inverse :
    HasDirichletInverse oneArithFnComplex mobiusComplex :=
  one_conv_mobius_eq_epsilon_complex

theorem dirichletSeries_mul_inverse_eq_one
    (f g : ArithFn Complex)
    {s : Complex}
    (hf : ComplexDirichletAbsSummable f s)
    (hg : ComplexDirichletAbsSummable g s)
    (hinv : HasDirichletInverse f g) :
    complexDirichletSeries f s * complexDirichletSeries g s = 1 := by
  rw [complexDirichletSeries_mul_of_absSummable f g s hf hg]
  rw [hinv]
  exact complexDirichletSeries_epsilon s

theorem dirichletSeries_ne_zero_of_has_absSummable_inverse
    (f g : ArithFn Complex)
    {s : Complex}
    (hf : ComplexDirichletAbsSummable f s)
    (hg : ComplexDirichletAbsSummable g s)
    (hinv : HasDirichletInverse f g) :
    complexDirichletSeries f s ≠ 0 := by
  intro hzero
  have hmul :=
    dirichletSeries_mul_inverse_eq_one f g hf hg hinv
  rw [hzero, zero_mul] at hmul
  norm_num at hmul

end AnalyticNumberTheory
end Rebuild
end Folder
```
