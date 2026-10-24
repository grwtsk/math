# Verification target: GRWTSK.Algebra.GroupTheory.Freiman.Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85787176970648026ac23eb1e2206b448897bd7b",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85787176970648026ac23eb1e2206b448897bd7b`.

Source path: `GRWTSK/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Multiset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.FunLike.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddFreimanHom](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/addfreimanhom--9debad4a740b086e1212b227.md) | 58 | `declaration-track:9debad4a740b086e1212b2277802b5cfcd43308306e74559c21b4db3c4502fcd` |
| 2 | `structure` | [FreimanHom](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/freimanhom--416cb7de6cc6afca774814d3.md) | 69 | `declaration-track:416cb7de6cc6afca774814d379f33868abacb4861181183195b5b43492ba2b9c` |
| 3 | `class` | [AddFreimanHomClass](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/addfreimanhomclass--ceb979d9a53aaa9b9db194c6.md) | 90 | `declaration-track:ceb979d9a53aaa9b9db194c68faac6cebbda17f5bfeab324c9aa1c5a74474a5a` |
| 4 | `class` | [FreimanHomClass](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/freimanhomclass--d5d0b1c5284fd63cffd02f64.md) | 104 | `declaration-track:d5d0b1c5284fd63cffd02f641c1bd13ebdf8372192e9f7061cd0eaecb30f976f` |
| 5 | `def` | [_root_.FreimanHomClass.toFreimanHom](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/root-freimanhomclass-tofreimanhom--dde40f985ecb60fbd988e766.md) | 127 | `declaration-track:dde40f985ecb60fbd988e766d83e3cbffcad874e6c94dbcd77abd907f75add80` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/instance--fa63a89a7a906cd8a280d7f4.md) | 133 | `declaration-track:fa63a89a7a906cd8a280d7f4b58e1f55dc14101566179e0f888ce22a079295fd` |
| 7 | `theorem` | [map_prod_eq_map_prod](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/map-prod-eq-map-prod--bec07404cac0fb047597b00c.md) | 138 | `result-track:bec07404cac0fb047597b00cb058c96a5478d1b8b6977480f7c4f3b298862e23` |
| 8 | `theorem` | [map_mul_map_eq_map_mul_map](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/map-mul-map-eq-map-mul-map--021b950ec8beb8ded32dfbea.md) | 147 | `result-track:021b950ec8beb8ded32dfbea5ea4a5988c53e4534f6e2226ac45a4dbe5219faa` |
| 9 | `instance` | [funLike](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/funlike--f3d81270c1687d7c392b92b1.md) | 157 | `declaration-track:f3d81270c1687d7c392b92b13641cb010777eddcf921e599e9efeb6e8bde01b7` |
| 10 | `instance` | [freimanHomClass](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/freimanhomclass--e96067e60715f314b9fe9d0f.md) | 164 | `declaration-track:e96067e60715f314b9fe9d0f8238e542dc2796269fab209382e058d71e266675` |
| 11 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/tofun-eq-coe--14599ea559be0c2579055af3.md) | 182 | `result-track:14599ea559be0c2579055af350c5cc442b3c76796679b7a76410c5bddba84150` |
| 12 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/ext--488889f17b709eadc478c3c3.md) | 188 | `result-track:488889f17b709eadc478c3c36fac7c6e35e25d4bdb8434f804de14a77ed58cd0` |
| 13 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/coe-mk--85eed33b1807f921fee3847e.md) | 194 | `result-track:85eed33b1807f921fee3847ead9985f4d14d663f7fc8d499b05aecbbd3d39fb6` |
| 14 | `theorem` | [mk_coe](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/mk-coe--aa1439d75b3298f944b4d049.md) | 207 | `result-track:aa1439d75b3298f944b4d049ad7b612fbb68e4bf77259cfa7f74477e42203d9e` |
| 15 | `def` | [id](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/id--c9266e059882982c0ebbb99a.md) | 214 | `declaration-track:c9266e059882982c0ebbb99aa8938a05b1c0e2eab7c62f125fb874ee69acceb4` |
| 16 | `def` | [comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/comp--e7c7d288fa90c3273d4332a1.md) | 223 | `declaration-track:e7c7d288fa90c3273d4332a1ccbef8cf0cc385fcb84d0719d77df961b6cbb0fc` |
| 17 | `theorem` | [coe_comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/coe-comp--9ff22866c17c0a04cc18dc83.md) | 236 | `result-track:9ff22866c17c0a04cc18dc83be70d1d9853451eb37de099264467ec16591054f` |
| 18 | `theorem` | [comp_apply](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/comp-apply--6ba4dcec518d3648054de679.md) | 242 | `result-track:6ba4dcec518d3648054de6792265b9f7e725bfb0ac0278e6157f6fef9b094a33` |
| 19 | `theorem` | [comp_assoc](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/comp-assoc--f39eb05b6356a769af603fb8.md) | 248 | `result-track:f39eb05b6356a769af603fb8f31a6dcaf64efe7cf849080055a215585e072848` |
| 20 | `theorem` | [cancel_right](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/cancel-right--aea588f0176b6f2f8f48ab5c.md) | 255 | `result-track:aea588f0176b6f2f8f48ab5cbdcab5772c630290aaa18a5ec15aab15b26553ac` |
| 21 | `theorem` | [cancel_right_on](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/cancel-right-on--029b73786ec085bc6fa2dc4b.md) | 262 | `result-track:029b73786ec085bc6fa2dc4b1a8dbcb7ebb2d7c296b2a0301457670f452924b6` |
| 22 | `theorem` | [cancel_left_on](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/cancel-left-on--c091470f22457aed4afcc98c.md) | 269 | `result-track:c091470f22457aed4afcc98c80a917df9ba5d6e95f46db8372a5978235b3beb3` |
| 23 | `theorem` | [comp_id](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/comp-id--5096777fdcdeebabf8b68b8a.md) | 276 | `result-track:5096777fdcdeebabf8b68b8a6edb7ebc7d1c39fe7405da78e75967c4b68ea789` |
| 24 | `theorem` | [id_comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/id-comp--6ea45983f64e63aa9f2c1f8a.md) | 282 | `result-track:6ea45983f64e63aa9f2c1f8a7379b6f9066b7330cdb6d5acc5b092e946a1f222` |
| 25 | `def` | [const](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/const--323cc802e58f3c9f1f415849.md) | 289 | `declaration-track:323cc802e58f3c9f1f415849358dcaff110f6696ea4105ea8d2c7b11aa150f64` |
| 26 | `theorem` | [const_apply](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/const-apply--b09d9495edf3ea08e4c55c65.md) | 297 | `result-track:b09d9495edf3ea08e4c55c657bf1a7195de256bed742b9e332382fbeda2de9f7` |
| 27 | `theorem` | [const_comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/const-comp--79158bb064576c840dbd87bf.md) | 303 | `result-track:79158bb064576c840dbd87bfb18522d1111f3bf2c7e248a563dcaa9d60ea172d` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/instance--e187102c7acf43e30f1e5be9.md) | 310 | `declaration-track:e187102c7acf43e30f1e5be98f38f4e03e4143e499fc2366239e784427adfddb` |
| 29 | `theorem` | [one_apply](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/one-apply--4860ba97a012d26d583d7abc.md) | 314 | `result-track:4860ba97a012d26d583d7abcfd58862c9b6d0f4ca1081d2834085da115c08943` |
| 30 | `theorem` | [one_comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/one-comp--3f167584819ac75e3849f3e5.md) | 320 | `result-track:3f167584819ac75e3849f3e5d045ea7f6ced81a28acc7b8a6ff0effc075cc909` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/instance--de8c3c16c2d9ee5106552455.md) | 326 | `declaration-track:de8c3c16c2d9ee51065524559e5fd2a009040b2bb31c14d983bc12e1da0fdc93` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/instance--36ab7f12b31a641621f293be.md) | 331 | `declaration-track:36ab7f12b31a641621f293be417932308cc343d7d4590e0b0878c5c2fb90932a` |
| 33 | `theorem` | [mul_apply](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/mul-apply--a8640807628cd41ad202363f.md) | 340 | `result-track:a8640807628cd41ad202363f41aed2a9a51dd5357b441078c8199b2c20a8defe` |
| 34 | `theorem` | [mul_comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/mul-comp--216cd5970bd5f927fe6a0aef.md) | 346 | `result-track:216cd5970bd5f927fe6a0aefb43833f52375e91231df67e66c936f4191821834` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/instance--ea9316a44625884c635888b1.md) | 357 | `declaration-track:ea9316a44625884c635888b15efafda828c058fb452136fd64bbc9754e9febe8` |
| 36 | `theorem` | [inv_apply](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/inv-apply--c48853e50006f71ac9434ec8.md) | 364 | `result-track:c48853e50006f71ac9434ec8a49616cf5335ed2605ed4ea103166e3ce764aa53` |
| 37 | `theorem` | [inv_comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/inv-comp--2e5f61db6cdfd5dbeabc83c5.md) | 370 | `result-track:2e5f61db6cdfd5dbeabc83c55fbed5aaae2699e2acd900d67a647b566a565751` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/instance--88b4aa35e5241bd6cf24b922.md) | 380 | `declaration-track:88b4aa35e5241bd6cf24b92267bafc36b3e51825acbd03ec6f76182687748e13` |
| 39 | `theorem` | [div_apply](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/div-apply--f5abf3293ab5900258ec7aba.md) | 388 | `result-track:f5abf3293ab5900258ec7aba24a80ad80c228c1a12d60ab74bdf5e0802181942` |
| 40 | `theorem` | [div_comp](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/div-comp--d2cf732a5869fbfb079aa2ea.md) | 394 | `result-track:d2cf732a5869fbfb079aa2ead159edfc6cd77eb22596b759e635a04d75c764a7` |
| 41 | `instance` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/commmonoid--a1fcb3a51ef9888ef2b7dc1b.md) | 405 | `declaration-track:a1fcb3a51ef9888ef2b7dc1b1bcb46e438252a4a228b6bbd3989046350e1ae91` |
| 42 | `instance` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/commgroup--9e5025d887186e72ef0ce46c.md) | 425 | `declaration-track:9e5025d887186e72ef0ce46c8387741ebcf6f6aa5ccc594af116a75266fc1b25` |
| 43 | `instance` | [MonoidHom.freimanHomClass](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/monoidhom-freimanhomclass--4888fc848cc7cea234749c6b.md) | 455 | `declaration-track:4888fc848cc7cea234749c6b35863d12c19808c6bfe2c58d663c305f2644055c` |
| 44 | `def` | [MonoidHom.toFreimanHom](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/monoidhom-tofreimanhom--c5011368ba23e1edcf354c3e.md) | 464 | `declaration-track:c5011368ba23e1edcf354c3e63eef6f1622106e30c77fe85ad2ac88e6169035a` |
| 45 | `theorem` | [MonoidHom.toFreimanHom_coe](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/monoidhom-tofreimanhom-coe--e86844d1566bcac9be37ff60.md) | 472 | `result-track:e86844d1566bcac9be37ff60825fb4310be25264bce39dfa63dd4ed069da8d67` |
| 46 | `theorem` | [MonoidHom.toFreimanHom_injective](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/monoidhom-tofreimanhom-injective--a4e1f0d9ad331b836c8cec89.md) | 478 | `result-track:a4e1f0d9ad331b836c8cec89ba84828a15708d664fa22596d49be26444725ee9` |
| 47 | `theorem` | [map_prod_eq_map_prod_of_le](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/map-prod-eq-map-prod-of-le--558129f73c4d1c6b6039711d.md) | 491 | `result-track:558129f73c4d1c6b6039711dca8ccb12425b03be8f86680f485f52f4ee6e1888` |
| 48 | `def` | [FreimanHom.toFreimanHom](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/freimanhom-tofreimanhom--9cf6870dd0942afe4d3f3d0e.md) | 528 | `declaration-track:9cf6870dd0942afe4d3f3d0e669030a433558cb34ebed5f8d0e834a7e80fce51` |
| 49 | `theorem` | [FreimanHom.FreimanHomClass_of_le](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/freimanhom-freimanhomclass-of-le--72fb57fa814b3ea0eba50d64.md) | 538 | `result-track:72fb57fa814b3ea0eba50d6408c4a82747ca40d7055ae7612c24b0aa0c996842` |
| 50 | `theorem` | [FreimanHom.toFreimanHom_coe](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/freimanhom-tofreimanhom-coe--d61be0b4b1137f314974e448.md) | 546 | `result-track:d61be0b4b1137f314974e448c974ebde92a11c09d22858740fd18a25692f4fcb` |
| 51 | `theorem` | [FreimanHom.toFreimanHom_injective](../../../../../mathematics/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/declarations/freimanhom-tofreimanhom-injective--fbab4c1380aa846831ed0ff3.md) | 553 | `result-track:fbab4c1380aa846831ed0ff374babf15a5b36b38aea07aa8ea3c73dd3ab1c687` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
