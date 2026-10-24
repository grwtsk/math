# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteEulerResidualBalance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd3020ade6680fb1783ade52581527e39610991d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEulerResidualBalance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEulerResidualBalance.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEulerResidualBalance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd3020ade6680fb1783ade52581527e39610991d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEulerResidualBalance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEulerResidualBalance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicEdgeCertificate`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [countedOutEdges](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEulerResidualBalance.lean/declarations/countedoutedges--c8c3f2bb69724d982431e2e8.md) | 24 | `declaration-track:c8c3f2bb69724d982431e2e81c32d620b32aed92a0f4cc218fe368a8bb5f5885` |
| 2 | `def` | [countedInEdges](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEulerResidualBalance.lean/declarations/countedinedges--5b71a50a3cb882bafad26238.md) | 30 | `declaration-track:5b71a50a3cb882bafad262386f40b4de314a4643d14e4b2419055c46e93f1d49` |
| 3 | `def` | [CountedEdgeBalanced](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEulerResidualBalance.lean/declarations/countededgebalanced--60dc7f4595deb865662c40a7.md) | 37 | `declaration-track:60dc7f4595deb865662c40a75984e48ac15fa5840ba11abc5e5f31eacae58258` |
| 4 | `theorem` | [countedOutEdges_sdiff_card](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEulerResidualBalance.lean/declarations/countedoutedges-sdiff-card--322b348d5b9af1e952d3e0f1.md) | 44 | `result-track:322b348d5b9af1e952d3e0f114d74034d26e077931c7b00e09d9fd14e704a899` |
| 5 | `theorem` | [countedInEdges_sdiff_card](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEulerResidualBalance.lean/declarations/countedinedges-sdiff-card--86f7692fb1d2fd18adbee1ca.md) | 57 | `result-track:86f7692fb1d2fd18adbee1caeea5723e346ad4685daca0075ca81c819351d005` |
| 6 | `theorem` | [countedEdgeBalanced_sdiff](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEulerResidualBalance.lean/declarations/countededgebalanced-sdiff--0b926ca7ee6d6d5ee600231f.md) | 72 | `result-track:0b926ca7ee6d6d5ee600231f06861ce2716d5f156074d7eed0298de2ee6030c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
