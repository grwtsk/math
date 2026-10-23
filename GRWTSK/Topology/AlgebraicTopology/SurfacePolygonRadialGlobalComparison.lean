/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionRadius

/-!
# Global radial-coordinate compatibility of the source-exact comparison

Unlike representative-only radius formulas, these statements quantify
over the entire two genuine quotient carriers. They are consequences
of the constructed inverse identities and original radial invariant.
No new comparison homeomorphism, quotient relation, or CW predicate
is introduced.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialGlobalComparison

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskAdjunction
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionComparison
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseAdjunction
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionInverse
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionRadius

/-- The forward quotient map preserves the actual radial coordinate
at EVERY point, rather than only on one chosen radial sector. -/
theorem forward_preserves_radius (k : ℕ)
    (x : FilledPolygonQuotient k) :
    attachedRadialCoordinate k (radialFillingToAdjunction k x) =
      radialCoordinate k x := by
  change radialCoordinate k
    (adjunctionToFilling k (radialFillingToAdjunction k x)) =
      radialCoordinate k x
  have h := congrFun (reverse_forward k) x
  exact congrArg (radialCoordinate k) h

/-- The reverse map likewise preserves the same actual quotient
radial coordinate at EVERY attached disk point. -/
theorem reverse_preserves_radius (k : ℕ)
    (x : PolygonAttachedDisk k) :
    radialCoordinate k (adjunctionToFilling k x) =
      attachedRadialCoordinate k x := rfl

/-- The genuine proposed quotient homeomorphism has an exact global
radial compatibility equation. -/
theorem homeomorph_preserves_radius (k : ℕ)
    (x : FilledPolygonQuotient k) :
    attachedRadialCoordinate k
      (filledPolygonHomeomorphAttachedDisk k x) =
        radialCoordinate k x :=
  forward_preserves_radius k x

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialGlobalComparison
