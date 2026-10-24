# Verification target: GRWTSK.Algebra.GroupTheory.InjSurj.Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b195f0645776128c58669d3e3b0a2b078f0e817",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b195f0645776128c58669d3e3b0a2b078f0e817`.

Source path: `GRWTSK/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/semigroup--7ce871d00c4458151acc444c.md) | 53 | `declaration-track:7ce871d00c4458151acc444c78130e691bdd8218283a789f2c5927361be551ef` |
| 2 | `def` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/commsemigroup--ea0d43e6c49f64634ba99ee0.md) | 64 | `declaration-track:ea0d43e6c49f64634ba99ee041f33a1d81c98d9bed3cdd4ce7ba2fe9ddee6abe` |
| 3 | `def` | [leftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/leftcancelsemigroup--09481faccbf4343301b7af0b.md) | 74 | `declaration-track:09481faccbf4343301b7af0b09b898693e6ef884edc4adb007ad86baf8bfc0d4` |
| 4 | `def` | [rightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/rightcancelsemigroup--03a7748c54a709c3f6a7ac4c.md) | 87 | `declaration-track:03a7748c54a709c3f6a7ac4cbe92130befa17f8f6e90313bae35a1a76dc5e719` |
| 5 | `def` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/muloneclass--a8dc9fd80211a5bbbf64bd78.md) | 102 | `declaration-track:a8dc9fd80211a5bbbf64bd78ead58d33f1c23b224f0dc280bc74d9f6288b8392` |
| 6 | `def` | [monoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/monoid--b94cfbc4cca788b13637ff12.md) | 118 | `declaration-track:b94cfbc4cca788b13637ff12e7728daa5dcc1f86e4cbc34f5a2e7c7abae5a2ec` |
| 7 | `def` | [addMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/addmonoidwithone--187c18b10cf8336ced04f209.md) | 131 | `declaration-track:187c18b10cf8336ced04f20989de970e4f2611ec1c75c3b61447b356303713da` |
| 8 | `def` | [leftCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/leftcancelmonoid--85d22bd3719924b167c2d956.md) | 146 | `declaration-track:85d22bd3719924b167c2d956bf988b15626ae68556c5c478c9e55cecb4bcc451` |
| 9 | `def` | [rightCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/rightcancelmonoid--928bd66726235c53597078c7.md) | 158 | `declaration-track:928bd66726235c53597078c73daccb0ac8a0ff1b37a7b07f32e45b117c23e041` |
| 10 | `def` | [cancelMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/cancelmonoid--639d40af1d34a393d3bbba70.md) | 170 | `declaration-track:639d40af1d34a393d3bbba702ba33284df3c44f79dcdda75e2810bcca7140b92` |
| 11 | `def` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/commmonoid--966036caea06ac523a09ff74.md) | 182 | `declaration-track:966036caea06ac523a09ff74395969ebaf3e5aed6dbc0947bd0e337a64741591` |
| 12 | `def` | [addCommMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/addcommmonoidwithone--7f4712e5a46141e55f91f0e9.md) | 193 | `declaration-track:7f4712e5a46141e55f91f0e9d830539afa556acb59e0d9ce14198be98fa2e5b3` |
| 13 | `def` | [cancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/cancelcommmonoid--f73b7b4dc8fb958bce28306b.md) | 205 | `declaration-track:f73b7b4dc8fb958bce28306bb49c7b8bd12c2ee0b6296d195707fb14d90a7840` |
| 14 | `def` | [involutiveInv](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/involutiveinv--32dea8f2b557b6f20371b590.md) | 217 | `declaration-track:32dea8f2b557b6f20371b590991e78a8858fec2e6565a9b9261fd96ce8fe05aa` |
| 15 | `def` | [invOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/invoneclass--e0fc3355d6043b836bbc779e.md) | 231 | `declaration-track:e0fc3355d6043b836bbc779e07a0f3d5c6bb073cb4ff264812ff0fc6ab76e145` |
| 16 | `def` | [divInvMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/divinvmonoid--e05af1b0b34a089f3b00eb31.md) | 245 | `declaration-track:e05af1b0b34a089f3b00eb3123ca3f4e0b9bfbfca14f390c2aa236d2fc5e10d3` |
| 17 | `def` | [divInvOneMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/divinvonemonoid--b1356a753f8f2a481461ab70.md) | 266 | `declaration-track:b1356a753f8f2a481461ab7033050cd9dcf423449032943bd73c4d149ea56866` |
| 18 | `def` | [divisionMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/divisionmonoid--c3ac7e1279c0d81db0d89d4f.md) | 279 | `declaration-track:c3ac7e1279c0d81db0d89d4f801f2216000a4b3f8e9869416f676b6f6943fe5d` |
| 19 | `def` | [divisionCommMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/divisioncommmonoid--b5a6d51941a40c9816ee4e3f.md) | 298 | `declaration-track:b5a6d51941a40c9816ee4e3f0c49dbc1688300f84973de5e6cb012987a931dc9` |
| 20 | `def` | [group](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/group--18c421cc351c215ba99febec.md) | 311 | `declaration-track:18c421cc351c215ba99febec3ffd10ce02c15320325f7aee88345013d229b4d2` |
| 21 | `def` | [addGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/addgroupwithone--096cde17a7c16c485f59ccef.md) | 324 | `declaration-track:096cde17a7c16c485f59ccef5d7026ff8508e1d22b5c5fbe6548dd280a7cc30b` |
| 22 | `def` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/commgroup--d231e3cef7246a16b957eb4b.md) | 342 | `declaration-track:d231e3cef7246a16b957eb4b82163ca2ff3449cb44581d7297487be7033b8a89` |
| 23 | `def` | [addCommGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/addcommgroupwithone--2844e7d868f62d80831989af.md) | 354 | `declaration-track:2844e7d868f62d80831989af67f1db8439ee3fad5f26440c7c1141f8d6ac0654` |
| 24 | `def` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/semigroup--1d9b7b533295a845147397cc.md) | 380 | `declaration-track:1d9b7b533295a845147397ccacf2315e836df578239c5b8344888bbc52391e10` |
| 25 | `def` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/commsemigroup--ce45d022b64fceeddd79a101.md) | 391 | `declaration-track:ce45d022b64fceeddd79a101c3f91f1c3bafa0581688295c80c8493145182216` |
| 26 | `def` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/muloneclass--2e43bfc879c7cf6a908bb16b.md) | 405 | `declaration-track:2e43bfc879c7cf6a908bb16bfb3a207a85b8bc020958d9df2de57cbee1662ff3` |
| 27 | `def` | [monoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/monoid--db59c9d69503709990392d80.md) | 421 | `declaration-track:db59c9d69503709990392d80e61c8588c797cb3aa5d17ba07603c310739bd038` |
| 28 | `def` | [addMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/addmonoidwithone--75c027898a3b5ac8fbcabcca.md) | 434 | `declaration-track:75c027898a3b5ac8fbcabccaf798f7dbe476707eb882496cc5f24eca96ebd02a` |
| 29 | `def` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/commmonoid--3f18df27aa1b0508c1685120.md) | 450 | `declaration-track:3f18df27aa1b0508c168512053056ddc189fb1f1c2fba2e0751e436a36ef594e` |
| 30 | `def` | [addCommMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/addcommmonoidwithone--2edca2d08b97ad1eea537fbb.md) | 461 | `declaration-track:2edca2d08b97ad1eea537fbb364a1fa3fb6c38caf2b6b556ffb608a1d362764f` |
| 31 | `def` | [involutiveInv](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/involutiveinv--1396347e2e1c2327bac256ec.md) | 473 | `declaration-track:1396347e2e1c2327bac256ec0701ee7a5d39d26705b33bc2848631a740cce2bc` |
| 32 | `def` | [divInvMonoid](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/divinvmonoid--81ff39d0e2541c7d57d402b2.md) | 488 | `declaration-track:81ff39d0e2541c7d57d402b2acbeb6a2b85a7cbf274b91060047d5e0f2cf0fdf` |
| 33 | `def` | [group](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/group--326f06493951d417c3d37299.md) | 510 | `declaration-track:326f06493951d417c3d37299189f14e2c9b315013c0dd797387fcd390f112e80` |
| 34 | `def` | [addGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/addgroupwithone--21f1b998860ad0faf4336589.md) | 523 | `declaration-track:21f1b998860ad0faf4336589c6957532318eebff800880ef918fcd53897e8c1e` |
| 35 | `def` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/commgroup--e3323fbc92fe432c0787771a.md) | 543 | `declaration-track:e3323fbc92fe432c0787771a4dc6c447619ddc28389684c4412f58f378c4db01` |
| 36 | `def` | [addCommGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/declarations/addcommgroupwithone--051c5f4e3a011439b01a4acf.md) | 555 | `declaration-track:051c5f4e3a011439b01a4acf474df0f56e2404fa01c95e54fb3e858509982de3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
