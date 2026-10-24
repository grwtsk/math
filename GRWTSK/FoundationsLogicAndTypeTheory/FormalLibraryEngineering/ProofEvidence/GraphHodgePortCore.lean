/-
Isolated integration target for the graph/Hodge/K-theory/normalization/operator-port slice.

This file is intentionally not imported by `GRWTSK.lean`. It gives local reviewers one direct
module target while preserving the existing aggregate replay boundary until this slice passes
isolated kernel checking.
-/
import GRWTSK.Algebra.KTheory.GrothendieckPort
import GRWTSK.Algebra.KTheory.FormalKK
import GRWTSK.Algebra.KTheory.FormalKKEquivalences
import GRWTSK.Algebra.KTheory.GradedFormalKK
import GRWTSK.Algebra.KTheory.FiniteFredholmCycle
import GRWTSK.Algebra.KTheory.FiniteFredholmBivariant
import GRWTSK.Algebra.KTheory.BoundedKasparovCycle
import GRWTSK.Algebra.KTheory.UnboundedKasparovCycle
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UnitDistanceGraph.MoserPorts
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UnitDistanceGraph.MoserPortFixtures
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TypedPortNormalization
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ExternalPTSBridge
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ExternalPTSSystemTransport
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CanonicalPortWeakToStrong
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PortPureTypeSystem
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PortPureTypeSystemMetatheory
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PortPureTypeSystemReduction
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PortPureTypeSystemTyping
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PortPureTypeSystemSubjectReduction
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PTSModelTransport
import GRWTSK.Algebra.LinearAlgebra.FramedFiberPort
import GRWTSK.Algebra.LinearAlgebra.HodgePortConsequences
import GRWTSK.Algebra.LinearAlgebra.HodgeEquivalence
import GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat
import GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeProjectors
import GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeatBounds
import GRWTSK.Algebra.LinearAlgebra.WeightedDiagonalHodge
import GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat
import GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeatGap
import GRWTSK.Algebra.LinearAlgebra.FiniteSpectralResolvent
import GRWTSK.Geometry.Hodge.FiniteGraphCellular
import GRWTSK.Geometry.Hodge.FiniteMatrixHodge
import GRWTSK.Geometry.Hodge.MoserMatrixHodge
import GRWTSK.Geometry.Hodge.MoserColorHodgeSeparation
import GRWTSK.Geometry.Hodge.RationalCycleCellular
import GRWTSK.Geometry.Hodge.GlobalRationalHodgeStatement
import GRWTSK.Geometry.Hodge.RationalHodgeTransport
import GRWTSK.Geometry.Hodge.FiniteEdgeRealization
import GRWTSK.Geometry.Hodge.DegreeZeroCohomology
import GRWTSK.Geometry.Hodge.HZeroTransport
import GRWTSK.Geometry.Hodge.FiniteEdgeScalarExtension
import GRWTSK.Geometry.Hodge.RationalKTheoryComparison
import GRWTSK.Geometry.Hodge.MoserRationalCellularComparison
import GRWTSK.Geometry.Ports.FramedSeam
import GRWTSK.Analysis.Operator.BoundedPortDefect
import GRWTSK.Analysis.Operator.FramedLiftModes
import GRWTSK.Analysis.Operator.UnboundedPort
import GRWTSK.Analysis.Operator.UnboundedGraph
import GRWTSK.Analysis.Operator.UnboundedPortEquivalence
import GRWTSK.Analysis.Operator.UnboundedPortAnalytic
import GRWTSK.Analysis.Operator.UnboundedPortSymmetric
import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.OptionalAdapterGate
import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.OptionalAdapterComposition

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

/-- Source version of this isolated integration surface. -/
def schemaVersion : String := "GraphHodgePortCore/1.5"

/-- The integration surface is source-only until an external receipt binds the exact branch head. -/
inductive VerificationState
  | sourceCommitted
  | kernelChecked
  deriving DecidableEq, Repr

/-- Checked-in source must not claim kernel evidence that has not been externally produced. -/
def currentState : VerificationState := .sourceCommitted

end GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore
