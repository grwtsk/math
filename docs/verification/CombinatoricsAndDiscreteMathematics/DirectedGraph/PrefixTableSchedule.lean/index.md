# Verification target: GRWTSK.Combinatorics.DirectedGraph.PrefixTableSchedule

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b5c0f75538eddbd67b1ee30899365f0c35780f9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableSchedule.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b5c0f75538eddbd67b1ee30899365f0c35780f9`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/PrefixTableSchedule.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/PrefixTableSchedule.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableCheckpoint`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Action](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/declarations/action--1d86fd631b4db99ef00e23a0.md) | 27 | `declaration-track:1d86fd631b4db99ef00e23a0c0aaa822c839c58661877f4c60eed7f014c40d6e` |
| 2 | `abbrev` | [ValidRootedState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/declarations/validrootedstate--ebc37c827ee728eab4797981.md) | 32 | `declaration-track:ebc37c827ee728eab47979814e03bf98d364236631b140a4c51d4865c2ae5083` |
| 3 | `def` | [applyAction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/declarations/applyaction--7d53dd477ffefdf9c3fc2986.md) | 36 | `declaration-track:7d53dd477ffefdf9c3fc29869b15364d3e534f9f7618a0f8d5e7b908b9e678d1` |
| 4 | `def` | [executeAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/declarations/executeat--bee676bec91d2072e5191dbf.md) | 42 | `declaration-track:bee676bec91d2072e5191dbfdcfe328d631ebddb5e3407a6eddb7ca4cf023256` |
| 5 | `def` | [execute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/declarations/execute--3a70656cf42869d03d4ca356.md) | 46 | `declaration-track:3a70656cf42869d03d4ca35689381ab20112e246cacb7ba70a23a277456ce1d7` |
| 6 | `def` | [projectBatches](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/declarations/projectbatches--cd02dbe2ab13f8543088c8e7.md) | 50 | `declaration-track:cd02dbe2ab13f8543088c8e723414598a290bf19348d30beb5bcbdb031926f8d` |
| 7 | `theorem` | [execute_root](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/declarations/execute-root--2e664e1426485585628921f1.md) | 54 | `result-track:2e664e1426485585628921f16559af4144aee1c2eae99422578b6f3527f19b7c` |
| 8 | `theorem` | [execute_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/declarations/execute-wellformed--5b6afc20d2fffcbd43c8e4c0.md) | 58 | `result-track:5b6afc20d2fffcbd43c8e4c0bcc915ca2d5eddbc54eeb42528719c4c872db436` |
| 9 | `theorem` | [execute_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/declarations/execute-nil--4a5e2c359903f9e537c91729.md) | 62 | `result-track:4a5e2c359903f9e537c91729dd02455f72385faa44f81332f06560d51f5ba0b7` |
| 10 | `theorem` | [decode_executeAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/declarations/decode-executeat--97f80b761025014590f98f04.md) | 66 | `result-track:97f80b761025014590f98f0417a8e1f995880ea0d32c3813d5b0ee29a5cc26bb` |
| 11 | `theorem` | [decode_execute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/declarations/decode-execute--e59a863c946b4f91d2898142.md) | 92 | `result-track:e59a863c946b4f91d28981423142f73e7be9ddf3498f57ebccd3c3a92818d9be` |
| 12 | `theorem` | [execute_histories](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/declarations/execute-histories--194c29b1e76e114194b3d1b0.md) | 100 | `result-track:194c29b1e76e114194b3d1b0fe379ea657138a45168abf46177c4314863aa30c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
