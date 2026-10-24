# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4ebac264c734625202304d4f033e170762bf688",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4ebac264c734625202304d4f033e170762bf688`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.WithBot` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WithOne](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/withone--c52fd8595ab799a3a3f60484.md) | 37 | `declaration-track:c52fd8595ab799a3a3f604841d6fcb14f1ee77108e2bfdaca97e4ff8fdbeb3cd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/instance--a6e2c1a7f159ac261dca22f7.md) | 44 | `declaration-track:a6e2c1a7f159ac261dca22f756136234acdc559847f0342eb5934b5ed5adeb71` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/instance--5b0c56a92d257b1f851a5ebf.md) | 51 | `declaration-track:5b0c56a92d257b1f851a5ebf913c2fc92cecaed0e57948d993b9a30c6dfa8893` |
| 4 | `instance` | [monad](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/monad--c2015e113b4febfd5b4e6591.md) | 58 | `declaration-track:c2015e113b4febfd5b4e65911b502a2a1d681aa0b27ebedf86c6448cebf9d4ac` |
| 5 | `instance` | [one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/one--cd1b6dd6aad36fe671b21511.md) | 62 | `declaration-track:cd1b6dd6aad36fe671b215115181b7c62d4213e022a4854424ddb3cf8af561bc` |
| 6 | `instance` | [mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/mul--3c697264096d27d27692e76c.md) | 68 | `declaration-track:3c697264096d27d27692e76cb60ad3e6b8b33fead613bfbeb161693855cd385c` |
| 7 | `instance` | [inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/inv--b15291fec5a956f88fae5c52.md) | 74 | `declaration-track:b15291fec5a956f88fae5c5292135062dd6f3024eba2553c45fc1ee25d3dab75` |
| 8 | `instance` | [involutiveInv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/involutiveinv--6d5ddc4c94ae44741264cd45.md) | 80 | `declaration-track:6d5ddc4c94ae44741264cd45bb6213a0b909bac7fdbce09d0584b4881b3d4be1` |
| 9 | `instance` | [invOneClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/invoneclass--1dcd81b4b751ce81e33e963f.md) | 86 | `declaration-track:1dcd81b4b751ce81e33e963fefdc1015aeef090d48a8afaa0a525ea9867b64c4` |
| 10 | `instance` | [inhabited](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/inhabited--4c23371759b9ed9655af49ef.md) | 90 | `declaration-track:4c23371759b9ed9655af49efa79f5c8cf1528e25568593d2f4e71a903e34289c` |
| 11 | `instance` | [nontrivial](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/nontrivial--5321b79e4945a0c18f1f80c7.md) | 94 | `declaration-track:5321b79e4945a0c18f1f80c7f8b351f532d53e97b8fff8fd80ec70d230792264` |
| 12 | `def` | [coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/coe--be2fe1f65ee2b2913c35bf83.md) | 102 | `declaration-track:be2fe1f65ee2b2913c35bf83bf9b47d6c248508328facf25fa84764725354ade` |
| 13 | `instance` | [coeTC](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/coetc--9f6271e007bb30da58fd00d9.md) | 106 | `declaration-track:9f6271e007bb30da58fd00d9f6c6ca30286a18b534ec4c9ad35616bd6323de96` |
| 14 | `def` | [recOneCoe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/reconecoe--af1d071ade9023c253759600.md) | 112 | `declaration-track:af1d071ade9023c253759600797d3a2e200eec3829ffabe163242424468212b9` |
| 15 | `def` | [unone](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/unone--73a1cbc1638562d525504f32.md) | 128 | `declaration-track:73a1cbc1638562d525504f32e53d4abc66b427739c56ed54658114b9f60a6a9a` |
| 16 | `theorem` | [unone_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/unone-coe--0231f57a02aba3467b1d3393.md) | 134 | `result-track:0231f57a02aba3467b1d3393fa017a0205415040e94c8cec2bd0aca28523369c` |
| 17 | `theorem` | [coe_unone](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/coe-unone--5eb05e402dd9a2b721470531.md) | 140 | `result-track:5eb05e402dd9a2b7214705315edf140e2bd6fbffa9809bc921c10b85b04ef2bc` |
| 18 | `theorem` | [coe_ne_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/coe-ne-one--4af47f7c6bb978198df7bcdd.md) | 151 | `result-track:4af47f7c6bb978198df7bcddeccecf4b4a6e157fdb4a59b47bfb570b7c88bfc0` |
| 19 | `theorem` | [one_ne_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/one-ne-coe--be6f02cd289d68bdec86ffed.md) | 157 | `result-track:be6f02cd289d68bdec86ffed82cd5404d4044f49a0cf134de02bca8e77d522f7` |
| 20 | `theorem` | [ne_one_iff_exists](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/ne-one-iff-exists--3d2d1fd3063fd82fcec4b820.md) | 163 | `result-track:3d2d1fd3063fd82fcec4b820ad7db873cd754e6d8ebec0f888bdb281bb6e2ef3` |
| 21 | `instance` | [canLift](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/canlift--be1d4d17e109ecfb6233ba22.md) | 169 | `declaration-track:be1d4d17e109ecfb6233ba221c55d98d60df19e60757427fcf82424918e45a0c` |
| 22 | `theorem` | [coe_inj](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/coe-inj--b1d45cbccc15517933b2f6ae.md) | 175 | `result-track:b1d45cbccc15517933b2f6aeca8d236c87306ecf43c8a355705dc33f701b241b` |
| 23 | `theorem` | [cases_on](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/cases-on--3a2fe3943b85db111dd0e580.md) | 181 | `result-track:3a2fe3943b85db111dd0e580ecc44e0f2079c62c8858618aae22c7481a977af4` |
| 24 | `instance` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/muloneclass--1f6976990a24d704ff1ed7ae.md) | 190 | `declaration-track:1f6976990a24d704ff1ed7ae7efc6d16d697c1c109aadfcea61cca6d76e2e4ad` |
| 25 | `instance` | [monoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/monoid--f4b4997cb3a59ae7f981069b.md) | 197 | `declaration-track:f4b4997cb3a59ae7f981069b34c83c86130ca565378b185de4f67c33dda0ece6` |
| 26 | `instance` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/commmonoid--ee7371462a1e7427cf567edb.md) | 201 | `declaration-track:ee7371462a1e7427cf567edbcff71a6b348307054ec38d5a9dcc4d45e92d790a` |
| 27 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/coe-mul--2977b5d0d944838127489648.md) | 205 | `result-track:2977b5d0d944838127489648865efb4df6bc8b9cea9ab572edf55f43d016c1b9` |
| 28 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/coe-inv--3135f3ba7470d2f8ea59111e.md) | 211 | `result-track:3135f3ba7470d2f8ea59111efca7cf299f3714db196b023c61982538ee718188` |
| 29 | `instance` | [one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/one--5328530b301dcd72a221cc52.md) | 220 | `declaration-track:5328530b301dcd72a221cc52a60b0c5e647f26b08e8bc98ddbf5659a8c926c56` |
| 30 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/coe-one--3577271f3291af74b15d30c4.md) | 224 | `result-track:3577271f3291af74b15d30c4656d166a65225da2ed1ab261ba2aaada90a42113` |
| 31 | `instance` | [mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/mulzeroclass--40e52766e1540d6b19811fc8.md) | 228 | `declaration-track:40e52766e1540d6b19811fc852edcce044887d5d72f3a96d4f3434a9d4868f77` |
| 32 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/coe-mul--57ae6663fc4fa2702b38127a.md) | 235 | `result-track:57ae6663fc4fa2702b38127a6b8e7fc3a4f96587bf3b5d83d20a1cce9dd0ddf3` |
| 33 | `instance` | [noZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/nozerodivisors--d17d6175d6e9453c6b493d39.md) | 239 | `declaration-track:d17d6175d6e9453c6b493d395719289facbb631e265323da32a5d65087259d9c` |
| 34 | `instance` | [semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/semigroupwithzero--5a85ee04505aefd72eea0ef7.md) | 242 | `declaration-track:5a85ee04505aefd72eea0ef7cd98700ccbfd6f8048d78fecca7a94b2d9dbb89d` |
| 35 | `instance` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/commsemigroup--ecf6fa0e2ccd88e71ae2fa77.md) | 246 | `declaration-track:ecf6fa0e2ccd88e71ae2fa771e6dbfceb205dadff934f44d44d8fd34c17dfad6` |
| 36 | `instance` | [mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/mulzerooneclass--f3068d87a479cbd5968da217.md) | 250 | `declaration-track:f3068d87a479cbd5968da217e4958e9fe5bb0cd6c620f6c6ff39cb5c3d1b5408` |
| 37 | `instance` | [pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/pow--0f0dccbcb726199b1a04d121.md) | 255 | `declaration-track:0f0dccbcb726199b1a04d121e9e68d58947e4beb386dd28d5904b10a0f985c7f` |
| 38 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/coe-pow--cc5c36da98601502d50d9124.md) | 263 | `result-track:cc5c36da98601502d50d912444fe0468b6b423a720eb4364900a08c346baa6dd` |
| 39 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/monoidwithzero--09524ac968a43219de8a3800.md) | 268 | `declaration-track:09524ac968a43219de8a3800288844cc71f85737d41ac8f42f3e9b0535dd9ade` |
| 40 | `instance` | [commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/commmonoidwithzero--a0b64ea1951bc7f326227ba2.md) | 280 | `declaration-track:a0b64ea1951bc7f326227ba2784397637fbfadbffbd33d2d1f2d785d57006c59` |
| 41 | `instance` | [inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/inv--fffb8ef4b56100a1bf43b35b.md) | 285 | `declaration-track:fffb8ef4b56100a1bf43b35b6a7fdb2b3ad413263e0e80f2306436461fa74a44` |
| 42 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/coe-inv--70335c83cd4355db8ea8f1a2.md) | 289 | `result-track:70335c83cd4355db8ea8f1a2278c18b67049ff435a625ea5bc24e05fc605604b` |
| 43 | `theorem` | [inv_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/inv-zero--cbb0fda173e45c83bb74a968.md) | 294 | `result-track:cbb0fda173e45c83bb74a968a357119462bf8190cc2d4dbd100f8db0672e6f35` |
| 44 | `instance` | [involutiveInv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/involutiveinv--3f07d27046d5928a264d2d7b.md) | 298 | `declaration-track:3f07d27046d5928a264d2d7bef3d8d82ea17b554240af4b0edad0feb6f3c536d` |
| 45 | `instance` | [invOneClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/invoneclass--938b2b6618db333725a7c050.md) | 303 | `declaration-track:938b2b6618db333725a7c050e66bfd48beccad4c555bf3c0d012696623cc2f55` |
| 46 | `instance` | [div](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/div--fb8d028d2d15232ebd2ad748.md) | 306 | `declaration-track:fb8d028d2d15232ebd2ad748b576970aecfa9d06289f821d6224e48a5da63e05` |
| 47 | `theorem` | [coe_div](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/coe-div--012bf21c90fb5aa51e843d84.md) | 310 | `result-track:012bf21c90fb5aa51e843d8420d0492e144d1bb35eb4391583b4359c49317f71` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/instance--451e991c54913a83022c1cae.md) | 314 | `declaration-track:451e991c54913a83022c1cae03084cc2c91d59d49f1e91296f22ef8db732d3b9` |
| 49 | `theorem` | [coe_zpow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/coe-zpow--c13f93b21674c154caf22728.md) | 323 | `result-track:c13f93b21674c154caf22728e1e80f58204d22a31280151f0740cd32447a851e` |
| 50 | `instance` | [divInvMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/divinvmonoid--bce42d2860a2a26a78e7e1d0.md) | 327 | `declaration-track:bce42d2860a2a26a78e7e1d0d8eb2beb5cb59bce0d29dbc1f1f6b3d33ac9fc29` |
| 51 | `instance` | [divInvOneMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/divinvonemonoid--b7b42b0c2b843cc0b7068623.md) | 348 | `declaration-track:b7b42b0c2b843cc0b7068623c4ab36bd7822554b486f9d35d85deedcb7098795` |
| 52 | `instance` | [divisionMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/divisionmonoid--08bca53f39d86f245ca203a9.md) | 351 | `declaration-track:08bca53f39d86f245ca203a967c0d73568ea244c6bf5e33f9d01c0bf364c23ba` |
| 53 | `instance` | [divisionCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/divisioncommmonoid--d3932ac6228378e71b211395.md) | 367 | `declaration-track:d3932ac6228378e71b211395fe89e7ad49d30979614b5d828d5b91eca6d2fc73` |
| 54 | `instance` | [groupWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/groupwithzero--ded245d59f282a5d5c2adfbf.md) | 375 | `declaration-track:ded245d59f282a5d5c2adfbfd3e96acb29981d97725d79f03c10006b6a801d2b` |
| 55 | `instance` | [commGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/commgroupwithzero--5d4aea42185ca8d2cd102e9d.md) | 385 | `declaration-track:5d4aea42185ca8d2cd102e9dc0bff53104339a764c91ef062c4aa6eacea94b40` |
| 56 | `instance` | [addMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/addmonoidwithone--e2e41aa98f5760c9381aab32.md) | 388 | `declaration-track:e2e41aa98f5760c9381aab321406a99028ee604a605dba1804a1c801f4f2363b` |
| 57 | `instance` | [semiring](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/declarations/semiring--ccec9462077d34b555316d26.md) | 400 | `declaration-track:ccec9462077d34b555316d263c402e005392fe8f9fbd32e3c032b43084de9319` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
