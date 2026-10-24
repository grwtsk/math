# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70e58e5f969a920f53cfdf6fa2cc207c2a42f132",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70e58e5f969a920f53cfdf6fa2cc207c2a42f132`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Int.OfNat` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.Pairwise` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StrongAssignmentsInvariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/strongassignmentsinvariant--d04be07251b02960937667e9.md) | 50 | `declaration-track:d04be07251b02960937667e9bd57279852068c65a44b64b3fb0fcda265eec3b9` |
| 2 | `def` | [AssignmentsInvariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/assignmentsinvariant--1f662393a19b0ec05fe7d714.md) | 63 | `declaration-track:1f662393a19b0ec05fe7d71466a6d30f56b69a6e3eadfdb2d30c64d1307e5fe5` |
| 3 | `theorem` | [assignmentsInvariant_of_strongAssignmentsInvariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/assignmentsinvariant-of-strongassignmentsinvariant--f0145f064ba4796e6e807f94.md) | 68 | `result-track:f0145f064ba4796e6e807f946b10e23023d3f3b91fc15a13b5197c49db102733` |
| 4 | `theorem` | [limplies_of_assignmentsInvariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/limplies-of-assignmentsinvariant--3f794c460e28611b3cf0e1ba.md) | 79 | `result-track:3f794c460e28611b3cf0e1ba735c659bf5199d8e46de82c33c3b0debac355e1c` |
| 5 | `def` | [ReadyForRupAdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/readyforrupadd--3c8de47e5c135f5fab2e4f2e.md) | 97 | `declaration-track:3c8de47e5c135f5fab2e4f2e5878705a31cee129d9a177057170cd03f3770b90` |
| 6 | `def` | [ReadyForRatAdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/readyforratadd--d48a2786bd94f55de79429e2.md) | 103 | `declaration-track:d48a2786bd94f55de79429e2962f2c1e3b2e0f0f48edd1b3585d634b928470a2` |
| 7 | `theorem` | [rupUnits_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/rupunits-insert--dd6b5a657fdca338338a7678.md) | 105 | `result-track:dd6b5a657fdca338338a76785993f8bc4bfcb9cc7d9c181601235e8fcf4e9b51` |
| 8 | `theorem` | [ratUnits_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/ratunits-insert--6e265b1e706bd0b8604b1d26.md) | 110 | `result-track:6e265b1e706bd0b8604b1d26dd6974d97bbeaff15dfd171b8fcba25d8763e3d8` |
| 9 | `theorem` | [size_ofArray_fold_fn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/size-ofarray-fold-fn--e71422ee5bfa069a0ff72565.md) | 115 | `result-track:e71422ee5bfa069a0ff72565412c326e2eb66e265bd00b09f370eabdaee8103f` |
| 10 | `theorem` | [readyForRupAdd_ofArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/readyforrupadd-ofarray--147dbbea42807257db4620a7.md) | 121 | `result-track:147dbbea42807257db4620a7aee6447115210f13613c9a5ed69d87db7ace946a` |
| 11 | `theorem` | [readyForRatAdd_ofArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/readyforratadd-ofarray--50e6c076e8a26a6ce46f3e6a.md) | 202 | `result-track:50e6c076e8a26a6ce46f3e6a4dc306b131dacfb8be81e57605de11657dc370f6` |
| 12 | `theorem` | [insert_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/insert-iff--82398c488b781fa7d45830cb.md) | 208 | `result-track:82398c488b781fa7d45830cbd97ce0aaeae81cde134fd442bef5bc476cbf57c8` |
| 13 | `theorem` | [limplies_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/limplies-insert--1196cc6a6b7fb72d2bbad3e4.md) | 214 | `result-track:1196cc6a6b7fb72d2bbad3e4e81b52938a49f9ab4b39e10d8754e648f5ffc5bc` |
| 14 | `theorem` | [size_assignments_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/size-assignments-insert--357c99ebadd243ecdec06806.md) | 219 | `result-track:357c99ebadd243ecdec06806a67abb8a5cc32b68d61ea27217c3fc45a9a82978` |
| 15 | `theorem` | [readyForRupAdd_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/readyforrupadd-insert--b08fe20921686b65b0cd1f85.md) | 224 | `result-track:b08fe20921686b65b0cd1f8545b55840d1056d53311354c99e856d36c8f73b1f` |
| 16 | `theorem` | [readyForRatAdd_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/readyforratadd-insert--f731057636c40c75e69198dd.md) | 296 | `result-track:f731057636c40c75e69198dda4bf120134b997223b7a90cc029e9a8d286f3304` |
| 17 | `theorem` | [mem_of_insertRupUnits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/mem-of-insertrupunits--121d51a1e32bdccc68104e71.md) | 304 | `result-track:121d51a1e32bdccc68104e71dae3d8d1767abff8af65f11ca79aadd0c0d2761b` |
| 18 | `theorem` | [mem_of_insertRatUnits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/mem-of-insertratunits--3968bf0948316d29421d4541.md) | 333 | `result-track:3968bf0948316d29421d45413cb15882b4997feab9ed107ac8729f19fbcef986` |
| 19 | `theorem` | [deleteOne_preserves_rupUnits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/deleteone-preserves-rupunits--875dee3fed7e2801851e0809.md) | 359 | `result-track:875dee3fed7e2801851e0809789825446fefce7768dfea89184935f8b473e04c` |
| 20 | `theorem` | [deleteOne_preserves_assignments_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/deleteone-preserves-assignments-size--56d6d532d1ba438f84aa8635.md) | 364 | `result-track:56d6d532d1ba438f84aa863518280ba865c7f9936e7139b973f80030193d81a7` |
| 21 | `theorem` | [deleteOne_preserves_strongAssignmentsInvariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/deleteone-preserves-strongassignmentsinvariant--7113c87df991117353ea11dd.md) | 369 | `result-track:7113c87df991117353ea11dd6d8770f6e51f3dcd052b05792d1385ba2c96069f` |
| 22 | `theorem` | [readyForRupAdd_delete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/readyforrupadd-delete--441fd323ccd98b014cc10dde.md) | 474 | `result-track:441fd323ccd98b014cc10dde20c0d18d4491a9182cf539b65d1a65f1af0935ba` |
| 23 | `theorem` | [deleteOne_preserves_ratUnits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/deleteone-preserves-ratunits--72f24b9c0e4b3b8693876a1a.md) | 487 | `result-track:72f24b9c0e4b3b8693876a1a0e5b58f78473260e1098455fc4bf13031f4384ff` |
| 24 | `theorem` | [readyForRatAdd_delete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/readyforratadd-delete--12763caa6601e6777912286b.md) | 492 | `result-track:12763caa6601e6777912286b38ac4a05c2b5d35d8cb6b5ca48bc5ca8f20f72c0` |
| 25 | `theorem` | [deleteOne_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/deleteone-subset--e052e47b2859444021ed5133.md) | 502 | `result-track:e052e47b2859444021ed51334a99a27c17b7d0a97a97819869e42ae13d6d8b80` |
| 26 | `theorem` | [delete_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/declarations/delete-subset--e07cd18954fd76886d6e3a19.md) | 509 | `result-track:e07cd18954fd76886d6e3a19a9cbe5610d3a8f0c95021e96544aae66bb2dbc27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
