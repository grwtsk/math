# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AffectedOrder.Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aedb196b6793e0203e5797ac57568f03b4f1568d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aedb196b6793e0203e5797ac57568f03b4f1568d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Incremental.DependencyClosure` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [indexOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean/declarations/indexof--c99fab441069cb3acc84a068.md) | 6 | `declaration-track:c99fab441069cb3acc84a068da040ee79d86ec4e0fa1c59080b02a8ae8b674db` |
| 2 | `structure` | [AffectedModuleOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean/declarations/affectedmoduleorder--e749524eb40782a20ed45c16.md) | 15 | `declaration-track:e749524eb40782a20ed45c162b0ae6da174342f05950d96d0168c0d451fa20c6` |
| 3 | `structure` | [ImportCycleReport](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean/declarations/importcyclereport--a62839ba6933df0dc820b54a.md) | 31 | `declaration-track:a62839ba6933df0dc820b54a5bc6d53848e245a09685f97af59dfddb520e61f1` |
| 4 | `theorem` | [affectedOrder_sameSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean/declarations/affectedorder-sameset--858aa320fc7f3c605900ce96.md) | 38 | `result-track:858aa320fc7f3c605900ce9621a29431975b5c5f6a8084ea4fb555b3d36094e4` |
| 5 | `theorem` | [affectedOrder_contains_exactly_closure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean/declarations/affectedorder-contains-exactly-closure--9c80f8f8c7574eeb41d33175.md) | 44 | `result-track:9c80f8f8c7574eeb41d331757216c0ff448a979f6895e1341e5c16a90f090792` |
| 6 | `theorem` | [affectedOrder_importsBeforeImporters](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean/declarations/affectedorder-importsbeforeimporters--d220c62bb0cfedfc9f3f2774.md) | 50 | `result-track:d220c62bb0cfedfc9f3f277477825c04f53c5568e379412185f8d11841836e34` |
| 7 | `theorem` | [affectedOrder_respects_import_dependencies](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean/declarations/affectedorder-respects-import-dependencies--95892e9d63bddcfdc5779b34.md) | 59 | `result-track:95892e9d63bddcfdc5779b34973fc77968854fe0e1804b0308922202a5d75bdf` |
| 8 | `theorem` | [affectedOrder_deterministic_given_graph_and_seeds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean/declarations/affectedorder-deterministic-given-graph-and-seeds--7db076d16b3e82966aafbb4a.md) | 68 | `result-track:7db076d16b3e82966aafbb4a02ea5c6b012908b283dd15e34ff6a2cec10907c4` |
| 9 | `theorem` | [affectedOrder_is_deterministic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean/declarations/affectedorder-is-deterministic--aeec1f4eafa9890419b073e0.md) | 73 | `result-track:aeec1f4eafa9890419b073e020577ba51fb2567e5cd8b18f6f00149770c88fc7` |
| 10 | `theorem` | [importCycle_blocks_incremental_plan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean/declarations/importcycle-blocks-incremental-plan--a3a2768ddac5d187d465973c.md) | 78 | `result-track:a3a2768ddac5d187d465973c04b651ced56fb2fe6740c027eb9bf28144d8b331` |
| 11 | `theorem` | [importCycle_requires_failure_report](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffectedOrder/Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2.lean/declarations/importcycle-requires-failure-report--33a532b5f78a1babe3715f4d.md) | 83 | `result-track:33a532b5f78a1babe3715f4dbe8b8829dffbd03b716eec5e073787ecfbcb4427` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
