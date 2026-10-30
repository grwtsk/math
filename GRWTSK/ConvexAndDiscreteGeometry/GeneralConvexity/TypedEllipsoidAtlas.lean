/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import Mathlib.Basic.Complex.Basic
import Mathlib.Data.List.Basic
import Mathlib.LinearAlgebra.QuadraticForm.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Typed ellipsoid atlas

An ellipsoid must not be identified only by a plotted quadratic level set.  The
same carrier can be represented in several ways and can arise from logically
different constructions.  In particular:

* a John ellipsoid is an inscribed, volume-optimal construction;
* a Loewner or minimum-volume enclosing ellipsoid is circumscribed;
* covariance, inertia, projection-mean and confidence ellipsoids are derived
  descriptors until a separate comparison theorem is supplied;
* an ellipsoid-method iterate is a circumscribed search invariant only after its
  separation/update certificate is retained;
* a source-Gram ellipsoid is an observation of a source, not automatically an
  inverse or a signed source estimate;
* positive-semidefinite and quotient-definite models must remain distinct from
  a full-dimensional positive-definite ellipsoid.

The interface therefore factors an ellipsoid type into independent axes:
representation, construction, rank status, axis symmetry and normalization.  A
separate source-relation certificate records exact equality, inscribed or
circumscribed containment, a controlled residual comparison, or descriptor-only
status.  This avoids coercing all uses of the word "ellipsoid" into one theorem.

A finite witnessed-fiber interface is also included.  It retains a complete
alternative list, a rank selecting the actual alternative, a common coarse
observation and an injective phase channel on that fiber.  Thus two ellipsoid
records can share every coarse summary while remaining exactly distinguishable.

SOURCE_PROOF_CANDIDATE / COMPILATION NOT_RUN / KERNEL NOT_RUN /
TRANSITIVE AXIOM AUDIT NOT_RUN.
-/

namespace GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.TypedEllipsoidAtlas

open Set

universe u v

/-- How the geometric carrier is represented.  These are representations, not
source-comparison claims. -/
inductive RepresentationKind
  | quadraticSublevel
  | hermitianSublevel
  | affineImageOfBall
  | principalAxes
  | supportFunction
  | polarDual
  | sampledBoundary
  | custom (identifier : String)
  deriving DecidableEq, Repr

/-- The mathematical construction that selected the ellipsoid.  Named optimal
constructions remain distinct from moment descriptors and algorithmic iterates. -/
inductive ConstructionKind
  | arbitrary
  | john
  | loewner
  | minimumVolumeEnclosing
  | maximumVolumeInscribed
  | covariance
  | inertia
  | secondMoment
  | projectionMean
  | polarDual
  | dikin
  | hessianLocalNorm
  | axisAlignedBounding
  | optimizationIterate
  | confidenceRegion
  | sourceGram
  | custom (identifier : String)
  deriving DecidableEq, Repr

/-- Whether the quadratic model controls the ambient space directly or only
a quotient/semidefinite observation. -/
inductive RankStatus
  | fullDimensional
  | semidefinite
  | quotientDefinite
  | custom (identifier : String)
  deriving DecidableEq, Repr

/-- Multiplicity pattern of the principal axes.  This is a shape classification,
not a construction or containment relation. -/
inductive AxisSymmetry
  | spherical
  | prolate
  | oblate
  | triaxial
  | general
  | degenerate
  | custom (identifier : String)
  deriving DecidableEq, Repr

/-- The scalar convention used to normalize the quadratic description. -/
inductive NormalizationKind
  | unitLevel
  | radiusSquared
  | determinantOne
  | traceOne
  | volumeOne
  | volumeOptimized
  | probabilityMass
  | sourcePinned
  | custom (identifier : String)
  deriving DecidableEq, Repr

/-- Logical relation between the ellipsoid carrier and the source set. -/
inductive SourceRelation
  | exact
  | inscribed
  | circumscribed
  | controlled
  | descriptorOnly
  deriving DecidableEq, Repr

namespace SourceRelation

/-- Set-theoretic content of the exact, inscribed and circumscribed relations.
Controlled and descriptor-only records require their separately retained
comparison data. -/
def Holds {X : Type u} (relation : SourceRelation)
    (source carrier : Set X) : Prop :=
  match relation with
  | .exact => source = carrier
  | .inscribed => carrier ⊆ source
  | .circumscribed => source ⊆ carrier
  | .controlled => True
  | .descriptorOnly => True

end SourceRelation

/-- The relation normally required by a named construction.  `none` means that
the construction name alone supplies no containment theorem. -/
def ConstructionKind.expectedRelation : ConstructionKind → Option SourceRelation
  | .john => some .inscribed
  | .maximumVolumeInscribed => some .inscribed
  | .loewner => some .circumscribed
  | .minimumVolumeEnclosing => some .circumscribed
  | .optimizationIterate => some .circumscribed
  | _ => none

/-- Orthogonal classification axes for an ellipsoid view. -/
structure EllipsoidProfile where
  representation : RepresentationKind
  construction : ConstructionKind
  rankStatus : RankStatus
  axisSymmetry : AxisSymmetry
  normalization : NormalizationKind
  deriving DecidableEq, Repr

namespace EllipsoidProfile

/-- A generic quadratic-sublevel view.  Its source relation is supplied later. -/
def quadratic : EllipsoidProfile where
  representation := .quadraticSublevel
  construction := .arbitrary
  rankStatus := .semidefinite
  axisSymmetry := .general
  normalization := .radiusSquared

/-- A generic affine-image-of-a-ball view. -/
def affineBall : EllipsoidProfile where
  representation := .affineImageOfBall
  construction := .arbitrary
  rankStatus := .fullDimensional
  axisSymmetry := .general
  normalization := .unitLevel

/-- John: maximum-volume inscribed ellipsoid. -/
def john : EllipsoidProfile where
  representation := .quadraticSublevel
  construction := .john
  rankStatus := .fullDimensional
  axisSymmetry := .general
  normalization := .volumeOptimized

/-- Loewner: minimum-volume circumscribed ellipsoid. -/
def loewner : EllipsoidProfile where
  representation := .quadraticSublevel
  construction := .loewner
  rankStatus := .fullDimensional
  axisSymmetry := .general
  normalization := .volumeOptimized

/-- Algorithm-named minimum-volume enclosing ellipsoid. -/
def minimumVolumeEnclosing : EllipsoidProfile where
  representation := .quadraticSublevel
  construction := .minimumVolumeEnclosing
  rankStatus := .fullDimensional
  axisSymmetry := .general
  normalization := .volumeOptimized

/-- Algorithm-named maximum-volume inscribed ellipsoid. -/
def maximumVolumeInscribed : EllipsoidProfile where
  representation := .quadraticSublevel
  construction := .maximumVolumeInscribed
  rankStatus := .fullDimensional
  axisSymmetry := .general
  normalization := .volumeOptimized

/-- Covariance/Mahalanobis descriptor.  No containment follows from this tag. -/
def covariance : EllipsoidProfile where
  representation := .principalAxes
  construction := .covariance
  rankStatus := .semidefinite
  axisSymmetry := .general
  normalization := .probabilityMass

/-- Inertia ellipsoid descriptor. -/
def inertia : EllipsoidProfile where
  representation := .principalAxes
  construction := .inertia
  rankStatus := .semidefinite
  axisSymmetry := .general
  normalization := .traceOne

/-- Generic second-moment ellipsoid descriptor. -/
def secondMoment : EllipsoidProfile where
  representation := .principalAxes
  construction := .secondMoment
  rankStatus := .semidefinite
  axisSymmetry := .general
  normalization := .traceOne

/-- Polar-dual ellipsoid descriptor.  A source polarity theorem is separate. -/
def polarDual : EllipsoidProfile where
  representation := .polarDual
  construction := .polarDual
  rankStatus := .fullDimensional
  axisSymmetry := .general
  normalization := .unitLevel

/-- Dikin/local barrier ellipsoid descriptor.  Feasibility containment requires
the barrier-specific theorem and is not inferred from this tag. -/
def dikin : EllipsoidProfile where
  representation := .quadraticSublevel
  construction := .dikin
  rankStatus := .fullDimensional
  axisSymmetry := .general
  normalization := .unitLevel

/-- Hessian local-norm ellipsoid descriptor. -/
def hessianLocalNorm : EllipsoidProfile where
  representation := .quadraticSublevel
  construction := .hessianLocalNorm
  rankStatus := .semidefinite
  axisSymmetry := .general
  normalization := .unitLevel

/-- Axis-aligned bounding ellipsoid used by finite computational enclosures. -/
def axisAlignedBounding : EllipsoidProfile where
  representation := .principalAxes
  construction := .axisAlignedBounding
  rankStatus := .fullDimensional
  axisSymmetry := .general
  normalization := .sourcePinned

/-- Projection-mean ellipsoid descriptor. -/
def projectionMean : EllipsoidProfile where
  representation := .supportFunction
  construction := .projectionMean
  rankStatus := .fullDimensional
  axisSymmetry := .general
  normalization := .volumeOne

/-- One ellipsoid-method search iterate. -/
def optimizationIterate : EllipsoidProfile where
  representation := .affineImageOfBall
  construction := .optimizationIterate
  rankStatus := .fullDimensional
  axisSymmetry := .general
  normalization := .sourcePinned

/-- A statistical confidence-region descriptor. -/
def confidenceRegion : EllipsoidProfile where
  representation := .quadraticSublevel
  construction := .confidenceRegion
  rankStatus := .semidefinite
  axisSymmetry := .general
  normalization := .probabilityMass

/-- A proof/source Gram observation. -/
def sourceGram : EllipsoidProfile where
  representation := .quadraticSublevel
  construction := .sourceGram
  rankStatus := .semidefinite
  axisSymmetry := .general
  normalization := .sourcePinned

/-- Replace only the axis-symmetry classification. -/
def withAxisSymmetry (profile : EllipsoidProfile)
    (axisSymmetry : AxisSymmetry) : EllipsoidProfile :=
  { profile with axisSymmetry := axisSymmetry }

@[simp]
theorem john_expectedRelation :
    john.construction.expectedRelation = some .inscribed :=
  rfl

@[simp]
theorem loewner_expectedRelation :
    loewner.construction.expectedRelation = some .circumscribed :=
  rfl

@[simp]
theorem minimumVolumeEnclosing_expectedRelation :
    minimumVolumeEnclosing.construction.expectedRelation = some .circumscribed :=
  rfl

@[simp]
theorem maximumVolumeInscribed_expectedRelation :
    maximumVolumeInscribed.construction.expectedRelation = some .inscribed :=
  rfl

@[simp]
theorem optimizationIterate_expectedRelation :
    optimizationIterate.construction.expectedRelation = some .circumscribed :=
  rfl

/-- The same quadratic representation can carry opposite source roles. -/
theorem john_loewner_same_representation_different_construction :
    john.representation = loewner.representation ∧
      john.construction ≠ loewner.construction := by
  constructor
  · rfl
  · decide

end EllipsoidProfile

section QuadraticCarrier

variable {V : Type u} [AddCommGroup V] [Module ℝ V]

/-- A possibly degenerate quadratic ellipsoid.  Positive semidefiniteness is
stored explicitly; strict positive definiteness is a separate property. -/
structure QuadraticEllipsoid (V : Type u) [AddCommGroup V] [Module ℝ V] where
  center : V
  form : QuadraticForm ℝ V
  radiusSq : ℝ
  radiusSq_nonnegative : 0 ≤ radiusSq
  form_nonnegative : ∀ x, 0 ≤ form x

namespace QuadraticEllipsoid

/-- Closed quadratic sublevel carrier. -/
def carrier (ellipsoid : QuadraticEllipsoid V) : Set V :=
  {x | ellipsoid.form (x - ellipsoid.center) ≤ ellipsoid.radiusSq}

/-- Kernel directions of the quadratic observation. -/
def radical (ellipsoid : QuadraticEllipsoid V) : Set V :=
  {x | ellipsoid.form x = 0}

/-- Full-dimensional status requires a positive-definite form and positive level. -/
def IsFullDimensional (ellipsoid : QuadraticEllipsoid V) : Prop :=
  ellipsoid.form.PosDef ∧ 0 < ellipsoid.radiusSq

/-- A nonzero vector hidden by the quadratic observation. -/
def IsDegenerate (ellipsoid : QuadraticEllipsoid V) : Prop :=
  ∃ x, x ≠ 0 ∧ ellipsoid.form x = 0

@[simp]
theorem center_mem (ellipsoid : QuadraticEllipsoid V) :
    ellipsoid.center ∈ ellipsoid.carrier := by
  simp [carrier, ellipsoid.radiusSq_nonnegative]

/-- A positive-definite ellipsoid has no nonzero radical direction. -/
theorem not_isDegenerate_of_isFullDimensional
    (ellipsoid : QuadraticEllipsoid V)
    (hfull : ellipsoid.IsFullDimensional) :
    ¬ ellipsoid.IsDegenerate := by
  rintro ⟨x, hx, hzero⟩
  have hpos : 0 < ellipsoid.form x := hfull.1 x hx
  linarith

end QuadraticEllipsoid

/-- Exact residual ledger comparing a source set with an ellipsoid carrier. -/
structure SetComparison (source carrier : Set V) where
  omittedSource : Set V
  addedCarrier : Set V
  source_without_omitted : source \ omittedSource ⊆ carrier
  carrier_without_added : carrier \ addedCarrier ⊆ source

namespace SetComparison

variable {source carrier : Set V}

/-- Exact equality has no omitted or added sector. -/
def exact (h : source = carrier) : SetComparison source carrier where
  omittedSource := ∅
  addedCarrier := ∅
  source_without_omitted := by simpa [h]
  carrier_without_added := by simpa [h]

/-- Canonical residual ledger for an inscribed ellipsoid. -/
def inscribed (h : carrier ⊆ source) : SetComparison source carrier where
  omittedSource := source \ carrier
  addedCarrier := ∅
  source_without_omitted := by
    intro x hx
    by_contra hcarrier
    exact hx.2 ⟨hx.1, hcarrier⟩
  carrier_without_added := by simpa using h

/-- Canonical residual ledger for a circumscribed ellipsoid. -/
def circumscribed (h : source ⊆ carrier) : SetComparison source carrier where
  omittedSource := ∅
  addedCarrier := carrier \ source
  source_without_omitted := by simpa using h
  carrier_without_added := by
    intro x hx
    by_contra hsource
    exact hx.2 ⟨hx.1, hsource⟩

/-- A fully controlled comparison with explicit omitted and added sectors. -/
def controlled (omittedSource addedCarrier : Set V)
    (hsource : source \ omittedSource ⊆ carrier)
    (hcarrier : carrier \ addedCarrier ⊆ source) :
    SetComparison source carrier where
  omittedSource := omittedSource
  addedCarrier := addedCarrier
  source_without_omitted := hsource
  carrier_without_added := hcarrier

/-- Descriptor-only status exposes the complete source and carrier as unresolved
residual sectors rather than manufacturing a comparison. -/
def descriptorOnly : SetComparison source carrier where
  omittedSource := source
  addedCarrier := carrier
  source_without_omitted := by simp
  carrier_without_added := by simp

/-- Every source point is either retained by the carrier or explicitly listed in
the omitted-source residual. -/
theorem source_subset_carrier_union_omitted
    (comparison : SetComparison source carrier) :
    source ⊆ carrier ∪ comparison.omittedSource := by
  intro x hx
  change x ∈ carrier ∨ x ∈ comparison.omittedSource
  by_cases homitted : x ∈ comparison.omittedSource
  · exact Or.inr homitted
  · exact Or.inl
      (comparison.source_without_omitted ⟨hx, homitted⟩)

/-- Every carrier point is either a source point or explicitly listed as an
added-carrier residual. -/
theorem carrier_subset_source_union_added
    (comparison : SetComparison source carrier) :
    carrier ⊆ source ∪ comparison.addedCarrier := by
  intro x hx
  change x ∈ source ∨ x ∈ comparison.addedCarrier
  by_cases hadded : x ∈ comparison.addedCarrier
  · exact Or.inr hadded
  · exact Or.inl
      (comparison.carrier_without_added ⟨hx, hadded⟩)

end SetComparison

/-- Evidence-bearing source relation.  Controlled comparison retains both
residual sectors; descriptor-only supplies no containment theorem. -/
inductive SourceRelationCertificate (source carrier : Set V)
  | exact (h : source = carrier)
  | inscribed (h : carrier ⊆ source)
  | circumscribed (h : source ⊆ carrier)
  | controlled (comparison : SetComparison source carrier)
  | descriptorOnly

namespace SourceRelationCertificate

variable {source carrier : Set V}

/-- Classification of an evidence-bearing relation certificate. -/
def kind (certificate : SourceRelationCertificate source carrier) : SourceRelation :=
  match certificate with
  | .exact _ => .exact
  | .inscribed _ => .inscribed
  | .circumscribed _ => .circumscribed
  | .controlled _ => .controlled
  | .descriptorOnly => .descriptorOnly

/-- Canonical residual ledger extracted from every relation certificate. -/
def comparison (certificate : SourceRelationCertificate source carrier) :
    SetComparison source carrier :=
  match certificate with
  | .exact h => SetComparison.exact h
  | .inscribed h => SetComparison.inscribed h
  | .circumscribed h => SetComparison.circumscribed h
  | .controlled comparison => comparison
  | .descriptorOnly => SetComparison.descriptorOnly

/-- Recover the source containment of a circumscribed certificate. -/
theorem source_subset_carrier_of_kind_circumscribed
    (certificate : SourceRelationCertificate source carrier)
    (hkind : certificate.kind = .circumscribed) :
    source ⊆ carrier := by
  cases certificate with
  | exact h => simp [kind] at hkind
  | inscribed h => simp [kind] at hkind
  | circumscribed h => exact h
  | controlled comparison => simp [kind] at hkind
  | descriptorOnly => simp [kind] at hkind

/-- Recover the carrier containment of an inscribed certificate. -/
theorem carrier_subset_source_of_kind_inscribed
    (certificate : SourceRelationCertificate source carrier)
    (hkind : certificate.kind = .inscribed) :
    carrier ⊆ source := by
  cases certificate with
  | exact h => simp [kind] at hkind
  | inscribed h => exact h
  | circumscribed h => simp [kind] at hkind
  | controlled comparison => simp [kind] at hkind
  | descriptorOnly => simp [kind] at hkind

end SourceRelationCertificate

/-- A typed ellipsoid view with source identity and an exact construction witness. -/
structure EllipsoidView (V : Type u) (Witness : Type v)
    [AddCommGroup V] [Module ℝ V] where
  profile : EllipsoidProfile
  geometry : QuadraticEllipsoid V
  source : Set V
  relation : SourceRelationCertificate source geometry.carrier
  relation_compatible :
    match profile.construction.expectedRelation with
    | none => True
    | some expected => relation.kind = expected
  sourceId : String
  constructionId : String
  witness : Witness

namespace EllipsoidView

variable {Witness : Type v}

/-- The exact residual ledger associated with the view's source relation. -/
def comparison (view : EllipsoidView V Witness) :
    SetComparison view.source view.geometry.carrier :=
  view.relation.comparison

/-- Universal source-side return: every source point is either represented by
the ellipsoid or retained in the omitted-source residual. -/
theorem source_return (view : EllipsoidView V Witness) :
    view.source ⊆
      view.geometry.carrier ∪ view.comparison.omittedSource :=
  view.comparison.source_subset_carrier_union_omitted

/-- Universal carrier-side return: every ellipsoid point is either a source point
or retained in the added-carrier residual. -/
theorem carrier_return (view : EllipsoidView V Witness) :
    view.geometry.carrier ⊆
      view.source ∪ view.comparison.addedCarrier :=
  view.comparison.carrier_subset_source_union_added

end EllipsoidView

/-- Existential packaging permits different ellipsoid alternatives to retain
construction witnesses of different types. -/
structure PackedEllipsoidView (V : Type u)
    [AddCommGroup V] [Module ℝ V] where
  Witness : Type v
  view : EllipsoidView V Witness

end QuadraticCarrier

section DisambiguatedFiber

/-- Finite alternatives sharing one coarse observation, with a rank selecting the
actual alternative and a phase channel that separates every listed option. -/
structure DisambiguatedFiber (Alternative : Type u) (Coarse : Type v) where
  options : List Alternative
  options_nodup : options.Nodup
  coarse : Alternative → Coarse
  base : Coarse
  shares_base : ∀ alternative, alternative ∈ options → coarse alternative = base
  rank : Fin options.length
  phase : Alternative → ℂ
  phase_separates :
    ∀ {left right}, left ∈ options → right ∈ options →
      phase left = phase right → left = right

namespace DisambiguatedFiber

variable {Alternative : Type u} {Coarse : Type v}

/-- The alternative selected by the retained finite rank. -/
def selected (fiber : DisambiguatedFiber Alternative Coarse) : Alternative :=
  fiber.options.get fiber.rank

@[simp]
theorem selected_mem (fiber : DisambiguatedFiber Alternative Coarse) :
    fiber.selected ∈ fiber.options :=
  List.get_mem _ _

@[simp]
theorem selected_coarse (fiber : DisambiguatedFiber Alternative Coarse) :
    fiber.coarse fiber.selected = fiber.base :=
  fiber.shares_base fiber.selected fiber.selected_mem

/-- On the declared fiber, the phase channel is an exact identity witness. -/
theorem phase_eq_iff {fiber : DisambiguatedFiber Alternative Coarse}
    {left right : Alternative}
    (hleft : left ∈ fiber.options) (hright : right ∈ fiber.options) :
    fiber.phase left = fiber.phase right ↔ left = right := by
  constructor
  · exact fiber.phase_separates hleft hright
  · intro h
    simpa [h]

end DisambiguatedFiber

end DisambiguatedFiber

/-! ### Hostile relation controls -/

/-- An inscribed relation does not in general imply a circumscribed relation. -/
theorem inscribed_not_circumscribed_in_general :
    ∃ source carrier : Set Bool,
      SourceRelation.Holds .inscribed source carrier ∧
      ¬ SourceRelation.Holds .circumscribed source carrier := by
  refine ⟨Set.univ, {true}, ?_, ?_⟩
  · intro x hx
    trivial
  · intro h
    have hfalse : false ∈ ({true} : Set Bool) := h (by simp)
    simp at hfalse

/-- Descriptor-only status supplies neither containment direction. -/
theorem descriptor_only_has_no_automatic_containment :
    ∃ source carrier : Set Bool,
      SourceRelation.Holds .descriptorOnly source carrier ∧
      ¬ SourceRelation.Holds .inscribed source carrier ∧
      ¬ SourceRelation.Holds .circumscribed source carrier := by
  refine ⟨({true} : Set Bool), ({false} : Set Bool), trivial, ?_, ?_⟩
  · intro h
    have hfalse : false ∈ ({true} : Set Bool) := h (by simp)
    simp at hfalse
  · intro h
    have htrue : true ∈ ({false} : Set Bool) := h (by simp)
    simp at htrue

/-- A circumscribed relation does not in general imply an inscribed relation. -/
theorem circumscribed_not_inscribed_in_general :
    ∃ source carrier : Set Bool,
      SourceRelation.Holds .circumscribed source carrier ∧
      ¬ SourceRelation.Holds .inscribed source carrier := by
  refine ⟨({true} : Set Bool), Set.univ, ?_, ?_⟩
  · intro x hx
    trivial
  · intro h
    have hfalse : false ∈ ({true} : Set Bool) := h (by simp)
    simp at hfalse

end GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.TypedEllipsoidAtlas