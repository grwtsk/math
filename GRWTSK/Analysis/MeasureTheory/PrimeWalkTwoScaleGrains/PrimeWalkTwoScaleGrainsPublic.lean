module

public meta import Surface.Core.Classification
public import Mathlib.MeasureTheory.Measure.MeasureSpace
public import Mathlib.Tactic.SetNotationForOrder
import Mathlib.Tactic

/-!
# A typed two-scale grains boundary for the prime-walk program

This file formalizes the *shape of the evidence* required by Definition 7.1
of Wang--Zahl, *Volume estimates for unions of convex sets, and the Kakeya set
conjecture in three dimensions* (2025).  It does not manufacture that evidence
from a one-dimensional signal.

The distinction is essential.  A temporal Littlewood--Paley decomposition
filters a function on the time line `ℝ`; Wang--Zahl's grains theorem concerns
shaded spatial tubes and rectangular prisms in `ℝ³`.  A wave-packet
construction must first provide the spatial tubes, directions, cover,
shadings, density, multiplicity, and long-end exit relation recorded below.

The checked results in this module are therefore conditional but non-vacuous:

* a certificate satisfying the four clauses of Definition 7.1 has identical
  total fine-tube and grain shading unions;
* a certified spatial square-function superlevel set is exactly the union of
  the grain shadings;
* its measure is bounded by the sum of the grain-shading measures.

No certificate is constructed for the prime trajectory here.  In particular,
this file proves neither a Kakeya maximal estimate nor a GRH error bound.
Wang--Zahl Proposition 7.5 also requires Assertion `E(σ, ω)`, density,
Katz--Tao Convex Wolff bounds, Frostman Slab Wolff bounds, and local Wolff
control; those hypotheses are not consequences of the present prime-walk
formalization.
-/

public section

namespace Surface.Core.PrimeWalkTwoScaleGrains

noncomputable section

open MeasureTheory Set
open scoped BigOperators ENNReal

/-! ## Scales and finite shading unions -/

/-- Quantitative scales in a two-scale grains decomposition.

The side lengths are ordered `δ ≤ a ≤ b ≤ c`, and the coarse tube scale is
the aspect ratio `ρ = b / c`, exactly as in Wang--Zahl Definition 7.1. -/
structure TwoScaleParameters where
  lambda : ℝ
  delta : ℝ
  rho : ℝ
  a : ℝ
  b : ℝ
  c : ℝ
  lambda_pos : 0 < lambda
  delta_pos : 0 < delta
  delta_le_rho : delta ≤ rho
  rho_le_one : rho ≤ 1
  delta_le_a : delta ≤ a
  a_le_b : a ≤ b
  b_le_c : b ≤ c
  rho_eq : rho = b / c

/-- Union of the shadings attached to a finite collection of objects. -/
@[expose]
def finsetShadingUnion
    {Point Object : Type*} [DecidableEq Object]
    (objects : Finset Object) (shading : Object → Set Point) : Set Point :=
  ⋃ object ∈ (objects : Set Object), shading object

/-- Objects assigned to one coarse tube. -/
@[expose]
def objectsAt
    {Object CoarseTube : Type*} [DecidableEq Object] [DecidableEq CoarseTube]
    (objects : Finset Object) (assignedCoarse : Object → CoarseTube)
    (coarse : CoarseTube) : Finset Object :=
  objects.filter fun object ↦ assignedCoarse object = coarse

/-- Shading union in one fiber of a coarse-tube assignment. -/
@[expose]
def fiberShadingUnion
    {Point Object CoarseTube : Type*}
    [DecidableEq Object] [DecidableEq CoarseTube]
    (objects : Finset Object) (assignedCoarse : Object → CoarseTube)
    (shading : Object → Set Point) (coarse : CoarseTube) : Set Point :=
  finsetShadingUnion (objectsAt objects assignedCoarse coarse) shading

/-- Number of shaded objects through one point. -/
@[expose]
noncomputable def shadingMultiplicity
    {Point Object : Type*} [DecidableEq Object]
    (objects : Finset Object) (shading : Object → Set Point) (point : Point) : ℕ := by
  classical
  exact (objects.filter fun object ↦ point ∈ shading object).card

/-- If every object is assigned to a member of the coarse cover, decomposing
the total shading by assignment loses and duplicates no points. -/
@[surface_novel, surface_published]
theorem finsetShadingUnion_eq_coarseFibers
    {Point Object CoarseTube : Type*}
    [DecidableEq Object] [DecidableEq CoarseTube]
    (objects : Finset Object) (coarseTubes : Finset CoarseTube)
    (assignedCoarse : Object → CoarseTube) (shading : Object → Set Point)
    (assigned_mem : ∀ object ∈ objects, assignedCoarse object ∈ coarseTubes) :
    finsetShadingUnion objects shading =
      ⋃ coarse ∈ (coarseTubes : Set CoarseTube),
        fiberShadingUnion objects assignedCoarse shading coarse := by
  classical
  ext point
  simp only [finsetShadingUnion, fiberShadingUnion, objectsAt, mem_iUnion]
  constructor
  · rintro ⟨object, hobject, hpoint⟩
    have hobject' : object ∈ objects := Finset.mem_coe.mp hobject
    have hassigned : assignedCoarse object ∈ coarseTubes :=
      assigned_mem object hobject'
    refine ⟨assignedCoarse object, hassigned, object, ?_, hpoint⟩
    change object ∈ objectsAt objects assignedCoarse (assignedCoarse object)
    simp [objectsAt, hobject']
  · rintro ⟨coarse, _hcoarse, object, hobject, hpoint⟩
    change object ∈ objectsAt objects assignedCoarse coarse at hobject
    have hobject' : object ∈ objects := by
      exact (Finset.mem_filter.mp hobject).1
    exact ⟨object, hobject', hpoint⟩

/-! ## Abstract spatial geometry

The carrier sets below may later be instantiated by actual Euclidean tubes
and prisms.  `directionAngle` and `exitsLongEnd` are kept explicit because
neither relation is present in the current one-dimensional trajectory model.
-/

/-- Spatial data used by the incidence certificate. -/
structure TubeGrainGeometry
    (Point FineTube CoarseTube Grain : Type*) where
  fineCarrier : FineTube → Set Point
  coarseCarrier : CoarseTube → Set Point
  grainCarrier : Grain → Set Point
  directionAngle : Grain → CoarseTube → ℝ
  exitsLongEnd : FineTube → Grain → Prop

/-! ## Wang--Zahl Definition 7.1 as a certificate -/

/-- A robustly dense two-scale grains certificate.

The fields are grouped in the same order as Wang--Zahl Definition 7.1:

1. unique coarse association, containment, and direction control for grains;
2. disjoint grain shadings and exact shading partition in each coarse tube;
3. `λ`-density and essentially uniform fine-tube multiplicity (made explicit
   here as the interval `[multiplicity, 2 * multiplicity]`);
4. long-end exit and containment of the tube/grain intersection in the grain
   shading.

The additional `fine*` fields state that the coarse tubes form a balanced
partitioning cover of the fine tubes.  Balance is represented by the literal
factor `2` used for an unqualified balanced cover in the paper. -/
structure RobustTwoScaleGrains
    (Point FineTube CoarseTube Grain : Type*)
    [MeasurableSpace Point]
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    (volume : Measure Point) where
  parameters : TwoScaleParameters
  geometry : TubeGrainGeometry Point FineTube CoarseTube Grain
  fineTubes : Finset FineTube
  coarseTubes : Finset CoarseTube
  grains : Finset Grain
  fineShading : FineTube → Set Point
  grainShading : Grain → Set Point
  fineToCoarse : FineTube → CoarseTube
  grainToCoarse : Grain → CoarseTube
  fineToCoarse_mem : ∀ tube ∈ fineTubes, fineToCoarse tube ∈ coarseTubes
  grainToCoarse_mem : ∀ grain ∈ grains, grainToCoarse grain ∈ coarseTubes
  fineShading_subset : ∀ tube ∈ fineTubes,
    fineShading tube ⊆ geometry.fineCarrier tube
  grainShading_subset : ∀ grain ∈ grains,
    grainShading grain ⊆ geometry.grainCarrier grain
  fineCarrier_subset_assigned : ∀ tube ∈ fineTubes,
    geometry.fineCarrier tube ⊆ geometry.coarseCarrier (fineToCoarse tube)
  fine_assigned_unique : ∀ tube ∈ fineTubes, ∀ coarse ∈ coarseTubes,
    geometry.fineCarrier tube ⊆ geometry.coarseCarrier coarse →
      coarse = fineToCoarse tube
  balanced_cover : ∀ coarse₁ ∈ coarseTubes, ∀ coarse₂ ∈ coarseTubes,
    (∑ tube ∈ objectsAt fineTubes fineToCoarse coarse₁,
      volume (geometry.fineCarrier tube)) ≤
      2 * (∑ tube ∈ objectsAt fineTubes fineToCoarse coarse₂,
        volume (geometry.fineCarrier tube))
  grainCarrier_subset_assigned : ∀ grain ∈ grains,
    geometry.grainCarrier grain ⊆ geometry.coarseCarrier (grainToCoarse grain)
  grain_direction_close : ∀ grain ∈ grains,
    geometry.directionAngle grain (grainToCoarse grain) ≤ 2 * parameters.rho
  grain_assigned_unique : ∀ grain ∈ grains, ∀ coarse ∈ coarseTubes,
    geometry.grainCarrier grain ⊆ geometry.coarseCarrier coarse →
    geometry.directionAngle grain coarse ≤ 2 * parameters.rho →
      coarse = grainToCoarse grain
  grainShading_pairwiseDisjoint : ∀ coarse ∈ coarseTubes,
    (objectsAt grains grainToCoarse coarse : Set Grain).PairwiseDisjoint grainShading
  shading_partition : ∀ coarse ∈ coarseTubes,
    fiberShadingUnion fineTubes fineToCoarse fineShading coarse =
      fiberShadingUnion grains grainToCoarse grainShading coarse
  lambda_dense :
    ENNReal.ofReal parameters.lambda *
        (∑ grain ∈ grains, volume (geometry.grainCarrier grain)) ≤
      ∑ grain ∈ grains, volume (grainShading grain)
  multiplicity : ℕ
  multiplicity_pos : 0 < multiplicity
  uniform_multiplicity : ∀ coarse ∈ coarseTubes, ∀ point,
    point ∈ fiberShadingUnion fineTubes fineToCoarse fineShading coarse →
      multiplicity ≤
          shadingMultiplicity (objectsAt fineTubes fineToCoarse coarse)
            fineShading point ∧
        shadingMultiplicity (objectsAt fineTubes fineToCoarse coarse)
            fineShading point ≤
          2 * multiplicity
  long_end_exit : ∀ coarse ∈ coarseTubes,
    ∀ tube ∈ objectsAt fineTubes fineToCoarse coarse,
    ∀ grain ∈ objectsAt grains grainToCoarse coarse,
      (fineShading tube ∩ grainShading grain).Nonempty →
        geometry.exitsLongEnd tube grain ∧
          fineShading tube ∩ geometry.grainCarrier grain ⊆ grainShading grain

/-! ## Checked consequences of the certificate -/

variable
    {Point FineTube CoarseTube Grain : Type*}
    [MeasurableSpace Point]
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    {volume : Measure Point}

/-- The two local shading partitions assemble into one exact global
fine-tube/grain partition. -/
@[surface_novel, surface_published]
theorem fineShadingUnion_eq_grainShadingUnion
    (certificate : RobustTwoScaleGrains
      Point FineTube CoarseTube Grain volume) :
    finsetShadingUnion certificate.fineTubes certificate.fineShading =
      finsetShadingUnion certificate.grains certificate.grainShading := by
  rw [finsetShadingUnion_eq_coarseFibers
    certificate.fineTubes certificate.coarseTubes certificate.fineToCoarse
    certificate.fineShading certificate.fineToCoarse_mem]
  rw [finsetShadingUnion_eq_coarseFibers
    certificate.grains certificate.coarseTubes certificate.grainToCoarse
    certificate.grainShading certificate.grainToCoarse_mem]
  ext point
  simp only [mem_iUnion]
  constructor
  · rintro ⟨coarse, hcoarse, hpoint⟩
    exact ⟨coarse, hcoarse,
      (certificate.shading_partition coarse hcoarse) ▸ hpoint⟩
  · rintro ⟨coarse, hcoarse, hpoint⟩
    exact ⟨coarse, hcoarse,
      (certificate.shading_partition coarse hcoarse).symm ▸ hpoint⟩

/-- The appointed coarse tube is the unique coarse tube satisfying both the
grain-containment and direction conditions. -/
@[surface_novel, surface_published]
theorem grain_coarse_unique
    (certificate : RobustTwoScaleGrains
      Point FineTube CoarseTube Grain volume)
    (grain : Grain) (hgrain : grain ∈ certificate.grains)
    (coarse : CoarseTube) (hcoarse : coarse ∈ certificate.coarseTubes)
    (hcontain : certificate.geometry.grainCarrier grain ⊆
      certificate.geometry.coarseCarrier coarse)
    (hangle : certificate.geometry.directionAngle grain coarse ≤
      2 * certificate.parameters.rho) :
    coarse = certificate.grainToCoarse grain :=
  certificate.grain_assigned_unique grain hgrain coarse hcoarse hcontain hangle

/-- Spatial superlevel set of a caller-supplied square function. -/
@[expose]
def spatialSuperlevelSet (squareFunction : Point → ℝ) (level : ℝ) : Set Point :=
  {point | level < squareFunction point}

/-- Extra wave-packet evidence connecting a *spatial* square-function
superlevel set to the fine-tube shadings.

This is intentionally separate from `MeasureBridgeData`: its finite square
function has domain `ℝ`, not spatial `ℝ³`. -/
structure SpatialWavePacketEncoding
    (certificate : RobustTwoScaleGrains
      Point FineTube CoarseTube Grain volume) where
  squareFunction : Point → ℝ
  level : ℝ
  level_pos : 0 < level
  superlevel_eq_fineShading :
    spatialSuperlevelSet squareFunction level =
      finsetShadingUnion certificate.fineTubes certificate.fineShading

/-- A separate, explicit link is required even to identify a temporal
square-function level set with the preimage of the spatial construction.
No measure comparison is implied by this point-set equality. -/
structure TemporalSpatialSuperlevelLink
    (certificate : RobustTwoScaleGrains
      Point FineTube CoarseTube Grain volume)
    (encoding : SpatialWavePacketEncoding certificate) where
  temporalSquareFunction : ℝ → ℝ
  spatialization : ℝ → Point
  temporal_preimage :
    spatialization ⁻¹'
        spatialSuperlevelSet encoding.squareFunction encoding.level =
      {time | encoding.level < temporalSquareFunction time}

/-- A certified spatial square-function superlevel set is exactly the union
of the grain shadings. -/
@[surface_novel, surface_published]
theorem spatialSuperlevelSet_eq_grainShadingUnion
    (certificate : RobustTwoScaleGrains
      Point FineTube CoarseTube Grain volume)
    (encoding : SpatialWavePacketEncoding certificate) :
    spatialSuperlevelSet encoding.squareFunction encoding.level =
      finsetShadingUnion certificate.grains certificate.grainShading := by
  exact encoding.superlevel_eq_fineShading.trans
    (fineShadingUnion_eq_grainShadingUnion certificate)

/-- Finite subadditivity gives the exact volume reduction supplied by the
grains certificate.  Any sharper Kakeya exponent requires the absent
incidence and Wolff estimates. -/
@[surface_novel, surface_published]
theorem measure_spatialSuperlevelSet_le_grain_sum
    (certificate : RobustTwoScaleGrains
      Point FineTube CoarseTube Grain volume)
    (encoding : SpatialWavePacketEncoding certificate) :
    volume (spatialSuperlevelSet encoding.squareFunction encoding.level) ≤
      ∑ grain ∈ certificate.grains, volume (certificate.grainShading grain) := by
  rw [spatialSuperlevelSet_eq_grainShadingUnion certificate encoding]
  exact measure_biUnion_finset_le certificate.grains certificate.grainShading

end

end Surface.Core.PrimeWalkTwoScaleGrains
