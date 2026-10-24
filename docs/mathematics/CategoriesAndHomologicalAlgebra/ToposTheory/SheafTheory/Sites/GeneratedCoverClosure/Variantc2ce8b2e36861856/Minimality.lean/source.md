# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Sites.GeneratedCoverClosure.Variantc2ce8b2e36861856.Minimality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dc2da972f3befb6154ecf6fb48c3e7fec753a62` · SHA-256 `407c19e230e6e2ee1f23724d0a55f24b837d0164cfb07d8486a911a1adeabb07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Individually reviewed mathematical candidate: Conditional minimality of generated-cover closure

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
The conclusion requires T, Base and hbase; all induction cases use the supplied pretopology laws. No original provider namespace is rebound. Legacy Folder.Site.Pretopology remains unresolved for replay.
Original whole-source documentation may describe the complete unsplit context.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Folder.Site.Pretopology
import GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Sites.GeneratedCoverClosure.Variantc2ce8b2e36861856.ClosureData

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

namespace GeneratedCover

variable {C : Type u}
variable [Category.{v} C]
variable (T : Pretopology.{u, v, w} C)
variable (Base : ∀ U : C, Cover C U → Prop)

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
end GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Sites.GeneratedCoverClosure.Variantc2ce8b2e36861856
```
