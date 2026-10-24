# Verification target: GRWTSK.Analysis.MeasureTheory.PartialTraj.Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d100aa339def3bd261e1aba6660d7bf711a26d6",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d100aa339def3bd261e1aba6660d7bf711a26d6`.

Source path: `GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.PreorderRestrict` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.IonescuTulcea.Maps` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj--7f4481c1a2d7efa80e15b650.md) | 104 | `declaration-track:7f4481c1a2d7efa80e15b6501cd848c149b4ecf3ce5f7c433766481afaf95f73` |
| 2 | `lemma` | [partialTraj_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj-le--66820d8a53e68de7a26c1ecd.md) | 114 | `result-track:66820d8a53e68de7a26c1ecd713d6a77802b64b02dfe8e873b3068e88b937a13` |
| 3 | `lemma` | [partialTraj_self](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj-self--5cb7109a2360467122a9a48a.md) | 119 | `result-track:5cb7109a2360467122a9a48a2aac4fdd37c41cdf394be2d9b58998bcaec6bf18` |
| 4 | `lemma` | [partialTraj_zero](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj-zero--886e47da1fb111f6a2204028.md) | 122 | `result-track:886e47da1fb111f6a220402845d4a24506154c9348bdb967bbb2d82ab729b612` |
| 5 | `lemma` | [partialTraj_le_def](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj-le-def--5a6b47ff004cd27806815113.md) | 126 | `result-track:5a6b47ff004cd27806815113e261ee3c150172af60390bf8866b05d515318af9` |
| 6 | `lemma` | [partialTraj_succ_of_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj-succ-of-le--2343679692fdc4c86ee5d80d.md) | 134 | `result-track:2343679692fdc4c86ee5d80d68a9c01c9c000b4e79f3fd636d1f7db799d3cfff` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/instance--7b6a35cd9e43022ac67a6a8e.md) | 142 | `declaration-track:7b6a35cd9e43022ac67a6a8ece7ad49ddfaac37b990b64d1eb081ad85bc124b4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/instance--ee03955d8928dacf5bd4dcd6.md) | 149 | `declaration-track:ee03955d8928dacf5bd4dcd6329f670da3270e774acd9cac7a10ec6603f13075` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/instance--581a55ff950bb3a34bbc87f5.md) | 156 | `declaration-track:581a55ff950bb3a34bbc87f507c325a55a000690d96c494fcbce2ee4fddd9739` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/instance--31769dfe3fd3ad7377ad7095.md) | 164 | `declaration-track:31769dfe3fd3ad7377ad7095d886977c9986ea8dcd8d749b8f9cc4951d2ee812` |
| 11 | `lemma` | [partialTraj_succ_self](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj-succ-self--39698cc097e812c2656f93d4.md) | 175 | `result-track:39698cc097e812c2656f93d47d51365b8f61d5433db8e5c0373840dbb6b8c737` |
| 12 | `lemma` | [partialTraj_succ_eq_comp](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj-succ-eq-comp--fab6af9945049dfb87e5ef37.md) | 180 | `result-track:fab6af9945049dfb87e5ef3720f3c45b629022ce4016c1b3176a0860217b6628` |
| 13 | `theorem` | [partialTraj_comp_partialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj-comp-partialtraj--9494b31e6c79efc4b652207b.md) | 187 | `result-track:9494b31e6c79efc4b652207b361014758d64da8a4eda74d1070cdecc6721e381` |
| 14 | `lemma` | [fst_prod_comp_id_prod](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/fst-prod-comp-id-prod--30c773dd1a6f8bd39a9793f3.md) | 197 | `result-track:30c773dd1a6f8bd39a9793f369b49ba5bfd5bd289fb985404f72062c420734c5` |
| 15 | `lemma` | [partialTraj_eq_prod](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj-eq-prod--f1242e60e8e7349eadb9d2c6.md) | 210 | `result-track:f1242e60e8e7349eadb9d2c6245555e34ad771419dc48f5b03519957b7ca38c6` |
| 16 | `lemma` | [partialTraj_succ_map_frestrictLe₂](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj-succ-map-frestrictle--28c5f38731e5196dfbfb3873.md) | 248 | `result-track:28c5f38731e5196dfbfb3873991fd8b766009aba356d4c8035013904d1117aa4` |
| 17 | `theorem` | [partialTraj_map_frestrictLe₂](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj-map-frestrictle--08ede6f811f4182fe4af66db.md) | 261 | `result-track:08ede6f811f4182fe4af66dbecfb14396cc9b97c6d18a5a0261eead8be235021` |
| 18 | `lemma` | [partialTraj_map_frestrictLe₂_apply](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj-map-frestrictle-apply--076182f2d10a74850f1d8069.md) | 270 | `result-track:076182f2d10a74850f1d8069ae5427fb53a520705301d915d16915baa0e0dcca` |
| 19 | `lemma` | [partialTraj_comp_partialTraj'](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj-comp-partialtraj--13d4834662a6895f1d57b7f0.md) | 275 | `result-track:13d4834662a6895f1d57b7f0ebac758d14ad29653366ff610ebe5d0de3efd356` |
| 20 | `lemma` | [partialTraj_comp_partialTraj''](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/partialtraj-comp-partialtraj--d6f42fca12085fba38cc2ed4.md) | 282 | `result-track:d6f42fca12085fba38cc2ed4530d192b03177e90908bec9fb5b17b62f50c1b43` |
| 21 | `def` | [lmarginalPartialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/lmarginalpartialtraj--51df3a200eebafe5f372e7f1.md) | 299 | `declaration-track:51df3a200eebafe5f372e7f1a66ff25d8d161da24da18ae61810308b1aba76a6` |
| 22 | `lemma` | [lmarginalPartialTraj_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/lmarginalpartialtraj-le--3358a8168374218fdd86d00e.md) | 303 | `result-track:3358a8168374218fdd86d00e10f281adbf95d6479976f369380cba6dc6ccdb39` |
| 23 | `lemma` | [lmarginalPartialTraj_mono](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/lmarginalpartialtraj-mono--09f6c27af1a85f20afa89479.md) | 313 | `result-track:09f6c27af1a85f20afa89479245804966fd4a5a3cd7d317c8bacc30fafcea2c8` |
| 24 | `lemma` | [lmarginalPartialTraj_eq_lintegral_map](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/lmarginalpartialtraj-eq-lintegral-map--09fd0b1da4378c9279b6408d.md) | 319 | `result-track:09fd0b1da4378c9279b6408dffbe9a05ca54b27d4890a4acdd957f91b4f66140` |
| 25 | `lemma` | [lmarginalPartialTraj_succ](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/lmarginalpartialtraj-succ--a3f4252fc87c739ffb33062f.md) | 333 | `result-track:a3f4252fc87c739ffb33062fbfd48f0987efa127ffcf830d70c0d4eb9832abc3` |
| 26 | `lemma` | [measurable_lmarginalPartialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/measurable-lmarginalpartialtraj--708ba5d8ffb09f70384055ba.md) | 346 | `result-track:708ba5d8ffb09f70384055bad0f662a559b69a5566cea899c914b3446ffaac06` |
| 27 | `theorem` | [lmarginalPartialTraj_self](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/lmarginalpartialtraj-self--87c8339f1862a4c78171235e.md) | 360 | `result-track:87c8339f1862a4c78171235eea1579d6d04d2d548a9d3edc3bdb44b65cd7b0f2` |
| 28 | `theorem` | [lmarginalPartialTraj_of_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/lmarginalpartialtraj-of-le--230026170cd7e5c255cce5c9.md) | 385 | `result-track:230026170cd7e5c255cce5c982081cac8ba1cd1edb1a99a87e27a840f2c9421b` |
| 29 | `theorem` | [lmarginalPartialTraj_const_right](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/lmarginalpartialtraj-const-right--0aa1968f16c6907e5c253eb3.md) | 398 | `result-track:0aa1968f16c6907e5c253eb3b1dc82b9845a07884cd8de5a815b8a255a741505` |
| 30 | `theorem` | [dependsOn_lmarginalPartialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/declarations/dependson-lmarginalpartialtraj--72398cc4e72f466f8a14d6cc.md) | 410 | `result-track:72398cc4e72f466f8a14d6cc497d410489fdea662a00725467361e8673f76927` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
