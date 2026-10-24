# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Modify.Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be3926c2755ad72cb891ff27bbc5e3ec2bca3801",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be3926c2755ad72cb891ff27bbc5e3ec2bca3801`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Pos.Splits.pastSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6.lean/declarations/pos-splits-pastset--e05a6ac63f12dfa2e8f45a0d.md) | 26 | `result-track:e05a6ac63f12dfa2e8f45a0da6bc51dc282fcd819603ff040cae61d90a4f41d9` |
| 2 | `theorem` | [Pos.Splits.pastModify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6.lean/declarations/pos-splits-pastmodify--032e429f548f01bc66b0d91a.md) | 34 | `result-track:032e429f548f01bc66b0d91ac5750c94b7e4798a6d92cff08ef516a872e84bbe` |
| 3 | `theorem` | [toList_mapAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6.lean/declarations/tolist-mapaux--5d6797b128add14763e14fa9.md) | 40 | `result-track:5d6797b128add14763e14fa99ed8525b2afb636bbc2a58a39ee37616736d8958` |
| 4 | `theorem` | [toList_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6.lean/declarations/tolist-map--f34070d327166c123a567bda.md) | 49 | `result-track:f34070d327166c123a567bda5fd7bec3c5164a9ff36194cc91636b17f16b4afc` |
| 5 | `theorem` | [map_eq_internal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6.lean/declarations/map-eq-internal--54d69a79b1183a89e2a32506.md) | 56 | `result-track:54d69a79b1183a89e2a3250632b19c7d29c0b022dcfec502d59f3cbb5a5d0e2d` |
| 6 | `theorem` | [map_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6.lean/declarations/map-eq-empty--84bc20850131aff0a41a797b.md) | 61 | `result-track:84bc20850131aff0a41a797b4f79fc778b926e1b586792ca740dfa86b9f5aa5b` |
| 7 | `theorem` | [map_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6.lean/declarations/map-map--968868f74c59a7b148cf472b.md) | 65 | `result-track:968868f74c59a7b148cf472bb55d4eeb28fc0c68aa2257313cb341761f079882` |
| 8 | `theorem` | [map_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6.lean/declarations/map-id--25e3b3c3bea5b6956ad10a63.md) | 70 | `result-track:25e3b3c3bea5b6956ad10a633012c42fa0ca4c005ba4a013b9f8d7bb7df608e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
