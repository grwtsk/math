# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Sites.AbstractCoverClosure.Variant54514725f1136d41.PretopologyInterface

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `048b60cc1f1b3cd0f4aec97977aa0e23d099f082` · SHA-256 `a923b79085cbdcd56043011c4e9e1c4b143ee6b409e1d411bd4ca701a37ff798`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Individually reviewed mathematical candidate: Abstract finite-cover operations and supplied closure laws

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing source notices
remain exact in the archives and copied source documentation.
Original source SHA256: 54514725f1136d416632039c16eaa827c78c8030e3c760098ec28a9ba00dca4e
Organized source SHA256: 710d39b5e4ac0fb304bb2d7114d96c310955cf7c3268dd8fb683592eed4bee0e
Review: attribution-254-review-000083.
PMD: 510.9.060.010.040 sites; editorial navigation only.
The name Pretopology denotes this exact abstract interface. PullbackData existence and cartesian universal properties are not supplied. No concrete site or Grothendieck topology is constructed. Legacy Folder.Site.Cover remains unresolved for replay.
Original whole-source documentation may describe the complete unsplit context.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

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


namespace GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Sites.AbstractCoverClosure.Variant54514725f1136d41

open CategoryTheory

universe u v w

open Folder.Site

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
end GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Sites.AbstractCoverClosure.Variant54514725f1136d41
```
