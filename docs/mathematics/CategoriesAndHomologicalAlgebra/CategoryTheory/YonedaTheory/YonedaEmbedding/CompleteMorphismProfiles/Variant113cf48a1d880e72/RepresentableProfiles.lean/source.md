# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaTheory.YonedaEmbedding.CompleteMorphismProfiles.Variant113cf48a1d880e72.RepresentableProfiles

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12cbc4c8eb5e4f4c798a4ca8069946d9ce5d60d6` · SHA-256 `bb85e0ead4ae51238d805b34dbcffcfca53cc9a82ef663a4b8da6ed0c9f867a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Complete representable presheaf profiles and forward isomorphism mapping
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8
Organized SHA-256: a33ef88d19a2ecbdbb9080ec3b2702ee61c91e572d2d04a56510725284c19603
PMD: 510.9.010.070.030 yoneda embedding (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Mathlib.CategoryTheory.Yoneda

/-!
# Complete morphism profiles and Yoneda reconstruction

The profile of an object is its full representable presheaf, not a finite
incidence sketch.  Full faithfulness of Yoneda then reconstructs every object
isomorphism from an isomorphism of complete profiles.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaTheory.YonedaEmbedding.CompleteMorphismProfiles.Variant113cf48a1d880e72

open CategoryTheory

universe v u

variable {C : Type u} [Category.{v} C]

/-- The complete incoming-morphism profile of an object. -/
abbrev CompleteMorphismProfile (object : C) :=
  CategoryTheory.yoneda.obj object

/-- Every object isomorphism induces an isomorphism of complete profiles. -/
def profileIsoOfObjectIso {left right : C} (iso : left ≅ right) :
    CompleteMorphismProfile left ≅ CompleteMorphismProfile right :=
  CategoryTheory.yoneda.mapIso iso

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaTheory.YonedaEmbedding.CompleteMorphismProfiles.Variant113cf48a1d880e72
```
