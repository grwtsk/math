# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comparison.Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bcdd6d0cf552246924e49ac46aff66898f7af7f` · SHA-256 `e1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Prismatic.FilteredFrobenius
import DAF.Prismatic.Totalization

/-!
# Certified preservation through totalization

Frobenius and Nygaard compatibility do not follow from an arbitrary
totalization functor.  `FilteredFrobeniusTotalization` is the explicit
capability that promotes the cellwise equations to the totalized comparison.
This keeps arithmetic structure independent from runtime counters and fabric
metadata.
-/

namespace DAF.Prismatic

open CategoryTheory

/--
Properties of a totalized comparison supplied by a selected arithmetic
implementation.  They are abstract because the generic target need not carry
canonical Frobenius or filtration objects.
-/
structure FilteredFrobeniusTotalization
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (T : TotalizationTheory P.Target) where
  FrobeniusCompatible :
    ∀ {A B : SourceRealization F P},
      FilteredFrobeniusComparison A B →
        (fabricPrismaticValue P T B.algebra ⟶
          fabricPrismaticValue P T A.algebra) → Prop

  NygaardCompatible :
    ∀ {A B : SourceRealization F P},
      Int →
        (fabricPrismaticValue P T B.algebra ⟶
          fabricPrismaticValue P T A.algebra) → Prop

  frobenius_compatible :
    ∀ {A B : SourceRealization F P}
      (C : FilteredFrobeniusComparison A B),
      FrobeniusCompatible C
        (prismaticReactionMap P T C.algebraMap)

  nygaard_compatible :
    ∀ {A B : SourceRealization F P}
      (C : FilteredFrobeniusComparison A B),
      NygaardCompatible C.filtrationShift
        (prismaticReactionMap P T C.algebraMap)

theorem totalized_frobenius_compatible
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    {T : TotalizationTheory P.Target}
    (Q : FilteredFrobeniusTotalization (F := F) T)
    {A B : SourceRealization F P}
    (C : FilteredFrobeniusComparison A B) :
    Q.FrobeniusCompatible C
      (prismaticReactionMap P T C.algebraMap) :=
  Q.frobenius_compatible C

theorem totalized_nygaard_compatible
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    {T : TotalizationTheory P.Target}
    (Q : FilteredFrobeniusTotalization (F := F) T)
    {A B : SourceRealization F P}
    (C : FilteredFrobeniusComparison A B) :
    Q.NygaardCompatible C.filtrationShift
      (prismaticReactionMap P T C.algebraMap) :=
  Q.nygaard_compatible C

end DAF.Prismatic
```
