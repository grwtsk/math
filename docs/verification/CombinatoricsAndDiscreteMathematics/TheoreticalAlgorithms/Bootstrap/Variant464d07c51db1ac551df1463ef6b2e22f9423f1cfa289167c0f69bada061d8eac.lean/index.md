# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bootstrap.Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e38f338737f38025f2eb002bec8fac1344bcdcb",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e38f338737f38025f2eb002bec8fac1344bcdcb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [foldlM_toList.aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/foldlm-tolist-aux--30bd4a7267ab9e40877a0498.md) | 36 | `result-track:30bd4a7267ab9e40877a049892652effb15b0c29d2cc6c71525abe186f54c309` |
| 2 | `theorem` | [foldlM_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/foldlm-tolist--fc4ccb9397c8e42b22993b43.md) | 48 | `result-track:fc4ccb9397c8e42b22993b432a68b61eb95ee30e7110e9567a0181ec3541e8a3` |
| 3 | `theorem` | [foldl_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/foldl-tolist--8eea98f5d46064ee4ae83133.md) | 53 | `result-track:8eea98f5d46064ee4ae831334bf34ca5659fc40f799777d6fd69ea66c6314909` |
| 4 | `theorem` | [foldrM_eq_reverse_foldlM_toList.aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/foldrm-eq-reverse-foldlm-tolist-aux--073b3d903f69201edfd71959.md) | 57 | `result-track:073b3d903f69201edfd7195967e143d9e38a425dacacb9852cb91fc098cdc5b1` |
| 5 | `theorem` | [foldrM_eq_reverse_foldlM_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/foldrm-eq-reverse-foldlm-tolist--992947712ff9383d238eaaf5.md) | 67 | `result-track:992947712ff9383d238eaaf5db9de14820eafc1bcead39944d270bfa327cf8c0` |
| 6 | `theorem` | [foldrM_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/foldrm-tolist--ff794d12a59e955b63cb885a.md) | 75 | `result-track:ff794d12a59e955b63cb885ab2b670e7b6494486422c6e7d0237b67c1fd26708` |
| 7 | `theorem` | [foldr_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/foldr-tolist--c1efb155410d11cc346e39df.md) | 80 | `result-track:c1efb155410d11cc346e39df3fa2e9662f9f5db8b1848df0f556cd24c51b7600` |
| 8 | `theorem` | [toList_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/tolist-push--67d2355180ce5a73d66efb54.md) | 84 | `result-track:67d2355180ce5a73d66efb541f9baba94ffe04b219acb075dc634c31337dc199` |
| 9 | `theorem` | [toListAppend_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/tolistappend-eq--9a18745a9dff44f86a0a21d5.md) | 88 | `result-track:9a18745a9dff44f86a0a21d5766f82de894ee77885ff0733f44a711e75f48b67` |
| 10 | `theorem` | [toListImpl_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/tolistimpl-eq--05aec08833a339c815054e4c.md) | 91 | `result-track:05aec08833a339c815054e4c8caf08a45a3ef8d0dce6e50e9d3192a303cfc749` |
| 11 | `theorem` | [toList_pop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/tolist-pop--956e389c4290da6424518747.md) | 94 | `result-track:956e389c4290da6424518747cf12ef4fd4541e00420cc51e0e7a6d4dd9eb77cf` |
| 12 | `theorem` | [append_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/append-eq-append--f1d7916c8e9e01af044f7d00.md) | 96 | `result-track:f1d7916c8e9e01af044f7d0025e9064ceccb6657674c5b6d1ff74aa2e48fef22` |
| 13 | `theorem` | [toList_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/tolist-append--a073cc85277cc97f52c78a5e.md) | 98 | `result-track:a073cc85277cc97f52c78a5ec53bdc7ce1a3b88b33bb2f178de16a4d9cdb0e49` |
| 14 | `theorem` | [toList_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/tolist-empty--95f933a8b4a5ae2ba53937cb.md) | 104 | `result-track:95f933a8b4a5ae2ba53937cbd5d532b84b8a1efcf0c69e0c8a78cccac37d564c` |
| 15 | `theorem` | [append_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/append-empty--55ec69558f484e5eb9305f10.md) | 106 | `result-track:55ec69558f484e5eb9305f10745ccebe15e71f5f52da41ff7b1cda9007834730` |
| 16 | `theorem` | [empty_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/empty-append--f52d8f6c0f72251bbb5cf1f2.md) | 109 | `result-track:f52d8f6c0f72251bbb5cf1f24b24d37c9427cbcbed6c3191aa6e0973c8115d78` |
| 17 | `theorem` | [append_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/append-assoc--119a38e5d99c780efae0f7eb.md) | 112 | `result-track:119a38e5d99c780efae0f7eb86a723e0018ae0b1d9bf7abd9deac5b842ef7e9b` |
| 18 | `theorem` | [appendList_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/appendlist-eq-append--f748b0c8c4ba8e6d5881c13a.md) | 121 | `result-track:f748b0c8c4ba8e6d5881c13acf7a744492ae7842172c919726a5d785495e4970` |
| 19 | `theorem` | [toList_appendList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variant464d07c51db1ac551df1463ef6b2e22f9423f1cfa289167c0f69bada061d8eac.lean/declarations/tolist-appendlist--de98ebada7646b1a461bca75.md) | 123 | `result-track:de98ebada7646b1a461bca756867a810f2f841425ead46d4410bf98bdeb33fc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
