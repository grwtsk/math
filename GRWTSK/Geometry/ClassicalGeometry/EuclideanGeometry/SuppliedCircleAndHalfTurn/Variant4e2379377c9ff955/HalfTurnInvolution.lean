/-
HalfTurnInvolution — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66
Organized SHA-256: 0f9d71913c56d473935ae808113adc2641bd8dd826e9cc8b64ec33efa36f3e40
PMD: 510.3.010.010 euclidean geometry (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact affine coordinate formula 2*center-point and its full involution proof. No additional distance-preservation or runtime implementation theorem is introduced. -/

import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

import GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SuppliedCircleAndHalfTurn.Variant4e2379377c9ff955.SuppliedCircleIncidence

/-!
# Euclidean runtime vocabulary

Small exact semantic records for the finite two-dimensional geometry exposed by
the client. They specify the mathematical objects; they do not prove that a
floating-point JavaScript implementation realizes them.
-/

namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SuppliedCircleAndHalfTurn.Variant4e2379377c9ff955


namespace BitMatrix.Geometry.Euclidean

/-- The affine half-turn about a designated center. -/
def halfTurn (center point : Point) : Point where
  x := 2 * center.x - point.x
  y := 2 * center.y - point.y


@[simp]
theorem halfTurn_involutive (center point : Point) :
    halfTurn center (halfTurn center point) = point := by
  cases center
  cases point
  simp [halfTurn]


end BitMatrix.Geometry.Euclidean

end GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SuppliedCircleAndHalfTurn.Variant4e2379377c9ff955
