# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableCompaction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3d3198cda7884b91db996c0c461b24e9469a68a",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3d3198cda7884b91db996c0c461b24e9469a68a`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableCompaction`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/loopvertexdecidableeq--a365bfb7c29fe2cdd878c6fd.md) | 16 | `declaration-track:a365bfb7c29fe2cdd878c6fdb9c4e950af478bf0690fb847ae03cf7905026712` |
| 2 | `instance` | [loopTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/looptagdecidableeq--e86f43e457b3ac8ae0f524dc.md) | 19 | `declaration-track:e86f43e457b3ac8ae0f524dcc2950d8190582bc10b8c0d3abc90d8d61b227a8b` |
| 3 | `def` | [falseTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/falsetag--b3412b6828ea526c3ba48b94.md) | 22 | `declaration-track:b3412b6828ea526c3ba48b945bbe91718a06d23da1d2d3197e496d170844ee13` |
| 4 | `def` | [trueTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/truetag--bf3d6e4d6a621dafd7b76b64.md) | 25 | `declaration-track:bf3d6e4d6a621dafd7b76b6432f119b3ae6e8a609546663bbdd32ebe8b4f9b7b` |
| 5 | `theorem` | [tags_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/tags-distinct--3db9e27e42e7c1f5ae67115d.md) | 28 | `result-track:3db9e27e42e7c1f5ae67115d6c92bca579e41bfffec16553e5ef5f0868b8cc8b` |
| 6 | `def` | [falseOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/falseoccurrence--a342086e377c450832ca8749.md) | 34 | `declaration-track:a342086e377c450832ca874932c2dda5c82db397c23a197739872e7a1601c128` |
| 7 | `def` | [trueOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/trueoccurrence--3ddb4a860ac29fbb5b91572e.md) | 37 | `declaration-track:3ddb4a860ac29fbb5b91572e159d7b7030a66d262dbb4cdeee01bf3ce06ea903` |
| 8 | `def` | [seedRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/seedrows--56a40e91cad2eebd679b3bdc.md) | 40 | `declaration-track:56a40e91cad2eebd679b3bdca6b73265bf09fa7e58150471406953c7cf7ebcad` |
| 9 | `def` | [seed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/seed--fbd4af4e3e86cb0545a9b735.md) | 43 | `declaration-track:fbd4af4e3e86cb0545a9b735cb8cffe707a5b2a8048fe47c4e0d177fd2b254cf` |
| 10 | `def` | [before](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/before--7cd8a34df987a72734bdf48d.md) | 46 | `declaration-track:7cd8a34df987a72734bdf48d407354ee7bb0dd43073a80b747a222cbb1c8233e` |
| 11 | `def` | [retainedRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/retainedrows--7d2fc06c2c26317551396964.md) | 49 | `declaration-track:7d2fc06c2c26317551396964cfca739fa59b72af9c6980537ec7218526325919` |
| 12 | `theorem` | [seed_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/seed-inventory--fb1f94ef1b1563d8ce7cd8f1.md) | 52 | `result-track:fb1f94ef1b1563d8ce7cd8f19c9703ec1a89101a1e180d2c639031058908aa4c` |
| 13 | `theorem` | [before_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/before-dictionary--c96a85d3dc65b796ca80a035.md) | 57 | `result-track:c96a85d3dc65b796ca80a035ce706ce3e9043c4ffb739bb01bb433072dbcfcb0` |
| 14 | `theorem` | [before_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/before-wellformed--a297e2139aaca70a463b5243.md) | 63 | `result-track:a297e2139aaca70a463b524320dbf4b898d2c60b1babc8d7f9735a7201af414a` |
| 15 | `theorem` | [before_nodes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/before-nodes--404e22bd4ccecbb781bb4107.md) | 72 | `result-track:404e22bd4ccecbb781bb4107cadabc497e3f3c0fff84021031f6077e0a8285c9` |
| 16 | `theorem` | [before_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/before-actual-decode--1b18b2d4fdedaf2750440fc6.md) | 77 | `result-track:1b18b2d4fdedaf2750440fc638d3cb2845debf54925de66a3904d0c275431876` |
| 17 | `theorem` | [before_realEntries](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/before-realentries--9fde796aeaf5649ec303f472.md) | 83 | `result-track:9fde796aeaf5649ec303f472fb71e0ce42a0d0023b36fa970a04ef1da096b01b` |
| 18 | `theorem` | [before_realRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/before-realrows--43e2ce7b15d29040e62b2022.md) | 87 | `result-track:43e2ce7b15d29040e62b2022201ae0febf0d8b458c04d78f06f379fd1c4d1051` |
| 19 | `def` | [after](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/after--774e92627cf4122cff86ff65.md) | 90 | `declaration-track:774e92627cf4122cff86ff6585f06dbf7fa03c451d6dbd3bbcfebab8c875495f` |
| 20 | `theorem` | [retained_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/retained-inventory--764e1d31451934aa03387006.md) | 92 | `result-track:764e1d31451934aa0338700654a8902ebd3fea995aafd2572d8f842548a35828` |
| 21 | `theorem` | [after_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/after-wellformed--3c90aa69c57d7112290bfbed.md) | 97 | `result-track:3c90aa69c57d7112290bfbede07ebfd01baa0ecfd56aff1d5bbc30ce930ccb7e` |
| 22 | `theorem` | [after_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/after-dictionary--9583d5dea42e2c06db5d247d.md) | 99 | `result-track:9583d5dea42e2c06db5d247d92713446ca030a314dc89ca444454ec36e124e88` |
| 23 | `theorem` | [after_nodes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/after-nodes--d8831d9c2e77a1084fa704f8.md) | 102 | `result-track:d8831d9c2e77a1084fa704f84824c50cc71e7f2e29a924c7a59cc173f72124e0` |
| 24 | `theorem` | [after_references](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/after-references--94f98c95492f60b3d120bfdf.md) | 106 | `result-track:94f98c95492f60b3d120bfdf9f5a5ad3931d6c9ea052d248a235c46a761411d9` |
| 25 | `theorem` | [after_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/after-actual-decode--17461705803853ad6bf55c49.md) | 113 | `result-track:17461705803853ad6bf55c490414d02a2252fa69e9f5fd4564f9738039c6bb08` |
| 26 | `theorem` | [actual_unused_branch_removed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/actual-unused-branch-removed--921139a8ce3a6c7323823ce2.md) | 116 | `result-track:921139a8ce3a6c7323823ce2ff638df6a747cb6475963839dd23844262d71f9a` |
| 27 | `theorem` | [actual_old_false_slot_remapped](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/actual-old-false-slot-remapped--f8b50c27a800004a1e1009f0.md) | 122 | `result-track:f8b50c27a800004a1e1009f0cca57f988a99e95eed426b6bbc732025cf153188` |
| 28 | `theorem` | [actual_parent_slot_remapped](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/actual-parent-slot-remapped--b1f7bac8d4de33bf252076c0.md) | 131 | `result-track:b1f7bac8d4de33bf252076c00e7e05a22bf896eeb3b0165f5e6cfb0faf8341be` |
| 29 | `theorem` | [actual_old_true_slot_removed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/actual-old-true-slot-removed--fbf3ad58325d1a2684b6ce88.md) | 140 | `result-track:fbf3ad58325d1a2684b6ce887b2e6b4f37c9306425477e1abf76c89711d1a8e2` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/example--4f00442301766cafbf9b969b.md) | 148 | `declaration-track:4f00442301766cafbf9b969bebf8fcc4d6ad7bc5e407226d7fc4b077a51569a0` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/example--1d172965f80a9536910a7215.md) | 152 | `declaration-track:1d172965f80a9536910a72150ad9b1c6d7d244c3db4adeaf1d0d1822f6d9d13c` |
| 32 | `def` | [stale](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/stale--dcdffe4e64b01a2a99394c33.md) | 158 | `declaration-track:dcdffe4e64b01a2a99394c3311eac9c406e46efd1593791c248b07a6b993eec8` |
| 33 | `theorem` | [stale_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/stale-wellformed--e9d1a1b867f4c337c7ede6a7.md) | 161 | `result-track:e9d1a1b867f4c337c7ede6a78cf7d50fb2dfd70231bdb47e460f90c3225b15d2` |
| 34 | `theorem` | [stale_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/stale-actual-decode--a0f517fb2e9784b71f74dc9b.md) | 172 | `result-track:a0f517fb2e9784b71f74dc9b5671f0d80ea66bebc2e27263583cc540604e3614` |
| 35 | `theorem` | [stale_histories_changed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/stale-histories-changed--0132afcc74d99c2afeb15b32.md) | 178 | `result-track:0132afcc74d99c2afeb15b325e5208636b39b0a8e4d99795b7651464f89b2c4d` |
| 36 | `def` | [oldCertificate](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/oldcertificate--81c896370c974489ccfb01bc.md) | 185 | `declaration-track:81c896370c974489ccfb01bc4ae59a1c3f851f2a18f22b78b9719ed9ffe3b502` |
| 37 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/example--53aaac4706213662c5bc6e62.md) | 190 | `declaration-track:53aaac4706213662c5bc6e62999c27936d253e34a67964f8a334950d9349ef78` |
| 38 | `instance` | [boolQuiver](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/boolquiver--dd98e277cc1061392672608d.md) | 196 | `declaration-track:dd98e277cc1061392672608d959e485c7283efcc5bcac90cd52f5a1c0ca3207d` |
| 39 | `instance` | [boolTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/booltagdecidableeq--c7228003b72b78495119c452.md) | 198 | `declaration-track:c7228003b72b78495119c45214e34dee6dd470fa9cdd921a764a5d943e80a248` |
| 40 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/example--df40c62d28d9bc8e62d0079e.md) | 201 | `declaration-track:df40c62d28d9bc8e62d0079e688b411da5064e45a1bac9d0a16f22c6b2e924f5` |
| 41 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/declarations/example--c5d2e6262b5ba5a536366ff6.md) | 204 | `declaration-track:c5d2e6262b5ba5a536366ff68ec6df72da15414e6a2b6c1837a5b29420c05725` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
