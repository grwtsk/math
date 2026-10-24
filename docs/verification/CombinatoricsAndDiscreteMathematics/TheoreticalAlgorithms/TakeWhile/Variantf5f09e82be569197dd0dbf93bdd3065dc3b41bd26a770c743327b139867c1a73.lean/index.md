# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TakeWhile.Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0431b9f406d3335675586f503c7aea45d025c16e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0431b9f406d3335675586f503c7aea45d025c16e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.TakeDrop` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.ToArray` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.takeWhile_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean/declarations/iter-takewhile-eq--35094cc31d9f649bdcdfbaef.md) | 22 | `result-track:35094cc31d9f649bdcdfbaef133c901b1a898e0ee549c692ff50be565b5cd979` |
| 2 | `theorem` | [Iter.step_takeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean/declarations/iter-step-takewhile--eb8898c826b5247f3411b3e8.md) | 27 | `result-track:eb8898c826b5247f3411b3e87d099cd3ad0342be16d7bb0f3564e3a02c510a58` |
| 3 | `theorem` | [Iter.val_step_takeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean/declarations/iter-val-step-takewhile--4a4fdc394ff9baf8b8b1b128.md) | 43 | `result-track:4a4fdc394ff9baf8b8b1b1287b7c8aa9cea916279bfe7e45442e22f24caa1bfa` |
| 4 | `theorem` | [Iter.atIdxSlow?_takeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean/declarations/iter-atidxslow-takewhile--b7511314f3be9fb3daf28f40.md) | 60 | `result-track:b7511314f3be9fb3daf28f40de579d3c2a37e8ac2e3f605a824ab32e29d477ef` |
| 5 | `theorem` | [List.getElem?_takeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean/declarations/list-getelem-takewhile--ebd1847c3e3ee2794ede1f50.md) | 111 | `result-track:ebd1847c3e3ee2794ede1f50bc41846c583abafe77cff8fa8f077991b4d43399` |
| 6 | `theorem` | [Iter.toList_takeWhile_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean/declarations/iter-tolist-takewhile-of-finite--12503a67dbb526f3435c2e35.md) | 140 | `result-track:12503a67dbb526f3435c2e3510e885388c94d5fcc6a7b3c0d8ac99bd7a175059` |
| 7 | `theorem` | [Iter.toListRev_takeWhile_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean/declarations/iter-tolistrev-takewhile-of-finite--334b34094084d3b192188277.md) | 148 | `result-track:334b34094084d3b1921882777902812dbfe87bdebbc3f8a648d5604cca33494d` |
| 8 | `theorem` | [Iter.toArray_takeWhile_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean/declarations/iter-toarray-takewhile-of-finite--1dda1ed394f4b7d2e3576cc4.md) | 155 | `result-track:1dda1ed394f4b7d2e3576cc4237a12bc6d35b836c1acec4ef5f8145c03466676` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
