# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Varianta06d8a6e0cbdfa12df1393971337fc82236146ad03746f512123f7bbe97109fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a1e1a12ca985c2237479c2bb99b0252ccb404c1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta06d8a6e0cbdfa12df1393971337fc82236146ad03746f512123f7bbe97109fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta06d8a6e0cbdfa12df1393971337fc82236146ad03746f512123f7bbe97109fc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta06d8a6e0cbdfa12df1393971337fc82236146ad03746f512123f7bbe97109fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a1e1a12ca985c2237479c2bb99b0252ccb404c1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta06d8a6e0cbdfa12df1393971337fc82236146ad03746f512123f7bbe97109fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta06d8a6e0cbdfa12df1393971337fc82236146ad03746f512123f7bbe97109fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [merge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta06d8a6e0cbdfa12df1393971337fc82236146ad03746f512123f7bbe97109fc.lean/declarations/merge--d0b0ac41452203e28de846c1.md) | 47 | `declaration-track:d0b0ac41452203e28de846c1c59f7ea1bc986a159caf99dfab2d2b314b23784a` |
| 2 | `theorem` | [nil_merge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta06d8a6e0cbdfa12df1393971337fc82236146ad03746f512123f7bbe97109fc.lean/declarations/nil-merge--734b686dfde77dd36dec5ad2.md) | 57 | `result-track:734b686dfde77dd36dec5ad28a34c0bb73b16cf6c553c60d01c28772c2a47aa9` |
| 3 | `theorem` | [merge_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta06d8a6e0cbdfa12df1393971337fc82236146ad03746f512123f7bbe97109fc.lean/declarations/merge-right--71691b3efb2b4f01af0c96b0.md) | 58 | `result-track:71691b3efb2b4f01af0c96b076687072b64d96a24fd3f00a9082fc2a350c3423` |
| 4 | `def` | [MergeSort.Internal.splitInTwo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta06d8a6e0cbdfa12df1393971337fc82236146ad03746f512123f7bbe97109fc.lean/declarations/mergesort-internal-splitintwo--6e192b8da1c9ddb137052047.md) | 68 | `declaration-track:6e192b8da1c9ddb1370520477c24254cd302f2107e430083394c85d60694021f` |
| 5 | `def` | [mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta06d8a6e0cbdfa12df1393971337fc82236146ad03746f512123f7bbe97109fc.lean/declarations/mergesort--a93fa90f418aeff45e506b0a.md) | 87 | `declaration-track:a93fa90f418aeff45e506b0ac4328b90e9d4202b8b2cc4950bd0cc3bed70ac12` |
| 6 | `def` | [zipIdxLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta06d8a6e0cbdfa12df1393971337fc82236146ad03746f512123f7bbe97109fc.lean/declarations/zipidxle--4473f277906afd59661dbae4.md) | 106 | `declaration-track:4473f277906afd59661dbae42164c95b2414525191526e392a893026b6c3baa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
