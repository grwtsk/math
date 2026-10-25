# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5f70db25308d6a0ff5fcd082bdb5e0021f5ed8d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5f70db25308d6a0ff5fcd082bdb5e0021f5ed8d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Ord` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Tactic.Simpa` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ordering.swap_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/ordering-swap-swap--77e610ac943af14bfd4cc895.md) | 11 | `result-track:77e610ac943af14bfd4cc89573fcbc341b96ad86b958252ce8071e7ea10d9bbd` |
| 2 | `theorem` | [Ordering.swap_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/ordering-swap-inj--b4819cd33ef32828fedca419.md) | 13 | `result-track:b4819cd33ef32828fedca419a560919b1551a3eab76fc8aedd010a95829044c8` |
| 3 | `class` | [TotalBLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/totalble--60e125b2c3dbaea582d3d436.md) | 19 | `declaration-track:60e125b2c3dbaea582d3d436e53d75390d96b6b636129d61eb64807a4663d2a1` |
| 4 | `class` | [OrientedCmp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/orientedcmp--332f087385365975716570ac.md) | 24 | `declaration-track:332f087385365975716570acfadc00bbb2faa1a2262c764b4b8f57755d82a732` |
| 5 | `theorem` | [cmp_eq_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/cmp-eq-gt--f14def79297499cfc627415b.md) | 31 | `result-track:f14def79297499cfc627415b44e7b11e5ef3a007bb326fe87882ef2fd4cad09f` |
| 6 | `theorem` | [cmp_eq_eq_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/cmp-eq-eq-symm--066a2515916fe0a90a5d329f.md) | 34 | `result-track:066a2515916fe0a90a5d329f5c186115546ff77dc85bfeec0ad86de78e6177e4` |
| 7 | `theorem` | [cmp_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/cmp-refl--d2db22d2c1030b714cfe23fc.md) | 37 | `result-track:d2db22d2c1030b714cfe23fcc93f5880c4447949104e5d60774019c9e675bb23` |
| 8 | `class` | [TransCmp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/transcmp--b3369e13d954647617a754b3.md) | 46 | `declaration-track:b3369e13d954647617a754b38ed576b959c6e7b56143c439fcccd6d293e05c8d` |
| 9 | `theorem` | [ge_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/ge-trans--2db7b73790192bac866fe89a.md) | 54 | `result-track:2db7b73790192bac866fe89ae6869f98591517962da33f23d0d3b820f39a0ee6` |
| 10 | `theorem` | [lt_asymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/lt-asymm--45ea8a12056d6b811341f6cc.md) | 58 | `result-track:45ea8a12056d6b811341f6cc12b153e1da536c7f5b236ad4482a0f37606a6840` |
| 11 | `theorem` | [gt_asymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/gt-asymm--6578b25e97dd9836d1b7ea12.md) | 61 | `result-track:6578b25e97dd9836d1b7ea1266e8aa600bddfe68041f96e77015f3c8a8436b95` |
| 12 | `theorem` | [le_lt_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/le-lt-trans--f35771b78d4a3fbb267b9914.md) | 64 | `result-track:f35771b78d4a3fbb267b9914d443649d4877af495a883179bbfa8fc0f73c3c79` |
| 13 | `theorem` | [lt_le_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/lt-le-trans--c9b8bd51f1b6eec15f9586b4.md) | 67 | `result-track:c9b8bd51f1b6eec15f9586b418767c7de4cf8776885b7e0e99663169e8b492f3` |
| 14 | `theorem` | [lt_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/lt-trans--d9c9c062c5132401e0c79353.md) | 70 | `result-track:d9c9c062c5132401e0c79353848b91e6a520779db813afa7de2421540f7f4238` |
| 15 | `theorem` | [gt_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/gt-trans--7c417a8dbbb1e561fb437574.md) | 73 | `result-track:7c417a8dbbb1e561fb4375742e391a3bb2dae80480b68554fed04a454ca4bc35` |
| 16 | `theorem` | [cmp_congr_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/cmp-congr-left--06cae4f2c051be3bfef71a74.md) | 76 | `result-track:06cae4f2c051be3bfef71a749a78ff41e42c78aa98a05f46f0de1cc81ef27f76` |
| 17 | `theorem` | [cmp_congr_left'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/cmp-congr-left--8cbfa7880796be015f2da5c7.md) | 85 | `result-track:8cbfa7880796be015f2da5c74e97dbe45710da712db61b6ef3892286f7de4a7f` |
| 18 | `theorem` | [cmp_congr_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/cmp-congr-right--d59da50c586e3ff286c18339.md) | 88 | `result-track:d59da50c586e3ff286c18339bcf1c20998077c992917306c8929aff3a2a4ea28` |
| 19 | `def` | [byKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/bykey--16a865842de5ee63cc12700a.md) | 100 | `declaration-track:16a865842de5ee63cc12700a2a348d8f469c70cefb7597e71c89fb9c5e10a4ec` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/instance--f2ce72c3c3aefecce21aad94.md) | 102 | `declaration-track:f2ce72c3c3aefecce21aad941f581d5838976fc0924eb89e1b5c7a6ec525092d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/instance--a7b9c0b185428a8e45270035.md) | 105 | `declaration-track:a7b9c0b185428a8e4527003563a226f086710c00672dd7ebbf49e3ee466cb4f6` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/instance--c6a88f0960730e1fb536239d.md) | 108 | `declaration-track:c6a88f0960730e1fb536239d87aa77cb51eeab9f20fbce1f6e01ea0b754b4f0a` |
| 23 | `theorem` | [ge_iff_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/ge-iff-le--4230f36260abeffa96c296e1.md) | 113 | `result-track:4230f36260abeffa96c296e1e71a08b416dd168f8d206208bae07036744040fd` |
| 24 | `theorem` | [gt_iff_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/gt-iff-lt--8c1f5c270f92369c6f59dcf7.md) | 115 | `result-track:8c1f5c270f92369c6f59dcf70fba26ebf0a4651dcd06e3979fd7ef7196a37552` |
| 25 | `theorem` | [le_of_eq_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/le-of-eq-of-le--e7ca2080a9ab50fe9db51b47.md) | 117 | `result-track:e7ca2080a9ab50fe9db51b47ea2af465d1904761b4f0746ca5b4b0ca6d7fc1cc` |
| 26 | `theorem` | [le_of_le_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/le-of-le-of-eq--bcc73d2638b838a9b0a549dd.md) | 119 | `result-track:bcc73d2638b838a9b0a549dd88c53c558b151b432c1432c7119121b9e3969578` |
| 27 | `theorem` | [lt_of_eq_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/lt-of-eq-of-lt--eeb32f5b233109a58c54f3a7.md) | 121 | `result-track:eeb32f5b233109a58c54f3a7cacf8a929200c8e3662f73333f9425a57ea43274` |
| 28 | `theorem` | [lt_of_lt_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant6f70add03d43d7809643a19964483b846035626447e5f60f9a7b81242664c283.lean/declarations/lt-of-lt-of-eq--a0b24f228670017eb343aafc.md) | 123 | `result-track:a0b24f228670017eb343aafc587202989462e2f3ec4b18f95d860db4cb472af9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
