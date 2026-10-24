# Verification target: GRWTSK.Interfaces.PortFiberHolomorphyCore

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "736c520809f055196b28aad9f33551435c22bbdf",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberHolomorphyCore.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphyCore.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphyCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `736c520809f055196b28aad9f33551435c22bbdf`.

Source path: `GRWTSK/Interfaces/PortFiberHolomorphyCore.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberHolomorphyCore.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.PortFiber.Basic`](../../../../mathematics/Topology/PortFiber/Basic.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.Topology.PortFiber.Path`](../../../../mathematics/Topology/PortFiber/Path.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.Topology.PortFiber.MultiCertificate`](../../../../mathematics/Topology/PortFiber/MultiCertificate.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.Topology.PortFiber.Certified`](../../../../mathematics/Topology/PortFiber/Certified.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Topology.PortFiber.Gluing`](../../../../mathematics/Topology/PortFiber/Gluing.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.Analysis.Complex.PortFiberHolomorphy`](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicRestriction`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestriction.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicSectionRing`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/index.md) — import line 14; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicEvaluationSpectrum`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationSpectrum.lean/index.md) — import line 15; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationTopology.lean/index.md) — import line 16; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicRestrictionGluing`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/index.md) — import line 17; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicOpenCoverGluing`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/index.md) — import line 18; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicIndexedCoverGluing`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/index.md) — import line 19; pinned internal source present.
- [`GRWTSK.Topology.Algebra.PortFiberRing`](../../../../mathematics/Topology/Algebra/PortFiberRing.lean/index.md) — import line 20; pinned internal source present.
- [`GRWTSK.Topology.Algebra.PrimeSpectrumPort`](../../../../mathematics/Topology/Algebra/PrimeSpectrumPort.lean/index.md) — import line 21; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.AffineSpecPort`](../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpecPort.lean/index.md) — import line 22; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.AffineStructureSheafPort`](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/index.md) — import line 23; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.AnalyticAffineBridge`](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineBridge.lean/index.md) — import line 24; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.AnalyticAffineTopology`](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineTopology.lean/index.md) — import line 25; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.AnalyticAffineGluing`](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineGluing.lean/index.md) — import line 26; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.AnalyticAffineIndexedGluing`](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/index.md) — import line 27; pinned internal source present.
- [`GRWTSK.Logic.SimultaneousProofArchitecture`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/index.md) — import line 28; pinned internal source present.
- [`GRWTSK.Logic.SimultaneousProofPortfolio`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/index.md) — import line 29; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture`](../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/index.md) — import line 30; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PortFiberLocalToGlobal`](../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/index.md) — import line 31; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio`](../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/index.md) — import line 32; pinned internal source present.
- [`GRWTSK.Interfaces.PortFiberSimultaneousLedger`](../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberSimultaneousLedger.lean/index.md) — import line 33; pinned internal source present.
- [`GRWTSK.Interfaces.PortFiberPortfolioLedger`](../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/index.md) — import line 34; pinned internal source present.
- [`GRWTSK.Interfaces.PortFiberEvaluationTopology`](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberEvaluationTopology.lean/index.md) — import line 35; pinned internal source present.
- [`GRWTSK.Interfaces.PortFiberOpenCoverDescent`](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberOpenCoverDescent.lean/index.md) — import line 36; pinned internal source present.
- [`GRWTSK.Interfaces.PortFiberIndexedCoverDescent`](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberIndexedCoverDescent.lean/index.md) — import line 37; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicLineCocycle`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineCocycle.lean/index.md) — import line 39; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicLineSections`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/index.md) — import line 40; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicLinePort`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/index.md) — import line 41; pinned internal source present.
- [`GRWTSK.Interfaces.PortFiberLineBundle`](../../../../mathematics/Analysis/OperatorTheory/PortFiberLineBundle.lean/index.md) — import line 42; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicLineGauge`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/index.md) — import line 44; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicLineGaugeTopology`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/index.md) — import line 45; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicLineGaugePort`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/index.md) — import line 46; pinned internal source present.
- [`GRWTSK.Interfaces.PortFiberGaugeTransport`](../../../../mathematics/Analysis/OperatorTheory/PortFiberGaugeTransport.lean/index.md) — import line 47; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicLineMetric`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineMetric.lean/index.md) — import line 49; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/index.md) — import line 50; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicLineAdjoint`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/index.md) — import line 51; pinned internal source present.
- [`GRWTSK.Interfaces.PortFiberMetricAdjoint`](../../../../mathematics/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/index.md) — import line 52; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphyCore.lean/declarations/schemaversion--0b787cbd952d1b4c5332dc58.md) | 57 | `declaration-track:0b787cbd952d1b4c5332dc580110b161be494700810841dbb1ef3b9d50844efe` |
| 2 | `inductive` | [VerificationState](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphyCore.lean/declarations/verificationstate--71b351a886a2d40c603fdc00.md) | 60 | `declaration-track:71b351a886a2d40c603fdc0034cb96a28548a08974faa6619dc6a5b74a3743d2` |
| 3 | `def` | [currentState](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphyCore.lean/declarations/currentstate--7129fabd77c04f80968e545a.md) | 66 | `declaration-track:7129fabd77c04f80968e545ad7c6b79c058f401b01bccc53a97522e12f19b659` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
