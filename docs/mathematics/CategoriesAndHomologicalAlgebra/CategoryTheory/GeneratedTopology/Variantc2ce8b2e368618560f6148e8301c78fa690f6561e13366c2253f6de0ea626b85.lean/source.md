# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GeneratedTopology.Variantc2ce8b2e368618560f6148e8301c78fa690f6561e13366c2253f6de0ea626b85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ae41038726e7de609fa6bea60a15338a4938f99` · SHA-256 `c2ce8b2e368618560f6148e8301c78fa690f6561e13366c2253f6de0ea626b85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Site.Pretopology

/-!
# Folder.Site.GeneratedTopology

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: site.generated_topology
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Site

open CategoryTheory

universe u v w

inductive GeneratedCover
    {C : Type u} [Category.{v} C]
    (T : Pretopology.{u, v, w} C)
    (Base : ∀ U : C, Cover C U → Prop) :
    ∀ U : C, Cover C U → Prop
  | base {U : C} {S : Cover C U} :
      Base U S → GeneratedCover T Base U S
  | identity (U : C) :
      GeneratedCover T Base U (Cover.identityCover U)
  | pullback {U V : C}
      (S : Cover C U)
      (f : V ⟶ U)
      (p : T.PullbackData S f) :
      GeneratedCover T Base U S →
      GeneratedCover T Base V (T.pullbackCover S f p)
  | transitive {U : C}
      (S : Cover C U)
      (R : (i : S.Index) → Cover C (S.localObject i)) :
      GeneratedCover T Base U S →
      (∀ i : S.Index, GeneratedCover T Base (S.localObject i) (R i)) →
      GeneratedCover T Base U (T.transitiveComposite S R)

namespace GeneratedCover

variable {C : Type u}
variable [Category.{v} C]
variable (T : Pretopology.{u, v, w} C)
variable (Base : ∀ U : C, Cover C U → Prop)

theorem generated_contains_base
    {U : C} {S : Cover C U}
    (h : Base U S) :
    GeneratedCover T Base U S :=
  GeneratedCover.base h

theorem generated_identity
    (U : C) :
    GeneratedCover T Base U (Cover.identityCover U) :=
  GeneratedCover.identity U

theorem generated_pullbackStable
    {U V : C}
    (S : Cover C U)
    (f : V ⟶ U)
    (p : T.PullbackData S f)
    (hS : GeneratedCover T Base U S) :
    GeneratedCover T Base V (T.pullbackCover S f p) :=
  GeneratedCover.pullback S f p hS

theorem generated_transitive
    {U : C}
    (S : Cover C U)
    (R : (i : S.Index) → Cover C (S.localObject i))
    (hS : GeneratedCover T Base U S)
    (hR : ∀ i : S.Index, GeneratedCover T Base (S.localObject i) (R i)) :
    GeneratedCover T Base U (T.transitiveComposite S R) :=
  GeneratedCover.transitive S R hS hR

theorem generated_minimal
    (hbase : ∀ U S, Base U S → T.IsCover S) :
    ∀ U S, GeneratedCover T Base U S → T.IsCover S := by
  intro U S h
  induction h with
  | base hB =>
      exact hbase _ _ hB
  | identity U =>
      exact T.identityCovering U
  | pullback S f p hS ih =>
      exact T.pullbackStable S f p ih
  | transitive S R hS hR ihS ihR =>
      exact T.transitiveCovering S R ihS ihR

end GeneratedCover
end Site
end Folder
```
