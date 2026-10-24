# Complete source: GRWTSK.Algebra.TangentialExtension.Variant5786af59f005010638c8c69dbecaa7ee9424dd1eb5f2a3100f2947c36eb043e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1aa1917f23f873a3864d61458495c7cbe8105e8c` · SHA-256 `4b72c54b3623c2e6c508be3b88c3774e9deae9711bdf62c2baa995c88fd91fa2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FramingActionConvention.Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FramingActionConvention.Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/SmoothFramedSurgery/TangentialExtension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.SmoothFramedSurgery.Core

/-!
# Conditional tangential obstruction and extension

Extending an orientation, spin structure, almost-complex lift, or another
tangential structure over a handle is an obstruction problem.  A stable
shadow or determinant does not by itself solve the corresponding unstable
lifting problem.  This module records a full obstruction group, the effect of
changing the framing, and the exact vanishing criterion.

The capability is deliberately generic: a concrete classifying-space or
bundle model must supply it.  In particular, the two endpoints arising when
`p = 0` live in a pointed homotopy-fiber model equipped only with a supplied
path-component relation.  They are not silently treated as elements of an
abelian group.  An optional `ZeroSphereAbelianDifferenceModel` may separately
encode those endpoints in an explicitly supplied abelian group when a
positive-minus-negative formula is actually available.

Framing changes form a commutative additive group and act **on the left**:
`(a + b) • θ = a • (b • θ)`.  Commutativity is appropriate for the
abelian obstruction group and makes the order convention explicit rather
than silently presenting a right action.  The module proves how a framing
correction that cancels the full boundary class produces an extension; it
does not claim that such a correction exists.
-/


namespace GRWTSK.Algebra.FramingActionConvention.Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3

namespace Surface.SmoothFramedSurgery

universe uH uO uF uΘ

/-- The module uses a left action of framing changes on tangential structures. -/
inductive FramingActionConvention
  | left
  deriving DecidableEq

/-- The ordered endpoint data of the disconnected attaching sphere `S^0`. -/
structure OrderedZeroSphereEndpoints (X : Type uO) where
  negative : X
  positive : X

/--
Obstruction theory for extending a selected tangential structure across one
certified surgery trace.
-/
structure TangentialObstructionTheory
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (certificate : FramedSurgeryCertificate T R embedding) where
  Structure : Type uΘ
  FramingChange : Type uF
  Obstruction : Type uO
  StableStructure : Type uΘ
  framingChangeAddGroup : AddCommGroup FramingChange
  obstructionAddCommGroup : AddCommGroup Obstruction
  extendsAcrossTrace : Structure → Prop
  boundaryClass : Structure → Obstruction
  /-- A genuine nullhomotopy witness type for the full obstruction class. -/
  Nullhomotopy : Obstruction → Type uO
  nullhomotopy_iff_zero : ∀ obstruction,
    letI := obstructionAddCommGroup
    Nonempty (Nullhomotopy obstruction) ↔ obstruction = 0
  framingAction : FramingChange → Structure → Structure
  actionConvention : FramingActionConvention
  actionConvention_eq : actionConvention = .left
  /-- The chosen reference framing is the zero change for the additive action. -/
  referenceFraming : FramingChange
  referenceFraming_eq_zero :
    letI := framingChangeAddGroup
    referenceFraming = 0
  /-- Stabilization is explicit and its obstruction is compared, not identified silently. -/
  stabilize : Structure → StableStructure
  stableBoundaryClass : StableStructure → Obstruction
  stabilization_obstruction : ∀ θ,
    stableBoundaryClass (stabilize θ) = boundaryClass θ
  /-- Points of the relevant homotopy fiber; no algebra is imposed here. -/
  HomotopyFiberPoint : Type uO
  /-- The selected basepoint makes the fiber model pointed. -/
  homotopyFiberBasepoint : HomotopyFiberPoint
  /-- Equality in the path-component set of the modeled homotopy fiber. -/
  samePathComponent : HomotopyFiberPoint → HomotopyFiberPoint → Prop
  samePathComponent_equivalence : Equivalence samePathComponent
  /-- The negative and positive endpoint lifts, retained in their order. -/
  zeroSphereEndpoints :
    p = 0 → Structure → OrderedZeroSphereEndpoints HomotopyFiberPoint
  /-- At `p = 0`, extension is exactly equality of endpoint path components. -/
  zeroSphere_extends_iff_samePathComponent : ∀ (hp : p = 0) θ,
    extendsAcrossTrace θ ↔
      samePathComponent
        (zeroSphereEndpoints hp θ).negative
        (zeroSphereEndpoints hp θ).positive
  framingDefect :
    letI := framingChangeAddGroup
    letI := obstructionAddCommGroup
    FramingChange →+ Obstruction
  extends_iff_vanishes : ∀ θ,
    letI := obstructionAddCommGroup
    extendsAcrossTrace θ ↔ boundaryClass θ = 0
  framingAction_zero : ∀ θ,
    letI := framingChangeAddGroup
    framingAction 0 θ = θ
  framingAction_add : ∀ a b θ,
    letI := framingChangeAddGroup
    framingAction (a + b) θ = framingAction a (framingAction b θ)
  boundaryClass_action : ∀ change θ,
    letI := framingChangeAddGroup
    letI := obstructionAddCommGroup
    boundaryClass (framingAction change θ) =
      boundaryClass θ + framingDefect change

/--
Optional abelian enrichment of the `p = 0` endpoint semantics.

The base tangential theory only provides ordered homotopy-fiber points and a
path-component relation.  Supplying this additional record is what licenses
forming an ordered difference.  Thus subtraction is neither built into the
generic endpoint type nor inferred from pointedness.
-/
structure ZeroSphereAbelianDifferenceModel
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}
    (Θ : TangentialObstructionTheory certificate) where
  AbelianComponent : Type uO
  abelianComponentAddGroup : AddCommGroup AbelianComponent
  endpointClass : Θ.HomotopyFiberPoint → AbelianComponent
  samePathComponent_iff_endpointClass_eq : ∀ x y,
    Θ.samePathComponent x y ↔ endpointClass x = endpointClass y
  differenceToObstruction :
    letI := abelianComponentAddGroup
    letI := Θ.obstructionAddCommGroup
    AbelianComponent →+ Θ.Obstruction
  boundaryClass_eq_ordered_difference : ∀ (hp : p = 0) θ,
    letI := abelianComponentAddGroup
    letI := Θ.obstructionAddCommGroup
    Θ.boundaryClass θ =
      differenceToObstruction
        (endpointClass (Θ.zeroSphereEndpoints hp θ).positive -
          endpointClass (Θ.zeroSphereEndpoints hp θ).negative)

namespace TangentialObstructionTheory

variable
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}

/-- The actual obstruction map of the selected attaching problem. -/
def obstructionMap
    (Θ : TangentialObstructionTheory certificate) :
    Θ.Structure → Θ.Obstruction :=
  Θ.boundaryClass

/-- Forget the framing-action data and expose the original one-class boundary API. -/
def boundary
    (Θ : TangentialObstructionTheory certificate)
    (θ : Θ.Structure) :
    letI := Θ.obstructionAddCommGroup
    TangentialExtensionBoundary certificate Θ.Obstruction := by
  letI := Θ.obstructionAddCommGroup
  exact
    { boundaryClass := Θ.boundaryClass θ
      extendsAcrossTrace := Θ.extendsAcrossTrace θ
      extends_iff_vanishes := Θ.extends_iff_vanishes θ }

/-- Extension after a framing change is equivalent to cancellation of the shifted class. -/
theorem extends_after_change_iff
    (Θ : TangentialObstructionTheory certificate)
    (change : Θ.FramingChange)
    (θ : Θ.Structure) :
    letI := Θ.framingChangeAddGroup
    letI := Θ.obstructionAddCommGroup
    Θ.extendsAcrossTrace (Θ.framingAction change θ) ↔
      Θ.boundaryClass θ + Θ.framingDefect change = 0 := by
  letI := Θ.framingChangeAddGroup
  letI := Θ.obstructionAddCommGroup
  rw [Θ.extends_iff_vanishes, Θ.boundaryClass_action]

/-- A framing change whose defect is the negative obstruction produces an extension. -/
theorem extends_after_change_of_defect_eq_neg
    (Θ : TangentialObstructionTheory certificate)
    (change : Θ.FramingChange)
    (θ : Θ.Structure)
    (hcancel :
      letI := Θ.framingChangeAddGroup
      letI := Θ.obstructionAddCommGroup
      Θ.framingDefect change = -Θ.boundaryClass θ) :
    Θ.extendsAcrossTrace (Θ.framingAction change θ) := by
  letI := Θ.framingChangeAddGroup
  letI := Θ.obstructionAddCommGroup
  rw [Θ.extends_after_change_iff, hcancel]
  exact add_neg_cancel _

/-- An extending structure has zero full attaching-boundary obstruction. -/
theorem boundaryClass_eq_zero_of_extends
    (Θ : TangentialObstructionTheory certificate)
    (θ : Θ.Structure)
    (h : Θ.extendsAcrossTrace θ) :
    letI := Θ.obstructionAddCommGroup
    Θ.boundaryClass θ = 0 := by
  letI := Θ.obstructionAddCommGroup
  exact (Θ.extends_iff_vanishes θ).mp h

/-- The zero framing change leaves both the structure and its obstruction unchanged. -/
theorem boundaryClass_zero_change
    (Θ : TangentialObstructionTheory certificate)
    (θ : Θ.Structure) :
    letI := Θ.framingChangeAddGroup
    letI := Θ.obstructionAddCommGroup
    Θ.boundaryClass (Θ.framingAction 0 θ) = Θ.boundaryClass θ := by
  letI := Θ.framingChangeAddGroup
  letI := Θ.obstructionAddCommGroup
  rw [Θ.framingAction_zero]

/-- Extension is equivalently witnessed by a nullhomotopy of the full obstruction. -/
theorem extends_iff_nonempty_nullhomotopy
    (Θ : TangentialObstructionTheory certificate)
    (θ : Θ.Structure) :
    Θ.extendsAcrossTrace θ ↔ Nonempty (Θ.Nullhomotopy (Θ.obstructionMap θ)) := by
  letI := Θ.obstructionAddCommGroup
  rw [Θ.extends_iff_vanishes]
  exact (Θ.nullhomotopy_iff_zero (Θ.obstructionMap θ)).symm

/-- The reference framing is the neutral element for the documented left action. -/
@[simp]
theorem framingAction_reference
    (Θ : TangentialObstructionTheory certificate)
    (θ : Θ.Structure) :
    letI := Θ.framingChangeAddGroup
    Θ.framingAction Θ.referenceFraming θ = θ := by
  letI := Θ.framingChangeAddGroup
  rw [Θ.referenceFraming_eq_zero, Θ.framingAction_zero]

/-- Stabilization retains the full obstruction class through an explicit comparison law. -/
theorem stableBoundaryClass_stabilize
    (Θ : TangentialObstructionTheory certificate)
    (θ : Θ.Structure) :
    Θ.stableBoundaryClass (Θ.stabilize θ) = Θ.obstructionMap θ :=
  Θ.stabilization_obstruction θ

/-- Commutativity of framing changes makes the two left-action orders agree. -/
theorem framingAction_comm
    (Θ : TangentialObstructionTheory certificate)
    (a b : Θ.FramingChange)
    (θ : Θ.Structure) :
    letI := Θ.framingChangeAddGroup
    Θ.framingAction a (Θ.framingAction b θ) =
      Θ.framingAction b (Θ.framingAction a θ) := by
  letI := Θ.framingChangeAddGroup
  rw [← Θ.framingAction_add, add_comm, Θ.framingAction_add]

/-- The action convention is an audited field, not an informal multiplication choice. -/
theorem action_is_left
    (Θ : TangentialObstructionTheory certificate) :
    Θ.actionConvention = .left :=
  Θ.actionConvention_eq

/--
At `p = 0`, extension is equality of the path components of the ordered
negative and positive endpoint lifts.  No subtraction or group structure is
used by this generic statement.
-/
theorem extends_zeroSphere_iff_endpoints_samePathComponent
    (Θ : TangentialObstructionTheory certificate)
    (hp : p = 0)
    (θ : Θ.Structure) :
    Θ.extendsAcrossTrace θ ↔
      Θ.samePathComponent
        (Θ.zeroSphereEndpoints hp θ).negative
        (Θ.zeroSphereEndpoints hp θ).positive :=
  Θ.zeroSphere_extends_iff_samePathComponent hp θ

/--
An ordered positive-minus-negative formula is available only after an
explicit abelian endpoint model has been supplied.
-/
theorem obstructionMap_zeroSphere_abelian_difference
    (Θ : TangentialObstructionTheory certificate)
    (A : ZeroSphereAbelianDifferenceModel Θ)
    (hp : p = 0)
    (θ : Θ.Structure) :
    letI := A.abelianComponentAddGroup
    letI := Θ.obstructionAddCommGroup
    Θ.obstructionMap θ =
      A.differenceToObstruction
        (A.endpointClass (Θ.zeroSphereEndpoints hp θ).positive -
          A.endpointClass (Θ.zeroSphereEndpoints hp θ).negative) :=
  A.boundaryClass_eq_ordered_difference hp θ

end TangentialObstructionTheory

end Surface.SmoothFramedSurgery
```
