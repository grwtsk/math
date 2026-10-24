# Verification target: GRWTSK.Algebra.Defs.Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3248145e2a399dbe86982c743ec58b8da814baf6",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3248145e2a399dbe86982c743ec58b8da814baf6`.

Source path: `GRWTSK/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean.json)

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
| 1 | `class` | [SubfieldClass](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/subfieldclass--8f9ad5526316302c6d20cfa5.md) | 65 | `declaration-track:8f9ad5526316302c6d20cfa55f78254d93d4717138e587c2fd7b10d148ac69e7` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/instance--48fd02904f3539eb974861d2.md) | 78 | `declaration-track:48fd02904f3539eb974861d2a07bb4b66dbe394c56d1628e92a7aa3842987a55` |
| 3 | `lemma` | [nnratCast_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/nnratcast-mem--4ceacc391855d5ef5e0e46db.md) | 84 | `result-track:4ceacc391855d5ef5e0e46dbd3615139e805c8bd7c35f354cb8b1203842df152` |
| 4 | `lemma` | [ratCast_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/ratcast-mem--79a0049c833aa70e8b5af66d.md) | 88 | `result-track:79a0049c833aa70e8b5af66d09f4b09957dc2c6c0b32c541841687b58192dcae` |
| 5 | `instance` | [instNNRatCast](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/instnnratcast--823e490aeb49a58d3d4cc179.md) | 91 | `declaration-track:823e490aeb49a58d3d4cc1798a8e1b57e608ed40924bf00d0d6518ceffee702d` |
| 6 | `instance` | [instRatCast](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/instratcast--c3fb824dc1d5597978f3fafc.md) | 92 | `declaration-track:c3fb824dc1d5597978f3fafcc532b59a637ccf2a89615124bd8ba2fa14ae7790` |
| 7 | `lemma` | [coe_nnratCast](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-nnratcast--d0083ba85c6d2088435a0e8a.md) | 94 | `result-track:d0083ba85c6d2088435a0e8af278a72e7b095cd4351a5ec7c0b369f00b433564` |
| 8 | `lemma` | [coe_ratCast](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-ratcast--63842ddfc1ff7bfde00b1fe1.md) | 95 | `result-track:63842ddfc1ff7bfde00b1fe19ef884bd96c9f0e641953f6a9faa889245fa7945` |
| 9 | `lemma` | [nnqsmul_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/nnqsmul-mem--3a9e954dffdf63ac983c8b97.md) | 98 | `result-track:3a9e954dffdf63ac983c8b979bebc994988628129b4e9fc249202aeb6d43398d` |
| 10 | `lemma` | [qsmul_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/qsmul-mem--115c631eb464df4020d70e39.md) | 102 | `result-track:115c631eb464df4020d70e3969b84df497d1d0932c1f4b5f838b14d3778c6e30` |
| 11 | `lemma` | [ofScientific_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/ofscientific-mem--e3d7a05137be7a5c0f0ed3ea.md) | 106 | `result-track:e3d7a05137be7a5c0f0ed3eaab336a461179e5293681f295b7dbd914b0d053cf` |
| 12 | `instance` | [instSMulNNRat](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/instsmulnnrat--75c82c95b04476acd974748e.md) | 110 | `declaration-track:75c82c95b04476acd974748e15838adfe95d5c72995925bf00d9438ec42846d1` |
| 13 | `instance` | [instSMulRat](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/instsmulrat--26afb3dbfa1955eafdfa8199.md) | 111 | `declaration-track:26afb3dbfa1955eafdfa81995863407ef5ab243181641239c9cb72cba2de0069` |
| 14 | `lemma` | [coe_nnqsmul](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-nnqsmul--958d553a3d9d4d5ad9971423.md) | 113 | `result-track:958d553a3d9d4d5ad99714236079769e1720d124c02652a8359218cae8dc8968` |
| 15 | `lemma` | [coe_qsmul](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-qsmul--8ae06bc1091146a201b0b4ec.md) | 114 | `result-track:8ae06bc1091146a201b0b4ec835e71d9114c4a843c6f51b8153b10f766a1a4ef` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/instance--70b3378c2464e9e8cabd4b34.md) | 117 | `declaration-track:70b3378c2464e9e8cabd4b3472bb20216ec2bfe0666fba601abb64bca4345d6b` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/instance--9e771711ad340d0bd2106190.md) | 126 | `declaration-track:9e771711ad340d0bd2106190faf794c771c6e4d6b9158cb9aec4ca6812620cc7` |
| 18 | `structure` | [Subfield](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/subfield--c1775a17ed528cd805c875d5.md) | 140 | `declaration-track:c1775a17ed528cd805c875d53301cb984534e85ca6bb9c4b679fa15d3112c279` |
| 19 | `def` | [toAddSubgroup](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/toaddsubgroup--bc0e47f14f4074d95e4e074b.md) | 151 | `declaration-track:bc0e47f14f4074d95e4e074b117ed9534c3ae449ded1558468f76c60341c87a3` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/instance--48506b76954b3f018f54a27d.md) | 154 | `declaration-track:48506b76954b3f018f54a27d2432426f92615ca45596a01c6335bc0cd6124cd2` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/instance--582998f396958ed36cc84d6a.md) | 158 | `declaration-track:582998f396958ed36cc84d6a2791cb053b8329031904e2a3deb8d005a846a87c` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/instance--0c562c1c92b302619df945d1.md) | 160 | `declaration-track:0c562c1c92b302619df945d1f5527838f1fe2e52cef921a6a4edce6e026e3535` |
| 23 | `theorem` | [mem_carrier](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/mem-carrier--51fc9d6d756738953a273a3a.md) | 168 | `result-track:51fc9d6d756738953a273a3a2a2ded5e732cf21ef41370c1b13fbfdad5025f34` |
| 24 | `theorem` | [mem_mk](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/mem-mk--455e2d6aab481b5ed772e9ac.md) | 172 | `result-track:455e2d6aab481b5ed772e9ac2b1fe164987084ae608d60b6fae78b0d284206c1` |
| 25 | `theorem` | [coe_set_mk](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-set-mk--a31a70284650091eda12952e.md) | 176 | `result-track:a31a70284650091eda12952e4c4000a3c7d3eb2ea46b48c7b7031838c3648ce2` |
| 26 | `theorem` | [mk_le_mk](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/mk-le-mk--651d83aabeae3636f31dc7c4.md) | 180 | `result-track:651d83aabeae3636f31dc7c48a153aad06c5d436d8f0811cdb676dd7ce5c848a` |
| 27 | `theorem` | [ext](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/ext--b3ebb7edd1cf7a09da9f6b05.md) | 186 | `result-track:b3ebb7edd1cf7a09da9f6b0507311423e82386c413bfcbddb13edcdc7c311bf7` |
| 28 | `def` | [copy](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/copy--f04e8ad3bb4c1e71dd987331.md) | 191 | `declaration-track:f04e8ad3bb4c1e71dd9873311b461e3be2c06a3c608b6001086637a1327cbb67` |
| 29 | `theorem` | [coe_copy](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-copy--dd467c726ea3ad564695657a.md) | 197 | `result-track:dd467c726ea3ad564695657a3f46eea2c1ad02534698b1cd76668f98ef22b240` |
| 30 | `theorem` | [copy_eq](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/copy-eq--6cac8a189a6da6b1ee84d4ee.md) | 200 | `result-track:6cac8a189a6da6b1ee84d4eea1dae05eb1c854175c7568b933a88c463d90e35e` |
| 31 | `theorem` | [coe_toSubring](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-tosubring--77657b2a07b8ac7baa5c28fa.md) | 204 | `result-track:77657b2a07b8ac7baa5c28fab356441860eb7ac2f10e97a49a470dced0fe62a3` |
| 32 | `theorem` | [mem_toSubring](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/mem-tosubring--339e247b2f77cf54818f51c0.md) | 208 | `result-track:339e247b2f77cf54818f51c00c73c88b136221c9cd6a7f102665764c15e7cd5b` |
| 33 | `def` | [Subring.toSubfield](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/subring-tosubfield--254a95572c3cf39518931f1f.md) | 214 | `declaration-track:254a95572c3cf39518931f1fad6e07f2aac529c710913cc1556277d3302e37d5` |
| 34 | `theorem` | [one_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/one-mem--c1beaf47cc2fbce6eb42b139.md) | 224 | `result-track:c1beaf47cc2fbce6eb42b1391e4463417414d8a240518339c063f006dce0ac6f` |
| 35 | `theorem` | [zero_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/zero-mem--5c232f4c50af3f86477c38b1.md) | 228 | `result-track:5c232f4c50af3f86477c38b1859b75d008d335b9896624a7c296c404dd3be396` |
| 36 | `theorem` | [mul_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/mul-mem--5857c94abae14a5da6f12d4e.md) | 232 | `result-track:5857c94abae14a5da6f12d4e2d8dfd02d2399d639a9c666aa7f1748464c2ba23` |
| 37 | `theorem` | [add_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/add-mem--fdc8ee423ff9e164ca26e97c.md) | 236 | `result-track:fdc8ee423ff9e164ca26e97c606bb72a74d2ade59e01318d951e2084cb1ede00` |
| 38 | `theorem` | [neg_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/neg-mem--1d508495707d82ca85debb20.md) | 240 | `result-track:1d508495707d82ca85debb20ae8fb449c29015566c78cc75ffa779fe3f9495a1` |
| 39 | `theorem` | [sub_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/sub-mem--565d470412a98b85d66a70b2.md) | 244 | `result-track:565d470412a98b85d66a70b2184c54c516796b188d6c46a70c9efac143271ada` |
| 40 | `theorem` | [inv_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/inv-mem--0b3a96b868a09eae6fb14ddb.md) | 248 | `result-track:0b3a96b868a09eae6fb14ddbfd66ef0f4381d59b2159fc084a60851736d0b265` |
| 41 | `theorem` | [div_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/div-mem--6e53c40e2d3fd843653365aa.md) | 252 | `result-track:6e53c40e2d3fd843653365aa0699575695d7be568bde8bd2334943012536177c` |
| 42 | `theorem` | [pow_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/pow-mem--f20d7794e15ec1e0d1259049.md) | 255 | `result-track:f20d7794e15ec1e0d125904931db703aed95661352672a2351ef171cffa9bf2b` |
| 43 | `theorem` | [zsmul_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/zsmul-mem--1e53642a4836596e17e3fb09.md) | 258 | `result-track:1e53642a4836596e17e3fb099e8b73dd3369093f41fd2dbf0afc5597c1064938` |
| 44 | `theorem` | [intCast_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/intcast-mem--9ad5fb108727dc649e57e9b9.md) | 261 | `result-track:9ad5fb108727dc649e57e9b93a78343dafae8867f093eb604189ab36b2aa577b` |
| 45 | `theorem` | [zpow_mem](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/zpow-mem--a77f71b292356240fa55b430.md) | 263 | `result-track:a77f71b292356240fa55b430fec5c1355703e85ebb85c466aa69dfc290a3e1e0` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/instance--720be50860ffee94c32db5de.md) | 265 | `declaration-track:720be50860ffee94c32db5dee3fbb628afc4b2ef7124cdc056ec265e83954d9a` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/instance--ed3108c52ec451d8c92ba550.md) | 268 | `declaration-track:ed3108c52ec451d8c92ba5502f74ea90601c326e4906b4f0fe246059bd8a3191` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/instance--eecbcc4573d813c482043ef9.md) | 271 | `declaration-track:eecbcc4573d813c482043ef903877671dc19d01139c440a4d0baa36e9fc96174` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/instance--d11b942344b5805b52571e29.md) | 274 | `declaration-track:d11b942344b5805b52571e29095d95d633933e8db27da12511485318c0f1c3d4` |
| 50 | `instance` | [toDivisionRing](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/todivisionring--bfaa7b89c1627e2eac31d147.md) | 277 | `declaration-track:bfaa7b89c1627e2eac31d14797957d2f41c70fe0d70467ca72d56576f3231dd4` |
| 51 | `instance` | [toField](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/tofield--576ebca19a8add139a006e9e.md) | 279 | `declaration-track:576ebca19a8add139a006e9edc745b398c8d3a11a77ea47ac05804c8f0c7aa02` |
| 52 | `theorem` | [coe_add](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-add--169023ff85a0ada20b004ecf.md) | 282 | `result-track:169023ff85a0ada20b004ecfa3d07e90a1cfea7a91540b619d09741da56daecb` |
| 53 | `theorem` | [coe_sub](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-sub--4bdd76d790261eafc2007548.md) | 286 | `result-track:4bdd76d790261eafc20075486db2a24940796405431f2052418449ddcedc96ce` |
| 54 | `theorem` | [coe_neg](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-neg--147c9985d3f6a0ecaf1bc813.md) | 290 | `result-track:147c9985d3f6a0ecaf1bc813235299e64c3a2d94acc7d893781c74172d55c5d4` |
| 55 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-mul--1e2818391f131385f9030996.md) | 294 | `result-track:1e2818391f131385f9030996f1e49b6949b1bb62f5fb8f2b548a3b0c42556f26` |
| 56 | `theorem` | [coe_div](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-div--ed40433b6c703d6a56749053.md) | 298 | `result-track:ed40433b6c703d6a567490533ec8913b645a63d5afcbed2cec3f6aa8af1893cc` |
| 57 | `theorem` | [coe_inv](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-inv--bc49473251d8864e24cab712.md) | 302 | `result-track:bc49473251d8864e24cab712a0cfc554298a543c04c7921d6659f49ae59117ec` |
| 58 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-zero--4dccc551855122c9edc6e236.md) | 306 | `result-track:4dccc551855122c9edc6e2367ec752531df313fa243098b2881c06a481023e9f` |
| 59 | `theorem` | [coe_one](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-one--fd4ed287f0e3c8a219015cda.md) | 310 | `result-track:fd4ed287f0e3c8a219015cda9a0ac161a89cab1976e6a209ff438284199bc11f` |
| 60 | `def` | [subtype](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/subtype--69fe76fe8d82f2f04d864305.md) | 316 | `declaration-track:69fe76fe8d82f2f04d864305fcec7d834e0b0bbbe7fd51c843bad50afbd5a7bb` |
| 61 | `lemma` | [subtype_apply](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/subtype-apply--23cf86606e39ba1d98ff0bc4.md) | 320 | `result-track:23cf86606e39ba1d98ff0bc4975d7e722f0fb401ea7249316ea292a1d1618536` |
| 62 | `lemma` | [subtype_injective](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/subtype-injective--97144c8a17382ff97baa3102.md) | 323 | `result-track:97144c8a17382ff97baa31028abdbbf9c284f19dccfe6a60c3c849333b2eacc5` |
| 63 | `theorem` | [coe_subtype](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-subtype--25f6509ebbadb6ba39c4ae6f.md) | 328 | `result-track:25f6509ebbadb6ba39c4ae6fbbedee0a8040cffb02e9a59bb88fe1c682a8a08c` |
| 64 | `theorem` | [toSubring_subtype_eq_subtype](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/tosubring-subtype-eq-subtype--2bf40c2a6fea656e7b42d7a9.md) | 332 | `result-track:2bf40c2a6fea656e7b42d7a943a775dda1dab7af6406a318343ecca156a523ef` |
| 65 | `theorem` | [mem_toSubmonoid](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/mem-tosubmonoid--8acffcf7ca4eb74d5bddd869.md) | 339 | `result-track:8acffcf7ca4eb74d5bddd869ed1d89ddead4be0a9f50dc42cc0ade431cadca12` |
| 66 | `theorem` | [coe_toSubmonoid](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-tosubmonoid--1d7b98b68332aaaf9811d8a5.md) | 343 | `result-track:1d7b98b68332aaaf9811d8a5696062d0f6df0f58fc623c3059e39c191a76157b` |
| 67 | `theorem` | [mem_toAddSubgroup](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/mem-toaddsubgroup--5bd728f9e20ae23a6d57d11d.md) | 346 | `result-track:5bd728f9e20ae23a6d57d11d28efae2d9792c7269326a4623636c153d33e223d` |
| 68 | `theorem` | [coe_toAddSubgroup](../../../../mathematics/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean/declarations/coe-toaddsubgroup--afcccc9c306eb747f59eb1e4.md) | 350 | `result-track:afcccc9c306eb747f59eb1e49eb5a5ae811865b31a391098b12afbe74df3a761` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
