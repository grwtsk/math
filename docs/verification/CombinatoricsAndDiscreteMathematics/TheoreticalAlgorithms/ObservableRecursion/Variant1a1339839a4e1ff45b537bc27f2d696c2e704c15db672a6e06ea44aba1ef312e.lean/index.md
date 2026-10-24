# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObservableRecursion.Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8679c89ce910203dbbbe6fd3f7376930b3d96d51",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8679c89ce910203dbbbe6fd3f7376930b3d96d51`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Iterate` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [System](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.lean/declarations/system--1f329e03f920ab62a4b14fb4.md) | 27 | `declaration-track:1f329e03f920ab62a4b14fb4f658347cf3bc10d523f24e116bb8a3264c9b8e81` |
| 2 | `def` | [run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.lean/declarations/run--6f261dab96e65cba13ee4988.md) | 40 | `declaration-track:6f261dab96e65cba13ee498893d3b431b9cf96b23578272e3016de170c23ac0a` |
| 3 | `theorem` | [run_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.lean/declarations/run-nil--959dd8140a5a63d4f6002bb2.md) | 49 | `result-track:959dd8140a5a63d4f6002bb2fc93910fbf6e51d86452f890343f822f5a37cde9` |
| 4 | `theorem` | [run_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.lean/declarations/run-cons--199e1ff79409041b91e007e7.md) | 56 | `result-track:199e1ff79409041b91e007e78aaa0e07799c3e4c13334a10f4bd7030ccded3a4` |
| 5 | `theorem` | [run_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.lean/declarations/run-append--5d50ecdb7ac7098207230f76.md) | 66 | `result-track:5d50ecdb7ac7098207230f76b44d350451cb3a408b32dc1b9735d379dde9ce7a` |
| 6 | `theorem` | [run_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.lean/declarations/run-singleton--4389a511c47ab3eb78e4ecf3.md) | 79 | `result-track:4389a511c47ab3eb78e4ecf31f1e29ce301bfc0fb1d7c05a753ac50225c8dc23` |
| 7 | `def` | [autonomous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.lean/declarations/autonomous--a18e355dce46ad122cd489fb.md) | 87 | `declaration-track:a18e355dce46ad122cd489fbb4ea67d8521ea5ef1290de0d68e7d7ece75882cf` |
| 8 | `theorem` | [autonomous_run_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.lean/declarations/autonomous-run-replicate--080c4da85562171e69451f02.md) | 97 | `result-track:080c4da85562171e69451f02663876abe1a68ea2167d45a3118fe430a24a5afa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
