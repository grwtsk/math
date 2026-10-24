# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Sites.GeneratedCoverClosure.Variantc2ce8b2e36861856.ClosureData

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20313c02b184960ee3e843b6b213a77173be5e6f` · SHA-256 `93ca735f0277832b2d9a35f88dce14387b2ef8728d368aceeeca29f7f1764e8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Individually reviewed mathematical candidate: Relative inductive generated-cover closure

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
Original source SHA256: c2ce8b2e368618560f6148e8301c78fa690f6561e13366c2253f6de0ea626b85
Organized source SHA256: 6419dd0a610165c366df0a2721ada573fd499cece4b620ac652733a7139ac9fa
Review: attribution-254-review-000082.
PMD: 510.9.060.010.040 sites; editorial navigation only.
This is a generated relation for supplied T and Base, with an explicit pullback witness and all transitive-member premises. It does not itself assert Base is covering or construct a topology. Legacy Folder.Site.Pretopology remains unresolved for replay.
Original whole-source documentation may describe the complete unsplit context.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

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


namespace GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Sites.GeneratedCoverClosure.Variantc2ce8b2e36861856

open CategoryTheory

universe u v w

open Folder.Site

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

end GeneratedCover

end GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Sites.GeneratedCoverClosure.Variantc2ce8b2e36861856
```
