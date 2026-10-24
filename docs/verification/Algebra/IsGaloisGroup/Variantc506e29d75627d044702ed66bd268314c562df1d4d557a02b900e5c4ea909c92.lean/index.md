# Verification target: GRWTSK.Algebra.IsGaloisGroup.Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "472c75265f50a72ffbf12ac68b34d66fcb813d39",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `472c75265f50a72ffbf12ac68b34d66fcb813d39`.

Source path: `GRWTSK/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/instance--efcb9575a9531f522764c14e.md) | 55 | `declaration-track:efcb9575a9531f522764c14efe0b6f687a2eb62811e7fe81ba8dc1980b4c31a5` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/instance--bd9d129e489376c83dc1f4d7.md) | 60 | `declaration-track:bd9d129e489376c83dc1f4d7257548715285dbcdb0cba5d435eb74ee1e1de81a` |
| 3 | `theorem` | [fixedPoints_eq_bot](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/fixedpoints-eq-bot--b1a266e1cb8fd89c7d28ff9e.md) | 74 | `result-track:b1a266e1cb8fd89c7d28ff9e761736bcd2425cca56f1f122e90d84071a9772d7` |
| 4 | `theorem` | [isGalois](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/isgalois--8e8286927504cdd0f52e4479.md) | 80 | `result-track:8e8286927504cdd0f52e4479aee2a9928ed9670a0aee8166797d4ad66a441361` |
| 5 | `instance` | [of_isGalois](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/of-isgalois--3eb28c5edb0c2b7a96cea7b7.md) | 85 | `declaration-track:3eb28c5edb0c2b7a96cea7b746e377048cf32db4d74fae4075c77036d1cab479` |
| 6 | `theorem` | [card_eq_finrank](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/card-eq-finrank--d8f8ea1dde9d7777cfb0a2a9.md) | 93 | `result-track:d8f8ea1dde9d7777cfb0a2a9ba31893e43941b04038b3c49581dd933d5a06bb0` |
| 7 | `theorem` | [finiteDimensional](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/finitedimensional--30fe79a5a15c785eab432bd2.md) | 104 | `result-track:30fe79a5a15c785eab432bd2dc634f4abd560f2032c5a93e405936cb7995fa22` |
| 8 | `theorem` | [finite](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/finite--7c4e4fe4b40aaf2e3febde00.md) | 107 | `result-track:7c4e4fe4b40aaf2e3febde00793465e7334fdaa9b920403b855d07265632dc6e` |
| 9 | `theorem` | [card_eq_finrank'](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/card-eq-finrank--80e334fa58788911bec2d4e2.md) | 129 | `result-track:80e334fa58788911bec2d4e22858e0556b42aace42410a5f8f474d90a86dd4dc` |
| 10 | `theorem` | [map_mulEquivAlgEquiv_fixingSubgroup](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/map-mulequivalgequiv-fixingsubgroup--103fd173083cb35b0f4b37ce.md) | 137 | `result-track:103fd173083cb35b0f4b37ce3f180ec78fb7656241db465f0372f4088b27d9bd` |
| 11 | `def` | [mulEquivCongr](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/mulequivcongr--600e5ce8bffd48ee605bd485.md) | 144 | `declaration-track:600e5ce8bffd48ee605bd4856445101894886f0045503462d75856f9987391bf` |
| 12 | `theorem` | [mulEquivCongr_apply_smul](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/mulequivcongr-apply-smul--ecb1995f4e88a7bf39b14fed.md) | 148 | `result-track:ecb1995f4e88a7bf39b14fed11e0f67ea74b6b6c2f4011b622c7a43ee79c78ee` |
| 13 | `theorem` | [mulEquivCongr_symm_apply_smul](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/mulequivcongr-symm-apply-smul--1ff0b8039b8ce58d72654a3e.md) | 152 | `result-track:1ff0b8039b8ce58d72654a3e28de1d1cf1749f93098b38581ad5ce232cbe682a` |
| 14 | `theorem` | [mulEquivCongr_mapSubgroup_fixingSubgroup](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/mulequivcongr-mapsubgroup-fixingsubgroup--4ee93fef709bf5c6ac951c3f.md) | 159 | `result-track:4ee93fef709bf5c6ac951c3f490221983b8a4be50c99018a812ffbb904f7d740` |
| 15 | `instance` | [subgroup](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/subgroup--ceed38a03d6532166bb51261.md) | 168 | `declaration-track:ceed38a03d6532166bb512612463757720b7a4d307a7ba6a721ebda9a17e7ba7` |
| 16 | `theorem` | [fixedPoints_of_isGaloisGroup](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/fixedpoints-of-isgaloisgroup--f1c7830073e13b2208beab87.md) | 173 | `result-track:f1c7830073e13b2208beab87b8d275fecdbcb9a8b6601ae217054f6d09899ada` |
| 17 | `theorem` | [of_fixedPoints_eq](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/of-fixedpoints-eq--b2a10929dffc4fd5812c18d7.md) | 182 | `result-track:b2a10929dffc4fd5812c18d7dfd865e2059128b356fc399442d52a3b936df76c` |
| 18 | `theorem` | [subgroup_iff](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/subgroup-iff--300bb83339d3402bec11d3be.md) | 188 | `result-track:300bb83339d3402bec11d3be1d54c2b5b92007f6a8869c2d715c6fc118569836` |
| 19 | `theorem` | [finrank_fixedPoints_eq_card_subgroup](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/finrank-fixedpoints-eq-card-subgroup--dadea24b4fe54ed3225135b9.md) | 193 | `result-track:dadea24b4fe54ed3225135b9975846c5fe78ce07ed4a6b86ad1274312686cd2e` |
| 20 | `theorem` | [of_mulEquiv_algEquiv](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/of-mulequiv-algequiv--f10119b8e008906453490e4c.md) | 198 | `result-track:f10119b8e008906453490e4cec4dfe55d07d17ad635782a163a291bcbf0e0d0a` |
| 21 | `instance` | [fixedPoints](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/fixedpoints--2c64ce3d57702d25bb6afb46.md) | 201 | `declaration-track:2c64ce3d57702d25bb6afb465903aaa23bee1af1b07ffe15c28c0fc19d58eceb` |
| 22 | `instance` | [intermediateField](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/intermediatefield--a98e567225b3827034d7b92f.md) | 205 | `declaration-track:a98e567225b3827034d7b92f47e0f2e09164c135c7f655cd11133bc3cf2bd4bc` |
| 23 | `theorem` | [of_isScalarTower](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/of-isscalartower--62beb5f1e752a76b037bad10.md) | 217 | `result-track:62beb5f1e752a76b037bad108899aba8d279f59404f49621b915e5d8c1e1bce4` |
| 24 | `theorem` | [card_fixingSubgroup_eq_finrank](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/card-fixingsubgroup-eq-finrank--542ad3699d99ae3a7af2daa9.md) | 238 | `result-track:542ad3699d99ae3a7af2daa96a26418165816e8998fbcc7eb959947b2db41f8a` |
| 25 | `theorem` | [fixingSubgroup_le_of_le](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/fixingsubgroup-le-of-le--f93c8119df5d036faf25dc9e.md) | 244 | `result-track:f93c8119df5d036faf25dc9e1e516b7c684cdb22ef661759a26642d077707f2c` |
| 26 | `theorem` | [fixingSubgroup_bot](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/fixingsubgroup-bot--04fc4832a400e19f48909cd3.md) | 253 | `result-track:04fc4832a400e19f48909cd359baf57acb279a7dd5d19ef58e5be7dd8b601594` |
| 27 | `theorem` | [fixedPoints_bot](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/fixedpoints-bot--3b6729abc4be3308ed1cba78.md) | 257 | `result-track:3b6729abc4be3308ed1cba78b6a0725c1932ba236a33cb03e74cf88ded5d1c25` |
| 28 | `theorem` | [le_fixedPoints_iff_le_fixingSubgroup](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/le-fixedpoints-iff-le-fixingsubgroup--2a6b58ca66ed443b205183a0.md) | 261 | `result-track:2a6b58ca66ed443b205183a09d3e84a1efc16f18a5d1be8ac3107657df192734` |
| 29 | `theorem` | [fixedPoints_le_of_le](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/fixedpoints-le-of-le--a0820d6bbdf9bff49fa9c5c9.md) | 265 | `result-track:a0820d6bbdf9bff49fa9c5c9be25a964022b2204b7b5b99e115ca4cccc61db59` |
| 30 | `theorem` | [fixingSubgroup_top](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/fixingsubgroup-top--3289f56912558934cfac7c77.md) | 277 | `result-track:3289f56912558934cfac7c77599fb97692e49f3425edd5261144f0ae7957a08f` |
| 31 | `theorem` | [fixedPoints_top](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/fixedpoints-top--3fa459ef70ad7312b39a4490.md) | 282 | `result-track:3fa459ef70ad7312b39a4490da97cc63c5a41f5c250b8eb698f6b79cbc678cb3` |
| 32 | `def` | [intermediateFieldEquivSubgroup](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/intermediatefieldequivsubgroup--ac1dd3e3fc906dd69723edd5.md) | 288 | `declaration-track:ac1dd3e3fc906dd69723edd5564f9abb2b32ec830466050ae6c0c6eed5fde202` |
| 33 | `theorem` | [intermediateFieldEquivSubgroup_apply](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/intermediatefieldequivsubgroup-apply--bf2c54e13e0863a2940367ce.md) | 294 | `result-track:bf2c54e13e0863a2940367ce4cadf4ea484392a3eb298589efcddf1e26f4eb2d` |
| 34 | `theorem` | [ofDual_intermediateFieldEquivSubgroup_apply](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/ofdual-intermediatefieldequivsubgroup-apply--72f19142a642f00bd1e66169.md) | 297 | `result-track:72f19142a642f00bd1e6616947aae78a8e0c635f6e0e91c4449a42572b87452e` |
| 35 | `theorem` | [intermediateFieldEquivSubgroup_symm_apply](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/intermediatefieldequivsubgroup-symm-apply--f141a2eac6f9143de7c2d2c1.md) | 301 | `result-track:f141a2eac6f9143de7c2d2c1fb2e22bf068be16fd1a5dd245dae3a2b83c6c897` |
| 36 | `theorem` | [intermediateFieldEquivSubgroup_symm_apply_toDual](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/intermediatefieldequivsubgroup-symm-apply-todual--880b3662a3d83c5c81dcc90a.md) | 307 | `result-track:880b3662a3d83c5c81dcc90ab46faa1cefdb8547d5f3b52dc08426c38ce203ce` |
| 37 | `theorem` | [fixingSubgroup_fixedPoints](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/fixingsubgroup-fixedpoints--44928fd9322ebdc1d02db880.md) | 312 | `result-track:44928fd9322ebdc1d02db880dea49ad236f35c4340500ebdde8b36005a589431` |
| 38 | `theorem` | [fixedPoints_fixingSubgroup](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/fixedpoints-fixingsubgroup--31bb6847a6507786475812b4.md) | 319 | `result-track:31bb6847a6507786475812b4565b424d4dcf5e12b5fd701cb3217609e4041191` |
| 39 | `theorem` | [fixedPoints_eq_range_algebraMap](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/fixedpoints-eq-range-algebramap--706511efdfdbb3753498b635.md) | 326 | `result-track:706511efdfdbb3753498b635e547c7d7ceab6d7102e29e25f960a178add45121` |
| 40 | `theorem` | [fixingSubgroup_range_algebraMap'](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/fixingsubgroup-range-algebramap--7b5e4124a648f2f04ea62d1d.md) | 339 | `result-track:7b5e4124a648f2f04ea62d1d3319f7ec86441a29cb7c7f4c488d410c09d66dae` |
| 41 | `theorem` | [fixingSubgroup_range_algebraMap](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/fixingsubgroup-range-algebramap--294b97bf4d284723446d12f6.md) | 347 | `result-track:294b97bf4d284723446d12f677c17748b4b467b13e631a8e1943441004343336` |
| 42 | `theorem` | [normal_of_isGalois](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/normal-of-isgalois--c8cc74c36b8e36c264ef9478.md) | 365 | `result-track:c8cc74c36b8e36c264ef94787491a822866056998dd5734d43d4179b26da0dcb` |
| 43 | `theorem` | [quotient](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/quotient--ee194d450b085cb1339ed74c.md) | 389 | `result-track:ee194d450b085cb1339ed74c7fb5dc457f3f31d34a9b48a97e2f705942177e98` |
| 44 | `def` | [quotientMulEquiv](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/quotientmulequiv--233b5a21f2f552a197e2a655.md) | 413 | `declaration-track:233b5a21f2f552a197e2a655377bc4b3e3c313474c626c654c7d9cde1de3625e` |
| 45 | `theorem` | [algebraMap_quotientMulEquiv_smul](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/algebramap-quotientmulequiv-smul--1f254dbe360fd64d62747cc3.md) | 425 | `result-track:1f254dbe360fd64d62747cc3375cf0938a24f204ce63b0ab7f32646dacf4dcc4` |
| 46 | `def` | [restrictHom](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/restricthom--4b39097c6f8f010cedb3960e.md) | 441 | `declaration-track:4b39097c6f8f010cedb3960ed698af47c5c066ce9c98dfc49d11aaf14283bf29` |
| 47 | `theorem` | [algebraMap_restrictHom_smul](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/algebramap-restricthom-smul--88d03cce8a102c4b0a01b971.md) | 460 | `result-track:88d03cce8a102c4b0a01b9715e900a5de2be7ef84459d90d54b59f5748328778` |
| 48 | `theorem` | [restrictHom_surjective](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/restricthom-surjective--3220123a8f5899b867b9440a.md) | 478 | `result-track:3220123a8f5899b867b9440a9e18b174e1ff72dd51c3d1362592cbdfc3f40112` |
| 49 | `theorem` | [restrictHom_smul_under](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/restricthom-smul-under--eb182060054783ea45da564d.md) | 484 | `result-track:eb182060054783ea45da564d637992feecb18afa4eb7d19071801758a58ff9e8` |
| 50 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/instance--6799a4be1b2f0e98c634ecd6.md) | 497 | `declaration-track:6799a4be1b2f0e98c634ecd6ce4035bd3cd2f50198e73042c4d76ddc9a127d32` |
| 51 | `theorem` | [map_quotientMk'](../../../../mathematics/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/declarations/map-quotientmk--aa56baffefff20fe8d68f4ea.md) | 508 | `result-track:aa56baffefff20fe8d68f4ea44db545c7fa21cf864b4b25f844feb50f2b02484` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
