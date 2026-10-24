# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pred.Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85148465f9227d78bd17bdf3ae55866bfc40e669",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85148465f9227d78bd17bdf3ae55866bfc40e669`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Termination` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Combinators.FilterMap` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Split.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Pred` — import line 19; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.List.SplitOn.Lemmas` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Order` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toList_splitToSubslice_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean/declarations/tolist-splittosubslice-bool--258bf77b6fb229f2fe349872.md) | 33 | `result-track:258bf77b6fb229f2fe34987248951515e81452f578636e38f68f2d314913f833` |
| 2 | `theorem` | [toList_split_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean/declarations/tolist-split-bool--41c620bcf5cf6f010c7c59cc.md) | 57 | `result-track:41c620bcf5cf6f010c7c59cc8ac4944b84b14f86799c0ec9d3cbf090813e7110` |
| 3 | `theorem` | [Pattern.Model.split_bool_eq_internal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean/declarations/pattern-model-split-bool-eq-internal--823bcb899ee1cae53c27fe17.md) | 65 | `result-track:823bcb899ee1cae53c27fe17405ad588037fb6116aa7373d23ed8f99a4efd6d9` |
| 4 | `theorem` | [Pattern.Model.split_eq_split_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean/declarations/pattern-model-split-eq-split-decide--58769cab02b46bebdfbe501c.md) | 88 | `result-track:58769cab02b46bebdfbe501c91e93c03ffc6dfc04dd4ea5d649995945d77b415` |
| 5 | `theorem` | [toList_splitToSubslice_prop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean/declarations/tolist-splittosubslice-prop--87d45d4fc3f48017539d4cae.md) | 102 | `result-track:87d45d4fc3f48017539d4cae213fc2f78a3d588a2fbbe4b08f8a050716bc6ac3` |
| 6 | `theorem` | [toList_split_prop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean/declarations/tolist-split-prop--dc14a7726ded42676882097f.md) | 110 | `result-track:dc14a7726ded42676882097f897730e7651dbd8b415452f78564e218a05f6ed3` |
| 7 | `theorem` | [toList_split_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean/declarations/tolist-split-bool--15630f8efc3d5448fcdc5249.md) | 118 | `result-track:15630f8efc3d5448fcdc52497f89a8bf1744fdefec5b3e75b617e4bdbc953b33` |
| 8 | `theorem` | [toList_split_prop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean/declarations/tolist-split-prop--3fb4c7204ef619655d7f3c00.md) | 122 | `result-track:3fb4c7204ef619655d7f3c005fd4fdebfc40e49c0b5303e09f8b57fa235e76b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
