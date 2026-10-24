# Complete source: GRWTSK.Algebra.UniversalAlgebra.ConcreteSheafification.Variantc531bf087fcd75be5d65f1ce5aa1612f72537d6c6e062147dc47bbae4b8ca6ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4bb406a45c1d37d651c6b6b7ed003538d9f46973` · SHA-256 `c531bf087fcd75be5d65f1ce5aa1612f72537d6c6e062147dc47bbae4b8ca6ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Category.ModuleCat.Colimits
import Mathlib.Algebra.Category.ModuleCat.Limits
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
import Mathlib.CategoryTheory.Sites.Equivalence

universe u

open CategoryTheory

attribute [local instance] Types.instFunLike Types.instConcreteCategory

section Small

variable {C : Type u} [SmallCategory C] (J : GrothendieckTopology C)

example : HasSheafify J (Type u) := inferInstance

example (R : Type u) [Ring R] : HasSheafify J (ModuleCat.{u} R) := inferInstance

end Small

section Large

variable {C : Type (u + 1)} [LargeCategory C] (J : GrothendieckTopology C)

example : HasSheafify J (Type (u+1)) := inferInstance

example (R : Type (u + 1)) [Ring R] : HasSheafify J (ModuleCat.{u+1} R) := inferInstance

variable [EssentiallySmall.{u} C]

example : HasSheafify J (Type u) := inferInstance

example (R : Type u) [Ring R] : HasSheafify J (ModuleCat.{u} R) := inferInstance

end Large
```
