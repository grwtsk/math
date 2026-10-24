# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ordered.Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2b1c2cbcb8958c1dd10bc71564a7a20e099503b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2b1c2cbcb8958c1dd10bc71564a7a20e099503b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Pairwise` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ordered](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61.lean/declarations/ordered--1f632fbbbf3e222e81c6f1c6.md) | 34 | `declaration-track:1f632fbbbf3e222e81c6f1c634297ff90ef04b984f1d1039faa1e442e66cf5f5` |
| 2 | `theorem` | [Ordered.left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61.lean/declarations/ordered-left--1ac9a4454334b6e70a2dcba9.md) | 41 | `result-track:1ac9a4454334b6e70a2dcba900374d67b780f027d627b85c6e18a761a77445ba` |
| 3 | `theorem` | [Ordered.right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61.lean/declarations/ordered-right--3e4a7803c3ebea1e845bd303.md) | 45 | `result-track:3e4a7803c3ebea1e845bd3032fce65632446351d81ee8d650ef13df86d76adc9` |
| 4 | `theorem` | [Ordered.compare_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61.lean/declarations/ordered-compare-left--447dd50be05d882f95f202d1.md) | 49 | `result-track:447dd50be05d882f95f202d192825e8cbf36620300b469a88dc22f51a39afd02` |
| 5 | `theorem` | [Ordered.compare_left_beq_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61.lean/declarations/ordered-compare-left-beq-gt--ea2bb777f3388d1a16f97091.md) | 53 | `result-track:ea2bb777f3388d1a16f9709141003c7c8024f3750c0119d4165d751c92f1029d` |
| 6 | `theorem` | [Ordered.compare_left_not_beq_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61.lean/declarations/ordered-compare-left-not-beq-eq--33d6425a735b9ceebd02c2b3.md) | 58 | `result-track:33d6425a735b9ceebd02c2b3c99c1567774950773a68c9a9af7500e786519cd7` |
| 7 | `theorem` | [Ordered.compare_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61.lean/declarations/ordered-compare-right--5f2a98ffe267bac2bcd964a6.md) | 65 | `result-track:5f2a98ffe267bac2bcd964a69257e84cd00d6be49e3fc8bbaf43ac7c4be2ec83` |
| 8 | `theorem` | [Ordered.compare_right_not_beq_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61.lean/declarations/ordered-compare-right-not-beq-gt--eb47d45ed06094b176765246.md) | 70 | `result-track:eb47d45ed06094b176765246a32e617ec08353c9b4c03f9e19944d1f5be4fb91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
