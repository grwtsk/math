# Verification target: GRWTSK.Interfaces.GraphHodgePortCore

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5594e1f7f04f184b43d32373f4b85d47524dfca8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/GraphHodgePortCore.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/GraphHodgePortCore.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/GraphHodgePortCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5594e1f7f04f184b43d32373f4b85d47524dfca8`.

Source path: `GRWTSK/Interfaces/GraphHodgePortCore.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/GraphHodgePortCore.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.KTheory.GrothendieckPort`](../../../../../mathematics/Algebra/KTheory/GrothendieckPort.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.Algebra.KTheory.FormalKK`](../../../../../mathematics/Algebra/KTheory/FormalKK.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.Algebra.KTheory.FormalKKEquivalences`](../../../../../mathematics/Algebra/KTheory/FormalKKEquivalences.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Algebra.KTheory.GradedFormalKK`](../../../../../mathematics/Algebra/KTheory/GradedFormalKK.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.Algebra.KTheory.FiniteFredholmCycle`](../../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.Algebra.KTheory.FiniteFredholmBivariant`](../../../../../mathematics/Algebra/KTheory/FiniteFredholmBivariant.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.Algebra.KTheory.BoundedKasparovCycle`](../../../../../mathematics/Algebra/KTheory/BoundedKasparovCycle.lean/index.md) — import line 14; pinned internal source present.
- [`GRWTSK.Algebra.KTheory.UnboundedKasparovCycle`](../../../../../mathematics/Algebra/KTheory/UnboundedKasparovCycle.lean/index.md) — import line 15; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserPorts`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/index.md) — import line 16; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserPortFixtures`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPortFixtures.lean/index.md) — import line 17; pinned internal source present.
- [`GRWTSK.Logic.TypedPortNormalization`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/index.md) — import line 18; pinned internal source present.
- [`GRWTSK.Logic.ExternalPTSBridge`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/index.md) — import line 19; pinned internal source present.
- [`GRWTSK.Logic.ExternalPTSSystemTransport`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/index.md) — import line 20; pinned internal source present.
- [`GRWTSK.Logic.CanonicalPortWeakToStrong`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CanonicalPortWeakToStrong.lean/index.md) — import line 21; pinned internal source present.
- [`GRWTSK.Logic.PortPureTypeSystem`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/index.md) — import line 22; pinned internal source present.
- [`GRWTSK.Logic.PortPureTypeSystemMetatheory`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/index.md) — import line 23; pinned internal source present.
- [`GRWTSK.Logic.PortPureTypeSystemReduction`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemReduction.lean/index.md) — import line 24; pinned internal source present.
- [`GRWTSK.Logic.PortPureTypeSystemTyping`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/index.md) — import line 25; pinned internal source present.
- [`GRWTSK.Logic.PortPureTypeSystemSubjectReduction`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/index.md) — import line 26; pinned internal source present.
- [`GRWTSK.Logic.PTSModelTransport`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/index.md) — import line 27; pinned internal source present.
- [`GRWTSK.LinearAlgebra.FramedFiberPort`](../../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/index.md) — import line 28; pinned internal source present.
- [`GRWTSK.LinearAlgebra.HodgePortConsequences`](../../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/index.md) — import line 29; pinned internal source present.
- [`GRWTSK.LinearAlgebra.HodgeEquivalence`](../../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/index.md) — import line 30; pinned internal source present.
- [`GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat`](../../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/index.md) — import line 31; pinned internal source present.
- [`GRWTSK.LinearAlgebra.FinitePositiveHodgeProjectors`](../../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/index.md) — import line 32; pinned internal source present.
- [`GRWTSK.LinearAlgebra.FinitePositiveHodgeHeatBounds`](../../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean/index.md) — import line 33; pinned internal source present.
- [`GRWTSK.LinearAlgebra.WeightedDiagonalHodge`](../../../../../mathematics/Algebra/LinearAlgebra/WeightedDiagonalHodge.lean/index.md) — import line 34; pinned internal source present.
- [`GRWTSK.LinearAlgebra.FiniteSpectralHeat`](../../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/index.md) — import line 35; pinned internal source present.
- [`GRWTSK.LinearAlgebra.FiniteSpectralHeatGap`](../../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeatGap.lean/index.md) — import line 36; pinned internal source present.
- [`GRWTSK.LinearAlgebra.FiniteSpectralResolvent`](../../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralResolvent.lean/index.md) — import line 37; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.FiniteGraphCellular`](../../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/index.md) — import line 38; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.FiniteMatrixHodge`](../../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/index.md) — import line 39; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.MoserMatrixHodge`](../../../../../mathematics/Geometry/Hodge/MoserMatrixHodge.lean/index.md) — import line 40; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.MoserColorHodgeSeparation`](../../../../../mathematics/Geometry/Hodge/MoserColorHodgeSeparation.lean/index.md) — import line 41; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.RationalCycleCellular`](../../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/index.md) — import line 42; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.GlobalRationalHodgeStatement`](../../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/index.md) — import line 43; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.RationalHodgeTransport`](../../../../../mathematics/Geometry/Hodge/RationalHodgeTransport.lean/index.md) — import line 44; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.FiniteEdgeRealization`](../../../../../mathematics/Geometry/Hodge/FiniteEdgeRealization.lean/index.md) — import line 45; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.DegreeZeroCohomology`](../../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/index.md) — import line 46; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.HZeroTransport`](../../../../../mathematics/Geometry/Hodge/HZeroTransport.lean/index.md) — import line 47; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.FiniteEdgeScalarExtension`](../../../../../mathematics/Geometry/Hodge/FiniteEdgeScalarExtension.lean/index.md) — import line 48; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.RationalKTheoryComparison`](../../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/index.md) — import line 49; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.MoserRationalCellularComparison`](../../../../../mathematics/Geometry/Hodge/MoserRationalCellularComparison.lean/index.md) — import line 50; pinned internal source present.
- [`GRWTSK.Geometry.Ports.FramedSeam`](../../../../../mathematics/Geometry/Ports/FramedSeam.lean/index.md) — import line 51; pinned internal source present.
- [`GRWTSK.Analysis.Operator.BoundedPortDefect`](../../../../../mathematics/Analysis/OperatorTheory/BoundedPortDefect.lean/index.md) — import line 52; pinned internal source present.
- [`GRWTSK.Analysis.Operator.FramedLiftModes`](../../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/index.md) — import line 53; pinned internal source present.
- [`GRWTSK.Analysis.Operator.UnboundedPort`](../../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/index.md) — import line 54; pinned internal source present.
- [`GRWTSK.Analysis.Operator.UnboundedGraph`](../../../../../mathematics/Analysis/OperatorTheory/UnboundedGraph.lean/index.md) — import line 55; pinned internal source present.
- [`GRWTSK.Analysis.Operator.UnboundedPortEquivalence`](../../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/index.md) — import line 56; pinned internal source present.
- [`GRWTSK.Analysis.Operator.UnboundedPortAnalytic`](../../../../../mathematics/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/index.md) — import line 57; pinned internal source present.
- [`GRWTSK.Analysis.Operator.UnboundedPortSymmetric`](../../../../../mathematics/Analysis/OperatorTheory/UnboundedPortSymmetric.lean/index.md) — import line 58; pinned internal source present.
- [`GRWTSK.Interfaces.OptionalAdapterGate`](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/index.md) — import line 59; pinned internal source present.
- [`GRWTSK.Interfaces.OptionalAdapterComposition`](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterComposition.lean/index.md) — import line 60; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/GraphHodgePortCore.lean/declarations/schemaversion--fc6dc2f57b3837e355643160.md) | 65 | `declaration-track:fc6dc2f57b3837e355643160a39f1fe3f62460087f4c30b03c6930d607a1b87b` |
| 2 | `inductive` | [VerificationState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/GraphHodgePortCore.lean/declarations/verificationstate--0d964b75df6ceb733bed8146.md) | 68 | `declaration-track:0d964b75df6ceb733bed8146eaa70ad0bb0878a78c5d3864a9276496b749f1ff` |
| 3 | `def` | [currentState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/GraphHodgePortCore.lean/declarations/currentstate--371cb39e494c9509aaf13bd4.md) | 74 | `declaration-track:371cb39e494c9509aaf13bd4a5b9faf8262cf7720e088720642fee717efb1029` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
