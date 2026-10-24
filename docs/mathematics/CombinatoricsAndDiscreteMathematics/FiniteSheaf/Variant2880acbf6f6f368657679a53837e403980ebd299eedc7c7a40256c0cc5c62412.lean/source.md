# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteSheaf.Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ec2824b58974ea424fe1ee1a29b15558daa8e03` · SHA-256 `2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Real.Basic

/-!
# Finite proof-carrying sheaves

This file contains the finite local-to-global carrier used by executable
mathematical systems.  A cover records its overlaps explicitly.  A sheaf
supplies an actual glue and proves both locality and uniqueness; a collection
of locally inhabited objects is not silently promoted to a global section.

The site is finite because it is an executable shell.  No claim is made that
this finite carrier is a Grothendieck, prismatic, or analytic site without
additional structure.
-/

namespace Mathematics.Projection

universe u w

/-- A finite partially ordered locality carrier bound to one frozen snapshot. -/
structure CertifiedSite where
  Object : Type u
  objectFintype : Fintype Object
  objectDecidableEq : DecidableEq Object
  objectOrder : PartialOrder Object
  snapshotDigest : Digest
  snapshotDigest_valid : snapshotDigest.Valid

attribute [instance] CertifiedSite.objectFintype
  CertifiedSite.objectDecidableEq CertifiedSite.objectOrder

/-- A typed locality; its wrapper prevents confusing it with a section. -/
structure SiteObject (site : CertifiedSite) where
  value : site.Object
  deriving DecidableEq

/--
A finite cover with an explicit chosen overlap for every pair of members.
The overlap witnesses are part of the cover certificate rather than inferred
from serialization or names.
-/
structure CoverFamily
    (site : CertifiedSite)
    (target : site.Object) where
  size : Nat
  member : Fin size → site.Object
  member_le : ∀ index, member index ≤ target
  overlap : Fin size → Fin size → site.Object
  overlap_le_left :
    ∀ left right, overlap left right ≤ member left
  overlap_le_right :
    ∀ left right, overlap left right ≤ member right
  coverCertificate : ObjectAddress

/-- A contravariant section system with functorial restriction. -/
structure PresheafData (site : CertifiedSite) where
  Section : site.Object → Type w
  restrict :
    ∀ {smaller larger : site.Object},
      smaller ≤ larger →
      Section larger →
      Section smaller
  restrict_refl :
    ∀ (object : site.Object) (value : Section object),
      restrict (le_refl object) value = value
  restrict_trans :
    ∀ {small middle large : site.Object}
      (small_le_middle : small ≤ middle)
      (middle_le_large : middle ≤ large)
      (value : Section large),
      restrict small_le_middle
          (restrict middle_le_large value) =
        restrict
          (le_trans small_le_middle middle_le_large)
          value

/-- Local sections whose restrictions agree on every declared overlap. -/
structure CompatibleLocalSections
    {site : CertifiedSite}
    (presheaf : PresheafData site)
    {target : site.Object}
    (cover : CoverFamily site target) where
  sections : ∀ index, presheaf.Section (cover.member index)
  compatible :
    ∀ left right,
      presheaf.restrict
          (cover.overlap_le_left left right)
          (sections left) =
        presheaf.restrict
          (cover.overlap_le_right left right)
          (sections right)

/--
A finite sheaf is a presheaf with a supplied unique glue for every compatible
cover family.
-/
structure SheafData (site : CertifiedSite)
    extends PresheafData site where
  glue :
    ∀ {target : site.Object}
      (cover : CoverFamily site target),
      CompatibleLocalSections toPresheafData cover →
      toPresheafData.Section target
  glue_restricts :
    ∀ {target : site.Object}
      (cover : CoverFamily site target)
      (family : CompatibleLocalSections toPresheafData cover)
      (index : Fin cover.size),
      toPresheafData.restrict
          (cover.member_le index)
          (glue cover family) =
        family.sections index
  glue_unique :
    ∀ {target : site.Object}
      (cover : CoverFamily site target)
      (family : CompatibleLocalSections toPresheafData cover)
      (candidate : toPresheafData.Section target),
      (∀ index : Fin cover.size,
        toPresheafData.restrict
            (cover.member_le index)
            candidate =
          family.sections index) →
      candidate = glue cover family

namespace SheafData

variable
    {site : CertifiedSite}
    (sheaf : SheafData site)
    {target : site.Object}
    (cover : CoverFamily site target)

/-- Restrict one global section to a compatible local family. -/
def localModelsOfGlobal
    (global : sheaf.Section target) :
    CompatibleLocalSections sheaf.toPresheafData cover where
  sections := fun index ↦
    sheaf.restrict (cover.member_le index) global
  compatible := by
    intro left right
    calc
      sheaf.restrict
          (cover.overlap_le_left left right)
          (sheaf.restrict (cover.member_le left) global) =
        sheaf.restrict
          (le_trans
            (cover.overlap_le_left left right)
            (cover.member_le left))
          global :=
        sheaf.restrict_trans
          (cover.overlap_le_left left right)
          (cover.member_le left)
          global
      _ =
        sheaf.restrict
          (le_trans
            (cover.overlap_le_right left right)
            (cover.member_le right))
          global := by
        congr
      _ =
        sheaf.restrict
          (cover.overlap_le_right left right)
          (sheaf.restrict (cover.member_le right) global) :=
        (sheaf.restrict_trans
          (cover.overlap_le_right left right)
          (cover.member_le right)
          global).symm

/-- Compatible local sections have exactly one global realization. -/
theorem compatible_local_models_glue
    (family :
      CompatibleLocalSections sheaf.toPresheafData cover) :
    ∃! global : sheaf.Section target,
      ∀ index : Fin cover.size,
        sheaf.restrict
            (cover.member_le index)
            global =
          family.sections index := by
  refine ⟨sheaf.glue cover family, sheaf.glue_restricts cover family, ?_⟩
  intro candidate candidateRestricts
  exact sheaf.glue_unique cover family candidate candidateRestricts

/--
The global section produced by sheaf gluing is independent of any local
enumeration or solver search order.
-/
theorem glue_deterministic
    (family :
      CompatibleLocalSections sheaf.toPresheafData cover)
    (left right : sheaf.Section target)
    (leftRestricts :
      ∀ index : Fin cover.size,
        sheaf.restrict (cover.member_le index) left =
          family.sections index)
    (rightRestricts :
      ∀ index : Fin cover.size,
        sheaf.restrict (cover.member_le index) right =
          family.sections index) :
    left = right := by
  calc
    left = sheaf.glue cover family :=
      sheaf.glue_unique cover family left leftRestricts
    _ = right :=
      (sheaf.glue_unique cover family right rightRestricts).symm

/--
For a genuine finite sheaf, existence of a global model is equivalent to
existence of a compatible family of local models.  Merely inhabited local
fibers are not enough; compatibility is in the right-hand type.
-/
theorem global_section_iff_sat :
    Nonempty (sheaf.Section target) ↔
      Nonempty
        (CompatibleLocalSections
          sheaf.toPresheafData cover) := by
  constructor
  · rintro ⟨global⟩
    exact ⟨localModelsOfGlobal sheaf cover global⟩
  · rintro ⟨family⟩
    exact ⟨sheaf.glue cover family⟩

end SheafData

/--
A coefficient sheaf with an arithmetic Frobenius endomorphism natural under
restriction.  Ring operations live in the section type supplied by a concrete
realization; this contract records the operator law used by the transport.
-/
structure DeltaRingSheaf (site : CertifiedSite) where
  carrier : SheafData.{u, w} site
  frobenius :
    ∀ object : site.Object,
      carrier.Section object →
        carrier.Section object
  frobenius_natural :
    ∀ {small large : site.Object}
      (small_le_large : small ≤ large)
      (value : carrier.Section large),
      carrier.restrict small_le_large
          (frobenius large value) =
        frobenius small
          (carrier.restrict small_le_large value)

/--
A sheaf with an actual separating metric on each fiber and nonexpansive
restriction.  A digest cannot substitute for these equations.
-/
structure MetricModuleSheaf (site : CertifiedSite) where
  carrier : SheafData.{u, w} site
  distance :
    ∀ object : site.Object,
      carrier.Section object →
      carrier.Section object →
      ℝ
  distance_nonnegative :
    ∀ (object : site.Object)
      (left right : carrier.Section object),
      0 ≤ distance object left right
  distance_self :
    ∀ (object : site.Object)
      (value : carrier.Section object),
      distance object value value = 0
  distance_symmetric :
    ∀ (object : site.Object)
      (left right : carrier.Section object),
      distance object left right =
        distance object right left
  distance_separates :
    ∀ (object : site.Object)
      (left right : carrier.Section object),
      distance object left right = 0 →
        left = right
  triangle :
    ∀ (object : site.Object)
      (left middle right : carrier.Section object),
      (distance object left right : ℝ) ≤
        ((distance object left middle : ℝ) +
          (distance object middle right : ℝ) : ℝ)
  restrict_nonexpansive :
    ∀ {small large : site.Object}
      (small_le_large : small ≤ large)
      (left right : carrier.Section large),
      distance small
          (carrier.restrict small_le_large left)
          (carrier.restrict small_le_large right) ≤
        distance large left right

/-- Exact and relative tensor factors remain independently restricted. -/
structure TensorSheaf (site : CertifiedSite) where
  exact : SheafData.{u, w} site
  relative : SheafData.{u, w} site

structure TensorSection
    {site : CertifiedSite}
    (tensor : TensorSheaf site)
    (object : site.Object) where
  exactState : tensor.exact.Section object
  relativeState : tensor.relative.Section object

/-- Pair exact and relative factors without identifying or mixing them. -/
def tensorRepresentation
    {site : CertifiedSite}
    {tensor : TensorSheaf site}
    {object : site.Object}
    (exactState : tensor.exact.Section object)
    (relativeState : tensor.relative.Section object) :
    TensorSection tensor object where
  exactState := exactState
  relativeState := relativeState

/-- Restriction acts componentwise and cannot modify the exact factor via the relative map. -/
def restrictTensorSection
    {site : CertifiedSite}
    {tensor : TensorSheaf site}
    {small large : site.Object}
    (small_le_large : small ≤ large)
    (value : TensorSection tensor large) :
    TensorSection tensor small where
  exactState :=
    tensor.exact.restrict small_le_large value.exactState
  relativeState :=
    tensor.relative.restrict small_le_large value.relativeState

@[simp]
theorem restrictTensorSection_exact
    {site : CertifiedSite}
    {tensor : TensorSheaf site}
    {small large : site.Object}
    (small_le_large : small ≤ large)
    (value : TensorSection tensor large) :
    (restrictTensorSection small_le_large value).exactState =
      tensor.exact.restrict small_le_large value.exactState :=
  rfl

@[simp]
theorem restrictTensorSection_relative
    {site : CertifiedSite}
    {tensor : TensorSheaf site}
    {small large : site.Object}
    (small_le_large : small ≤ large)
    (value : TensorSection tensor large) :
    (restrictTensorSection small_le_large value).relativeState =
      tensor.relative.restrict small_le_large value.relativeState :=
  rfl

/-- Executable name for the unique glue supplied by the sheaf law. -/
def glueLocalModels
    {site : CertifiedSite}
    (sheaf : SheafData site)
    {target : site.Object}
    (cover : CoverFamily site target)
    (family :
      CompatibleLocalSections sheaf.toPresheafData cover) :
    sheaf.Section target :=
  sheaf.glue cover family

theorem glueLocalModels_restricts
    {site : CertifiedSite}
    (sheaf : SheafData site)
    {target : site.Object}
    (cover : CoverFamily site target)
    (family :
      CompatibleLocalSections sheaf.toPresheafData cover)
    (index : Fin cover.size) :
    sheaf.restrict
        (cover.member_le index)
        (glueLocalModels sheaf cover family) =
      family.sections index :=
  sheaf.glue_restricts cover family index

end Mathematics.Projection
```
