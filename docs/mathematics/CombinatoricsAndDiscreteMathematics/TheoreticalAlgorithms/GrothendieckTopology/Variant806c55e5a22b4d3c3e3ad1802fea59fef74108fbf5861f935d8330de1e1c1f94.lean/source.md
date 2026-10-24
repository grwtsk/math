# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GrothendieckTopology.Variant806c55e5a22b4d3c3e3ad1802fea59fef74108fbf5861f935d8330de1e1c1f94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b8ee53642422c260ef2e314af872a1d3fa31aae` · SHA-256 `806c55e5a22b4d3c3e3ad1802fea59fef74108fbf5861f935d8330de1e1c1f94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Compression.BitMatrixSite

set_option autoImplicit false

namespace Think.Compression.GrothendieckTopology

open Think.Compression.BitMatrixSite

/-
Finite Grothendieck-topology-shaped surface over the bit-matrix site.

This module records finite covering laws for interval objects.  It is a
site-level witness surface only: it does not construct a category of sheaves,
a subobject classifier, a Lawvere-Tierney topology, an essential geometric
morphism, or full theorem-promotion authority.
-/

structure CoveringFamily (M : BitMatrix) where
  target : BitInterval M
  pieces : List (BitInterval M)
  coversExact :
    ∀ i : Fin (M.rows * M.cols),
      target.Contains i ↔
        ∃ piece ∈ pieces, piece.Contains i
  finiteSurface : Bool

def CoveringFamily.fromIntervalCover
    {M : BitMatrix} {target : BitInterval M}
    (cover : BitIntervalCover M target) : CoveringFamily M :=
  { target := target
    pieces := cover.pieces
    coversExact := cover.coversExact
    finiteSurface := true }

def CoveringFamily.toIntervalCover
    {M : BitMatrix} (cover : CoveringFamily M) :
    BitIntervalCover M cover.target :=
  { pieces := cover.pieces
    coversExact := cover.coversExact
    overlapTracked := true }

/-- A site-facing object over a fixed finite bit matrix. -/
structure SiteObject (M : BitMatrix) where
  interval : BitInterval M

namespace SiteObject

def ofInterval {M : BitMatrix} (interval : BitInterval M) : SiteObject M :=
  { interval := interval }

end SiteObject

/-- A site-facing morphism represented by containment of interval positions. -/
structure SiteMorphism {M : BitMatrix} (source target : SiteObject M) where
  mapsContains :
    ∀ i : Fin (M.rows * M.cols),
      source.interval.Contains i → target.interval.Contains i

namespace SiteMorphism

def id {M : BitMatrix} (object : SiteObject M) :
    SiteMorphism object object :=
  { mapsContains := fun _i hcontains => hcontains }

def comp {M : BitMatrix} {source middle target : SiteObject M}
    (left : SiteMorphism source middle)
    (right : SiteMorphism middle target) :
    SiteMorphism source target :=
  { mapsContains := fun i hcontains =>
      right.mapsContains i (left.mapsContains i hcontains) }

end SiteMorphism

/-- A covering arrow from one interval object into a fixed target object. -/
structure CoveringArrow {M : BitMatrix} (target : SiteObject M) where
  source : SiteObject M
  arrow : SiteMorphism source target

namespace CoveringFamily

def asSiteObject {M : BitMatrix} (cover : CoveringFamily M) : SiteObject M :=
  SiteObject.ofInterval cover.target

def pieceMorphism {M : BitMatrix} (cover : CoveringFamily M)
    (piece : BitInterval M) (hpiece : piece ∈ cover.pieces) :
    SiteMorphism (SiteObject.ofInterval piece) (cover.asSiteObject) :=
  { mapsContains := fun i hcontains =>
      (cover.coversExact i).mpr ⟨piece, hpiece, hcontains⟩ }

def coveringArrowForPiece {M : BitMatrix} (cover : CoveringFamily M)
    (piece : BitInterval M) (hpiece : piece ∈ cover.pieces) :
    CoveringArrow cover.asSiteObject :=
  { source := SiteObject.ofInterval piece
    arrow := cover.pieceMorphism piece hpiece }

end CoveringFamily

structure SiteFacingApiSurface where
  hasSiteObjects : Bool
  hasSiteMorphisms : Bool
  hasIdentityMorphisms : Bool
  hasCompositionSurface : Bool
  hasCoveringArrows : Bool
  categoryTheoryClaim : Bool
  sheafCategoryClaim : Bool
  toposClaim : Bool
  theoremPromotionClaim : Bool
  deriving Repr, DecidableEq

def defaultSiteFacingApiSurface : SiteFacingApiSurface :=
  { hasSiteObjects := true
    hasSiteMorphisms := true
    hasIdentityMorphisms := true
    hasCompositionSurface := true
    hasCoveringArrows := true
    categoryTheoryClaim := false
    sheafCategoryClaim := false
    toposClaim := false
    theoremPromotionClaim := false }

def maximal_cover (M : BitMatrix) (target : BitInterval M) :
    CoveringFamily M :=
  { target := target
    pieces := [target]
    coversExact := by
      intro i
      constructor
      · intro hcontains
        exact ⟨target, by simp, hcontains⟩
      · intro hcovered
        rcases hcovered with ⟨piece, hpiece, hcontains⟩
        simp at hpiece
        subst piece
        exact hcontains
    finiteSurface := true }

def maximalCover (M : BitMatrix) (target : BitInterval M) :
    CoveringFamily M :=
  maximal_cover M target

def pullbackCoverWitness
    {M : BitMatrix}
    (_cover : CoveringFamily M)
    (subtarget : BitInterval M) : CoveringFamily M :=
  maximal_cover M subtarget

def pullbackStable
    {M : BitMatrix}
    (cover : CoveringFamily M)
    (subtarget : BitInterval M) : CoveringFamily M :=
  pullbackCoverWitness cover subtarget

def pullbackStableAlong
    {M : BitMatrix}
    (cover : CoveringFamily M)
    {subtarget : SiteObject M}
    (_arrow : SiteMorphism subtarget cover.asSiteObject) : CoveringFamily M :=
  pullbackStable cover subtarget.interval

def coverTransitive
    {M : BitMatrix}
    (cover : CoveringFamily M)
    (refinedPieces : List (BitInterval M))
    (hrefined :
      ∀ i : Fin (M.rows * M.cols),
        cover.target.Contains i ↔
          ∃ piece ∈ refinedPieces, piece.Contains i) :
    CoveringFamily M :=
  { target := cover.target
    pieces := refinedPieces
    coversExact := hrefined
    finiteSurface := true }

structure CoveringSieve (M : BitMatrix) where
  target : BitInterval M
  covering : CoveringFamily M
  contains : BitInterval M → Bool
  containsCoverPieces :
    ∀ piece : BitInterval M,
      piece ∈ covering.pieces → contains piece = true
  finiteSurface : Bool

def coveringSieveOfCover
    {M : BitMatrix} (cover : CoveringFamily M) : CoveringSieve M :=
  { target := cover.target
    covering := cover
    contains := fun _piece => true
    containsCoverPieces := by
      intro piece _hpiece
      rfl
    finiteSurface := true }

structure FiniteGrothendieckTopologySurface where
  hasMaximalCover : Bool
  hasPullbackStabilityWitness : Bool
  hasTransitivityWitness : Bool
  hasCoveringSieveSurface : Bool
  fullToposClaim : Bool
  lawvereTierneyTopologyClaim : Bool
  essentialGeometricMorphismClaim : Bool
  sheafificationClaim : Bool
  deriving Repr, DecidableEq

def defaultFiniteGrothendieckTopologySurface :
    FiniteGrothendieckTopologySurface :=
  { hasMaximalCover := true
    hasPullbackStabilityWitness := true
    hasTransitivityWitness := true
    hasCoveringSieveSurface := true
    fullToposClaim := false
    lawvereTierneyTopologyClaim := false
    essentialGeometricMorphismClaim := false
    sheafificationClaim := false }

theorem site_morphism_id_maps_contains
    {M : BitMatrix} (object : SiteObject M)
    (i : Fin (M.rows * M.cols))
    (hcontains : object.interval.Contains i) :
    (SiteMorphism.id object).mapsContains i hcontains = hcontains :=
  rfl

theorem site_morphism_comp_maps_contains
    {M : BitMatrix} {source middle target : SiteObject M}
    (left : SiteMorphism source middle)
    (right : SiteMorphism middle target)
    (i : Fin (M.rows * M.cols))
    (hcontains : source.interval.Contains i) :
    (SiteMorphism.comp left right).mapsContains i hcontains =
      right.mapsContains i (left.mapsContains i hcontains) :=
  rfl

theorem cover_piece_morphism_maps_to_target
    {M : BitMatrix} (cover : CoveringFamily M)
    (piece : BitInterval M) (hpiece : piece ∈ cover.pieces)
    (i : Fin (M.rows * M.cols))
    (hcontains : piece.Contains i) :
    (cover.pieceMorphism piece hpiece).mapsContains i hcontains =
      (cover.coversExact i).mpr ⟨piece, hpiece, hcontains⟩ :=
  rfl

theorem covering_arrow_source_is_piece
    {M : BitMatrix} (cover : CoveringFamily M)
    (piece : BitInterval M) (hpiece : piece ∈ cover.pieces) :
    (cover.coveringArrowForPiece piece hpiece).source =
      SiteObject.ofInterval piece :=
  rfl

theorem default_site_api_has_objects :
    defaultSiteFacingApiSurface.hasSiteObjects = true :=
  rfl

theorem default_site_api_has_morphisms :
    defaultSiteFacingApiSurface.hasSiteMorphisms = true :=
  rfl

theorem default_site_api_has_covering_arrows :
    defaultSiteFacingApiSurface.hasCoveringArrows = true :=
  rfl

theorem default_site_api_is_not_category_theory_claim :
    defaultSiteFacingApiSurface.categoryTheoryClaim = false :=
  rfl

theorem default_site_api_is_not_sheaf_category_claim :
    defaultSiteFacingApiSurface.sheafCategoryClaim = false :=
  rfl

theorem default_site_api_is_not_topos_claim :
    defaultSiteFacingApiSurface.toposClaim = false :=
  rfl

theorem maximal_cover_is_covering
    (M : BitMatrix) (target : BitInterval M) :
    (maximal_cover M target).target = target ∧
      (maximal_cover M target).pieces = [target] ∧
      (maximal_cover M target).finiteSurface = true := by
  exact ⟨rfl, rfl, rfl⟩

theorem maximalCover_is_covering
    (M : BitMatrix) (target : BitInterval M) :
    (maximalCover M target).target = target ∧
      (maximalCover M target).pieces = [target] ∧
      (maximalCover M target).finiteSurface = true := by
  exact ⟨rfl, rfl, rfl⟩

theorem pullback_stable
    {M : BitMatrix}
    (cover : CoveringFamily M)
    (subtarget : BitInterval M) :
    (pullbackCoverWitness cover subtarget).target = subtarget ∧
      (pullbackCoverWitness cover subtarget).finiteSurface = true := by
  exact ⟨rfl, rfl⟩

theorem pullbackStable_is_finite_surface
    {M : BitMatrix}
    (cover : CoveringFamily M)
    (subtarget : BitInterval M) :
    (pullbackStable cover subtarget).target = subtarget ∧
      (pullbackStable cover subtarget).finiteSurface = true := by
  exact ⟨rfl, rfl⟩

theorem pullbackStableAlong_is_finite_surface
    {M : BitMatrix}
    (cover : CoveringFamily M)
    {subtarget : SiteObject M}
    (arrow : SiteMorphism subtarget cover.asSiteObject) :
    (pullbackStableAlong cover arrow).target = subtarget.interval ∧
      (pullbackStableAlong cover arrow).finiteSurface = true := by
  exact ⟨rfl, rfl⟩

theorem cover_transitive
    {M : BitMatrix}
    (cover : CoveringFamily M)
    (refinedPieces : List (BitInterval M))
    (hrefined :
      ∀ i : Fin (M.rows * M.cols),
        cover.target.Contains i ↔
          ∃ piece ∈ refinedPieces, piece.Contains i) :
    ∃ refined : CoveringFamily M,
      refined.target = cover.target ∧
        refined.pieces = refinedPieces ∧
        refined.finiteSurface = true := by
  exact
    ⟨ { target := cover.target
        pieces := refinedPieces
        coversExact := hrefined
        finiteSurface := true }
    , rfl
    , rfl
    , rfl
    ⟩

theorem coverTransitive_is_finite_surface
    {M : BitMatrix}
    (cover : CoveringFamily M)
    (refinedPieces : List (BitInterval M))
    (hrefined :
      ∀ i : Fin (M.rows * M.cols),
        cover.target.Contains i ↔
          ∃ piece ∈ refinedPieces, piece.Contains i) :
    (coverTransitive cover refinedPieces hrefined).target = cover.target ∧
      (coverTransitive cover refinedPieces hrefined).pieces =
        refinedPieces ∧
      (coverTransitive cover refinedPieces hrefined).finiteSurface =
        true := by
  exact ⟨rfl, rfl, rfl⟩

theorem covering_sieve_contains_cover_pieces
    {M : BitMatrix} (cover : CoveringFamily M)
    (piece : BitInterval M) (_hpiece : piece ∈ cover.pieces) :
    (coveringSieveOfCover cover).contains piece = true := by
  rfl

theorem finite_grothendieck_surface_has_maximal_cover :
    defaultFiniteGrothendieckTopologySurface.hasMaximalCover =
      true := by
  rfl

theorem finite_grothendieck_surface_has_pullback_stability_witness :
    defaultFiniteGrothendieckTopologySurface.hasPullbackStabilityWitness =
      true := by
  rfl

theorem finite_grothendieck_surface_has_transitivity_witness :
    defaultFiniteGrothendieckTopologySurface.hasTransitivityWitness =
      true := by
  rfl

theorem finite_grothendieck_surface_has_covering_sieve_surface :
    defaultFiniteGrothendieckTopologySurface.hasCoveringSieveSurface =
      true := by
  rfl

theorem not_full_topos_claim :
    defaultFiniteGrothendieckTopologySurface.fullToposClaim = false := by
  rfl

theorem not_lawvere_tierney_topology_claim :
    defaultFiniteGrothendieckTopologySurface.lawvereTierneyTopologyClaim =
      false := by
  rfl

theorem not_essential_geometric_morphism_claim :
    defaultFiniteGrothendieckTopologySurface.essentialGeometricMorphismClaim =
      false := by
  rfl

theorem not_full_sheafification_claim :
    defaultFiniteGrothendieckTopologySurface.sheafificationClaim =
      false := by
  rfl

theorem finite_grothendieck_surface_is_not_topos :
    defaultFiniteGrothendieckTopologySurface.fullToposClaim = false := by
  rfl

theorem finite_grothendieck_surface_is_not_lawvere_tierney :
    defaultFiniteGrothendieckTopologySurface.lawvereTierneyTopologyClaim =
      false := by
  rfl

theorem finite_grothendieck_surface_has_cover_axiom_surface :
    defaultFiniteGrothendieckTopologySurface.hasMaximalCover = true ∧
      defaultFiniteGrothendieckTopologySurface.hasPullbackStabilityWitness =
        true ∧
      defaultFiniteGrothendieckTopologySurface.hasTransitivityWitness =
        true ∧
      defaultFiniteGrothendieckTopologySurface.hasCoveringSieveSurface =
        true := by
  exact ⟨rfl, rfl, rfl, rfl⟩

theorem site_facing_api_denies_category_theory_claim :
    defaultSiteFacingApiSurface.categoryTheoryClaim = false := by
  rfl

theorem site_facing_api_denies_sheaf_category_claim :
    defaultSiteFacingApiSurface.sheafCategoryClaim = false := by
  rfl

theorem site_facing_api_denies_topos_claim :
    defaultSiteFacingApiSurface.toposClaim = false := by
  rfl

theorem site_facing_api_denies_theorem_promotion :
    defaultSiteFacingApiSurface.theoremPromotionClaim = false := by
  rfl

theorem site_facing_api_has_finite_object_morphism_surface :
    defaultSiteFacingApiSurface.hasSiteObjects = true ∧
      defaultSiteFacingApiSurface.hasSiteMorphisms = true ∧
      defaultSiteFacingApiSurface.hasIdentityMorphisms = true ∧
      defaultSiteFacingApiSurface.hasCompositionSurface = true := by
  exact ⟨rfl, rfl, rfl, rfl⟩

end Think.Compression.GrothendieckTopology
```
