# Verification target: GRWTSK.Algebra.Defs.Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "912698c655099b94a3202fe791cfa38d609ca8c2",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `912698c655099b94a3202fe791cfa38d609ca8c2`.

Source path: `GRWTSK/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean.json)

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
| 1 | `class` | [SubfieldClass](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/subfieldclass--059c88cad9ad5a154cada655.md) | 57 | `declaration-track:059c88cad9ad5a154cada6553c72ebb7f1b3b8638fda794582dadb9bef52816d` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/instance--1d7e6bc2c12ccee78eda71b6.md) | 70 | `declaration-track:1d7e6bc2c12ccee78eda71b66a060dac4b6ab8ad0b3d5f67dbab73fe3362806d` |
| 3 | `lemma` | [nnratCast_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/nnratcast-mem--c57e53f47a070ad94596ba6e.md) | 76 | `result-track:c57e53f47a070ad94596ba6e21482ce012db614579a4300bf76cc9103f4f0269` |
| 4 | `lemma` | [ratCast_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/ratcast-mem--cdff4640964fbccc370170f7.md) | 80 | `result-track:cdff4640964fbccc370170f7911947c1bbcd02bf00bddc9d62bee55ddcd52e84` |
| 5 | `instance` | [instNNRatCast](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/instnnratcast--ade0f06d21f4cf928294bf48.md) | 83 | `declaration-track:ade0f06d21f4cf928294bf482c0480f3184e7e8f1ee9e47b978352c9c292d807` |
| 6 | `instance` | [instRatCast](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/instratcast--77c4cc6ed09e00c81b4797dc.md) | 84 | `declaration-track:77c4cc6ed09e00c81b4797dcbdbd6180edd7ab6c88df31ee6888ddf450716beb` |
| 7 | `lemma` | [coe_nnratCast](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-nnratcast--26ec10844f0aac8122241626.md) | 86 | `result-track:26ec10844f0aac81222416268a01e122476f9fe9751cad83663b47aa927ef64b` |
| 8 | `lemma` | [coe_ratCast](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-ratcast--1b759bbe29a9197e45d3e91f.md) | 87 | `result-track:1b759bbe29a9197e45d3e91fd63da7932fe6f5eb34b32b842113d6323b860e28` |
| 9 | `lemma` | [nnqsmul_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/nnqsmul-mem--aed4166392b21f980879209b.md) | 90 | `result-track:aed4166392b21f980879209b195bf97d8b63140296836f23cbd4c4f1bc6bb543` |
| 10 | `lemma` | [qsmul_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/qsmul-mem--3da7525793efd361ecb1adee.md) | 94 | `result-track:3da7525793efd361ecb1adeea96bbbf0ad148ac188ae70a845a98ec3ae0bcb5d` |
| 11 | `lemma` | [ofScientific_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/ofscientific-mem--9e4141001ca263f5ee435dea.md) | 98 | `result-track:9e4141001ca263f5ee435dea24aeca2d94b063fa885280668f567b8ef55dd11a` |
| 12 | `instance` | [instSMulNNRat](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/instsmulnnrat--d476a7da37915d1f05a97e60.md) | 102 | `declaration-track:d476a7da37915d1f05a97e602b4f93a82a05f44b4cc6820e0f28f468826c3a30` |
| 13 | `instance` | [instSMulRat](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/instsmulrat--fe793dcffcb621f6d25107bb.md) | 103 | `declaration-track:fe793dcffcb621f6d25107bb61958ac479dcd68e3c4200b3e07fd565f030e755` |
| 14 | `lemma` | [coe_nnqsmul](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-nnqsmul--2f1f8602b90236af5c51db97.md) | 105 | `result-track:2f1f8602b90236af5c51db977355abf7849d8343ef2e06c5436f02a463844271` |
| 15 | `lemma` | [coe_qsmul](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-qsmul--30f883e578bbc9d8eba37327.md) | 106 | `result-track:30f883e578bbc9d8eba37327a6a721761d98af06e0723182007bba4729c3df29` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/instance--32d5b5439b943b738ff331d5.md) | 109 | `declaration-track:32d5b5439b943b738ff331d51f57900798bf27030a0ffce976fc7f6201c57180` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/instance--f227de77ac4677f38569e420.md) | 118 | `declaration-track:f227de77ac4677f38569e42072b49ce9df65562bb77c97f3cbebe47e653fdea2` |
| 18 | `structure` | [Subfield](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/subfield--eddac088109e00c592c3ae0c.md) | 132 | `declaration-track:eddac088109e00c592c3ae0c1288d464b3c9d3c8ef141527f745dd23a9134d9d` |
| 19 | `def` | [toAddSubgroup](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/toaddsubgroup--0d827b2f4256e47ae6f95651.md) | 143 | `declaration-track:0d827b2f4256e47ae6f956511efa2c99bb6fb943410864783c46c770ab9254b7` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/instance--8b55a222766bdbc2ddf18376.md) | 146 | `declaration-track:8b55a222766bdbc2ddf18376312520649ba1c93a4eeb999bd366bdda7096b640` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/instance--eae378a54e494349089d6b7d.md) | 150 | `declaration-track:eae378a54e494349089d6b7d3ec06f95fe7eb3d338a325c93cdeb9790b07d296` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/instance--b779b3fc0d57a3a8f994156e.md) | 152 | `declaration-track:b779b3fc0d57a3a8f994156e5f95f1c7c8fae3ade18756f3b674b849ec8262cc` |
| 23 | `theorem` | [mem_carrier](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/mem-carrier--17ac632fc735411badbf86f2.md) | 160 | `result-track:17ac632fc735411badbf86f2a54bf6bdfbab7c48e725c747c285e2641bd3edfb` |
| 24 | `theorem` | [mem_mk](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/mem-mk--c6e76e5da00c8857fb5c5fe5.md) | 164 | `result-track:c6e76e5da00c8857fb5c5fe5d826c73e5de3f88177d0a01304c10ebc0a1251d2` |
| 25 | `theorem` | [coe_set_mk](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-set-mk--17520f8fe843b3530fa5f556.md) | 168 | `result-track:17520f8fe843b3530fa5f55645ffa686fc0cc454672c69ab3c13ce69bdefbb65` |
| 26 | `theorem` | [mk_le_mk](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/mk-le-mk--0eba6a449d0f7f7db2bf5ba5.md) | 172 | `result-track:0eba6a449d0f7f7db2bf5ba54cb6769117c1365ae0a3bd84e141cd992ae0a4cd` |
| 27 | `theorem` | [ext](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/ext--d700c736291cc0e38b898fdf.md) | 178 | `result-track:d700c736291cc0e38b898fdff23d4d27afd0640c09c6a5e3e1e4b35c090d8c86` |
| 28 | `def` | [copy](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/copy--c15411a1d269e6096dc5fb80.md) | 183 | `declaration-track:c15411a1d269e6096dc5fb8055a4c5a43a637002b7930ebe2ae6f6c9c8937f54` |
| 29 | `theorem` | [coe_copy](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-copy--f71aa288301f87227357b639.md) | 189 | `result-track:f71aa288301f87227357b63974642f6f056dd52545dc78583080ed553680d8be` |
| 30 | `theorem` | [copy_eq](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/copy-eq--81188b35f295ca7568c95a23.md) | 192 | `result-track:81188b35f295ca7568c95a238568765b6745a786766307165a9ce0f8e1006040` |
| 31 | `theorem` | [coe_toSubring](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-tosubring--e397c8f08d440ed963a15121.md) | 196 | `result-track:e397c8f08d440ed963a15121669fae4e135668d9acc057f0204432483e8e54ce` |
| 32 | `theorem` | [mem_toSubring](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/mem-tosubring--69fca29ad5ff9fbfc77931e0.md) | 200 | `result-track:69fca29ad5ff9fbfc77931e013260b52acb61eb35aa68ae324ad9d27fc990cb8` |
| 33 | `def` | [Subring.toSubfield](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/subring-tosubfield--c41d366328e2c15c033a4939.md) | 206 | `declaration-track:c41d366328e2c15c033a4939943b49e9fb55365ece618247b4244712a854a01a` |
| 34 | `theorem` | [one_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/one-mem--419d306f538c0d4e8a194518.md) | 216 | `result-track:419d306f538c0d4e8a1945183ef44226be99528f71cba8877beea8a87e65d90f` |
| 35 | `theorem` | [zero_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/zero-mem--5f1efb851a90886626d3c330.md) | 220 | `result-track:5f1efb851a90886626d3c330259f7749e186103a6257b5df6046509e0105128c` |
| 36 | `theorem` | [mul_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/mul-mem--d3e274b9ba5daf352fe2e42c.md) | 224 | `result-track:d3e274b9ba5daf352fe2e42cfa6585a6d15be37bf8476f9eb7089514625e7faa` |
| 37 | `theorem` | [add_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/add-mem--c430ea501ca624a68ccd1f24.md) | 228 | `result-track:c430ea501ca624a68ccd1f2451d8c14fcc0fcdf395521969f1ab20774cf490e8` |
| 38 | `theorem` | [neg_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/neg-mem--b3970129031911dbe8878801.md) | 232 | `result-track:b3970129031911dbe8878801b3f23bff2d889001671561699b95202d223797c7` |
| 39 | `theorem` | [sub_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/sub-mem--e0a0a8ff77b97c28b966dbf5.md) | 236 | `result-track:e0a0a8ff77b97c28b966dbf5478f03667190931f60628aba6aa8dd3c5707fc84` |
| 40 | `theorem` | [inv_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/inv-mem--3fbb3c6ddaaccbd653ba1f09.md) | 240 | `result-track:3fbb3c6ddaaccbd653ba1f094ba5274b184661467bfe6f5bff058e2433709858` |
| 41 | `theorem` | [div_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/div-mem--676244c0981a35038a5d031a.md) | 244 | `result-track:676244c0981a35038a5d031aaa522bbcfb89efe1f4149836473d91ac416c50e8` |
| 42 | `theorem` | [pow_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/pow-mem--ba57f699b61fe417a10b5da1.md) | 247 | `result-track:ba57f699b61fe417a10b5da1824fc3ac6a941728f1e01412f5ab12b77c590303` |
| 43 | `theorem` | [zsmul_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/zsmul-mem--87d2157beb1b7eaa8433991f.md) | 250 | `result-track:87d2157beb1b7eaa8433991f84b308a568da5b688a2d79889a6439166b45a6fd` |
| 44 | `theorem` | [intCast_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/intcast-mem--23b551f7a4a0ce3d1f2da7d0.md) | 253 | `result-track:23b551f7a4a0ce3d1f2da7d0b112f76876b96ad0eae490f5d1e048e780b9a0f6` |
| 45 | `theorem` | [zpow_mem](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/zpow-mem--cbee54f56e625136064873c4.md) | 255 | `result-track:cbee54f56e625136064873c4478bf544b22ce6283f127d46c87112ba9e9c1269` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/instance--59f702d03515d2cab5a84ef5.md) | 257 | `declaration-track:59f702d03515d2cab5a84ef51e1f3ad41e180ab0f971e9c9d10c5bc58329aeb2` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/instance--99421951eb6860796b8c8513.md) | 260 | `declaration-track:99421951eb6860796b8c85135273f49142b1bfc11664ac0fb4e937c7fb1050e6` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/instance--aa2f300c8729f358ce349a3d.md) | 263 | `declaration-track:aa2f300c8729f358ce349a3d6c28bb57ed2ad580b2e593a89fbeb788950c8c99` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/instance--2decd3117f8e853418a2cb98.md) | 266 | `declaration-track:2decd3117f8e853418a2cb981f5f52c17f319816275303d09aa5ec0f75f7a632` |
| 50 | `instance` | [toDivisionRing](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/todivisionring--c61fecc133bf97eb806a5d4b.md) | 269 | `declaration-track:c61fecc133bf97eb806a5d4ba032604d3e3d2016f5805809a8d6d2386ea4b913` |
| 51 | `instance` | [toField](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/tofield--b51414479bf039423dcb3818.md) | 271 | `declaration-track:b51414479bf039423dcb381808b54da1361e89cbea495ede1ba44141c2dee834` |
| 52 | `theorem` | [coe_add](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-add--40a5a78e1b71fcf5e15af7a9.md) | 274 | `result-track:40a5a78e1b71fcf5e15af7a97cc2b9fdbe307f0a0327fe63523d762e563604d0` |
| 53 | `theorem` | [coe_sub](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-sub--5a8d690eb87acd11fcd8541a.md) | 278 | `result-track:5a8d690eb87acd11fcd8541a19039f637d8c24641c16c9f3fca32a7a8a46e053` |
| 54 | `theorem` | [coe_neg](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-neg--228c7b236552c48105c4dcc4.md) | 282 | `result-track:228c7b236552c48105c4dcc4c0ad7b85f693657c879f6eefd4e5d804903fbf43` |
| 55 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-mul--297194611bf3524e72e5f238.md) | 286 | `result-track:297194611bf3524e72e5f238dffb8007ef4cc6cfb608d467ba8d86dbbcfbbe35` |
| 56 | `theorem` | [coe_div](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-div--fde71bd7f301e2e55463e448.md) | 290 | `result-track:fde71bd7f301e2e55463e448756e41c4439589f1d948d01b4595e5acd92ffc2f` |
| 57 | `theorem` | [coe_inv](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-inv--0caa6d0c867e803a711f9fea.md) | 294 | `result-track:0caa6d0c867e803a711f9feab1bf2143bc4c0d60dcf8a3cee945aeca726555bd` |
| 58 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-zero--49b9c8fa02b92a42e45c81a0.md) | 298 | `result-track:49b9c8fa02b92a42e45c81a0439ce3cbfa4b8d39925b526c57f1bca4bdfd174b` |
| 59 | `theorem` | [coe_one](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-one--e4f641679b3e1686cccf7b5e.md) | 302 | `result-track:e4f641679b3e1686cccf7b5e78605b38cfc86138ecfeffd94fb1a10700023203` |
| 60 | `def` | [subtype](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/subtype--3ba3f807f0d06109f1d4f222.md) | 308 | `declaration-track:3ba3f807f0d06109f1d4f22267a7cf40e28767a1ca005999c1601d8f81d8793f` |
| 61 | `lemma` | [subtype_apply](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/subtype-apply--b193472f53c4e78864184674.md) | 312 | `result-track:b193472f53c4e78864184674d5ca9339e7c7962614d1a4c3047c338cfc7d0844` |
| 62 | `lemma` | [subtype_injective](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/subtype-injective--7ebf2403e0288784e59da357.md) | 315 | `result-track:7ebf2403e0288784e59da3572a99d09cc7711246fe000e00f6c9f582e254f7f2` |
| 63 | `theorem` | [coe_subtype](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-subtype--9ce1bd885e517f76e0f7cb42.md) | 320 | `result-track:9ce1bd885e517f76e0f7cb42a9bc50412117e7c9d2d249736b1c7ed7e04ae80e` |
| 64 | `theorem` | [toSubring_subtype_eq_subtype](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/tosubring-subtype-eq-subtype--55e7a1a1c0eeceb455d3c1a7.md) | 324 | `result-track:55e7a1a1c0eeceb455d3c1a7e8851de0c18e8f30fcfe6c6096010828cff568fb` |
| 65 | `theorem` | [mem_toSubmonoid](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/mem-tosubmonoid--119629dce81812ad27920bab.md) | 331 | `result-track:119629dce81812ad27920bab1bf3acaa97c89de5fdaa096141d28b9a5c8e91e8` |
| 66 | `theorem` | [coe_toSubmonoid](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-tosubmonoid--65b5e61c54d58e0c1a266f20.md) | 335 | `result-track:65b5e61c54d58e0c1a266f200e57e7b42867ced4bf03348dcc21c93cffce7ec5` |
| 67 | `theorem` | [mem_toAddSubgroup](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/mem-toaddsubgroup--0e4609a0f4ec5bd93b9f415b.md) | 338 | `result-track:0e4609a0f4ec5bd93b9f415b4a6a1147c750a124061351daf38449f6cbeeefce` |
| 68 | `theorem` | [coe_toAddSubgroup](../../../../mathematics/Algebra/Defs/Variant94d1dee735e6a589bd284afb88c115186fe57a763f28284e099eb2681383d6b9.lean/declarations/coe-toaddsubgroup--0c4e01c6b403b4e886b689d2.md) | 342 | `result-track:0c4e01c6b403b4e886b689d281d308865673e4d1d097aeede5233abd565c8dae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
