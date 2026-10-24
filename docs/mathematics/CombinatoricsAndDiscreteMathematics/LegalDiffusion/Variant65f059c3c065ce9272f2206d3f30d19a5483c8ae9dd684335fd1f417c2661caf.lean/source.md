# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.LegalDiffusion.Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e64379fe9c1d2e9f4809fb10ad30b82891f5eba5` · SHA-256 `65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Geometry.LinearRelaxation
import DAF.Geometry.TorsionResolution
import DAF.Terrain.Boundary
import DAF.Terrain.HalfThreshold
import Mathlib.Tactic.Ring

/-!
# Finite legal diffusion

Legal neighbors are exact finite lists.  Their admission predicate is supplied
by an integration layer that owns complete cross-domain legality; this module
only proves that the numerical operator consults those admitted neighbors.
Obstacles are excluded explicitly and fixed boundary vertices are represented
explicitly.  The metric trajectory is an input, every pre-threshold step is a
linear map, and deterministic half-up thresholding is a separate terminal
nonlinear observation.
-/

namespace DAF.Geometry

open DAF.Terrain

universe uV

/-- Exact finite neighbors admitted by an externally supplied legality gate. -/
structure LegalNeighborSystem
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    (T : Terrain V)
    (boundary : BoundaryState V) where
  admitted : V → V → Prop
  legalNeighbors : V → Finset V
  mem_legalNeighbors_iff :
    ∀ x y, y ∈ legalNeighbors x ↔ admitted x y
  admitted_adjacent : ∀ {x y}, admitted x y → T.Adjacent x y
  admitted_symmetric : ∀ {x y}, admitted x y → admitted y x
  obstacle_excluded : ∀ {x y}, admitted x y → y ∉ boundary.obstacles

namespace LegalNeighborSystem

variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {T : Terrain V} {boundary : BoundaryState V}

/-- Every enumerated neighbor is a genuine terrain edge. -/
theorem member_adjacent
    (N : LegalNeighborSystem T boundary)
    {x y : V}
    (hy : y ∈ N.legalNeighbors x) :
    T.Adjacent x y :=
  N.admitted_adjacent ((N.mem_legalNeighbors_iff x y).1 hy)

/-- Obstacle vertices never occur in a legal neighbor enumeration. -/
theorem member_not_obstacle
    (N : LegalNeighborSystem T boundary)
    {x y : V}
    (hy : y ∈ N.legalNeighbors x) :
    y ∉ boundary.obstacles :=
  N.obstacle_excluded ((N.mem_legalNeighbors_iff x y).1 hy)

end LegalNeighborSystem

/-- The exact finite legal weighted graph Laplacian. -/
noncomputable def legalLaplacian
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {T : Terrain V}
    {boundary : BoundaryState V}
    (N : LegalNeighborSystem T boundary)
    (weight : V → V → ℝ) :
    (V → ℝ) →ₗ[ℝ] (V → ℝ) where
  toFun u x :=
    ∑ y ∈ N.legalNeighbors x, weight x y * (u x - u y)
  map_add' u v := by
    funext x
    simp only [Pi.add_apply]
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro y hy
    ring
  map_smul' a u := by
    funext x
    simp only [Pi.smul_apply, smul_eq_mul, RingHom.id_apply]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro y hy
    ring

namespace legalLaplacian

variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {T : Terrain V} {boundary : BoundaryState V}

/-- Evaluation exposes the exact finite legal-neighbor sum. -/
@[simp]
theorem apply
    (N : LegalNeighborSystem T boundary)
    (weight : V → V → ℝ)
    (u : V → ℝ)
    (x : V) :
    legalLaplacian N weight u x =
      ∑ y ∈ N.legalNeighbors x, weight x y * (u x - u y) :=
  rfl

/-- Every constant signal is annihilated by the conservative Laplacian. -/
@[simp]
theorem constant
    (N : LegalNeighborSystem T boundary)
    (weight : V → V → ℝ)
    (c : ℝ) :
    legalLaplacian N weight (fun _ => c) = 0 := by
  ext x
  simp [legalLaplacian]

end legalLaplacian

/-- The legal Laplacian sampled at one fixed metric time. -/
noncomputable def metricLegalLaplacian
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {T : Terrain V}
    {boundary : BoundaryState V}
    (flow : BoundedRicciReferenceFlow T)
    (N : LegalNeighborSystem T boundary)
    (k : Fin (flow.horizon + 1)) :
    (V → ℝ) →ₗ[ℝ] (V → ℝ) :=
  legalLaplacian N (flow.model.edgeWeight (flow.metric k))

/-- A linear explicit-Euler step; stability is not inferred from this formula. -/
noncomputable def legalEulerStep
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {T : Terrain V}
    {boundary : BoundaryState V}
    (N : LegalNeighborSystem T boundary)
    (weight : V → V → ℝ)
    (tau : ℝ) :
    (V → ℝ) →ₗ[ℝ] (V → ℝ) :=
  LinearMap.id - tau • legalLaplacian N weight

/-- A conservative explicit-Euler step fixes every constant signal. -/
@[simp]
theorem legalEulerStep_constant
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {T : Terrain V}
    {boundary : BoundaryState V}
    (N : LegalNeighborSystem T boundary)
    (weight : V → V → ℝ)
    (tau c : ℝ) :
    legalEulerStep N weight tau (fun _ => c) = fun _ => c := by
  ext x
  simp [legalEulerStep]

/-- A proved commutation law or stable evidence that it remains unresolved. -/
inductive DiffusionCommutationStatus (law : Prop) : Type
  | proved (certificate : law)
  | obstructed (identifier : String) (unresolvedObligations : List String)

/--
A fixed-horizon legal diffusion capability.  `locality` says the step can see
only a vertex and its admitted neighbors.  Complete legality itself is not
redefined here; the `LegalNeighborSystem` is the admitted output of that gate.
-/
structure LegalDiffusionOperator
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {T : Terrain V}
    (flow : BoundedRicciReferenceFlow T)
    (boundary : BoundaryState V)
    (neighbors : LegalNeighborSystem T boundary) where
  step : ∀ _k : Fin flow.horizon, (V → ℝ) →ₗ[ℝ] (V → ℝ)
  locality :
    ∀ k u v x,
      u x = v x →
      (∀ y, y ∈ neighbors.legalNeighbors x → u y = v y) →
      step k u x = step k v x
  fixed_boundary :
    ∀ k u x, x ∈ boundary.boundary → step k u x = u x
  conservative : Prop
  constant_stationary :
    conservative → ∀ k c, step k (fun _ => c) = fun _ => c
  refinementLaw : Prop
  refinementStatus : DiffusionCommutationStatus refinementLaw
  globalRestrictionLaw : Prop
  globalRestrictionStatus : DiffusionCommutationStatus globalRestrictionLaw

namespace LegalDiffusionOperator

variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {T : Terrain V}
variable {flow : BoundedRicciReferenceFlow T}
variable {boundary : BoundaryState V}
variable {neighbors : LegalNeighborSystem T boundary}

/-- The full pre-threshold horizon map remains linear in deviations. -/
def horizonMap
    (D : LegalDiffusionOperator flow boundary neighbors) :
    (V → ℝ) →ₗ[ℝ] (V → ℝ) :=
  FrozenMetricLinearRelaxation.composeChronological (List.ofFn D.step)

theorem horizonMap_add
    (D : LegalDiffusionOperator flow boundary neighbors)
    (u v : V → ℝ) :
    D.horizonMap (u + v) = D.horizonMap u + D.horizonMap v :=
  D.horizonMap.map_add u v

/-- Reconstruct the absolute real signal after linear deviation evolution. -/
def absoluteResult
    (D : LegalDiffusionOperator flow boundary neighbors)
    (reference initialDeviation : V → ℝ) : V → ℝ :=
  reference + D.horizonMap initialDeviation

/-- The deterministic terminal Boolean observation, separate from linearity. -/
noncomputable def thresholdResult
    (D : LegalDiffusionOperator flow boundary neighbors)
    (reference initialDeviation : V → ℝ) : V → Bool :=
  thresholdState (D.absoluteResult reference initialDeviation)

/-- An admitted neighbor is always a terrain edge and never an obstacle. -/
theorem admitted_neighbor_safe
    (_D : LegalDiffusionOperator flow boundary neighbors)
    {x y : V}
    (hy : y ∈ neighbors.legalNeighbors x) :
    T.Adjacent x y ∧ y ∉ boundary.obstacles :=
  ⟨neighbors.member_adjacent hy, neighbors.member_not_obstacle hy⟩

end LegalDiffusionOperator

end DAF.Geometry
```
