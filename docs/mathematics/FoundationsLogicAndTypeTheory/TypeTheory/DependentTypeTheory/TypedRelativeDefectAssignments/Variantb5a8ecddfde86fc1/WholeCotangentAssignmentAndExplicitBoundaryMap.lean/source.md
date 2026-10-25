# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.TypedRelativeDefectAssignments.Variantb5a8ecddfde86fc1.WholeCotangentAssignmentAndExplicitBoundaryMap

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a073e8c53ab1b67e77bf766e7939e5b107717d1` · SHA-256 `491bb4a000e5e2ef908fad27d104c0935cb923b9adf568611ac551456cfdb03e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeCotangentAssignmentAndExplicitBoundaryMap — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: b5a8ecddfde86fc1318639bb631a67ecd22af5407036818d7af1b1b35beb5260
Organized SHA-256: 3f9c0e314668d7c51059ba4258687fc5b4f1b7b7a0fc6ed2894bde5f4207f330
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Five complete typed mathematical interfaces retain every category instance, chosen Trivial predicate, dependent morphism assignment, comparison map, cyclotomic object assignment and arithmetic interpretation/algebraMap field. Generic defect, cotangent, relative-THH, cyclotomic refinement and local-patch arithmetic interpretations are distinct seams with exact same-source companions only. These supplied interfaces construct no cotangent complex, THH/cofiber/fiber, TC functor/naturality law, tensor-valued bilinear invariant or automatic defect for a generic patch. -/

import DAF.Fabric.Patch
import Mathlib.CategoryTheory.Functor.Basic

/-!
# Abstract cotangent and cyclotomic defect interfaces

These structures are capability interfaces, not implementations of cotangent
complexes, THH, `TC⁻`, TP, or TC.  In particular, `relativeTHH` is not
asserted to be a cofiber unless a concrete theory adds that theorem.  The
informal phrase "THH strain tensor" has no declaration here: no tensor-valued
bilinear invariant has been constructed.

An arithmetic boundary adapter must carry an actual algebra morphism.  A
generic fabric patch does not automatically have a cotangent, THH, or
cyclotomic defect.
-/

namespace DAF.Cyclotomic

open CategoryTheory

universe uSource vSource uDefect uSpectrum vSpectrum

/-- An abstract relative cotangent-object assignment. -/
structure CotangentDefectTheory where
  Algebra : Type uSource
  CotangentObject : Type uDefect
  [instCategoryAlgebra : Category.{vSource} Algebra]

  cotangent : {A B : Algebra} → (A ⟶ B) → CotangentObject
  Trivial : CotangentObject → Prop

attribute [instance] CotangentDefectTheory.instCategoryAlgebra

/--
Explicit arithmetic data that can be attached to a boundary patch.  The patch
itself is deliberately an opaque parameter: only this carried algebra map
authorizes evaluation by a defect theory.
-/
structure ArithmeticBoundaryMap
    (Patch : Type*)
    (T : CotangentDefectTheory)
    (patch : Patch) where
  source : T.Algebra
  target : T.Algebra
  map : source ⟶ target

/-- Evaluate a cotangent defect only from an explicit arithmetic boundary map. -/
def ArithmeticBoundaryMap.cotangentBoundaryDefect
    {Patch : Type*}
    {T : CotangentDefectTheory}
    {patch : Patch}
    (A : ArithmeticBoundaryMap Patch T patch) :
    T.CotangentObject :=
  T.cotangent A.map

end DAF.Cyclotomic

```
