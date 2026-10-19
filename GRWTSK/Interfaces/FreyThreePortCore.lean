/- Copyright (c) 2026 grwtsk contributors. MIT.
OpenAI formalization assistance.

Isolated source root for the Frey models, observations, local reduction,
projective heights, finite jets, nilpotent-ideal deformation equivalence and
integral coefficient charts. No complete geometric atlas or ABC proof is supplied.
This file remains outside GRWTSK.lean pending replay and trust checks. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortFrame
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortSaturation
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCurveGeometry
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAffineEvaluation
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralModel
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyLocalInvariants
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortBounds
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyDVRReduction
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyProjectiveHeight
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyRationalHeight
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyABCObservation
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyQuadraticJet
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetRankGrowth
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetRecursion
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyHigherJet
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyFormalNeighborhood
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetCharts

namespace GRWTSK.Interfaces.FreyThreePortCore

/-- Legacy trivial marker retained for signature compatibility. It supplies no
mathematical coverage, elaboration evidence, axiom audit, or replay acceptance.
The actual public mathematical statements live in the imported source modules. -/
def sourceOnlyBoundary : Prop := True

theorem sourceOnlyBoundary_true : sourceOnlyBoundary := trivial

end GRWTSK.Interfaces.FreyThreePortCore
