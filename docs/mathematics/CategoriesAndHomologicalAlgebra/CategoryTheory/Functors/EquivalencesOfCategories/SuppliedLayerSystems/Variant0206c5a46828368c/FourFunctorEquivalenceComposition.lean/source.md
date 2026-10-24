# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.EquivalencesOfCategories.SuppliedLayerSystems.Variant0206c5a46828368c.FourFunctorEquivalenceComposition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dabe848f840c949e769513b8ba99561553d4a363` · SHA-256 `7028641819254501be91b260a64c625a6c1b9eeaf465791422fc83a37b29c7c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Composition of four functors already supplied with IsEquivalence instances
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf
Organized SHA-256: 9baa6229c4f773c2ae871a4cb2489081d193567c41bec73678a5e1aed2c73d53
PMD: 510.9.010.020.060 equivalences of categories (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Mathlib.CategoryTheory.Equivalence
import Think.Logic.Mathlib.GeometricMorphism

open CategoryTheory
open CategoryTheory.Limits

universe u v

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.EquivalencesOfCategories.SuppliedLayerSystems.Variant0206c5a46828368c

/-!
Mathlib-native categorical boundary for the five Think layers.

The lightweight modules remain receipt and runtime schemas.  This file states the
final target in Mathlib's own category-theory vocabulary: functors,
adjunctions, finite-limit-preserving inverse images, monads, and
`CategoryTheory.Functor.IsEquivalence`.
-/

/--
Core composite theorem: adjacent categorical equivalences compose to a global
Logic-to-Wisdom categorical equivalence.
-/
theorem logic_to_wisdom_equivalence
    {Log Inf Epi Site Wis : Type u}
    [CategoryTheory.Category.{v} Log]
    [CategoryTheory.Category.{v} Inf]
    [CategoryTheory.Category.{v} Epi]
    [CategoryTheory.Category.{v} Site]
    [CategoryTheory.Category.{v} Wis]
    {J : CategoryTheory.GrothendieckTopology Site}
    (F1 : Log ⥤ Inf)
    (F2 : Inf ⥤ Epi)
    (F3 : Epi ⥤ CategoryTheory.Sheaf J (Type u))
    (F4 : CategoryTheory.Sheaf J (Type u) ⥤ Wis)
    [CategoryTheory.Functor.IsEquivalence F1]
    [CategoryTheory.Functor.IsEquivalence F2]
    [CategoryTheory.Functor.IsEquivalence F3]
    [CategoryTheory.Functor.IsEquivalence F4] :
    CategoryTheory.Functor.IsEquivalence (F1 ⋙ F2 ⋙ F3 ⋙ F4) :=
by
  infer_instance

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.EquivalencesOfCategories.SuppliedLayerSystems.Variant0206c5a46828368c
```
