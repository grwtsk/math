# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Sites.GeneratedCoverWrappers.Variant663b0436ce18af01.GeneratedMinimal

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10eec48cffb57b80e6c4ec26cdbc17ff842b3d3d` · SHA-256 `eb1dc3405fad398f42d3924382b59e5d8131a0093ff4619c181092f41614851a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Individually reviewed mathematical candidate: Conditional generated-cover minimality wrapper

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
Original source SHA256: 663b0436ce18af01d69903444245a84103377bf02f4c0f340ce16493c28f8a0b
Organized source SHA256: c8d9d03d38eefdcbaf41d0ad4631f62e23eec7149577c4f91e42059b7a1e3bf8
Review: attribution-254-review-000071.
PMD: 510.9.060.010.040 sites; editorial navigation only.
The supplied T/Base/hbase and GeneratedCover assumptions remain explicit. This file does not construct a site or topology. Legacy Folder.Site.GeneratedTopology remains unresolved for replay.
Original whole-source documentation may describe the complete unsplit context.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Folder.Site.GeneratedTopology

/-!
# Folder.Theorem.Site.GeneratedTopology

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.site.generated_topology
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Sites.GeneratedCoverWrappers.Variant663b0436ce18af01

open CategoryTheory

universe u v w

theorem generated_minimal
    {C : Type u} [Category.{v} C]
    (T : Folder.Site.Pretopology.{u, v, w} C)
    (Base : ∀ U : C, Folder.Site.Cover C U → Prop)
    (hbase : ∀ U S, Base U S → T.IsCover S) :
    ∀ U S, Folder.Site.GeneratedCover T Base U S → T.IsCover S :=
  Folder.Site.GeneratedCover.generated_minimal T Base hbase

end GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Sites.GeneratedCoverWrappers.Variant663b0436ce18af01
```
