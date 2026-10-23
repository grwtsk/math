/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#981. Parent PR #977 exact head:
61f1cdafca5e4c48d60f995309ba77da3dcd7ebd.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeFilledQuotient

/-!
# Outer-side pairing relation on the genuine unpaired perimeter cone

This bounded source module introduces ONLY the two authentic reversed
opposite-side generators at radial coordinate one. It proves that the
previously constructed cone-to-filled map respects their full EqvGen
closure. The converse kernel inclusion and quotient homeomorphism are
not asserted here; these require the separate seven-generator lifting
argument from the original radial source.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeOuterPairs

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonJointRadialDescent
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeFilledQuotient

/-- The original perimeter side point, retained as a point of the
unpaired cone at the OUTER radius one. -/
def outerConePoint (k : ℕ) (p : BoundaryPoint k) : PerimeterCone k :=
  coneProjection k (perimeterProjection k p, 1)

@[simp] theorem outerConePoint_eq_boundary (k : ℕ) (p : BoundaryPoint k) :
    outerConePoint k p = coneBoundary k (perimeterProjection k p) := rfl

/-- Exactly the two original opposite-side pairing generators. They
act ONLY at outer radius one and preserve the inherited source IDs. -/
inductive ConeOuterPairStep (k : ℕ) : PerimeterCone k → PerimeterCone k → Prop where
  | pairA (h : Handle k) (t : unitInterval) :
      ConeOuterPairStep k
        (outerConePoint k ((h, 0), t))
        (outerConePoint k ((h, 2), unitInterval.symm t))
  | pairB (h : Handle k) (t : unitInterval) :
      ConeOuterPairStep k
        (outerConePoint k ((h, 1), t))
        (outerConePoint k ((h, 3), unitInterval.symm t))

/-- The exact equivalence closure, with no extra primitive relations. -/
def ConeOuterConnected (k : ℕ) : PerimeterCone k → PerimeterCone k → Prop :=
  Relation.EqvGen (ConeOuterPairStep k)

/-- The induced outer-pairing Setoid on the actual topological cone. -/
def coneOuterPairSetoid (k : ℕ) : Setoid (PerimeterCone k) where
  r := ConeOuterConnected k
  iseqv := Relation.EqvGen.is_equivalence _

/-- Every primitive opposite-side pairing is respected by the
original radial quotient. This uses the inherited seven-generator
relation, not a newly assumed equality of filled points. -/
theorem coneToFilled_respects_outerStep (k : ℕ)
    {x y : PerimeterCone k} (h : ConeOuterPairStep k x y) :
    coneToFilled k x = coneToFilled k y := by
  cases h with
  | pairA h t =>
      change radialProjection k ((((h, 0), t), 1)) =
        radialProjection k ((((h, 2), unitInterval.symm t), 1))
      exact radialProjection_eq_of_step k (RadialGluingStep.outerA h t)
  | pairB h t =>
      change radialProjection k ((((h, 1), t), 1)) =
        radialProjection k ((((h, 3), unitInterval.symm t), 1))
      exact radialProjection_eq_of_step k (RadialGluingStep.outerB h t)

/-- Soundness of the entire generated outer-pairing relation in the
filled quotient. The reverse direction is the next independent gate. -/
theorem coneToFilled_respects_outerConnected (k : ℕ)
    {x y : PerimeterCone k} (h : ConeOuterConnected k x y) :
    coneToFilled k x = coneToFilled k y := by
  induction h with
  | rel x y hxy => exact coneToFilled_respects_outerStep k hxy
  | refl x => rfl
  | symm x y _ ih => exact ih.symm
  | trans x y z _ _ ih₁ ih₂ => exact ih₁.trans ih₂

/-- The cone-to-filled map descends through the exact outer-pairing
quotient. This is not yet an equivalence or homeomorphism. -/
def outerPairedConeToFilled (k : ℕ) :
    Quotient (coneOuterPairSetoid k) → FilledPolygonQuotient k :=
  Quotient.lift (coneToFilled k)
    (fun _ _ h => coneToFilled_respects_outerConnected k h)

@[simp] theorem outerPairedConeToFilled_projection (k : ℕ)
    (x : PerimeterCone k) :
    outerPairedConeToFilled k (Quotient.mk (coneOuterPairSetoid k) x) =
      coneToFilled k x := rfl

/-- The descended map is surjective because the authentic original
cone-to-filled map is already surjective. -/
theorem outerPairedConeToFilled_surjective (k : ℕ) :
    Function.Surjective (outerPairedConeToFilled k) := by
  intro y
  obtain ⟨x, hx⟩ := coneToFilled_surjective k y
  exact ⟨Quotient.mk (coneOuterPairSetoid k) x, by
    simpa using hx⟩

/-- A primitive outer pairing cannot relate points at different
radii; each is exactly at radius one. -/
theorem outerStep_preserves_radius (k : ℕ)
    {x y : PerimeterCone k} (h : ConeOuterPairStep k x y) :
    coneRadius k x = coneRadius k y := by
  cases h with
  | pairA h t => rfl
  | pairB h t => rfl

/-- The full generated outer relation also preserves radial height. -/
theorem outerConnected_preserves_radius (k : ℕ)
    {x y : PerimeterCone k} (h : ConeOuterConnected k x y) :
    coneRadius k x = coneRadius k y := by
  induction h with
  | rel x y hxy => exact outerStep_preserves_radius k hxy
  | refl x => rfl
  | symm x y _ ih => exact ih.symm
  | trans x y z _ _ ih₁ ih₂ => exact ih₁.trans ih₂

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeOuterPairs
