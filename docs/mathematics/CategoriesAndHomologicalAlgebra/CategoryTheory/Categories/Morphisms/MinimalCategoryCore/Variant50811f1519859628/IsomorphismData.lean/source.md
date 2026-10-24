# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.Morphisms.MinimalCategoryCore.Variant50811f1519859628.IsomorphismData

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `610d577434770892c7ac8a2e8497153164a33aad` · SHA-256 `e2a7221e751c82d7f06aedd7fbf6b2b677d99f433d1072c30725bcf9ace3080b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Explicit two-sided internal isomorphism data
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 50811f1519859628a2771ebecfef39738a8369d20c50eeb2121bfd46195cb9e3
Organized SHA-256: 56b12e0483717ca7d2f27e6234d5b0889f756b556b1ccc60aa0dd23933c39ce3
PMD: 510.9.010.010.020 morphisms (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.MinimalCategoryCore.Variant50811f1519859628.CategoryData
/-
A minimal category/functor layer implemented with Lean core only.

The project intentionally avoids a Mathlib dependency.  These structures are
sufficient to type the realization categories and to state comparison
equivalences as full, faithful, and essentially surjective functors.
-/

universe uObj uHom vObj vHom

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.MinimalCategoryCore.Variant50811f1519859628
/-- An isomorphism internal to a `CategoryLike`. -/
structure IsoLike
    (C : CategoryLike.{uObj, uHom})
    (X Y : C.Obj) where
  hom : C.Hom X Y
  inv : C.Hom Y X
  hom_inv : C.comp hom inv = C.id X
  inv_hom : C.comp inv hom = C.id Y

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.MinimalCategoryCore.Variant50811f1519859628
```
