# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.CountedCyclicEulerFromClosedWalk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81984dea0d22c9687785538004aba8e21d26e0df",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81984dea0d22c9687785538004aba8e21d26e0df`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedEulerWalkCyclicIndex`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedEulerWalkCyclicIndex.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.CountedCyclicEdgeSplicing`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEdgeSplicing.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.List.NodupEquivFin` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [countedBinaryEdgeWalk_length_eq_total](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean/declarations/countedbinaryedgewalk-length-eq-total--f9c8973cc44c9e98d0621772.md) | 29 | `result-track:f9c8973cc44c9e98d062177237bc2c6bb7efea06ef827bba84f9bb466d0695a6` |
| 2 | `def` | [countedCyclicEdgeOrderOfClosedWalk](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean/declarations/countedcyclicedgeorderofclosedwalk--837eb35f6472f985b5720067.md) | 48 | `declaration-track:837eb35f6472f985b57200675f65d21c3bd2703a85a2ccdf8696a13b238bba08` |
| 3 | `theorem` | [countedCyclicEdgeOrderOfClosedWalk_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean/declarations/countedcyclicedgeorderofclosedwalk-apply--6564cafe098008e14598e0c1.md) | 58 | `result-track:6564cafe098008e14598e0c1598db24dfb5c7fc184af7acb0397b18452478cec` |
| 4 | `def` | [countedCyclicEulerCertificateOfClosedWalk](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean/declarations/countedcycliceulercertificateofclosedwalk--914bcf362746b16c14d574fd.md) | 70 | `declaration-track:914bcf362746b16c14d574fdb4205b26c41458debced5d15bc7251d6b76e39c7` |
| 5 | `theorem` | [exists_cyclicBinaryWord_of_closed_exhaustive_walk](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean/declarations/exists-cyclicbinaryword-of-closed-exhaustive-walk--6f491d4027bba598aaff49c7.md) | 94 | `result-track:6f491d4027bba598aaff49c7cf7d2208bb62f2a5ebbde005fe8b4e5a8594dc36` |
| 6 | `theorem` | [cyclicCountRealizable_of_closed_exhaustive_walk](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean/declarations/cycliccountrealizable-of-closed-exhaustive-walk--b035bc4092d3881026becbec.md) | 106 | `result-track:b035bc4092d3881026becbec5ee30b7ccbf16e3dc43fc501a745fca2f23e8d85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
