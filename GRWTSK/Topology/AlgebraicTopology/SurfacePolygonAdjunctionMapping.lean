/-
Copyright (c) 2026 R.A. Jacob Martone. Released under MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1019 exact head dd8f9b97281ebc678fc767923a08462b15e2d8d9.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionUniversal

/-!
# Continuous mapping equivalence for the original polygon adjunction

This source packages the unique compatible extension as an equivalence
of TYPES of continuous maps. It does not assert any compact-open
function-space homeomorphism, CW or manifold structure.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionMapping

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardCircleConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskCharacteristic
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionCompatibility
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionUniversal

/-- The actual compatible continuous disk/boundary pairs, using the
original attaching map, not an abstract unbound compatibility port. -/
def CompatibleContinuousPair (k : ℕ)
    (Y : Type*) [TopologicalSpace Y] :=
  {p : C(Complex.UnitClosedDisc, Y) ×
      C(PolygonBoundaryOneSkeleton k, Y) //
    CompatibleDiskBoundary k p.1 p.2}

/-- Restrict a continuous filled-space map to the genuine disk
characteristic and the paired one-skeleton. -/
def restrictContinuousPair (k : ℕ)
    {Y : Type*} [TopologicalSpace Y]
    (f : C(FilledPolygonQuotient k, Y)) :
    CompatibleContinuousPair k Y :=
  ⟨(⟨f ∘ diskCharacteristic k,
        f.continuous.comp (diskCharacteristic_continuous k)⟩,
      ⟨f ∘ boundaryInclusion k,
        f.continuous.comp (boundaryInclusion_continuous k)⟩),
    compatible_of_filledMap k f⟩

/-- The unique-extension theorem gives a canonical inverse on the
type of compatible continuous pairs. -/
noncomputable def extendContinuousPair (k : ℕ)
    {Y : Type*} [TopologicalSpace Y]
    (p : CompatibleContinuousPair k Y) :
    C(FilledPolygonQuotient k, Y) :=
  ⟨extendCompatibleDisk k p.1.1 p.1.2 p.2,
    extendCompatibleDisk_continuous k p.1.1 p.1.2 p.2
      p.1.1.continuous⟩

/-- Extending and then restricting preserves both prescribed maps. -/
theorem restrict_extendContinuousPair (k : ℕ)
    {Y : Type*} [TopologicalSpace Y]
    (p : CompatibleContinuousPair k Y) :
    restrictContinuousPair k (extendContinuousPair k p) = p := by
  apply Subtype.ext
  apply Prod.ext
  · apply ContinuousMap.ext
    intro x
    exact congrFun (extendCompatibleDisk_disk k p.1.1 p.1.2 p.2) x
  · apply ContinuousMap.ext
    intro x
    exact congrFun (extendCompatibleDisk_boundary k p.1.1 p.1.2 p.2) x

/-- Restricting and extending a continuous filled-space map returns
that same map by exact disk characteristic surjectivity. -/
theorem extend_restrictContinuousPair (k : ℕ)
    {Y : Type*} [TopologicalSpace Y]
    (f : C(FilledPolygonQuotient k, Y)) :
    extendContinuousPair k (restrictContinuousPair k f) = f := by
  apply ContinuousMap.ext
  intro x
  have h := extendCompatibleDisk_disk k
    (f ∘ diskCharacteristic k) (f ∘ boundaryInclusion k)
    (compatible_of_filledMap k f)
  have heq := filledMap_ext_of_disk k h
  exact congrFun heq x

/-- The original polygon adjunction universal property as a genuine
equivalence of types of continuous maps, without adding topology on
the function spaces. -/
noncomputable def continuousMappingEquiv (k : ℕ)
    (Y : Type*) [TopologicalSpace Y] :
    C(FilledPolygonQuotient k, Y) ≃ CompatibleContinuousPair k Y where
  toFun := restrictContinuousPair k
  invFun := extendContinuousPair k
  left_inv := extend_restrictContinuousPair k
  right_inv := restrict_extendContinuousPair k

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionMapping
