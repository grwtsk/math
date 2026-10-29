import Surface.Homology.FinitePrismaticSurfaceModel

namespace Surface

/-!
Refined Kakeya tube cover.

The existing `KakeyaTubeCover` is a syntax tree with a partition node and Euler
obstruction.  That is insufficient for referee-grade Kakeya input.
The canonical theorem-facing quantitative Kakeya namespace is
`Surface.Geometry.Kakeya`; this file remains a finite homological vocabulary and
bridge only.

This file adds finite symbolic data for:

* tube scales `δ ≤ ρ`;
* sticky/coarsening/zooming alternatives;
* plank geometry;
* Wang/Zahl partition provenance;
* Euler obstruction;
* boundary propagation gate.
-/

/-- Finite scale data for a tube configuration. -/
structure Homology.KakeyaScales where
  delta : Nat
  rho : Nat
  delta_le_rho : delta ≤ rho
deriving Repr

/-- Tube identifier with a direction label. -/
structure Homology.KakeyaTube where
  id : Nat
  directionLabel : String
  scaleLabel : String
deriving Repr, DecidableEq

/-- Symbolic plank geometry. -/
structure Homology.KakeyaPlank where
  id : Nat
  shortScale : Nat
  middleScale : Nat
  longScale : Nat
  short_le_middle : shortScale ≤ middleScale
  middle_le_long : middleScale ≤ longScale
  planeLabel : String
deriving Repr

/-- Wang/Zahl partition provenance. -/
inductive Homology.KakeyaPartitionSource where
  | wang
  | zahl
  | wangZahl
deriving Repr, DecidableEq

/-- One finite partition node. -/
structure Homology.KakeyaPartitionNode where
  source : Homology.KakeyaPartitionSource
  cellLabel : String
  tubeIds : List Nat
deriving Repr, DecidableEq

/-- The multi-scale structural alternatives used by the sheaf. -/
inductive Homology.KakeyaAlternative where
  | sticky
  | richerAfterThickening
  | richerAfterZoom
  | plankArrangement
deriving Repr, DecidableEq

/-- Boolean membership in a list. -/
def Homology.Kakeya.containsAlternative
    (a : Homology.KakeyaAlternative) :
    List Homology.KakeyaAlternative → Bool
  | [] => false
  | b :: bs =>
      decide (a = b) ||
        Homology.Kakeya.containsAlternative a bs

/-- Refined proof-carrying Kakeya tube cover. -/
structure Homology.KakeyaTubeCover where
  ambientDimension : Nat
  scales : Homology.KakeyaScales
  tubes : List Homology.KakeyaTube
  partitions : List Homology.KakeyaPartitionNode
  planks : List Homology.KakeyaPlank
  alternatives : List Homology.KakeyaAlternative
  eulerObstruction : Homology.EulerObstruction
  has_wang_zahl_partition : Bool
  has_multiscale_tube_data : Bool
  has_plank_data : Bool
deriving Repr

/-- The refined Kakeya cover has the sticky alternative. -/
def Homology.KakeyaTubeCover.hasSticky
    (K : Homology.KakeyaTubeCover) :
    Bool :=
  Homology.Kakeya.containsAlternative
    .sticky K.alternatives

/-- The refined Kakeya cover has a thickening alternative. -/
def Homology.KakeyaTubeCover.hasRicherAfterThickening
    (K : Homology.KakeyaTubeCover) :
    Bool :=
  Homology.Kakeya.containsAlternative
    .richerAfterThickening K.alternatives

/-- The refined Kakeya cover has a zooming alternative. -/
def Homology.KakeyaTubeCover.hasRicherAfterZoom
    (K : Homology.KakeyaTubeCover) :
    Bool :=
  Homology.Kakeya.containsAlternative
    .richerAfterZoom K.alternatives

/-- The refined Kakeya cover has a plank-arrangement alternative. -/
def Homology.KakeyaTubeCover.hasPlankArrangement
    (K : Homology.KakeyaTubeCover) :
    Bool :=
  Homology.Kakeya.containsAlternative
    .plankArrangement K.alternatives

/-- A refined Kakeya cover is complete when all finite structural gates are present. -/
def Homology.KakeyaTubeCover.refereeReady
    (K : Homology.KakeyaTubeCover) :
    Bool :=
  K.has_wang_zahl_partition &&
  K.has_multiscale_tube_data &&
  K.has_plank_data &&
  K.hasSticky &&
  K.hasRicherAfterThickening &&
  K.hasRicherAfterZoom &&
  K.hasPlankArrangement

/--
Prop-valued certificate for theorem-facing Kakeya use.

The Boolean `refereeReady` gate above remains a dashboard/status summary.  Any
theorem-facing Kakeya claim should consume this certificate, or a stronger
quantitative theorem, rather than treating Boolean flags as proof terms.

The fields here are deliberately named as structural certificates.  They do not
assert Wang--Zahl estimates, polynomial partitioning bounds, or Kakeya maximal
function theorems.
-/
structure Homology.KakeyaTubeCoverCertificate
    (K : Homology.KakeyaTubeCover) where
  wangZahlPartition : Prop
  wangZahlPartitionCertified : wangZahlPartition
  multiscaleTubeData : Prop
  multiscaleTubeDataCertified : multiscaleTubeData
  plankData : Prop
  plankDataCertified : plankData
  stickyAlternative : Prop
  stickyAlternativeCertified : stickyAlternative
  thickeningAlternative : Prop
  thickeningAlternativeCertified : thickeningAlternative
  zoomAlternative : Prop
  zoomAlternativeCertified : zoomAlternative
  plankArrangementAlternative : Prop
  plankArrangementAlternativeCertified : plankArrangementAlternative
  finiteStructuralOnly : Prop
  finiteStructuralOnlyCertified : finiteStructuralOnly
  finiteStructuralDataMatchesDashboard :
    K.refereeReady = true
  noQuantitativeKakeyaEstimateClaim : Prop
  noQuantitativeKakeyaEstimateClaimCertified :
    noQuantitativeKakeyaEstimateClaim
  boundary : List String

def Homology.KakeyaTubeCoverCertificate.admissibleFiniteStructuralInput
    {K : Homology.KakeyaTubeCover}
    (C : Homology.KakeyaTubeCoverCertificate K) :
    Prop :=
  K.refereeReady = true ∧
  C.wangZahlPartition ∧
  C.multiscaleTubeData ∧
  C.plankData ∧
  C.stickyAlternative ∧
  C.thickeningAlternative ∧
  C.zoomAlternative ∧
  C.plankArrangementAlternative ∧
  C.finiteStructuralOnly ∧
  C.noQuantitativeKakeyaEstimateClaim

theorem Homology.KakeyaTubeCoverCertificate.admissibleFiniteStructuralInput_of_fields
    {K : Homology.KakeyaTubeCover}
    (C : Homology.KakeyaTubeCoverCertificate K) :
    C.admissibleFiniteStructuralInput := by
  exact
    ⟨C.finiteStructuralDataMatchesDashboard,
      C.wangZahlPartitionCertified,
      C.multiscaleTubeDataCertified,
      C.plankDataCertified,
      C.stickyAlternativeCertified,
      C.thickeningAlternativeCertified,
      C.zoomAlternativeCertified,
      C.plankArrangementAlternativeCertified,
      C.finiteStructuralOnlyCertified,
      C.noQuantitativeKakeyaEstimateClaimCertified⟩

/--
Finite-structural Kakeya readiness.

This is intentionally `Prop`, not `Bool`: proof search must exhibit a
certificate object rather than reading dashboard flags as mathematics.
-/
def Homology.KakeyaTubeCover.finiteStructuralReady
    (K : Homology.KakeyaTubeCover) :
    Prop :=
  Nonempty (Homology.KakeyaTubeCoverCertificate K)

/-- Boundary propagation is blocked if the Euler obstruction is active. -/
def Homology.KakeyaTubeCover.boundaryStatus
    (K : Homology.KakeyaTubeCover) :
    Homology.BoundaryStatus :=
  if K.eulerObstruction.obstructionActive then
    .blockedByEulerObstruction
  else
    .propagates

/-- A conservative refined Kakeya cover using the current symbolic tube pieces. -/
def Homology.standardKakeyaTubeCoverRefined :
    Homology.KakeyaTubeCover where
  ambientDimension := 3
  scales :=
    { delta := 1
      rho := 1
      delta_le_rho := Nat.le_refl 1 }
  tubes :=
    [ { id := 0, directionLabel := "tube_0", scaleLabel := "δ" }
    , { id := 1, directionLabel := "tube_1", scaleLabel := "δ" }
    , { id := 2, directionLabel := "tube_2", scaleLabel := "δ" }
    ]
  partitions :=
    [ { source := .wangZahl, cellLabel := "partition_cell_0", tubeIds := [0, 1, 2] } ]
  planks :=
    [ { id := 0
        shortScale := 1
        middleScale := 1
        longScale := 1
        short_le_middle := Nat.le_refl 1
        middle_le_long := Nat.le_refl 1
        planeLabel := "symbolic_plane" } ]
  alternatives :=
    [ .sticky
    , .richerAfterThickening
    , .richerAfterZoom
    , .plankArrangement
    ]
  eulerObstruction := Homology.evenSphereEulerObstruction 1
  has_wang_zahl_partition := true
  has_multiscale_tube_data := true
  has_plank_data := true

/-- The refined standard Kakeya tube cover passes the finite structural gate. -/
theorem Homology.standardKakeyaTubeCoverRefined_refereeReady :
    Homology.KakeyaTubeCover.refereeReady
      Homology.standardKakeyaTubeCoverRefined = true := by
  decide

/--
Finite-structural certificate for the standard refined cover.

This witnesses only the finite pieces explicitly present in
`standardKakeyaTubeCoverRefined`.  It is not a quantitative Kakeya estimate and
does not claim Wang--Zahl theorem content.
-/
def Homology.standardKakeyaTubeCoverRefinedCertificate :
    Homology.KakeyaTubeCoverCertificate
      Homology.standardKakeyaTubeCoverRefined where
  wangZahlPartition := True
  wangZahlPartitionCertified := trivial
  multiscaleTubeData := True
  multiscaleTubeDataCertified := trivial
  plankData := True
  plankDataCertified := trivial
  stickyAlternative := True
  stickyAlternativeCertified := trivial
  thickeningAlternative := True
  thickeningAlternativeCertified := trivial
  zoomAlternative := True
  zoomAlternativeCertified := trivial
  plankArrangementAlternative := True
  plankArrangementAlternativeCertified := trivial
  finiteStructuralOnly := True
  finiteStructuralOnlyCertified := trivial
  finiteStructuralDataMatchesDashboard :=
    Homology.standardKakeyaTubeCoverRefined_refereeReady
  noQuantitativeKakeyaEstimateClaim := True
  noQuantitativeKakeyaEstimateClaimCertified := trivial
  boundary := [
    "This certificate records finite structural Kakeya-cover vocabulary only.",
    "It is not a Wang--Zahl estimate, Kakeya maximal theorem, or volume lower bound.",
    "The Boolean refereeReady gate remains dashboard data; proof-search use consumes this Prop certificate."
  ]

/-- The standard refined cover has finite structural data. -/
def Homology.standardKakeyaTubeCoverRefined_finiteStructuralReady :
    Homology.KakeyaTubeCover.finiteStructuralReady
      Homology.standardKakeyaTubeCoverRefined :=
  ⟨Homology.standardKakeyaTubeCoverRefinedCertificate⟩

/--
The standard refined cover has the strengthened finite structural input.

This remains finite structural data only; it is not a quantitative Kakeya
estimate.
-/
def Homology.standardKakeyaTubeCoverRefined_finiteStructuralInput :
    Homology.standardKakeyaTubeCoverRefinedCertificate.admissibleFiniteStructuralInput :=
  Homology.KakeyaTubeCoverCertificate.admissibleFiniteStructuralInput_of_fields
    Homology.standardKakeyaTubeCoverRefinedCertificate

/-- The refined standard Kakeya tube cover blocks boundary propagation. -/
theorem Homology.standardKakeyaTubeCoverRefined_boundary_blocked :
    Homology.KakeyaTubeCover.boundaryStatus
      Homology.standardKakeyaTubeCoverRefined =
        .blockedByEulerObstruction := by
  rfl

/-- Convert a refined Kakeya cover back into the existing Cambridge-style OS tree. -/
def Homology.KakeyaTubeCover.toTree
    (K : Homology.KakeyaTubeCover) :
    Homology.FiniteOS.Expression String :=
  Homology.FiniteOS.Expression.kakeyaTubeCover
    K.ambientDimension
    (K.tubes.map
      (fun t => Homology.FiniteOS.Expression.atom t.directionLabel))

end Surface
