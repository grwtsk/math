# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.TypedRelativeDefectAssignments.Variantb5a8ecddfde86fc1.WholeLocalPatchArithmeticInterpretationPackages

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d851cb944e024441f9b3593e280ca5db44f9ab1a` · SHA-256 `195fdb038e6fc08c2c9f15fbf6bce8976e6a4afa8a2669bdf6e78da807b8b949`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeLocalPatchArithmeticInterpretationPackages — individual source review
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

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.TypedRelativeDefectAssignments.Variantb5a8ecddfde86fc1.WholeCotangentAssignmentAndExplicitBoundaryMap
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.TypedRelativeDefectAssignments.Variantb5a8ecddfde86fc1.WholeRelativeTHHAssignmentAndExplicitBoundaryMap
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.TypedRelativeDefectAssignments.Variantb5a8ecddfde86fc1.WholeCyclotomicRefinementAndExplicitBoundaryMap

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

end DAF.Cyclotomic

namespace DAF.Fabric.LocalPatch

open CategoryTheory

/--
An explicit arithmetic interpretation of a local patch for a cotangent
theory.  The typed map, rather than the patch metadata, authorizes defect
evaluation.
-/
structure CotangentBoundaryData
    {F : DAF.Fabric.Fabric}
    {n : Nat}
    {x : F.Cell n}
    (patch : DAF.Fabric.LocalPatch F x)
    (T : DAF.Cyclotomic.CotangentDefectTheory) where
  interpret : DAF.Fabric.Presentation → T.Algebra
  algebraMap :
    interpret (F.cellPresentation x) ⟶
      interpret patch.boundary.replacement

/-- Cotangent defect of a patch carrying a typed arithmetic update. -/
def cotangentBoundaryDefect
    {F : DAF.Fabric.Fabric}
    {n : Nat}
    {x : F.Cell n}
    (patch : DAF.Fabric.LocalPatch F x)
    (T : DAF.Cyclotomic.CotangentDefectTheory)
    (A : CotangentBoundaryData patch T) :
    T.CotangentObject :=
  T.cotangent A.algebraMap

/-- Explicit arithmetic interpretation of a patch for relative THH. -/
structure RelativeTHHBoundaryData
    {F : DAF.Fabric.Fabric}
    {n : Nat}
    {x : F.Cell n}
    (patch : DAF.Fabric.LocalPatch F x)
    (T : DAF.Cyclotomic.RelativeTHHTheory) where
  interpret : DAF.Fabric.Presentation → T.Algebra
  algebraMap :
    interpret (F.cellPresentation x) ⟶
      interpret patch.boundary.replacement

/-- Relative-THH defect of a patch carrying a typed arithmetic update. -/
def relativeTHHBoundaryDefect
    {F : DAF.Fabric.Fabric}
    {n : Nat}
    {x : F.Cell n}
    (patch : DAF.Fabric.LocalPatch F x)
    (T : DAF.Cyclotomic.RelativeTHHTheory)
    (A : RelativeTHHBoundaryData patch T) :
    T.SpectrumLike :=
  T.relativeTHH A.algebraMap

/-- Explicit arithmetic interpretation of a patch for cyclotomic defects. -/
structure CyclotomicBoundaryData
    {F : DAF.Fabric.Fabric}
    {n : Nat}
    {x : F.Cell n}
    (patch : DAF.Fabric.LocalPatch F x)
    (T : DAF.Cyclotomic.CyclotomicDefectTheory) where
  interpret : DAF.Fabric.Presentation → T.Algebra
  algebraMap :
    interpret (F.cellPresentation x) ⟶
      interpret patch.boundary.replacement

/-- Cyclotomic Frobenius defect of a patch carrying a typed arithmetic update. -/
def cyclotomicBoundaryDefect
    {F : DAF.Fabric.Fabric}
    {n : Nat}
    {x : F.Cell n}
    (patch : DAF.Fabric.LocalPatch F x)
    (T : DAF.Cyclotomic.CyclotomicDefectTheory)
    (A : CyclotomicBoundaryData patch T) :
    T.SpectrumLike :=
  T.frobeniusDefect A.algebraMap

end DAF.Fabric.LocalPatch
```
