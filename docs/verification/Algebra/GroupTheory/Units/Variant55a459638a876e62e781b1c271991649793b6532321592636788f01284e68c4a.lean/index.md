# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8076c04baa8ccc698b398895fde2bc6a3e81d537",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8076c04baa8ccc698b398895fde2bc6a3e81d537`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Submonoid.units](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/submonoid-units--52219a52892431321003cf95.md) | 57 | `declaration-track:52219a52892431321003cf9558f9a92a8620bf8d6971be22ffaf24e8e1c6b36c` |
| 2 | `def` | [Subgroup.ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/subgroup-ofunits--19f7cb3f37799409d8ac4560.md) | 64 | `declaration-track:19f7cb3f37799409d8ac4560eb92ec679ad92f66bce91dddfb514ef61770ce94` |
| 3 | `lemma` | [Submonoid.units_mono](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/submonoid-units-mono--b8ad46f66e111f9f61343484.md) | 67 | `result-track:b8ad46f66e111f9f61343484287419d19bff2a7a1a30a87c53d966db5f1a68dd` |
| 4 | `lemma` | [Submonoid.ofUnits_units_le](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/submonoid-ofunits-units-le--87e60d90bff26ab8954124ce.md) | 71 | `result-track:87e60d90bff26ab8954124ceb804d1378ef576504bf18a927111c32d3dbe4e99` |
| 5 | `lemma` | [Subgroup.ofUnits_mono](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/subgroup-ofunits-mono--92ac3e9354833581105268d2.md) | 75 | `result-track:92ac3e9354833581105268d298197969020842e8f30c9625680d0a44ddd06738` |
| 6 | `lemma` | [Subgroup.units_ofUnits_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/subgroup-units-ofunits-eq--116179014a9befe9792155b7.md) | 79 | `result-track:116179014a9befe9792155b74abab54a6b3e9ff9eed2172fc765baa0f04add47` |
| 7 | `def` | [ofUnits_units_gci](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunits-units-gci--1243b8436812b1f396ec6b72.md) | 88 | `declaration-track:1243b8436812b1f396ec6b72207d912a2bac0136636eb63a7abc3481ff353b90` |
| 8 | `lemma` | [ofUnits_units_gc](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunits-units-gc--532f7516fd7e92b20c4e095f.md) | 93 | `result-track:532f7516fd7e92b20c4e095f004e328d70652eff910a3a233cd112987011d13c` |
| 9 | `lemma` | [ofUnits_le_iff_le_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunits-le-iff-le-units--79e2f4453a00482ea64c6934.md) | 97 | `result-track:79e2f4453a00482ea64c6934463e1480734bdb2c737386c4430269d20d906c07` |
| 10 | `theorem` | [IsUnit.coe](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/isunit-coe--49f8a5a05b95639d1ef5a259.md) | 101 | `result-track:49f8a5a05b95639d1ef5a25959b4036b37e45ae5d0beb49270c2fd038c10f4bb` |
| 11 | `lemma` | [mem_units_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/mem-units-iff--be0b88a504f1a30a0bc4bd04.md) | 109 | `result-track:be0b88a504f1a30a0bc4bd04f2a945c167281a7957abbcba4bd150281117f4ea` |
| 12 | `lemma` | [mem_units_of_val_mem_inv_val_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/mem-units-of-val-mem-inv-val-mem--85d75a6c1f6433a78fecabf1.md) | 113 | `result-track:85d75a6c1f6433a78fecabf1b8b9414228665f7d9add145cd7a30401067baddc` |
| 13 | `lemma` | [val_mem_of_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/val-mem-of-mem-units--1c25949bd078c91b4f5ad822.md) | 117 | `result-track:1c25949bd078c91b4f5ad822eccd68c43aeecf184ebd82371bd4eca2162d4b86` |
| 14 | `lemma` | [inv_val_mem_of_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/inv-val-mem-of-mem-units--c98cc1444ab95471b156cfce.md) | 120 | `result-track:c98cc1444ab95471b156cfce2b8cd897d213318658136203cb7bcd78e32b2291` |
| 15 | `lemma` | [coe_inv_val_mul_coe_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/coe-inv-val-mul-coe-val--9af46d8875a6044c940b8697.md) | 124 | `result-track:9af46d8875a6044c940b86970ce6b12c54a3da741f2527de20ad19c443d432b9` |
| 16 | `lemma` | [coe_val_mul_coe_inv_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/coe-val-mul-coe-inv-val--649bf79a5e7554dfd6ce413f.md) | 128 | `result-track:649bf79a5e7554dfd6ce413fa45c5f777d354b300a207ac66102b8f49eb5648c` |
| 17 | `lemma` | [mk_inv_mul_mk_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/mk-inv-mul-mk-eq-one--9f94179462f591b7348b70eb.md) | 132 | `result-track:9f94179462f591b7348b70ebbd3c2c80bb694d0512da83a0127f57bf690babce` |
| 18 | `lemma` | [mk_mul_mk_inv_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/mk-mul-mk-inv-eq-one--28191092904ce7877952c15f.md) | 136 | `result-track:28191092904ce7877952c15f15bd0c3e6bc16cf17308b9325b6d7ac945286506` |
| 19 | `lemma` | [mul_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/mul-mem-units--69136e49bc827cd6e2803193.md) | 140 | `result-track:69136e49bc827cd6e280319355293092d9a1775bfa5081369de38d2571a68d6e` |
| 20 | `lemma` | [inv_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/inv-mem-units--890c85d119013e99883c5120.md) | 144 | `result-track:890c85d119013e99883c5120bb262e6f2c8970f1879d549f6da5ae2075b37ab6` |
| 21 | `lemma` | [inv_mem_units_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/inv-mem-units-iff--d8c80395a92b021ba0d2eba5.md) | 147 | `result-track:d8c80395a92b021ba0d2eba55ab7bc45c3a6a1b47e51a9c43e4a4d1fcded9565` |
| 22 | `def` | [unitsEquivUnitsType](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/unitsequivunitstype--bd8e894da56161454c4bf365.md) | 153 | `declaration-track:bd8e894da56161454c4bf36546bdbea83b59b58784f55d9ef5c416d96ebdf422` |
| 23 | `lemma` | [units_top](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/units-top--8ae8c19ca7699084b91a1d72.md) | 159 | `result-track:8ae8c19ca7699084b91a1d7288a992a85799a9e8a926c5b7e0eb8fb897786dee` |
| 24 | `lemma` | [units_inf](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/units-inf--c3c8dee1ca9fc1dbcc688b04.md) | 162 | `result-track:c3c8dee1ca9fc1dbcc688b049ef55a051d3b3ab16727a5588f814d299518e2db` |
| 25 | `lemma` | [units_sInf](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/units-sinf--03939caf9048cf7ae8e6289b.md) | 166 | `result-track:03939caf9048cf7ae8e6289bfbb6b258bdbd8d50b3c54a4257ed65a4feacad2f` |
| 26 | `lemma` | [units_iInf](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/units-iinf--9236236a45658ca0fa876bb0.md) | 170 | `result-track:9236236a45658ca0fa876bb090acdc9b8cf64d6b44d5704fa7cbecf53b0fac6c` |
| 27 | `lemma` | [units_iInf₂](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/units-iinf--fd5db53e8d4a31098ec0c5e2.md) | 174 | `result-track:fd5db53e8d4a31098ec0c5e2756f61bee65fc99e9e5cc4bf1d829154ece1bd78` |
| 28 | `lemma` | [units_bot](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/units-bot--cb721fde6bbe0ec0545699d0.md) | 179 | `result-track:cb721fde6bbe0ec0545699d07ec84ff129d684d7432082e9a62f0f6a5e193ffc` |
| 29 | `lemma` | [units_surjective](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/units-surjective--875b0f0991fe9d1f65d68e04.md) | 182 | `result-track:875b0f0991fe9d1f65d68e04c011fc43943f1eeeabc4fcc3b67221b98a9c5129` |
| 30 | `lemma` | [units_left_inverse](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/units-left-inverse--4aaa518bc99c2815642b9f5f.md) | 186 | `result-track:4aaa518bc99c2815642b9f5fc92e5492cd36b7f07fbd9dcbeb4d96ec64abe6e9` |
| 31 | `def` | [unitsEquivIsUnitSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/unitsequivisunitsubmonoid--79a7963d0c7cb06d57d81f90.md) | 194 | `declaration-track:79a7963d0c7cb06d57d81f90746a856943eaed43cb04b367fe79de3d5aa63a44` |
| 32 | `instance` | [instSubsingletonUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/instsubsingletonunits--d7dd658ee923102773b84bc4.md) | 199 | `declaration-track:d7dd658ee923102773b84bc4ad76e0383a549f2988617fe87979cfa632ab39a0` |
| 33 | `lemma` | [mem_ofUnits_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/mem-ofunits-iff--1994f3e9e23281d99967b09e.md) | 207 | `result-track:1994f3e9e23281d99967b09e324306c46e82062686738c0208f1ce206be65fd5` |
| 34 | `lemma` | [mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/mem-ofunits--8a1dbd9d373d90eb22fd53ea.md) | 210 | `result-track:8a1dbd9d373d90eb22fd53eada234d5d92ef0bcf1563dd38fc072055d6b971b1` |
| 35 | `lemma` | [exists_mem_ofUnits_val_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/exists-mem-ofunits-val-eq--16710b133629d17411f51fba.md) | 214 | `result-track:16710b133629d17411f51fba6307ea8213a0bb721e624302af1906a681fe46d0` |
| 36 | `lemma` | [mem_of_mem_val_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/mem-of-mem-val-ofunits--9552812fdb5bae34b4f833ff.md) | 218 | `result-track:9552812fdb5bae34b4f833ffea8cbd94211e8dd8412e92047ba2b3a6e61b1211` |
| 37 | `lemma` | [isUnit_of_mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/isunit-of-mem-ofunits--7e5297ba59df12f6d7353c9d.md) | 223 | `result-track:7e5297ba59df12f6d7353c9d82d4f1a90758bec04291eaf37c503ed6cdb5bb1c` |
| 38 | `def` | [unit_of_mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/unit-of-mem-ofunits--7438d476a6ad740239d8d0ae.md) | 232 | `declaration-track:7438d476a6ad740239d8d0ae284567cc3a9883215557e7dabef7abdbb7943ebc` |
| 39 | `lemma` | [unit_of_mem_ofUnits_spec_eq_of_val_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/unit-of-mem-ofunits-spec-eq-of-val-mem--4929f876c2d6e199d7a06d18.md) | 236 | `result-track:4929f876c2d6e199d7a06d18647d68f62ea65bd110fb5c9681d49c8ce9a4df92` |
| 40 | `lemma` | [unit_of_mem_ofUnits_spec_val_eq_of_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/unit-of-mem-ofunits-spec-val-eq-of-mem--19a6a8edc5bd3cdbbdf1b9d2.md) | 240 | `result-track:19a6a8edc5bd3cdbbdf1b9d21528be64e6e6869d774928ce9bf64e11bfd9114e` |
| 41 | `lemma` | [unit_of_mem_ofUnits_spec_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/unit-of-mem-ofunits-spec-mem--c72183cd14ae6499baf88b69.md) | 244 | `result-track:c72183cd14ae6499baf88b69d6a326cc15426808ce61a203bd6d3e6574f37c6b` |
| 42 | `lemma` | [unit_eq_unit_of_mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/unit-eq-unit-of-mem-ofunits--67d2cafabe101fd19687e83b.md) | 248 | `result-track:67d2cafabe101fd19687e83bbe1b11d5b79f6caa4485d0acaf8a291c97a10549` |
| 43 | `lemma` | [unit_mem_of_mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/unit-mem-of-mem-ofunits--c14f30df55fcf2912e9f958c.md) | 252 | `result-track:c14f30df55fcf2912e9f958ce2c098636c2d9283f94e0fcd9657577f60c91be0` |
| 44 | `lemma` | [mem_ofUnits_of_isUnit_of_unit_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/mem-ofunits-of-isunit-of-unit-mem--44325319eb21e5db20e58fca.md) | 257 | `result-track:44325319eb21e5db20e58fca293f78442f7bf2aeeacab3d83f69c31123d4ac3a` |
| 45 | `lemma` | [mem_ofUnits_iff_exists_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/mem-ofunits-iff-exists-isunit--0f7a026e69663b48d88bebdf.md) | 261 | `result-track:0f7a026e69663b48d88bebdfdfc226796f98171c0afdc542ed7dd0cf6129b9a4` |
| 46 | `def` | [ofUnitsEquivType](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunitsequivtype--9514728caef6b13f6451b700.md) | 270 | `declaration-track:9514728caef6b13f6451b7000f6f6ec2569cd8000d245278bf61edc4e20167a4` |
| 47 | `lemma` | [ofUnits_bot](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunits-bot--ee6385566cea591f9087909b.md) | 276 | `result-track:ee6385566cea591f9087909b47c16e5eb0ef0bcd72f04d06138c61bec5b64d49` |
| 48 | `lemma` | [ofUnits_inf](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunits-inf--bc98f173b968c8e77e359ecb.md) | 279 | `result-track:bc98f173b968c8e77e359ecb570e4b6541df49939c9c4a0d48fcb94f71848ced` |
| 49 | `lemma` | [ofUnits_sSup](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunits-ssup--a00a5ac5c8a7f39869a949df.md) | 283 | `result-track:a00a5ac5c8a7f39869a949dfe06860b43520c86dc69b347b45c8720e6cd17e46` |
| 50 | `lemma` | [ofUnits_iSup](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunits-isup--35dc8b6690d78cbfd1e9e3ee.md) | 287 | `result-track:35dc8b6690d78cbfd1e9e3ee4264f0dfe77410382af1332c432cd54c82974ca0` |
| 51 | `lemma` | [ofUnits_iSup₂](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunits-isup--77932604636ce168994f47bb.md) | 291 | `result-track:77932604636ce168994f47bbeb772fbd347bcec48e2cc9bba76a0af674ca0f32` |
| 52 | `lemma` | [ofUnits_injective](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunits-injective--19f1d46a5ee16956cf369ad2.md) | 296 | `result-track:19f1d46a5ee16956cf369ad29d01837a038557e93c1723bf7af00d5dd4755a77` |
| 53 | `lemma` | [ofUnits_sup_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunits-sup-units--f66dd780d6c5508652609b9d.md) | 300 | `result-track:f66dd780d6c5508652609b9d44ff9fe150876e09ebd0e92584276bd25f53400f` |
| 54 | `lemma` | [ofUnits_inf_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunits-inf-units--c02aed8984ff5b5a56ae8ecc.md) | 304 | `result-track:c02aed8984ff5b5a56ae8eccb359aa7cd2d5ef7c64e0ce04ea2917842b3ca007` |
| 55 | `lemma` | [ofUnits_right_inverse](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunits-right-inverse--8967e678e0c1acc5f4ec290a.md) | 308 | `result-track:8967e678e0c1acc5f4ec290a53d729a4587245149f6458a9a59fdae6ec6739d9` |
| 56 | `lemma` | [ofUnits_strictMono](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunits-strictmono--e04bba6d910165ab9e43d9cc.md) | 313 | `result-track:e04bba6d910165ab9e43d9cc99fcc8a294176bc5e1c60f74ad469b96031133f9` |
| 57 | `lemma` | [ofUnits_le_ofUnits_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunits-le-ofunits-iff--028e6e45b790b11e37f4d4b0.md) | 315 | `result-track:028e6e45b790b11e37f4d4b0b8d58cc8356797c395156f1b067adac71bc46b3d` |
| 58 | `def` | [ofUnitsTopEquiv](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/ofunitstopequiv--7585a3427a89fe15a3bf701e.md) | 322 | `declaration-track:7585a3427a89fe15a3bf701e7a00bf78857c1d9bc533ac0b82fce8b0319e50fd` |
| 59 | `lemma` | [mem_units_iff_val_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/mem-units-iff-val-mem--a1ea9a9feff6902f4d513bd8.md) | 328 | `result-track:a1ea9a9feff6902f4d513bd8169ae47817409090284ed05158059ad71ee1dcbe` |
| 60 | `lemma` | [mem_ofUnits_iff_toUnits_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/mem-ofunits-iff-tounits-mem--496504b6bc03fe42362f54b4.md) | 332 | `result-track:496504b6bc03fe42362f54b414078d95a2c490a8be69d23d2a178261e11861b7` |
| 61 | `lemma` | [mem_iff_toUnits_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/mem-iff-tounits-mem-units--1adcc276f498e7ce2020e83d.md) | 336 | `result-track:1adcc276f498e7ce2020e83d1a40911b6ac2f72320941cef923ff643c561e0a8` |
| 62 | `lemma` | [val_mem_ofUnits_iff_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/val-mem-ofunits-iff-mem--43d6b702d949047dd420872d.md) | 340 | `result-track:43d6b702d949047dd420872d6c4596c791606de86f67038c44afde91730a2554` |
| 63 | `def` | [unitsEquivSelf](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/unitsequivself--abf26adbbc009d639f84041c.md) | 346 | `declaration-track:abf26adbbc009d639f84041c9aeca385612604c1ddc097454bcf9e0ff275fd7d` |
| 64 | `theorem` | [MonoidHom.isUnit_eqLocusM_mk_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/monoidhom-isunit-eqlocusm-mk-iff--564facf61e9875413d17e48b.md) | 352 | `result-track:564facf61e9875413d17e48ba4e5961f065a953a98853485f4e3504dbf15238e` |
| 65 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/declarations/instance--1a064172e741b7bd571f115d.md) | 362 | `declaration-track:1a064172e741b7bd571f115dd91a094ddeecaf5f680c605d3c3e70594d98e972` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
