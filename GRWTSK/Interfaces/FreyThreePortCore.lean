/- Copyright (c) 2026 grwtsk contributors. MIT.
OpenAI Codex formalization assistance.

Isolated source root for the finite Frey-curve, actual affine-port evaluation,
three-port recovery, and saturation core. This file is intentionally not
imported by `GRWTSK.lean` before direct replay and trust checks. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortFrame
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortSaturation
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCurveGeometry
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAffineEvaluation

namespace GRWTSK.Interfaces.FreyThreePortCore

/-- The isolated root is intentionally proposition-free: all public theorem
signatures remain in the source modules named by the replay target. -/
def sourceOnlyBoundary : Prop := True

theorem sourceOnlyBoundary_true : sourceOnlyBoundary := trivial

end GRWTSK.Interfaces.FreyThreePortCore
