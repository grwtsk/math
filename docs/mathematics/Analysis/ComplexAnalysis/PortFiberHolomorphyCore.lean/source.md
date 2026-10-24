# Complete source: GRWTSK.Interfaces.PortFiberHolomorphyCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `736c520809f055196b28aad9f33551435c22bbdf` · SHA-256 `20342ec1b60b70f531e44c79b26cbc77138bd32e98dde6806671e2644e874305`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
import GRWTSK.Analysis.Complex.PortFiberHolomorphy
import GRWTSK.Analysis.Complex.HolomorphicRestriction
import GRWTSK.Analysis.Complex.HolomorphicSectionRing
import GRWTSK.Analysis.Complex.HolomorphicEvaluationSpectrum
import GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology
import GRWTSK.Analysis.Complex.HolomorphicRestrictionGluing
import GRWTSK.Analysis.Complex.HolomorphicOpenCoverGluing
import GRWTSK.Analysis.Complex.HolomorphicIndexedCoverGluing
import GRWTSK.Topology.Algebra.PortFiberRing
import GRWTSK.Topology.Algebra.PrimeSpectrumPort
import GRWTSK.AlgebraicGeometry.AffineSpecPort
import GRWTSK.AlgebraicGeometry.AffineStructureSheafPort
import GRWTSK.AlgebraicGeometry.AnalyticAffineBridge
import GRWTSK.AlgebraicGeometry.AnalyticAffineTopology
import GRWTSK.AlgebraicGeometry.AnalyticAffineGluing
import GRWTSK.AlgebraicGeometry.AnalyticAffineIndexedGluing
import GRWTSK.Logic.SimultaneousProofArchitecture
import GRWTSK.Logic.SimultaneousProofPortfolio
import GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture
import GRWTSK.NumberTheory.Zeta.Riemann.PortFiberLocalToGlobal
import GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio
import GRWTSK.Interfaces.PortFiberSimultaneousLedger
import GRWTSK.Interfaces.PortFiberPortfolioLedger
import GRWTSK.Interfaces.PortFiberEvaluationTopology
import GRWTSK.Interfaces.PortFiberOpenCoverDescent
import GRWTSK.Interfaces.PortFiberIndexedCoverDescent

import GRWTSK.Analysis.Complex.HolomorphicLineCocycle
import GRWTSK.Analysis.Complex.HolomorphicLineSections
import GRWTSK.Analysis.Operator.HolomorphicLinePort
import GRWTSK.Interfaces.PortFiberLineBundle

import GRWTSK.Analysis.Complex.HolomorphicLineGauge
import GRWTSK.Analysis.Complex.HolomorphicLineGaugeTopology
import GRWTSK.Analysis.Operator.HolomorphicLineGaugePort
import GRWTSK.Interfaces.PortFiberGaugeTransport

import GRWTSK.Analysis.Complex.HolomorphicLineMetric
import GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric
import GRWTSK.Analysis.Operator.HolomorphicLineAdjoint
import GRWTSK.Interfaces.PortFiberMetricAdjoint

namespace GRWTSK.Interfaces.PortFiberHolomorphyCore

/-- Source version of this isolated interface. -/
def schemaVersion : String := "PortFiberHolomorphyCore/0.16"

/-- Source state remains distinct from kernel-checked state. -/
inductive VerificationState
  | sourceCommitted
  | kernelChecked
  deriving DecidableEq, Repr

/-- The repository cannot self-issue external replay evidence. -/
def currentState : VerificationState := .sourceCommitted

end GRWTSK.Interfaces.PortFiberHolomorphyCore
```
