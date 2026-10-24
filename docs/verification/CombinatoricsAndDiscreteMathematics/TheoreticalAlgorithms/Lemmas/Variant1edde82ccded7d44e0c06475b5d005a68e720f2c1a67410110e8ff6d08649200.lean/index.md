# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfaf0257cdc3b73c7ce53b4cf5749cc5ddac7c37",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfaf0257cdc3b73c7ce53b4cf5749cc5ddac7c37`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.InsertIdx` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [setOf_mem_eq_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean/declarations/setof-mem-eq-empty-iff--def884fe75a1a7d4eb595bdf.md) | 21 | `result-track:def884fe75a1a7d4eb595bdf459135ec28fefe81625f983fa531159112bec984` |
| 2 | `theorem` | [injOn_insertIdx_index_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean/declarations/injon-insertidx-index-of-notmem--b2a19b6460c270bfeda7952e.md) | 26 | `result-track:b2a19b6460c270bfeda7952e02fd05560ec613036dd0c336ea7af71fcf3c2f88` |
| 3 | `theorem` | [foldr_range_subset_of_range_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean/declarations/foldr-range-subset-of-range-subset--cdd1566abe126e8d21514f4b.md) | 47 | `result-track:cdd1566abe126e8d21514f4bdfced107caa0c303bd916d78a75ee3c1e8702366` |
| 4 | `theorem` | [foldl_range_subset_of_range_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean/declarations/foldl-range-subset-of-range-subset--0ae1ea8f5b59c06915c8c91f.md) | 57 | `result-track:0ae1ea8f5b59c06915c8c91f4974d08fa5741681b577f90a80ee12f60772fcf8` |
| 5 | `theorem` | [foldr_range_eq_of_range_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean/declarations/foldr-range-eq-of-range-eq--722d52df38ecfd6c6a3ea864.md) | 66 | `result-track:722d52df38ecfd6c6a3ea864ea0700e29281f52bf89f945564317385100c121e` |
| 6 | `theorem` | [foldl_range_eq_of_range_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean/declarations/foldl-range-eq-of-range-eq--7d862966c555b92121b1c8ce.md) | 71 | `result-track:7d862966c555b92121b1c8ce9fd1c4eafc8e7e4e4b9f45303a67e8b742b150d0` |
| 7 | `theorem` | [mapAccumr_eq_foldr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean/declarations/mapaccumr-eq-foldr--2171bad983c1673befb0b20f.md) | 85 | `result-track:2171bad983c1673befb0b20ffc88494e626500f0c8254bb6e021f645cbcafafa` |
| 8 | `theorem` | [mapAccumr₂_eq_foldr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean/declarations/mapaccumr-eq-foldr--b48bb4667d716169006ee057.md) | 94 | `result-track:b48bb4667d716169006ee0574f563bc7ff2ad34aa01f465ca1e6a77885a90524` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
