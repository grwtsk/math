# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da61d82f9deb10d6942ade1202678203edbe816f",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da61d82f9deb10d6942ade1202678203edbe816f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Int.OfNat` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.Pairwise` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StrongAssignmentsInvariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/strongassignmentsinvariant--f6de3ba6d6e5d68ba3908a39.md) | 42 | `declaration-track:f6de3ba6d6e5d68ba3908a3950467e031c47031fcf1fdf9331f0c9c38421ae6b` |
| 2 | `def` | [AssignmentsInvariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/assignmentsinvariant--9d904bb5926ae403c66a34a1.md) | 55 | `declaration-track:9d904bb5926ae403c66a34a1b878c52f96093e4647b305fbf4edfbadc2c41f10` |
| 3 | `theorem` | [assignmentsInvariant_of_strongAssignmentsInvariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/assignmentsinvariant-of-strongassignmentsinvariant--e1ffb7ccf76efccba79332b0.md) | 60 | `result-track:e1ffb7ccf76efccba79332b0379dd5f13d4557a9866056769f03903948af664f` |
| 4 | `theorem` | [limplies_of_assignmentsInvariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/limplies-of-assignmentsinvariant--f29c0f52d14a6acaf06d2f13.md) | 71 | `result-track:f29c0f52d14a6acaf06d2f13e23b985ec10c660dbf32b68c883dd2bc5ed301a1` |
| 5 | `def` | [ReadyForRupAdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/readyforrupadd--acf723f7afbf63c78db8af29.md) | 89 | `declaration-track:acf723f7afbf63c78db8af291657f02b3dbd0ea4e53536a01fb34277f2c59ac2` |
| 6 | `def` | [ReadyForRatAdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/readyforratadd--523a8eb3f2f32a69378e59a4.md) | 95 | `declaration-track:523a8eb3f2f32a69378e59a4e62616429468ad413dbc0b075f4efc9a01a5b13d` |
| 7 | `theorem` | [rupUnits_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/rupunits-insert--aabe6b52db7e7c04f2340291.md) | 97 | `result-track:aabe6b52db7e7c04f23402917b733ef7080dc7b5d2a48157b2ea79e19fb464f0` |
| 8 | `theorem` | [ratUnits_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/ratunits-insert--26f2d79cd070a24ae86eb598.md) | 102 | `result-track:26f2d79cd070a24ae86eb59895564f9a902b6ee986ea79d6be80f7cdc0c2fb9e` |
| 9 | `theorem` | [size_ofArray_fold_fn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/size-ofarray-fold-fn--fb75d61d4d08a811b7ff11c8.md) | 107 | `result-track:fb75d61d4d08a811b7ff11c866a22cc65749ff03f31c932c58a86797605c97c2` |
| 10 | `theorem` | [readyForRupAdd_ofArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/readyforrupadd-ofarray--f255c3a172298ece60366c06.md) | 113 | `result-track:f255c3a172298ece60366c06cbe5637d17838b19f1ef9f35fffcfe35ef9a7ad9` |
| 11 | `theorem` | [readyForRatAdd_ofArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/readyforratadd-ofarray--e4e0fb00d4fc733d12416300.md) | 194 | `result-track:e4e0fb00d4fc733d124163002654cf430c4bc5b532a11a1a7b9fb8e42c3f633c` |
| 12 | `theorem` | [insert_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/insert-iff--c5ec3cbdcb257f3f67910221.md) | 200 | `result-track:c5ec3cbdcb257f3f67910221c71b215767248cd333280a527c6c5684352a470e` |
| 13 | `theorem` | [limplies_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/limplies-insert--151b6797c35a86010e4d430f.md) | 206 | `result-track:151b6797c35a86010e4d430f25eb198dfb6f5ebeac746a565988356d8efbff2b` |
| 14 | `theorem` | [size_assignments_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/size-assignments-insert--ab89116432c92de594aa7b60.md) | 211 | `result-track:ab89116432c92de594aa7b60975bb657b38bbd9eadad08f3c6df1bb3db0b453c` |
| 15 | `theorem` | [readyForRupAdd_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/readyforrupadd-insert--606d253197e80f9d0ff4750c.md) | 216 | `result-track:606d253197e80f9d0ff4750c7d60013bbaf7354b7a5aea95070b1511c2dba5da` |
| 16 | `theorem` | [readyForRatAdd_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/readyforratadd-insert--0b93cbf22815a0c4af6f2294.md) | 288 | `result-track:0b93cbf22815a0c4af6f2294e1514f2eb7ad246f98f78da4f232b9c3f8f41bdf` |
| 17 | `theorem` | [mem_of_insertRupUnits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/mem-of-insertrupunits--e13d8d320fe82e1f0046a008.md) | 296 | `result-track:e13d8d320fe82e1f0046a008760af62d8f9ccc0dbbe16aa10b6fd6e5e5340472` |
| 18 | `theorem` | [mem_of_insertRatUnits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/mem-of-insertratunits--fa61e23cae3d9c2a518fba69.md) | 325 | `result-track:fa61e23cae3d9c2a518fba69b561b0675cf7b50da1b75b8de50898fa26fa7bdc` |
| 19 | `theorem` | [deleteOne_preserves_rupUnits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/deleteone-preserves-rupunits--5d4ef8eb457841108966a0f4.md) | 351 | `result-track:5d4ef8eb457841108966a0f4ee5b47ad227022127051b14b48f247aa33f5b498` |
| 20 | `theorem` | [deleteOne_preserves_assignments_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/deleteone-preserves-assignments-size--8f807244c42d3d05a0bba757.md) | 356 | `result-track:8f807244c42d3d05a0bba7579e4463bb9e1ea4f0e80c19acaa96d30d6b679e84` |
| 21 | `theorem` | [deleteOne_preserves_strongAssignmentsInvariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/deleteone-preserves-strongassignmentsinvariant--b4c0f9a44e1da3675cc392d8.md) | 361 | `result-track:b4c0f9a44e1da3675cc392d8999bc9a5728696178e0161e3032eee38ab8b1702` |
| 22 | `theorem` | [readyForRupAdd_delete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/readyforrupadd-delete--4d57a962b2c8ca897ea2ef1f.md) | 466 | `result-track:4d57a962b2c8ca897ea2ef1fa1ea7db8236139647a54fdf9e29acd9331e43ece` |
| 23 | `theorem` | [deleteOne_preserves_ratUnits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/deleteone-preserves-ratunits--fb5dac9fab9f7aca5f9fdae8.md) | 479 | `result-track:fb5dac9fab9f7aca5f9fdae85fcfa6257a0e3063bd1fee77a93ea8fdca012c5e` |
| 24 | `theorem` | [readyForRatAdd_delete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/readyforratadd-delete--7349f2a97044ec59844a1be4.md) | 484 | `result-track:7349f2a97044ec59844a1be48c07ff0260518d564c13ece33dcb73ec6aadd625` |
| 25 | `theorem` | [deleteOne_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/deleteone-subset--3475b7fea8007f189e70ef5c.md) | 494 | `result-track:3475b7fea8007f189e70ef5c51a79469b235f5a87453bd6bcfa67423058d1eac` |
| 26 | `theorem` | [delete_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/declarations/delete-subset--2a853b2962e1a76a6a7230a7.md) | 501 | `result-track:2a853b2962e1a76a6a7230a7ca3e599b350084ac27b39c9fc91d891383bf8f67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
