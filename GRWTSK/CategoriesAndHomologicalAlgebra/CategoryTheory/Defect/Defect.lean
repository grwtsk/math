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

/-- A generic relative defect attached to source morphisms. -/
structure RelativeDefectTheory where
  Source : Type uSource
  Defect : Type uDefect
  [instCategorySource : Category.{vSource} Source]

  relative : {A B : Source} → (A ⟶ B) → Defect
  Trivial : Defect → Prop

attribute [instance] RelativeDefectTheory.instCategorySource

/-- An abstract relative cotangent-object assignment. -/
structure CotangentDefectTheory where
  Algebra : Type uSource
  CotangentObject : Type uDefect
  [instCategoryAlgebra : Category.{vSource} Algebra]

  cotangent : {A B : Algebra} → (A ⟶ B) → CotangentObject
  Trivial : CotangentObject → Prop

attribute [instance] CotangentDefectTheory.instCategoryAlgebra

/--
An abstract relative-THH capability.  `comparison` is supplied structure and
does not characterize `relativeTHH` as a fiber or cofiber.
-/
structure RelativeTHHTheory where
  Algebra : Type uSource
  SpectrumLike : Type uSpectrum
  [instCategoryAlgebra : Category.{vSource} Algebra]
  [instCategorySpectrumLike : Category.{vSpectrum} SpectrumLike]

  THH : Algebra → SpectrumLike
  relativeTHH : {A B : Algebra} → (A ⟶ B) → SpectrumLike
  comparison :
    {A B : Algebra} →
      (f : A ⟶ B) →
        relativeTHH f ⟶ THH B

attribute [instance] RelativeTHHTheory.instCategoryAlgebra
  RelativeTHHTheory.instCategorySpectrumLike

/-- Optional cyclotomic refinements of a supplied relative-THH interface. -/
structure CyclotomicDefectTheory extends RelativeTHHTheory where
  TCMinus : Algebra → SpectrumLike
  TP : Algebra → SpectrumLike
  TC : Algebra → SpectrumLike
  frobeniusDefect :
    {A B : Algebra} →
      (A ⟶ B) → SpectrumLike

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

/-- Arithmetic boundary data for a relative-THH theory. -/
structure THHBoundaryMap
    (Patch : Type*)
    (T : RelativeTHHTheory)
    (patch : Patch) where
  source : T.Algebra
  target : T.Algebra
  map : source ⟶ target

/-- Evaluate a relative-THH defect only from a carried algebra map. -/
def THHBoundaryMap.relativeTHHBoundaryDefect
    {Patch : Type*}
    {T : RelativeTHHTheory}
    {patch : Patch}
    (A : THHBoundaryMap Patch T patch) :
    T.SpectrumLike :=
  T.relativeTHH A.map

/-- Arithmetic boundary data for a cyclotomic defect theory. -/
structure CyclotomicBoundaryMap
    (Patch : Type*)
    (T : CyclotomicDefectTheory)
    (patch : Patch) where
  source : T.Algebra
  target : T.Algebra
  map : source ⟶ target

/-- Evaluate a cyclotomic Frobenius defect only from a carried algebra map. -/
def CyclotomicBoundaryMap.cyclotomicBoundaryDefect
    {Patch : Type*}
    {T : CyclotomicDefectTheory}
    {patch : Patch}
    (A : CyclotomicBoundaryMap Patch T patch) :
    T.SpectrumLike :=
  T.frobeniusDefect A.map

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
