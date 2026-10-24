# Verification target: GRWTSK.Algebra.Centroid.Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ad17068d19af5520603dd1a3d5d77974f1a65e4",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/index.md) · [Full source](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ad17068d19af5520603dd1a3d5d77974f1a65e4`.

Source path: `GRWTSK/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.GroupInstances` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CentroidHom](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/centroidhom--0a6082ade245c952f8e3323f.md) | 57 | `declaration-track:0a6082ade245c952f8e3323fadda954f8b96cd8b885c56ac0179644b7db0bf4e` |
| 2 | `class` | [CentroidHomClass](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/centroidhomclass--dd8d085af8161ab0818ac413.md) | 69 | `declaration-track:dd8d085af8161ab0818ac413dfef974fe28e24a8922d2fb768b7b059a137f31d` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--d35d3d9c4bdba6ab8e667363.md) | 80 | `declaration-track:d35d3d9c4bdba6ab8e66736303479507225d3732557c03b72fe65b634d79b50e` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--5c80b2f155440daba73f9b94.md) | 96 | `declaration-track:5c80b2f155440daba73f9b94a73f53bb976c96a7102bd50e05fce4e2c2f804cb` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--6156957c03855ee1b01cc735.md) | 113 | `declaration-track:6156957c03855ee1b01cc735da3bc8f6afba30c257a2fa202199196f94c7efec` |
| 6 | `theorem` | [toFun_eq_coe](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/tofun-eq-coe--97ea7fd3c66af6eed6057ec9.md) | 118 | `result-track:97ea7fd3c66af6eed6057ec9f4ee629838432d546dc8bc98fff887153629b162` |
| 7 | `theorem` | [ext](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/ext--8e269a6b321c98dcbc9951cc.md) | 122 | `result-track:8e269a6b321c98dcbc9951cc1630a89b3812f92bf27ef1c69e9e86cf5a5c48ec` |
| 8 | `theorem` | [coe_toAddMonoidHom](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-toaddmonoidhom--03bc0b3c0ff8f4f05fc9ad94.md) | 127 | `result-track:03bc0b3c0ff8f4f05fc9ad94e5bdefc166e59e6f9f8a788ef378982fe9a86461` |
| 9 | `theorem` | [toAddMonoidHom_eq_coe](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toaddmonoidhom-eq-coe--bfc09967e1de05b400471ae9.md) | 132 | `result-track:bfc09967e1de05b400471ae96926f2cd2ffc2bd8b81adb9e88369f8e05eed963` |
| 10 | `theorem` | [coe_toAddMonoidHom_injective](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-toaddmonoidhom-injective--130a0f23b4297d10d90e7616.md) | 136 | `result-track:130a0f23b4297d10d90e76169039f72c991392b6dfb3369931f7eafe4c4f740f` |
| 11 | `def` | [toEnd](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toend--a2d902e76e97bafb10b24aa4.md) | 143 | `declaration-track:a2d902e76e97bafb10b24aa49bfa5a14fed8d4668c9460c2d7500f99da9a5e5c` |
| 12 | `theorem` | [toEnd_injective](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toend-injective--6f6d3c39252ba7c3d1a90292.md) | 147 | `result-track:6f6d3c39252ba7c3d1a9029263baab7517042149594a663b7112745fbaa90b09` |
| 13 | `def` | [copy](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/copy--ac702bf1a9c55724bde3e70d.md) | 153 | `declaration-track:ac702bf1a9c55724bde3e70dcabf632f3ba0cab41bbcc94e3ca490060b075854` |
| 14 | `theorem` | [coe_copy](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-copy--1809f985e23c311e735ca54d.md) | 161 | `result-track:1809f985e23c311e735ca54d3cdbae0f5f2aaab1b22a9d24d94352dce2f58010` |
| 15 | `theorem` | [copy_eq](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/copy-eq--ed1cb7b071bb9de6af98275f.md) | 165 | `result-track:ed1cb7b071bb9de6af98275fef5ba4fbf942ff264fcbb4eb2dd3e62cb437975c` |
| 16 | `def` | [id](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/id--f2711423de9281edf83a71c3.md) | 172 | `declaration-track:f2711423de9281edf83a71c3574a8f7fa01414403647b419b97b75ce6f3f3ea9` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--f468c29d17bb1fc7cc0dc2f1.md) | 178 | `declaration-track:f468c29d17bb1fc7cc0dc2f148923937b552de3e2185c8fbd8781cde60b9f0ba` |
| 18 | `theorem` | [coe_id](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-id--0e4ba1eb3efab17a2affcb39.md) | 182 | `result-track:0e4ba1eb3efab17a2affcb3943022d1649ac4af63c6bf0b9739c383403fb2e9e` |
| 19 | `theorem` | [toAddMonoidHom_id](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toaddmonoidhom-id--5458a75fc1b5b80fddb32e4e.md) | 187 | `result-track:5458a75fc1b5b80fddb32e4ec3aaac3e454b0b0df11e1aedecae501fd0384cb1` |
| 20 | `theorem` | [id_apply](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/id-apply--53d09c7dc9372076adf1ff7b.md) | 194 | `result-track:53d09c7dc9372076adf1ff7b66f26842873e8710a7d8a8efecc3cd7cd01d0502` |
| 21 | `def` | [comp](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/comp--5cea694913e4926a8bd0ed6d.md) | 199 | `declaration-track:5cea694913e4926a8bd0ed6d4ca1ebde75244a0228353e90ce963b5b641806f1` |
| 22 | `theorem` | [coe_comp](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-comp--5d076bebc71c7e90dbb645a0.md) | 207 | `result-track:5d076bebc71c7e90dbb645a0115be3c1a375ab5b2c6e68bffdec50f6d412c057` |
| 23 | `theorem` | [comp_apply](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/comp-apply--c91b442513e9511710d922c9.md) | 212 | `result-track:c91b442513e9511710d922c93ec4939cfd88b4053464d0b95ee4a0194149f065` |
| 24 | `theorem` | [coe_comp_addMonoidHom](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-comp-addmonoidhom--996643dbbd55341de3dab679.md) | 217 | `result-track:996643dbbd55341de3dab6794fe42f984130febff18d66e3374603f5c1388801` |
| 25 | `theorem` | [comp_assoc](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/comp-assoc--2276f7e3d8755ba3a4124d2b.md) | 222 | `result-track:2276f7e3d8755ba3a4124d2ba8b701c1c4c03c77aed6a1b70f007a773c4b0632` |
| 26 | `theorem` | [comp_id](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/comp-id--b5eaec0864b3808ce9b41c2e.md) | 227 | `result-track:b5eaec0864b3808ce9b41c2eb1a7a1e00451bd587696bb9cc0790a07a997024e` |
| 27 | `theorem` | [id_comp](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/id-comp--259f5a22ec85a4fd69a3e1ea.md) | 232 | `result-track:259f5a22ec85a4fd69a3e1ea37f1df5ffe55addb01c46bdcc586a1af93708551` |
| 28 | `theorem` | [cancel_right](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/cancel-right--ec84d8764aaf7220c13040c4.md) | 236 | `result-track:ec84d8764aaf7220c13040c4d7bae3950eb57bdfb21921194b9e9e56cff63d14` |
| 29 | `theorem` | [cancel_left](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/cancel-left--4326f103fc721c4e8dc4075c.md) | 241 | `result-track:4326f103fc721c4e8dc4075c64a8f4e52e761f36d9466bdb6dfed35c017d954c` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--a060b22c3d24bb9e3ba43322.md) | 246 | `declaration-track:a060b22c3d24bb9e3ba4332288cf8dad36873c1ce3ad35e878ae21cda2d0c168` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--0ec8f4ddaae45a4ddd9bd47c.md) | 251 | `declaration-track:0ec8f4ddaae45a4ddd9bd47c43190ebd5b248a5081f248393801e0c40a63dbd0` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--c6765b521dd5ca9e01d9f50f.md) | 254 | `declaration-track:c6765b521dd5ca9e01d9f50fcca61f46336abab06a0393e39e69069f1e5fc567` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--1eba9f89ab93b72f7f28d0ea.md) | 264 | `declaration-track:1eba9f89ab93b72f7f28d0eab0b253bfed87ab915b8954ab4c84e0b68b891b47` |
| 34 | `instance` | [hasNsmul](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/hasnsmul--485cb4593fceaf1718945ee3.md) | 267 | `declaration-track:485cb4593fceaf1718945ee3505e50edc5328e22cb8ab0fd71864398a2d2eab7` |
| 35 | `instance` | [hasNpowNat](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/hasnpownat--f3b657f8a3d11f3b2d18f2f2.md) | 278 | `declaration-track:f3b657f8a3d11f3b2d18f2f2498323ed7794d82c6426c3d56c3c50d3847b95da` |
| 36 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-zero--b544aa749c2a314232844c47.md) | 296 | `result-track:b544aa749c2a314232844c4706cf4fc4870397d9eaf35532b02ea6515ec03b9e` |
| 37 | `theorem` | [coe_one](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-one--95be6991fdfa152c9d09745e.md) | 301 | `result-track:95be6991fdfa152c9d09745eadb708e8faad26e7fb0dc73cf12be91fb4384571` |
| 38 | `theorem` | [coe_add](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-add--8bc5b62be7baf261156392a7.md) | 306 | `result-track:8bc5b62be7baf261156392a77fd3bdc039101ee7c47869e440131cf5d0e3acb1` |
| 39 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-mul--719b721eb24edd53bf881afd.md) | 311 | `result-track:719b721eb24edd53bf881afdeb8086a5e750cad177e07789aeef2496fec5b257` |
| 40 | `theorem` | [coe_nsmul](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-nsmul--0d36da3357b179e56c3c73cb.md) | 317 | `result-track:0d36da3357b179e56c3c73cbf87e7490f45c168d2f51862ef09902c68ac61a53` |
| 41 | `theorem` | [zero_apply](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/zero-apply--9eb620766034ff820560744e.md) | 322 | `result-track:9eb620766034ff820560744eadd4a2d477437790149f0e92999becc309451e72` |
| 42 | `theorem` | [one_apply](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/one-apply--3bf971175ca16d4408cc73fe.md) | 327 | `result-track:3bf971175ca16d4408cc73fe7b630888ee83f266da096c4a83786c9922612980` |
| 43 | `theorem` | [add_apply](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/add-apply--63e868c7f25f7adbea94f755.md) | 332 | `result-track:63e868c7f25f7adbea94f7558c110d392281ebc02f29debba3f7171ddeee4fc2` |
| 44 | `theorem` | [mul_apply](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/mul-apply--7b6c187779d6429f85d906da.md) | 337 | `result-track:7b6c187779d6429f85d906da5c49a3d5d135bba0de902db95824320f3951a0c0` |
| 45 | `theorem` | [nsmul_apply](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/nsmul-apply--2bc4bc42d10b03b8f8b2f200.md) | 343 | `result-track:2bc4bc42d10b03b8f8b2f20060e94da92cf8b1c034d144909d2dab829d17ec6f` |
| 46 | `theorem` | [toEnd_zero](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toend-zero--6364f416f64cd26bcdfb9ecb.md) | 348 | `result-track:6364f416f64cd26bcdfb9ecb9ef2caec4f2518f80e6a39db5ffd59e06c72a670` |
| 47 | `theorem` | [toEnd_add](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toend-add--3eabd4b66c6db66a53847a9e.md) | 353 | `result-track:3eabd4b66c6db66a53847a9ee89239c897308fa6731d507748a0abd30d2b5b8d` |
| 48 | `theorem` | [toEnd_nsmul](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toend-nsmul--c6c1868b67e61e6c83077149.md) | 357 | `result-track:c6c1868b67e61e6c83077149454d2e8588e5600d8801a0e0bea64aa4af58a11a` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--38b0d1f366740703e245ffda.md) | 363 | `declaration-track:38b0d1f366740703e245ffda03a65043c65e16f5569dd6b62f4780ea29167145` |
| 50 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--5ce492c2612b7450da9202d9.md) | 366 | `declaration-track:5ce492c2612b7450da9202d9a99ae38b7b4602b191f0cc4f966341894284b779` |
| 51 | `theorem` | [coe_nat_cast](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-nat-cast--05d31015f2e207411fe6522e.md) | 370 | `result-track:05d31015f2e207411fe6522e720433d6d97adccfcf4b446b64c99425a43c0daf` |
| 52 | `theorem` | [nat_cast_apply](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/nat-cast-apply--9389532a2937feed64c50eeb.md) | 374 | `result-track:9389532a2937feed64c50eeba91088c88c8077486ebdac35eea85f88df81652d` |
| 53 | `theorem` | [toEnd_one](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toend-one--beb7501748d1961fdaa98f82.md) | 379 | `result-track:beb7501748d1961fdaa98f82ea8a1237dbd0ffb2c98cf06b6eaf4f7b5a7c4105` |
| 54 | `theorem` | [toEnd_mul](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toend-mul--621cf9c174e6db5c4367a65a.md) | 384 | `result-track:621cf9c174e6db5c4367a65a5cdb5b188c64350581d25a82b8ad8f8ba14929c8` |
| 55 | `theorem` | [toEnd_pow](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toend-pow--bff6818156db777ffda8c981.md) | 389 | `result-track:bff6818156db777ffda8c981f581b9635b225f446862f4c08438a038113ceb94` |
| 56 | `theorem` | [toEnd_nat_cast](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toend-nat-cast--5dbc5f7ea7d3ca60342f0b0a.md) | 394 | `result-track:5dbc5f7ea7d3ca60342f0b0acd8016fe4844d7dde5f770357808886184ee3199` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--bdcdefc13fe51390197e6db9.md) | 399 | `declaration-track:bdcdefc13fe51390197e6db980537298e1c405ed96590366c7a660f5252dc06e` |
| 58 | `theorem` | [comp_mul_comm](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/comp-mul-comm--0f6042ebb56e4355637f66d8.md) | 403 | `result-track:0f6042ebb56e4355637f66d8237acbe3483b35493ec58e2d3c033143784c7226` |
| 59 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--8b9c08f56727e4c98cbe090e.md) | 415 | `declaration-track:8b9c08f56727e4c98cbe090e6945bf77b7190959804059e9ac31e718a1dfab58` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--8c6d6c55c00c08fee958d37b.md) | 425 | `declaration-track:8c6d6c55c00c08fee958d37b81fd4772c46c2d70dd012d818de2f48a35ab6886` |
| 61 | `instance` | [hasZsmul](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/haszsmul--76ed0fe51781e0f441ee11fd.md) | 435 | `declaration-track:76ed0fe51781e0f441ee11fd5826721cc88fb50fd2e56c5e0952b0d6e368868b` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--588fe7d7dff1cb2753c69ee6.md) | 446 | `declaration-track:588fe7d7dff1cb2753c69ee6285c4a6ee945e19b42471aaa3ff770344fd1ba01` |
| 63 | `theorem` | [coe_int_cast](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-int-cast--cef35b6004cebfa31b92db03.md) | 450 | `result-track:cef35b6004cebfa31b92db03a76fa8bd1e128951cc342910915a527b269b3b0c` |
| 64 | `theorem` | [int_cast_apply](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/int-cast-apply--6e1999a6f63539d914485224.md) | 454 | `result-track:6e1999a6f63539d914485224b370ea5dc3eea7663b9a4078ff6859e8658b3012` |
| 65 | `theorem` | [toEnd_neg](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toend-neg--5df2cf7b766df576a8ccc0b0.md) | 459 | `result-track:5df2cf7b766df576a8ccc0b02bb06e7458cc694ee4639492025623fd12a3fe73` |
| 66 | `theorem` | [toEnd_sub](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toend-sub--990cd54693073bf5168eb950.md) | 464 | `result-track:990cd54693073bf5168eb9504aa5ba4d66fc244b6f2f28606c5b8336afa8a73f` |
| 67 | `theorem` | [toEnd_zsmul](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toend-zsmul--091f0a3fce555dd3efbef015.md) | 468 | `result-track:091f0a3fce555dd3efbef01521334daf2e22bb9e078037485dab8b81be781e9a` |
| 68 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instance--dcf8a134b16893f745118f9f.md) | 472 | `declaration-track:dcf8a134b16893f745118f9fc661a0fb1bf2bf1d4c66a513e11ec4e108b9e3fc` |
| 69 | `theorem` | [coe_neg](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-neg--15f8332e57fda851936e9be3.md) | 476 | `result-track:15f8332e57fda851936e9be37bf78a747f4a61d059de400889fea25268ae4b25` |
| 70 | `theorem` | [coe_sub](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/coe-sub--653c1db9ce2eb946e3231c49.md) | 481 | `result-track:653c1db9ce2eb946e3231c49c80f76feed8cbccf6830c1c20f9c50f35b59c314` |
| 71 | `theorem` | [neg_apply](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/neg-apply--535f6b6f905581253af1c8ec.md) | 486 | `result-track:535f6b6f905581253af1c8ec71acbf9313a51c90d9e8564c0faed9e8b81cee0b` |
| 72 | `theorem` | [sub_apply](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/sub-apply--b8b99fa2374e0476e87a9682.md) | 491 | `result-track:b8b99fa2374e0476e87a9682dee9354863005cce2c62015553802de3b785d1d9` |
| 73 | `theorem` | [toEnd_int_cast](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/toend-int-cast--a2ba441f06beab8846225513.md) | 496 | `result-track:a2ba441f06beab8846225513e159aaaa09f7b7b8696b741047625296b6c7a94d` |
| 74 | `instance` | [instRing](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/instring--d14b5d8ae6439fd1db6358b1.md) | 500 | `declaration-track:d14b5d8ae6439fd1db6358b1f62c1536208fe07a93adffe87ea3fd4f68d87cf1` |
| 75 | `def` | [commRing](../../../../mathematics/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/declarations/commring--128e46960e3cf06be723319f.md) | 514 | `declaration-track:128e46960e3cf06be723319f6bcd60f7ceb9b8de9aac020afc7e737b797b6735` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
