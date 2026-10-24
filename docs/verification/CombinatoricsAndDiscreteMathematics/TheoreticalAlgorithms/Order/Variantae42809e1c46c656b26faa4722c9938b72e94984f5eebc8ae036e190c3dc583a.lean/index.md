# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Order.Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ee74872c32c8578204541d5d0ba0517936058f7",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ee74872c32c8578204541d5d0ba0517936058f7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLEFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/instlefinsupp--2aa9dcf3bdac2e7796093994.md) | 56 | `declaration-track:2aa9dcf3bdac2e77960939943471c883277c02288817f1c379bd054f142a6665` |
| 2 | `theorem` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/le-def--85d48d78032fe6c3d473a6be.md) | 59 | `result-track:85d48d78032fe6c3d473a6bed2c86476cd014da4ebbe995e3c3dfb5191bcde17` |
| 3 | `def` | [orderEmbeddingToFun](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/orderembeddingtofun--17988c73349d013d6f3eeab5.md) | 64 | `declaration-track:17988c73349d013d6f3eeab5b5f6ccec693d01e7d6d68db89f90c939b06b2aa8` |
| 4 | `theorem` | [orderEmbeddingToFun_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/orderembeddingtofun-apply--dcabe5829b518ab7617a21ad.md) | 74 | `result-track:dcabe5829b518ab7617a21ad0e0421d0a2324b9495121aa7c66cc8b5b3f63a74` |
| 5 | `instance` | [preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/preorder--255846892c8d5c5072346df0.md) | 84 | `declaration-track:255846892c8d5c5072346df0313f6735440834eee44da49795508cdd5c4b316d` |
| 6 | `theorem` | [monotone_toFun](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/monotone-tofun--0c376c577ad07a7d4eba3962.md) | 89 | `result-track:0c376c577ad07a7d4eba396274fb438d90d3d4fe04c719f0eaea0f54e08ab24e` |
| 7 | `instance` | [partialorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/partialorder--93feaeec628b4731a82de8e2.md) | 95 | `declaration-track:93feaeec628b4731a82de8e2557f1e0a8988701081b0a12aaf0306628711b3ad` |
| 8 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/semilatticeinf--594058ed6394e38997d43a41.md) | 99 | `declaration-track:594058ed6394e38997d43a41ecb0f37e9cc862e7292dbe98d0ceca07283d3f06` |
| 9 | `theorem` | [inf_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/inf-apply--5c350870604bfd7a231734ae.md) | 107 | `result-track:5c350870604bfd7a231734ae8d9c15a4e7602a7002f7d364e00bcbb977ba5c52` |
| 10 | `instance` | [semilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/semilatticesup--3953ad365d87133903ffd053.md) | 111 | `declaration-track:3953ad365d87133903ffd053df625d6ef9c77eff2f41482a90d7029a9af7fbc8` |
| 11 | `theorem` | [sup_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/sup-apply--ab6a3cece6f2ba401caaca46.md) | 119 | `result-track:ab6a3cece6f2ba401caaca46056a0586f72301799b516e43606138dea0f37d99` |
| 12 | `instance` | [lattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/lattice--5dd15c0c213f5121eaab64ad.md) | 123 | `declaration-track:5dd15c0c213f5121eaab64ad039220f6c125299cbe464acde3527fb71646ffca` |
| 13 | `theorem` | [support_inf_union_support_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/support-inf-union-support-sup--a471cff896a986e4396d77b8.md) | 130 | `result-track:a471cff896a986e4396d77b8a74da45a9b5a53c44c2b274227322fd75b69914c` |
| 14 | `theorem` | [support_sup_union_support_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/support-sup-union-support-inf--1d8fb67c7c90a51931e1892b.md) | 134 | `result-track:1d8fb67c7c90a51931e1892bbf2c4198ac7ae41c6ada94dbb0f6b2f247d216e9` |
| 15 | `instance` | [orderedAddCommMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/orderedaddcommmonoid--1377ca298af7e069f3eee123.md) | 144 | `declaration-track:1377ca298af7e069f3eee12390bcd172c02cacd9190921f35d88d6414692e75b` |
| 16 | `instance` | [orderedCancelAddCommMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/orderedcanceladdcommmonoid--f84b8033fc4b8c0d8da6adbd.md) | 148 | `declaration-track:f84b8033fc4b8c0d8da6adbd2ff6f4698deb4043b8a941c01e976f0186a18be6` |
| 17 | `instance` | [contravariantClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/contravariantclass--8ca2327f8619d94f962afe1b.md) | 153 | `declaration-track:8ca2327f8619d94f962afe1b40a7d35416f188cf8e5aa6bf3504e0133cbe42f0` |
| 18 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/orderbot--933adc0d0586ffc1a988d075.md) | 161 | `declaration-track:933adc0d0586ffc1a988d075b75c2f80596e1a769c6ab9423b6b8cdbec8e1959` |
| 19 | `theorem` | [bot_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/bot-eq-zero--c28c7700f8dd24ee75ffdfff.md) | 165 | `result-track:c28c7700f8dd24ee75ffdfff41a7747ef574d3fda2d52291c20e994bd373c7bd` |
| 20 | `theorem` | [add_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/add-eq-zero-iff--8c2dc0c8062a2ce124e8e322.md) | 170 | `result-track:8c2dc0c8062a2ce124e8e322e79d9123ae1f00dd0759cda97c94c9248b15735e` |
| 21 | `theorem` | [le_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/le-iff--128466d4f7f00428b44c24ef.md) | 174 | `result-track:128466d4f7f00428b44c24efafc7a052f3140b8793da99f4abd683a98911ce94` |
| 22 | `theorem` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/le-iff--e5731850599176faedd45480.md) | 180 | `result-track:e5731850599176faedd454804a3b04d9595b6bd74b0d553cc48983d0f49642d1` |
| 23 | `instance` | [decidableLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/decidablele--b1cd6e51cddf1b1a3eecb0be.md) | 184 | `declaration-track:b1cd6e51cddf1b1a3eecb0be78fae03153460165a6439d50dfbee34ce8602bf6` |
| 24 | `theorem` | [single_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/single-le-iff--0df8840782a64ee56e673542.md) | 189 | `result-track:0df8840782a64ee56e673542144f0a6ff9a7ce248bdbe8045c7d289351170ba0` |
| 25 | `instance` | [tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/tsub--2e8eb386a93e77ac45082195.md) | 197 | `declaration-track:2e8eb386a93e77ac450821951c529070c51e62ba31d8fd05e10ede7711587e24` |
| 26 | `instance` | [orderedSub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/orderedsub--30d2732e50fee732fb70c9a2.md) | 201 | `declaration-track:30d2732e50fee732fb70c9a268bb5a0ad2ef4d0af561f9ae529a08a5c12e6251` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/instance--2ad60af03ebfb24393fde80d.md) | 204 | `declaration-track:2ad60af03ebfb24393fde80d316baddf7916c8b76233b734edfd1f8cf1a7f9b1` |
| 28 | `theorem` | [coe_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/coe-tsub--44121195d69669ee15779e1b.md) | 211 | `result-track:44121195d69669ee15779e1b5a7caffb029596eabd67872f9d83f67307127443` |
| 29 | `theorem` | [tsub_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/tsub-apply--afd9cea049d4cb3f3408c100.md) | 215 | `result-track:afd9cea049d4cb3f3408c10096096146aabeac24ba313ccb7a2ed9097f98b53a` |
| 30 | `theorem` | [single_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/single-tsub--3e69a0ac0df55cce136b39c2.md) | 220 | `result-track:3e69a0ac0df55cce136b39c21eaf6948dbfab1b870b7fef162d4fcf2e666a339` |
| 31 | `theorem` | [support_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/support-tsub--b13e1455167ea3259a10c389.md) | 227 | `result-track:b13e1455167ea3259a10c3899d488acda541c56dc69bb9c30ac233269edbe8e6` |
| 32 | `theorem` | [subset_support_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/subset-support-tsub--41fc238ebc38a7b56d4264ca.md) | 232 | `result-track:41fc238ebc38a7b56d4264ca8eed7800c727dc1dff4d904394e57e02ee17dcdb` |
| 33 | `theorem` | [support_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/support-inf--8f13b0ae061d8ce2a33cb32e.md) | 244 | `result-track:8f13b0ae061d8ce2a33cb32e93783f1c92495b472d115f77a24d3e006b825ec1` |
| 34 | `theorem` | [support_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/support-sup--f6cfcc64e3614c32923bde90.md) | 252 | `result-track:f6cfcc64e3614c32923bde900a39b402f638e7f7881b05ee69dce7f9fe766995` |
| 35 | `theorem` | [disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/disjoint-iff--dc144b2cd914e281a5a1b156.md) | 258 | `result-track:dc144b2cd914e281a5a1b1566efe62ffc04529b94bdf69493b2bd93705fde4f7` |
| 36 | `theorem` | [sub_single_one_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/sub-single-one-add--443a6cb8bdc89bf0507c249a.md) | 272 | `result-track:443a6cb8bdc89bf0507c249a136b020c9abdc71bf0adea1a50c988a62d74508f` |
| 37 | `theorem` | [add_sub_single_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantae42809e1c46c656b26faa4722c9938b72e94984f5eebc8ae036e190c3dc583a.lean/declarations/add-sub-single-one--122a0621c6c306cbb934d922.md) | 277 | `result-track:122a0621c6c306cbb934d922a282992b8d54b4371b4e8b02f1d4dcb4a62dd8a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
