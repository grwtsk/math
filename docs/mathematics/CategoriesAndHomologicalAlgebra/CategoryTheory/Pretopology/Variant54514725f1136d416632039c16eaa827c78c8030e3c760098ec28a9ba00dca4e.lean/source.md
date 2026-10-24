# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pretopology.Variant54514725f1136d416632039c16eaa827c78c8030e3c760098ec28a9ba00dca4e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d402c0ad043b19eb259b5223220226ed972a3bb6` · SHA-256 `54514725f1136d416632039c16eaa827c78c8030e3c760098ec28a9ba00dca4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Site.Cover

/-!
# Folder.Site.Pretopology

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: site.pretopology
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Site

open CategoryTheory

universe u v w

structure Pretopology
    (C : Type u)
    [Category.{v} C] where
  IsCover : {U : C} → Cover C U → Prop
  PullbackData :
    {U V : C} →
      Cover C U →
      (V ⟶ U) →
      Type w
  pullbackCover :
    {U V : C} →
      (S : Cover C U) →
      (f : V ⟶ U) →
      PullbackData S f →
      Cover C V
  transitiveComposite :
    {U : C} →
      (S : Cover C U) →
      ((i : S.Index) → Cover C (S.localObject i)) →
      Cover C U
  identityCovering :
    ∀ U : C, IsCover (Cover.identityCover U)
  pullbackStable :
    ∀ {U V : C}
      (S : Cover C U)
      (f : V ⟶ U)
      (p : PullbackData S f),
      IsCover S →
      IsCover (pullbackCover S f p)
  transitiveCovering :
    ∀ {U : C}
      (S : Cover C U)
      (T : (i : S.Index) → Cover C (S.localObject i)),
      IsCover S →
      (∀ i : S.Index, IsCover (T i)) →
      IsCover (transitiveComposite S T)

namespace Pretopology

variable {C : Type u}
variable [Category.{v} C]

theorem identity_covering
    (T : Pretopology.{u, v, w} C)
    (U : C) :
    T.IsCover (Cover.identityCover U) :=
  T.identityCovering U

theorem pullback_stable
    (T : Pretopology.{u, v, w} C)
    {U V : C}
    (S : Cover C U)
    (f : V ⟶ U)
    (p : T.PullbackData S f)
    (hS : T.IsCover S) :
    T.IsCover (T.pullbackCover S f p) :=
  T.pullbackStable S f p hS

theorem transitive_covering
    (T : Pretopology.{u, v, w} C)
    {U : C}
    (S : Cover C U)
    (R : (i : S.Index) → Cover C (S.localObject i))
    (hS : T.IsCover S)
    (hR : ∀ i : S.Index, T.IsCover (R i)) :
    T.IsCover (T.transitiveComposite S R) :=
  T.transitiveCovering S R hS hR

end Pretopology
end Site
end Folder
```
