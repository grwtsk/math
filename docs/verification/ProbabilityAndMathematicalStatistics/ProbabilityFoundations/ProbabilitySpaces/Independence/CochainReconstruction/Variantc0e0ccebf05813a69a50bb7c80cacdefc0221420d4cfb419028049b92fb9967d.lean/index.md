# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CochainReconstruction.Variantc0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f534551dd4084135c73d1c9f8430fff7671c214",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantc0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantc0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantc0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f534551dd4084135c73d1c9f8430fff7671c214`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantc0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantc0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.BoundaryCochain` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [insertPath](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantc0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d.lean/declarations/insertpath--5d1c0a9f6d72dfeb72a782ec.md) | 13 | `declaration-track:5d1c0a9f6d72dfeb72a782ecff67e8104c63d957bc4f8b2c5c7aa54b7a500350` |
| 2 | `def` | [capacityPathSum](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantc0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d.lean/declarations/capacitypathsum--3ca5e60f8609bb9bc0ecb889.md) | 21 | `declaration-track:3ca5e60f8609bb9bc0ecb889797504e4948e6668f474a9132c92c471c4d56d12` |
| 3 | `theorem` | [capacityPathSum_eq_terminal_sub_initial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantc0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d.lean/declarations/capacitypathsum-eq-terminal-sub-initial--def29e290313e4331850c3a7.md) | 32 | `result-track:def29e290313e4331850c3a7179ddc787e4679e6327c668efbf898a08a041619` |
| 4 | `theorem` | [capacity_path_sum_independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantc0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d.lean/declarations/capacity-path-sum-independent--45553704405e04a904f80ca2.md) | 60 | `result-track:45553704405e04a904f80ca249effd98c2b4194d778f8b11257dbe2442337e1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
