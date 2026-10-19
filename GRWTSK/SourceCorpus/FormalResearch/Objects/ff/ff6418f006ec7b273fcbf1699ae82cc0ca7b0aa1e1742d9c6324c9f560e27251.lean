module

public meta import Surface.Core.Classification
public import Surface.Core.PrimeLattice.PolarizedGram
public import Surface.Core.PrimeWalkWangZahlGeometry
public import Mathlib.Data.ENNReal.Basic
import Mathlib.Tactic

/-!
# Fixed conductor-three moment packet routes

The coefficient-to-packet frame is chosen once per arithmetic scale.  It is
independent of the later BV multiplier and of the requested epsilon loss.
Only proof-side constants and exceptional-set arguments may depend on
epsilon.
-/

public section

namespace Surface.Core.ConductorThreeMomentPackets

noncomputable section

open scoped ENNReal
open Surface.Core.PrimeLattice.MomentPath
open Surface.Core.PrimeWalkWangZahlGeometry

/-- Concrete nonempty Euclidean tube geometry covering every packet atom.
The convex Wolff certificate is unsigned and contains no arithmetic bound. -/
structure WangZahlGeometryForFrame {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) where
  atomDecidableEq : DecidableEq frame.Atom
  family : @EuclideanShadedTubeFamily frame.Atom atomDecidableEq
  tubes_eq_univ : family.tubes = @Finset.univ frame.Atom
    frame.atomFintype
  tubes_nonempty : family.tubes.Nonempty
  wolffConstant : ℝ≥0∞
  convexWolff : KatzTaoConvexWolffAtMost family wolffConstant

/-- A fixed frame family and power-law tube scale.  No estimate is a field. -/
structure ConductorThreePrimeMomentRoute where
  frame : (N : ℕ) → ConductorThreeCoefficientPacketFrame N
  geometricExponent : ℝ
  geometricExponent_pos : 0 < geometricExponent
  geometricScale : ℕ → ℝ
  geometricScale_law : ∀ N,
    geometricScale N = (N + 2 : ℝ) ^ (-geometricExponent)
  wangZahlGeometry : ∀ N, 2 ≤ N →
    Nonempty (WangZahlGeometryForFrame (frame N))

/-- The geometric scale is positive at every arithmetic scale. -/
@[surface_novel, surface_published]
theorem ConductorThreePrimeMomentRoute.geometricScale_pos
    (route : ConductorThreePrimeMomentRoute) (N : ℕ) :
    0 < route.geometricScale N := by
  rw [route.geometricScale_law]
  positivity

end

end Surface.Core.ConductorThreeMomentPackets
