# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Normalize.Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "806ea9b54e22875e71f5b543a2cc94a5868c8798",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `806ea9b54e22875e71f5b543a2cc94a5868c8798`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree.Eval` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Tree.nnf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean/declarations/tree-nnf--4098389e49d4f930591a2f63.md) | 17 | `declaration-track:4098389e49d4f930591a2f632168a5f71c06a190fefb5fac334fc0d309ec8e13` |
| 2 | `def` | [Tree.negNnf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean/declarations/tree-negnnf--c605e8f4b838c11bc5a31af8.md) | 31 | `declaration-track:c605e8f4b838c11bc5a31af8dabdd19a770a8210e6cc7e7493ae9dbc0d97aeec` |
| 3 | `theorem` | [Tree.eval_nnf_and_negNnf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean/declarations/tree-eval-nnf-and-negnnf--e809d37bc5a8484d8087d03f.md) | 47 | `result-track:e809d37bc5a8484d8087d03ffe511eb365f5d1214c3e38320f61b9712f5ba164` |
| 4 | `theorem` | [Tree.eval_nnf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean/declarations/tree-eval-nnf--9013a59a00ae680664f6d612.md) | 97 | `result-track:9013a59a00ae680664f6d61241053a734ac6ed586d5f4cc3494572e8f6146292` |
| 5 | `theorem` | [Tree.eval_negNnf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean/declarations/tree-eval-negnnf--6ab4f6b4a301eb8248031562.md) | 103 | `result-track:6ab4f6b4a301eb8248031562ae2af5536222a2f233305071469bf3ab2e63a89c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
