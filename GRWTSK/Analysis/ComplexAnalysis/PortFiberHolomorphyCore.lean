/-
Isolated integration target for issue #230.

This file is intentionally absent from `GRWTSK.lean`. It gives local reviewers one direct module
target while preserving the aggregate replay boundary until this slice passes direct checking.
-/
import GRWTSK.Topology.PortFiber.Basic
import GRWTSK.Topology.PortFiber.Path
import GRWTSK.Topology.PortFiber.MultiCertificate
import GRWTSK.Topology.PortFiber.Certified
import GRWTSK.Topology.PortFiber.Gluing
import GRWTSK.Analysis.ComplexAnalysis.PortFiberHolomorphy
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationSpectrum
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationTopology
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestrictionGluing
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicOpenCoverGluing
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicIndexedCoverGluing
import GRWTSK.Topology.Algebra.PortFiberRing
import GRWTSK.Topology.Algebra.PrimeSpectrumPort
import GRWTSK.Geometry.AlgebraicGeometry.AffineSpecPort
import GRWTSK.Geometry.AlgebraicGeometry.AffineStructureSheafPort
import GRWTSK.Geometry.AlgebraicGeometry.AnalyticAffineBridge
import GRWTSK.Geometry.AlgebraicGeometry.AnalyticAffineTopology
import GRWTSK.Geometry.AlgebraicGeometry.AnalyticAffineGluing
import GRWTSK.Geometry.AlgebraicGeometry.AnalyticAffineIndexedGluing
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofArchitecture
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofPortfolio
import GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture
import GRWTSK.NumberTheory.Zeta.Riemann.PortFiberLocalToGlobal
import GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio
import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.PortFiberSimultaneousLedger
import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.PortFiberPortfolioLedger
import GRWTSK.Geometry.AlgebraicGeometry.PortFiberEvaluationTopology
import GRWTSK.Geometry.AlgebraicGeometry.PortFiberOpenCoverDescent
import GRWTSK.Geometry.AlgebraicGeometry.PortFiberIndexedCoverDescent

import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSections
import GRWTSK.Analysis.OperatorTheory.HolomorphicLinePort
import GRWTSK.Analysis.OperatorTheory.PortFiberLineBundle

import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeTopology
import GRWTSK.Analysis.OperatorTheory.HolomorphicLineGaugePort
import GRWTSK.Analysis.OperatorTheory.PortFiberGaugeTransport

import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeMetric
import GRWTSK.Analysis.OperatorTheory.HolomorphicLineAdjoint
import GRWTSK.Analysis.OperatorTheory.PortFiberMetricAdjoint

namespace GRWTSK.Analysis.ComplexAnalysis.PortFiberHolomorphyCore

/-- Source version of this isolated interface. -/
def schemaVersion : String := "PortFiberHolomorphyCore/0.16"

/-- Source state remains distinct from kernel-checked state. -/
inductive VerificationState
  | sourceCommitted
  | kernelChecked
  deriving DecidableEq, Repr

/-- The repository cannot self-issue external replay evidence. -/
def currentState : VerificationState := .sourceCommitted

end GRWTSK.Analysis.ComplexAnalysis.PortFiberHolomorphyCore
