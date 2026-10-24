# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TagReduction.Variant10a80e18798a74e9738670df883db8353cb822b0258ed4ff865ad240151dcc2b

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant10a80e18798a74e9738670df883db8353cb822b0258ed4ff865ad240151dcc2b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca26f5f79b7a52879290d0c13b3d5f932d827385`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant10a80e18798a74e9738670df883db8353cb822b0258ed4ff865ad240151dcc2b.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [TagStep](declarations/tagstep--c0d60f7c1947c01653b11137.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [tagRootNext](declarations/tagrootnext--d2af7eba526d73ff37888215.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [tagNext](declarations/tagnext--2c798aa7e2cdd4a1d0b6562f.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [tag_root_next_sound](declarations/tag-root-next-sound--0b1eeeab2846f4f1f629aa5c.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tag_next_sound](declarations/tag-next-sound--1e40985302d8221e42643fbe.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [tag_next_complete](declarations/tag-next-complete--c4e7ac9eb686b6d1adabce21.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [tag_next_correct](declarations/tag-next-correct--3ccbb6b52e39bb04cb0d3925.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tag_step_preserves_typing](declarations/tag-step-preserves-typing--becd6805f13dbd793c45f24d.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [tag_step_size](declarations/tag-step-size--4696506cfa464413086a6ee1.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [tag_step_size_decreases](declarations/tag-step-size-decreases--1df98c68917606e883d19ec6.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [tag_size_strict_simulation](declarations/tag-size-strict-simulation--5c081c302358e88fd4dcb066.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [tag_strongly_normalizing_by_simulation](declarations/tag-strongly-normalizing-by-simulation--f3b0e479be805ddccf94dbd0.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [tagReducer](declarations/tagreducer--26db39521a58434d99b5f2a6.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [tagHeight](declarations/tagheight--5219ff2a7017919c3c00e04e.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tag_height_eq_mathematical_height](declarations/tag-height-eq-mathematical-height--9cae46d30d5c4b58976b1546.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [tag_strongly_normalizing](declarations/tag-strongly-normalizing--f6622bd4dcea6e139ef34329.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [tag_longest_trace](declarations/tag-longest-trace--b888da2dbc4d78d586689066.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [tag_trace_preserves_typing](declarations/tag-trace-preserves-typing--c118201ba3ca87838fa18bf5.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [tag_trace_size](declarations/tag-trace-size--141917e0b40e3060263a7301.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tag_step_representation_derivable](declarations/tag-step-representation-derivable--650c37ba13ba6f6dbfc96893.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [tag_table_output_bounded](declarations/tag-table-output-bounded--90b766fe4e8f83c2bb1e3397.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [TagAssignmentValid](declarations/tagassignmentvalid--681cb3f04d829a6ab56eddd0.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [tag_evaluation_bounded](declarations/tag-evaluation-bounded--0da1969ca7fe234022147c6e.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tag_cancel_evaluation](declarations/tag-cancel-evaluation--7ad80946fcfc1e361779891b.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [tag_step_preserves_evaluation](declarations/tag-step-preserves-evaluation--1aee841c20f53710cd353461.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [tag_invalid_assignment_changes_readout](declarations/tag-invalid-assignment-changes-readout--2986c0088d17f4b1fe019b34.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [tagNormalize](declarations/tagnormalize--fe463573d25a4871f7b0e43c.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [tag_normalize_spec](declarations/tag-normalize-spec--008d0a8a1595a30a9e2dbc25.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [tag_normalize_preserves_typing](declarations/tag-normalize-preserves-typing--af1a571a9b247e2a6a17ead5.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [tag_normalize_preserves_evaluation](declarations/tag-normalize-preserves-evaluation--78f97f2b05a62543426352cd.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [tag_catalogue_normalization_budget](declarations/tag-catalogue-normalization-budget--e51a31d7e560a28c3fa0ce6e.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tag_refl_step_under](declarations/tag-refl-step-under--8bec6bb3ec3454a2d3e40b89.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [tag_root_diamond](declarations/tag-root-diamond--07fd077897c03f8923e5ffc1.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [tag_local_diamond](declarations/tag-local-diamond--9915f3e8691eb1d67686c858.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [tag_confluent](declarations/tag-confluent--de2cd6ce017e1326d5eae25d.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [tag_trace_to_reachability](declarations/tag-trace-to-reachability--95c276d80fd78b9442fafa46.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [tag_reachable_normal_forms_unique](declarations/tag-reachable-normal-forms-unique--17496600bc463bc3b6f8bfaf.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [tag_normalize_step_invariant](declarations/tag-normalize-step-invariant--2fb56899bff03e528dfbc4e9.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [tag_step_substitution](declarations/tag-step-substitution--402af2faeda64dd7d88efa38.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [tag_substitution_size_bound](declarations/tag-substitution-size-bound--2f38abdd1c709539a7b1d74f.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [tag_height_size_bound](declarations/tag-height-size-bound--df94067d4922fe002d794721.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [tag_substitution_height_bound](declarations/tag-substitution-height-bound--fd156b72d4e368d0ffed7fab.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [tag_substitution_creates_redex](declarations/tag-substitution-creates-redex--ba579711755f09b1b753cd0b.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [checked_tag_tag_reduces](declarations/checked-tag-tag-reduces--0ec4e59470724072340a2815.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [checked_tag_tag_normalizes](declarations/checked-tag-tag-normalizes--6907f3b5d19bd47560ab6cdf.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [checked_tag_tag_height](declarations/checked-tag-tag-height--e158059d065f75cf49516bdf.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [checked_reduction_endpoints_valid](declarations/checked-reduction-endpoints-valid--30fde0b76bb395748f0dd3ae.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [outside_catalogue_normalizes](declarations/outside-catalogue-normalizes--bc09306edf1fd50fa9819beb.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
