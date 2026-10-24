# Complete source: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskKernel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9803601a0048b6c70d37aac3433d908f740013ef` · SHA-256 `cdcc827c9d128cc0187a77af8228e132d000d92c31d335bc7fc6ee84cb0ab266`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Quotient topology and homeomorphism APIs: Mathlib contributors.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#1008. Disk parent PR #1003 exact head:
9f1809e7870608f98fbaa943c4ab9bf53a9ba489.
Reconciled cone-kernel supplier PR #987 exact head:
1800553a9cdaa4a9fb031155de81c0bd180513f1.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskCharacteristic
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeKernel

/-!
# Exact closed-disk kernel of the polygon characteristic map

The disk-side parent transports the authentic unpaired perimeter cone
to Mathlib's closed complex unit disk and defines the characteristic
map into the paired radial filling.  The independently reconciled
kernel stack proves that equality under the original cone-to-filled
map is exactly the EqvGen closure of the two authentic reversed
opposite-side pairings at outer radius one.

This file transports those same two generators through the existing
cone-to-disk homeomorphism.  It proves that the resulting disk relation
is exactly the characteristic-map kernel and packages the quotient of
the closed disk by that relation as homeomorphic to the filled polygon
quotient.

This is a quotient presentation with exact fibers.  The two-map
adjunction/pushout universal property for arbitrary compatible maps
from the disk and paired one-skeleton is still separate.  No CW complex,
manifold, homology, fundamental group, hyperbolic, spectral, arithmetic,
or Riemann-hypothesis conclusion is asserted.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskKernel

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeFilledQuotient
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeOuterPairs
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeKernel
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardCircleConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskCharacteristic

/-- The standard closed-disk boundary point retaining one exact
original directed polygon side identifier and tangential parameter. -/
def diskBoundaryPoint (k : ℕ) (p : BoundaryPoint k) :
    Complex.UnitClosedDisc :=
  perimeterConeHomeomorphUnitClosedDisc k (outerConePoint k p)

/-- The full authentic unpaired perimeter included as the boundary of
the standard closed disk through the existing cone homeomorphism. -/
def diskPerimeterBoundary (k : ℕ) :
    UnpairedPerimeter k → Complex.UnitClosedDisc :=
  perimeterConeHomeomorphUnitClosedDisc k ∘ coneBoundary k

/-- The transported perimeter boundary is genuinely continuous. -/
theorem diskPerimeterBoundary_continuous (k : ℕ) :
    Continuous (diskPerimeterBoundary k) :=
  (perimeterConeHomeomorphUnitClosedDisc k).continuous.comp
    (coneBoundary_continuous k)

/-- Every original source interval point agrees with the corresponding
point of the transported unpaired perimeter boundary. -/
@[simp] theorem diskPerimeterBoundary_projection (k : ℕ)
    (p : BoundaryPoint k) :
    diskPerimeterBoundary k (perimeterProjection k p) =
      diskBoundaryPoint k p := by
  exact congrArg (perimeterConeHomeomorphUnitClosedDisc k)
    (outerConePoint_eq_boundary k p).symm

/-- Every transported original side point lies on the complex unit
circle, because it has authentic cone radius one. -/
@[simp] theorem norm_diskBoundaryPoint (k : ℕ)
    (p : BoundaryPoint k) :
    ‖(diskBoundaryPoint k p : ℂ)‖ = 1 := by
  simpa [diskBoundaryPoint, outerConePoint] using
    (perimeterConeHomeomorphUnitClosedDisc_radius k
      (outerConePoint k p))

/-- Exact source equation at the closed-disk boundary: the
characteristic map is the old radial quotient at radius one. -/
@[simp] theorem diskCharacteristic_boundaryPoint (k : ℕ)
    (p : BoundaryPoint k) :
    diskCharacteristic k (diskBoundaryPoint k p) =
      radialProjection k (p, 1) := by
  rw [diskBoundaryPoint, diskCharacteristic_cone]
  simpa [outerConePoint] using
    (coneToFilled_radialSourceToCone k (p, 1))

/-- Exactly the two original reversed opposite-side pairings,
transported to the boundary of the genuine closed complex disk. -/
inductive DiskOuterPairStep (k : ℕ) :
    Complex.UnitClosedDisc → Complex.UnitClosedDisc → Prop where
  | pairA (h : Handle k) (t : unitInterval) :
      DiskOuterPairStep k
        (diskBoundaryPoint k ((h, 0), t))
        (diskBoundaryPoint k ((h, 2), unitInterval.symm t))
  | pairB (h : Handle k) (t : unitInterval) :
      DiskOuterPairStep k
        (diskBoundaryPoint k ((h, 1), t))
        (diskBoundaryPoint k ((h, 3), unitInterval.symm t))

/-- The smallest equivalence relation generated by only the two exact
outer boundary pairing families. -/
def DiskOuterConnected (k : ℕ) :
    Complex.UnitClosedDisc → Complex.UnitClosedDisc → Prop :=
  Relation.EqvGen (DiskOuterPairStep k)

/-- The corresponding Setoid on the actual closed complex disk. -/
def diskOuterPairSetoid (k : ℕ) :
    Setoid Complex.UnitClosedDisc where
  r := DiskOuterConnected k
  iseqv := Relation.EqvGen.is_equivalence _

/-- One transported disk generator maps back to the corresponding
existing cone generator under the inverse disk homeomorphism. -/
theorem diskOuterStep_to_coneOuterConnected (k : ℕ)
    {u v : Complex.UnitClosedDisc}
    (h : DiskOuterPairStep k u v) :
    ConeOuterConnected k
      ((perimeterConeHomeomorphUnitClosedDisc k).symm u)
      ((perimeterConeHomeomorphUnitClosedDisc k).symm v) := by
  cases h with
  | pairA h t =>
      simpa [diskBoundaryPoint] using
        (Relation.EqvGen.rel _ _
          (ConeOuterPairStep.pairA h t))
  | pairB h t =>
      simpa [diskBoundaryPoint] using
        (Relation.EqvGen.rel _ _
          (ConeOuterPairStep.pairB h t))

/-- The complete generated disk relation maps into the exact existing
cone outer-pairing relation. -/
theorem diskOuterConnected_to_coneOuterConnected (k : ℕ)
    {u v : Complex.UnitClosedDisc}
    (h : DiskOuterConnected k u v) :
    ConeOuterConnected k
      ((perimeterConeHomeomorphUnitClosedDisc k).symm u)
      ((perimeterConeHomeomorphUnitClosedDisc k).symm v) := by
  induction h with
  | rel u v huv =>
      exact diskOuterStep_to_coneOuterConnected k huv
  | refl u =>
      exact Relation.EqvGen.refl _
  | symm u v _ ih =>
      exact Relation.EqvGen.symm _ _ ih
  | trans u v w _ _ ih₁ ih₂ =>
      exact Relation.EqvGen.trans _ _ _ ih₁ ih₂

/-- Conversely each primitive cone outer pairing becomes exactly one
of the two transported disk generators. -/
theorem coneOuterStep_to_diskOuterConnected (k : ℕ)
    {x y : PerimeterCone k}
    (h : ConeOuterPairStep k x y) :
    DiskOuterConnected k
      (perimeterConeHomeomorphUnitClosedDisc k x)
      (perimeterConeHomeomorphUnitClosedDisc k y) := by
  cases h with
  | pairA h t =>
      simpa [diskBoundaryPoint] using
        (Relation.EqvGen.rel _ _
          (DiskOuterPairStep.pairA h t))
  | pairB h t =>
      simpa [diskBoundaryPoint] using
        (Relation.EqvGen.rel _ _
          (DiskOuterPairStep.pairB h t))

/-- The entire cone outer relation transports to the generated disk
relation with no additional primitive identification. -/
theorem coneOuterConnected_to_diskOuterConnected (k : ℕ)
    {x y : PerimeterCone k}
    (h : ConeOuterConnected k x y) :
    DiskOuterConnected k
      (perimeterConeHomeomorphUnitClosedDisc k x)
      (perimeterConeHomeomorphUnitClosedDisc k y) := by
  induction h with
  | rel x y hxy =>
      exact coneOuterStep_to_diskOuterConnected k hxy
  | refl x =>
      exact Relation.EqvGen.refl _
  | symm x y _ ih =>
      exact Relation.EqvGen.symm _ _ ih
  | trans x y z _ _ ih₁ ih₂ =>
      exact Relation.EqvGen.trans _ _ _ ih₁ ih₂

/-- Exact equivalence between the source-generated disk relation and
the already characterized source-generated cone relation. -/
theorem diskOuterConnected_iff_coneOuterConnected (k : ℕ)
    (u v : Complex.UnitClosedDisc) :
    DiskOuterConnected k u v ↔
      ConeOuterConnected k
        ((perimeterConeHomeomorphUnitClosedDisc k).symm u)
        ((perimeterConeHomeomorphUnitClosedDisc k).symm v) := by
  constructor
  · exact diskOuterConnected_to_coneOuterConnected k
  · intro h
    have h' := coneOuterConnected_to_diskOuterConnected k h
    simpa using h'

/-- Every primitive disk pairing preserves the complex norm; in fact
both endpoints lie on the unit circle. -/
theorem diskOuterStep_preserves_norm (k : ℕ)
    {u v : Complex.UnitClosedDisc}
    (h : DiskOuterPairStep k u v) :
    ‖(u : ℂ)‖ = ‖(v : ℂ)‖ := by
  cases h <;> simp

/-- The complete generated disk relation preserves radius. -/
theorem diskOuterConnected_preserves_norm (k : ℕ)
    {u v : Complex.UnitClosedDisc}
    (h : DiskOuterConnected k u v) :
    ‖(u : ℂ)‖ = ‖(v : ℂ)‖ := by
  induction h with
  | rel u v huv =>
      exact diskOuterStep_preserves_norm k huv
  | refl u => rfl
  | symm u v _ ih => exact ih.symm
  | trans u v w _ _ ih₁ ih₂ => exact ih₁.trans ih₂

/-- Exact characteristic-map fibers on the standard closed disk.
No interior positive-radius points are identified beyond equality. -/
theorem diskCharacteristic_eq_iff_diskOuterConnected (k : ℕ)
    (u v : Complex.UnitClosedDisc) :
    diskCharacteristic k u = diskCharacteristic k v ↔
      DiskOuterConnected k u v := by
  change coneToFilled k
      ((perimeterConeHomeomorphUnitClosedDisc k).symm u) =
    coneToFilled k
      ((perimeterConeHomeomorphUnitClosedDisc k).symm v) ↔
    DiskOuterConnected k u v
  rw [coneToFilled_eq_iff_outerConnected,
    diskOuterConnected_iff_coneOuterConnected]

/-- The standard disk characteristic map is an actual quotient map,
not merely a continuous surjection. -/
theorem diskCharacteristic_isQuotientMap (k : ℕ) :
    IsQuotientMap (diskCharacteristic k) := by
  unfold diskCharacteristic
  exact (coneToFilled_isQuotientMap k).comp
    (perimeterConeHomeomorphUnitClosedDisc k).symm.isQuotientMap

/-- Descend the characteristic map through the exact disk outer-pair
quotient. -/
def diskOuterPairedToFilled (k : ℕ) :
    Quotient (diskOuterPairSetoid k) → FilledPolygonQuotient k :=
  Quotient.lift (diskCharacteristic k) (by
    intro u v h
    exact (diskCharacteristic_eq_iff_diskOuterConnected k u v).mpr h)

@[simp] theorem diskOuterPairedToFilled_projection (k : ℕ)
    (u : Complex.UnitClosedDisc) :
    diskOuterPairedToFilled k
        (Quotient.mk (diskOuterPairSetoid k) u) =
      diskCharacteristic k u := rfl

/-- The descended disk quotient map remains surjective. -/
theorem diskOuterPairedToFilled_surjective (k : ℕ) :
    Function.Surjective (diskOuterPairedToFilled k) := by
  intro y
  obtain ⟨u, hu⟩ := diskCharacteristic_surjective k y
  exact ⟨Quotient.mk (diskOuterPairSetoid k) u, by
    simpa using hu⟩

/-- Exact disk fibers make the descended map injective. -/
theorem diskOuterPairedToFilled_injective (k : ℕ) :
    Function.Injective (diskOuterPairedToFilled k) := by
  intro x y
  refine Quotient.inductionOn x ?_
  intro u
  refine Quotient.inductionOn y ?_
  intro v huv
  apply Quotient.sound
  exact (diskCharacteristic_eq_iff_diskOuterConnected k u v).mp
    (by simpa only [diskOuterPairedToFilled_projection] using huv)

/-- The disk quotient and filled polygon quotient are bijective at the
exact source-generated relation. -/
theorem diskOuterPairedToFilled_bijective (k : ℕ) :
    Function.Bijective (diskOuterPairedToFilled k) :=
  ⟨diskOuterPairedToFilled_injective k,
    diskOuterPairedToFilled_surjective k⟩

/-- Continuity of the descended map uses the genuine coinduced disk
quotient topology. -/
theorem diskOuterPairedToFilled_continuous (k : ℕ) :
    Continuous (diskOuterPairedToFilled k) := by
  apply Continuous.quotient_lift (diskCharacteristic_continuous k)
  intro u v h
  exact (diskCharacteristic_eq_iff_diskOuterConnected k u v).mpr h

/-- The exact closed-disk quotient by the two original opposite-side
pairings is homeomorphic to the authentic filled polygon quotient. -/
noncomputable def diskOuterPairedHomeomorph (k : ℕ) :
    Quotient (diskOuterPairSetoid k) ≃ₜ FilledPolygonQuotient k := by
  let hcont := diskOuterPairedToFilled_continuous k
  let hbij := diskOuterPairedToFilled_bijective k
  have hquot : IsQuotientMap (diskOuterPairedToFilled k) := by
    have hproj : IsQuotientMap
        (Quotient.mk (diskOuterPairSetoid k) :
          Complex.UnitClosedDisc →
            Quotient (diskOuterPairSetoid k)) :=
      isQuotientMap_quotient_mk'
    have hcomp : IsQuotientMap
        (diskOuterPairedToFilled k ∘
          (Quotient.mk (diskOuterPairSetoid k))) := by
      change IsQuotientMap (diskCharacteristic k)
      exact diskCharacteristic_isQuotientMap k
    exact hproj.of_comp_isQuotientMap hcomp
  exact hquot.homeoOfBijective hbij

/-- Genus two retains the exact disk characteristic kernel. -/
theorem genusTwo_diskCharacteristic_eq_iff
    (u v : Complex.UnitClosedDisc) :
    diskCharacteristic 0 u = diskCharacteristic 0 v ↔
      DiskOuterConnected 0 u v :=
  diskCharacteristic_eq_iff_diskOuterConnected 0 u v

/-- Genus three receives the corresponding exact disk quotient
homeomorphism while retaining all twelve original directed sides. -/
def genusThree_diskOuterPairedHomeomorph :
    Quotient (diskOuterPairSetoid 1) ≃ₜ FilledPolygonQuotient 1 :=
  diskOuterPairedHomeomorph 1

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskKernel
```
