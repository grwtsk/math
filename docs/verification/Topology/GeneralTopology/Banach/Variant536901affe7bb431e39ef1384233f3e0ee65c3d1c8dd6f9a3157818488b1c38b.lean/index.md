# Verification target: GRWTSK.Topology.GeneralTopology.Banach.Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66b95fdbaf8dd1f62c28a5a0cd2613ab7d4bcc4b",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66b95fdbaf8dd1f62c28a5a0cd2613ab7d4bcc4b`.

Source path: `GRWTSK/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean.json)

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
| 1 | `structure` | [NonlinearRightInverse](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/nonlinearrightinverse--d566557ba9e61a5064650497.md) | 38 | `declaration-track:d566557ba9e61a50646504979d602579f13ce76cfacd1eb2a319afa2b2ef27a3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/instance--d92caf708e86480beb8a00f2.md) | 48 | `declaration-track:d92caf708e86480beb8a00f277e7725c434c2e25cdbbad0a13d2101754db6c98` |
| 3 | `theorem` | [NonlinearRightInverse.right_inv](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/nonlinearrightinverse-right-inv--75d6fe4302f981d82af3e89d.md) | 52 | `result-track:75d6fe4302f981d82af3e89d12ecdf1ec64c3f606a3f0dd9a1e046700a480b84` |
| 4 | `theorem` | [NonlinearRightInverse.bound](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/nonlinearrightinverse-bound--9a1b81a57645d823ca4765ec.md) | 56 | `result-track:9a1b81a57645d823ca4765ec6bd374ad4851fcb30c402b9af078147001f3cc2e` |
| 5 | `def` | [ContinuousLinearEquiv.toNonlinearRightInverse](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/continuouslinearequiv-tononlinearrightinverse--ffdc77bc4c7508b4040eb932.md) | 66 | `declaration-track:ffdc77bc4c7508b4040eb932409f4335bca5e13a32c6143791a115189ef8ec37` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/instance--e516028b29beac37cecadff8.md) | 74 | `declaration-track:e516028b29beac37cecadff876b4c06fe3a7d9b9536ac909386fcc0f0b796b15` |
| 7 | `theorem` | [exists_approx_preimage_norm_le](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/exists-approx-preimage-norm-le--b60fb96e6ceeb2106638b445.md) | 92 | `result-track:b60fb96e6ceeb2106638b4457a8c26033e8e0643eee00ce53fe5b5a9600f2853` |
| 8 | `theorem` | [exists_preimage_norm_le](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/exists-preimage-norm-le--eba14bb2b25319fa6c1b92a9.md) | 162 | `result-track:eba14bb2b25319fa6c1b92a919538a99e34f5e42a0b18875457e4bf64509bab6` |
| 9 | `theorem` | [isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/isopenmap--023d2d2a9073ec2cad1bdb28.md) | 229 | `result-track:023d2d2a9073ec2cad1bdb28c604c274f12e22922369ccf1969d4956733ee3f8` |
| 10 | `theorem` | [isQuotientMap](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/isquotientmap--96dc08bb4d4de4abc3892055.md) | 250 | `result-track:96dc08bb4d4de4abc389205565fb32530ead7397cd5a2083b67e656d892bdc60` |
| 11 | `theorem` | [_root_.AffineMap.isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/root-affinemap-isopenmap--cd19ee35275e034018ca730b.md) | 255 | `result-track:cd19ee35275e034018ca730bdd0c613e5e01eccaf326e04c5510488552e04014` |
| 12 | `theorem` | [interior_preimage](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/interior-preimage--275b107ea7c5899fbebc5807.md) | 268 | `result-track:275b107ea7c5899fbebc5807c6387e74469afe0cb389770b6800d68c05a4fac4` |
| 13 | `theorem` | [closure_preimage](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/closure-preimage--e20b7b49e2351bfb6267960d.md) | 272 | `result-track:e20b7b49e2351bfb6267960de77ac37d08b93693194c8ac035cb1c3563b4c3d9` |
| 14 | `theorem` | [frontier_preimage](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/frontier-preimage--45368b06f4ad20172067fee5.md) | 275 | `result-track:45368b06f4ad20172067fee580373c300229c7768327707cb01217021d73a49a` |
| 15 | `theorem` | [exists_nonlinearRightInverse_of_surjective](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/exists-nonlinearrightinverse-of-surjective--a7cfadc381b63827b5ade35d.md) | 279 | `result-track:a7cfadc381b63827b5ade35ddfe1a829bf571d82f47f0b13261caec6f15244be` |
| 16 | `theorem` | [nonlinearRightInverseOfSurjective_nnnorm_pos](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/nonlinearrightinverseofsurjective-nnnorm-pos--8dfc7a18df95ca095dd9c2ef.md) | 300 | `result-track:8dfc7a18df95ca095dd9c2ef2f146b005c319616d5480b40820899e5fae0bccc` |
| 17 | `theorem` | [continuous_symm](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/continuous-symm--3341e17f763578ec0ec5f144.md) | 313 | `result-track:3341e17f763578ec0ec5f1446bd0bc7da2bd6e0b5c725145eec60bac07630763` |
| 18 | `def` | [toContinuousLinearEquivOfContinuous](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/tocontinuouslinearequivofcontinuous--4d6e16b023b6af1634f3c923.md) | 323 | `declaration-track:4d6e16b023b6af1634f3c92359deb9d99e171dbf7529870e518d1520bd1f9026` |
| 19 | `theorem` | [coeFn_toContinuousLinearEquivOfContinuous](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/coefn-tocontinuouslinearequivofcontinuous--7dfcc679d7227bbcd99834a6.md) | 329 | `result-track:7dfcc679d7227bbcd99834a698ae437130e4e6acf334f4882dc81f7e35a279f7` |
| 20 | `theorem` | [coeFn_toContinuousLinearEquivOfContinuous_symm](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/coefn-tocontinuouslinearequivofcontinuous-symm--44f78e587b04d1e32291c55d.md) | 334 | `result-track:44f78e587b04d1e32291c55d5e4ae503454bbe258873ef239fb0e5240666b3c2` |
| 21 | `def` | [equivRange](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/equivrange--1852c2bbafd13cfa30acb0d7.md) | 346 | `declaration-track:1852c2bbafd13cfa30acb0d7c76ba7605a10ac3fcf7d38f7bc4866fde0e64882` |
| 22 | `theorem` | [coe_linearMap_equivRange](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/coe-linearmap-equivrange--bbee96378ef4a9956272e136.md) | 353 | `result-track:bbee96378ef4a9956272e136568574fb4d8339dd411401653714c714df20989f` |
| 23 | `theorem` | [coe_equivRange](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/coe-equivrange--62f6962795319778af0e1b01.md) | 358 | `result-track:62f6962795319778af0e1b01faa71ea0639f9ef6ef75e297853f22c876891ae3` |
| 24 | `lemma` | [equivRange_symm_toLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/equivrange-symm-tolinearequiv--d138026c71e02b734bec9a52.md) | 363 | `result-track:d138026c71e02b734bec9a52bc162572b105f31c8ecd1c73dcbeebb0deb97a57` |
| 25 | `lemma` | [equivRange_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/equivrange-symm-apply--cb9921f41fb02e2dca885b70.md) | 369 | `result-track:cb9921f41fb02e2dca885b700255833e2d2f47a596e27ee5134eaba3a6cd2d1a` |
| 26 | `lemma` | [antilipschitz_of_injective_of_isClosed_range](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/antilipschitz-of-injective-of-isclosed-range--e6e61ecad3fbc7d3dbccb9ac.md) | 383 | `result-track:e6e61ecad3fbc7d3dbccb9acc4069e8975a69b709ec7900c2a4c563ae0e501ea` |
| 27 | `def` | [antilipschitzConstant_of_injective_of_isClosed_range](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/antilipschitzconstant-of-injective-of-isclosed-range--782fdf0ae338651c9bae9263.md) | 389 | `declaration-track:782fdf0ae338651c9bae9263e16069fa77ab807c5b478b93a091eb21a6636314` |
| 28 | `lemma` | [antilipschitz_antiLipschitzConstant_of_injective_of_isClosed_range](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/antilipschitz-antilipschitzconstant-of-injective-of-isclosed-range--2004699b3b6c17fdf1ae0bdd.md) | 393 | `result-track:2004699b3b6c17fdf1ae0bdd633155b048d5b45ac59f8cf076814c6be2dc6b70` |
| 29 | `lemma` | [isClosed_range_iff_antilipschitz_of_injective](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/isclosed-range-iff-antilipschitz-of-injective--dbe91ac0b671503bed83579b.md) | 400 | `result-track:dbe91ac0b671503bed83579b7dc8318b5e2b9854b1714a677536e61b768d73b1` |
| 30 | `def` | [leftInverse_of_injective_of_isClosed_range](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/leftinverse-of-injective-of-isclosed-range--25489bc1e733368bbeffc3c7.md) | 410 | `declaration-track:25489bc1e733368bbeffc3c7476318edc5703b3db13a75042bd6ea84f9bdd4cc` |
| 31 | `def` | [ofBijective](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/ofbijective--be00f12b5ab8035d1ed6eec7.md) | 432 | `declaration-track:be00f12b5ab8035d1ed6eec78224fa280a0509c5ec1d9744c6009c3e80ab86ee` |
| 32 | `theorem` | [coeFn_ofBijective](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/coefn-ofbijective--4b8f2054f939bc6393ee31a3.md) | 441 | `result-track:4b8f2054f939bc6393ee31a3169a2fa9f482f6278e2e6b60e3a6b2f411a2927e` |
| 33 | `theorem` | [coe_ofBijective](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/coe-ofbijective--99f28b60a6fe6c5528876c15.md) | 445 | `result-track:99f28b60a6fe6c5528876c157a30bfc7fedd97df2cc6a4e722496deb401b0378` |
| 34 | `theorem` | [ofBijective_symm_apply_apply](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/ofbijective-symm-apply-apply--1b1fffb0dfc77ef44cf0c2ef.md) | 451 | `result-track:1b1fffb0dfc77ef44cf0c2ef0c2edb660775d9b1d04bd7af144953c61c66730a` |
| 35 | `theorem` | [ofBijective_apply_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/ofbijective-apply-symm-apply--3038de1cf9b52217046eb1f6.md) | 456 | `result-track:3038de1cf9b52217046eb1f6e6cca8d7194524bf5218f6f22976f6b81e00dcdc` |
| 36 | `lemma` | [_root_.ContinuousLinearMap.isUnit_iff_bijective](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/root-continuouslinearmap-isunit-iff-bijective--594084776990e71ad322fd81.md) | 460 | `result-track:594084776990e71ad322fd81faa82c7dae00f45115c51c774c82447db591a50b` |
| 37 | `theorem` | [isUnit_iff_isUnit_toLinearMap](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/isunit-iff-isunit-tolinearmap--ae8eb7e362db3e7a5bd31823.md) | 478 | `result-track:ae8eb7e362db3e7a5bd31823ce7c91a198229fa683f241856479c6e7961ad455` |
| 38 | `theorem` | [spectrum_eq](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/spectrum-eq--11f8174cbd7ffc8f2cfc5d6c.md) | 486 | `result-track:11f8174cbd7ffc8f2cfc5d6cc30b2dc3a9aad17555f9c17b0140e2c72ff4a189` |
| 39 | `def` | [coprodSubtypeLEquivOfIsCompl](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/coprodsubtypelequivofiscompl--ea06cae73db0bc7653932834.md) | 496 | `declaration-track:ea06cae73db0bc765393283453606a91e1376299ae029aca7b6a04ca22bd7923` |
| 40 | `theorem` | [range_eq_map_coprodSubtypeLEquivOfIsCompl](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/range-eq-map-coprodsubtypelequivofiscompl--87489c636027e9015421d805.md) | 506 | `result-track:87489c636027e9015421d80567227b4140d82462c331eb97db6d51bc3e4fdce4` |
| 41 | `theorem` | [closed_complemented_range_of_isCompl_of_ker_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/closed-complemented-range-of-iscompl-of-ker-eq-bot--283ffe88b94d6b2e67e87d1d.md) | 518 | `result-track:283ffe88b94d6b2e67e87d1d79e336682879ff8e1fdc41b1bef6d262523c87f7` |
| 42 | `theorem` | [LinearMap.continuous_of_isClosed_graph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/linearmap-continuous-of-isclosed-graph--5afd3e14a82e74c1e67fe6f7.md) | 537 | `result-track:5afd3e14a82e74c1e67fe6f7ba108cd337a80c24632b32009c8f7ef9c6bcb813` |
| 43 | `theorem` | [LinearMap.continuous_of_seq_closed_graph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/linearmap-continuous-of-seq-closed-graph--7afd7de6b51277cf399019cd.md) | 551 | `result-track:7afd7de6b51277cf399019cdb4635b1d3e6b6fbcda8fa9652d13dbd9e5c12e83` |
| 44 | `def` | [ofIsClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/ofisclosedgraph--dd419ee1142a6ca4dd8d1fdd.md) | 568 | `declaration-track:dd419ee1142a6ca4dd8d1fdd767a97e54c849178ff4290f66554040929db2f8e` |
| 45 | `theorem` | [coeFn_ofIsClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/coefn-ofisclosedgraph--00bb9b58f0bf8afceeb95446.md) | 573 | `result-track:00bb9b58f0bf8afceeb95446f5bc2a172bb705668af78d184efd9ac7a7b82e11` |
| 46 | `theorem` | [coe_ofIsClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/coe-ofisclosedgraph--e76d031eb1de5ffe6c7fd423.md) | 577 | `result-track:e76d031eb1de5ffe6c7fd423c1d9d380b3ae3f4a1dac6bf6728e6bedff9d5163` |
| 47 | `def` | [ofSeqClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/ofseqclosedgraph--0c53d773bf11f67a0fed495c.md) | 584 | `declaration-track:0c53d773bf11f67a0fed495c5e283a6d0bbaa147825a105676f248311ab88ffc` |
| 48 | `theorem` | [coeFn_ofSeqClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/coefn-ofseqclosedgraph--bce94e39aae62080da3192bf.md) | 591 | `result-track:bce94e39aae62080da3192bf7248602fc1fcd9fa68651991cef5448f3a350fc7` |
| 49 | `theorem` | [coe_ofSeqClosedGraph](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/coe-ofseqclosedgraph--5a16875ef42671dbc720f226.md) | 596 | `result-track:5a16875ef42671dbc720f226c20938218bf8c9a2500593e6cd6f52aac9f9fed2` |
| 50 | `lemma` | [closed_range_of_antilipschitz](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/closed-range-of-antilipschitz--ec176b42ba3ed32fb7a39102.md) | 614 | `result-track:ec176b42ba3ed32fb7a39102075a1dfc5863ec0486746a8c768eb6bef6b9daee` |
| 51 | `lemma` | [_root_.AntilipschitzWith.completeSpace_range_clm](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/root-antilipschitzwith-completespace-range-clm--33dd4a003a686b37a2e8c12a.md) | 620 | `result-track:33dd4a003a686b37a2e8c12a06996caa4a3d7c7049e01a9e52e30be210eb06a4` |
| 52 | `lemma` | [bijective_iff_dense_range_and_antilipschitz](../../../../../mathematics/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/declarations/bijective-iff-dense-range-and-antilipschitz--beee9c406f7762df8c8d6654.md) | 627 | `result-track:beee9c406f7762df8c8d665454ac064ad123588334e25649d2038877bc5ba4e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
