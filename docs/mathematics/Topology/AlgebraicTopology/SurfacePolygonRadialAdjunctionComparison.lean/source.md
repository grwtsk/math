# Complete source: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionComparison

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1627e0134c5211e63c626a366b5ba373fe66994` · SHA-256 `0c93facab5aeac828113d4000f77fa6b86a35fa038dbe9eb690f8fc378e3c72d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under MIT license.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskAdjunction

/-!
# A source-exact comparison from radial sectors to the disk adjunction

The authentic radial source map uses the ORIGINAL perimeterProjection,
the checked perimeter cone-to-disk homeomorphism, and the actual
originalDiskMap of the attached disk. We verify its seven raw gluing
generators. This isolates the exact relation supplier for the forward
quotient descent; no inverse homeomorphism or target CW assertion.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionComparison

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskBoundary
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskAdjunction

/-- The explicit sector-to-adjunction function before either quotient
descent or a continuity argument. It remembers the original sector ID. -/
def radialSourceToAdjunction (k : ℕ) :
    RadialSource k → PolygonAttachedDisk k :=
  fun pr => originalDiskMap k
    (perimeterConeDiskHomeomorph k
      (CircleCone.coneMk (perimeterProjection k pr.1) pr.2))

/-- At radius one this is exactly the original paired boundary
projection in the disk adjunction. -/
theorem radialSourceToAdjunction_outer (k : ℕ)
    (p : BoundaryPoint k) :
    radialSourceToAdjunction k (p, 1) =
      originalSkeletonMap k (boundaryProjection k p) := by
  unfold radialSourceToAdjunction
  rw [show CircleCone.coneMk (perimeterProjection k p) (1 : unitInterval) =
      ConeCongruence.boundary (perimeterProjection k p) from rfl]
  rw [perimeterConeDiskHomeomorph_boundary]
  exact (original_source_boundary_commutes k p).symm

/-- Every radius-zero source point maps to the same genuine cone
apex, hence to the same attached-disk point. -/
theorem radialSourceToAdjunction_zero (k : ℕ)
    (p q : BoundaryPoint k) :
    radialSourceToAdjunction k (p, 0) =
      radialSourceToAdjunction k (q, 0) := by
  unfold radialSourceToAdjunction
  exact congrArg
    (fun z : CircleCone.Cone (UnpairedPerimeter k) =>
      originalDiskMap k (perimeterConeDiskHomeomorph k z))
    (Quotient.sound (Or.inr ⟨rfl, rfl⟩))

/-- Every authentic perimeter seam is respected at EVERY radius,
before the outer opposite-side identifications are considered. -/
theorem radialSourceToAdjunction_seam (k : ℕ)
    (r : unitInterval) {p q : BoundaryPoint k}
    (h : PerimeterSeamStep k p q) :
    radialSourceToAdjunction k (p, r) =
      radialSourceToAdjunction k (q, r) := by
  have hpq : perimeterProjection k p = perimeterProjection k q :=
    Quotient.sound (Relation.EqvGen.rel _ _ h)
  simp only [radialSourceToAdjunction, hpq]

/-- The original a/a⁻¹ outer pairing is preserved exactly with
unitInterval.symm, rather than through an unrelated boundary map. -/
theorem radialSourceToAdjunction_outerA (k : ℕ)
    (h : Handle k) (t : unitInterval) :
    radialSourceToAdjunction k (((h, 0), t), 1) =
      radialSourceToAdjunction k
        (((h, 2), unitInterval.symm t), 1) := by
  rw [radialSourceToAdjunction_outer, radialSourceToAdjunction_outer]
  exact congrArg (originalSkeletonMap k)
    (opposite_a_edge_maps_agree k h t)

/-- The original b/b⁻¹ outer pairing is preserved exactly. -/
theorem radialSourceToAdjunction_outerB (k : ℕ)
    (h : Handle k) (t : unitInterval) :
    radialSourceToAdjunction k (((h, 1), t), 1) =
      radialSourceToAdjunction k
        (((h, 3), unitInterval.symm t), 1) := by
  rw [radialSourceToAdjunction_outer, radialSourceToAdjunction_outer]
  exact congrArg (originalSkeletonMap k)
    (opposite_b_edge_maps_agree k h t)

/-- All seven original gluing generator families map to equality in
the attached disk. This is a genuine relation-preservation theorem,
not an assumed comparison relation or a fabricated inverse. -/
theorem radialSourceToAdjunction_respects_step (k : ℕ)
    {p q : RadialSource k}
    (h : RadialGluingStep k p q) :
    radialSourceToAdjunction k p = radialSourceToAdjunction k q := by
  cases h with
  | seam01 h r =>
      exact radialSourceToAdjunction_seam k r (PerimeterSeamStep.seam01 h)
  | seam12 h r =>
      exact radialSourceToAdjunction_seam k r (PerimeterSeamStep.seam12 h)
  | seam23 h r =>
      exact radialSourceToAdjunction_seam k r (PerimeterSeamStep.seam23 h)
  | seamNext h r =>
      exact radialSourceToAdjunction_seam k r (PerimeterSeamStep.seamNext h)
  | apex p =>
      exact radialSourceToAdjunction_zero k p _
  | outerA h t =>
      exact radialSourceToAdjunction_outerA k h t
  | outerB h t =>
      exact radialSourceToAdjunction_outerB k h t

/-- Full actual EqvGen closure, rather than just seven sample equalities. -/
theorem radialSourceToAdjunction_respects_connected (k : ℕ)
    {p q : RadialSource k} (h : RadialConnected k p q) :
    radialSourceToAdjunction k p = radialSourceToAdjunction k q := by
  induction h with
  | rel p q hpq => exact radialSourceToAdjunction_respects_step k hpq
  | refl p => rfl
  | symm p q _ ih => exact ih.symm
  | trans p q r _ _ ih1 ih2 => exact ih1.trans ih2

/-- A real quotient-descended map from the original radial filling to
the actual disk adjunction; continuity requires separately verifying
the original source product topology and is not claimed here. -/
def radialFillingToAdjunction (k : ℕ) :
    FilledPolygonQuotient k → PolygonAttachedDisk k :=
  Quotient.lift (radialSourceToAdjunction k)
    (fun _ _ h => radialSourceToAdjunction_respects_connected k h)

@[simp] theorem radialFillingToAdjunction_source (k : ℕ)
    (p : RadialSource k) :
    radialFillingToAdjunction k (radialProjection k p) =
      radialSourceToAdjunction k p := rfl

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionComparison
```
