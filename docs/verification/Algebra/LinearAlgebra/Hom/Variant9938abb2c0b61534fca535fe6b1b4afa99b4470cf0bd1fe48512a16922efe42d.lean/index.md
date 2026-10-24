# Verification target: GRWTSK.Algebra.LinearAlgebra.Hom.Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98773e929e6182918e1dd742f5290b995fd51f6e",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98773e929e6182918e1dd742f5290b995fd51f6e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean.json)

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
| 1 | `structure` | [CoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coalghom--ffa554dca598f83739ecca94.md) | 37 | `declaration-track:ffa554dca598f83739ecca948b95c0a1c45e9a4ef2c3c65d9096f663df48e506` |
| 2 | `class` | [CoalgHomClass](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coalghomclass--29e56ddf3bab0d585cf3c411.md) | 51 | `declaration-track:29e56ddf3bab0d585cf3c4110772310dfc2e7d11ff1400f5af4c46ba330fc157` |
| 3 | `def` | [_root_.CoalgHom.ofClass](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/root-coalghom-ofclass--3a9bdeaba302d6e1b4225c65.md) | 71 | `declaration-track:3a9bdeaba302d6e1b4225c6506f71fc0188029238b10da7ce844f70bfff6438e` |
| 4 | `instance` | [instCoeToCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/instcoetocoalghom--57cabf2d4f0f5cef7c8e486e.md) | 79 | `declaration-track:57cabf2d4f0f5cef7c8e486e765d6c8b4f4fa2a540cce29f0b4f4a3990f31b12` |
| 5 | `theorem` | [counit_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/counit-comp-apply--3e57b2fdb1ebcaa2064c93b5.md) | 82 | `result-track:3e57b2fdb1ebcaa2064c93b502c4d190fb3db15537f5707853f6008d42f890d5` |
| 6 | `theorem` | [map_comp_comul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/map-comp-comul-apply--0195c487a398e3653c836f8e.md) | 86 | `result-track:0195c487a398e3653c836f8e3338948f629c050aaab9582fbbf266258f53d59f` |
| 7 | `instance` | [funLike](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/funlike--70969c0396be55403ec543e2.md) | 103 | `declaration-track:70969c0396be55403ec543e241ad3abe0f3694613555234f2a74b50fdde27fe6` |
| 8 | `instance` | [coalgHomClass](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coalghomclass--40f73150f96ba8b18ee706a6.md) | 110 | `declaration-track:40f73150f96ba8b18ee706a6b50fd841bcd51d4f5d42b0c9f1af7626deb74df6` |
| 9 | `def` | [Simps.apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/simps-apply--b35ca91cceee6358f892628a.md) | 117 | `declaration-track:b35ca91cceee6358f892628ad8a80fa38608c2c74a8cc570b09eeeede6a5d424` |
| 10 | `theorem` | [coe_ofClass](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coe-ofclass--12f760df5334ef704a117ed6.md) | 125 | `result-track:12f760df5334ef704a117ed61511ae2f5b228dbd194afd7d2ed402475d285c3c` |
| 11 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coe-mk--4b69ab6ac08237f6edc219af.md) | 132 | `result-track:4b69ab6ac08237f6edc219af2045855f14cc3e8001529c8d213f028d1169ba83` |
| 12 | `theorem` | [coe_mks](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coe-mks--466f950427a911b1cc2c8412.md) | 136 | `result-track:466f950427a911b1cc2c8412eb47ca5459ad8770e964d98d678096c86ae035d9` |
| 13 | `theorem` | [coe_linearMap_mk](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coe-linearmap-mk--f302ce7f57099069a8b05a1b.md) | 140 | `result-track:f302ce7f57099069a8b05a1bc63a727264a2b79d64a5b18de308109564366f5c` |
| 14 | `theorem` | [toLinearMap_eq_ofClass](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/tolinearmap-eq-ofclass--3eda5717302e0831d874fd4c.md) | 144 | `result-track:3eda5717302e0831d874fd4cecac0edd2e29f2f65eed6fbb5d67a544e9a6a57a` |
| 15 | `theorem` | [coe_linearMapOfClass](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coe-linearmapofclass--debbf4acd6e5b4749454618f.md) | 150 | `result-track:debbf4acd6e5b4749454618f53ba45906c1728c412e7c75185e50c440a240460` |
| 16 | `theorem` | [coe_toAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coe-toaddmonoidhom--16a4d639cfcc3e53137e586e.md) | 156 | `result-track:16a4d639cfcc3e53137e586e4adfb44b9ae8cdfad10c62548d6275eaf969367b` |
| 17 | `theorem` | [coe_injective](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coe-injective--21d5e91aad11d6987629ec9f.md) | 159 | `result-track:21d5e91aad11d6987629ec9f4eccbc2471b10adff2b97545364d99f2ac5c12a5` |
| 18 | `theorem` | [coe_inj](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coe-inj--1f0e69bbe1b2963f4c444d55.md) | 162 | `result-track:1f0e69bbe1b2963f4c444d553429ded8250e9ace3279ac3e3555e8be69f323e2` |
| 19 | `theorem` | [linearMapOfClass_injective](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/linearmapofclass-injective--caa5d421d493495fe94bf0aa.md) | 168 | `result-track:caa5d421d493495fe94bf0aace00b646d951a1f5992354f6e80e496b6783c7ef` |
| 20 | `theorem` | [coe_addMonoidHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coe-addmonoidhom-injective--5837a4597666e04b887772db.md) | 174 | `result-track:5837a4597666e04b887772db45afea57bd4e3d6ed318baeb28337009f787f359` |
| 21 | `theorem` | [congr_fun](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/congr-fun--66fa03a5fe9206f77fc1b97d.md) | 177 | `result-track:66fa03a5fe9206f77fc1b97d52ee891faddc0fce3f6287e8ac21ccf5727e94d2` |
| 22 | `theorem` | [congr_arg](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/congr-arg--ae2edfd36ca53b6807d84dbb.md) | 180 | `result-track:ae2edfd36ca53b6807d84dbb90be04cdc2f335d4e635a70fbbdd2888f81144d9` |
| 23 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/ext--c7e8077d3d6282dc98461d8e.md) | 184 | `result-track:c7e8077d3d6282dc98461d8ec5763fad5fa2225763dc9584db8883deb058a7ca` |
| 24 | `theorem` | [ext_of_ring](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/ext-of-ring--5d7e7e962d11fb8623257a1c.md) | 188 | `result-track:5d7e7e962d11fb8623257a1c8e2816b5147fabf9fcf10efdc6a5a8e8d1798bc4` |
| 25 | `theorem` | [mk_coe](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/mk-coe--c32536851a11427826455b29.md) | 192 | `result-track:c32536851a11427826455b2972918822386d58d7aabf081e2122e6cc26e675ad` |
| 26 | `def` | [copy](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/copy--7e5ca1e4e51af1d2b81629b5.md) | 197 | `declaration-track:7e5ca1e4e51af1d2b81629b5cdb5485bdeafec0c2f1955989855280a3cddb368` |
| 27 | `theorem` | [coe_copy](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coe-copy--e692a56e3b059bdcd70e59b6.md) | 204 | `result-track:e692a56e3b059bdcd70e59b63c50934479517b16c63300f14432bf36606a5456` |
| 28 | `theorem` | [copy_eq](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/copy-eq--2b3daaa531a82c1f5c9ff980.md) | 207 | `result-track:2b3daaa531a82c1f5c9ff9808028fa477ce3c3ec1a04fc1fd9037efcb308cdda` |
| 29 | `def` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/id--0880ed6ec34197d18e32aaf6.md) | 213 | `declaration-track:0880ed6ec34197d18e32aaf69d8c0428efe3b6dcfcf754f6b1737fc52821c53c` |
| 30 | `theorem` | [coe_id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coe-id--97d552258f4291c65b97b091.md) | 221 | `result-track:97d552258f4291c65b97b0914208670f60a5e71d061c640ebe20a89d4336fce0` |
| 31 | `theorem` | [id_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/id-tolinearmap--ad0d750cd213e151f1519aac.md) | 225 | `result-track:ad0d750cd213e151f1519aac5f0e8140fc504ceb316c6037dcbab1a5fe8d8987` |
| 32 | `def` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/comp--2897fcd7d47b89bb87a99f6d.md) | 228 | `declaration-track:2897fcd7d47b89bb87a99f6d1fa27a93a170050a927c0d5f55e3fd40a043ee7f` |
| 33 | `theorem` | [coe_comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/coe-comp--d2804eba4fd755c6cd6ef579.md) | 234 | `result-track:d2804eba4fd755c6cd6ef57975e82c022f36abecceacd8c80f8525febd8c4321` |
| 34 | `theorem` | [comp_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/comp-tolinearmap--884f4eae7dd349dc79812265.md) | 237 | `result-track:884f4eae7dd349dc7981226550cbc632b31cec4e8b0c4fde3ba906903b11864a` |
| 35 | `theorem` | [comp_id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/comp-id--d24bf337056782fbe9aa106f.md) | 243 | `result-track:d24bf337056782fbe9aa106f289826d774cc84bed7f9c9c2046f548aa8189c1b` |
| 36 | `theorem` | [id_comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/id-comp--a39c8b42019938d0182cef17.md) | 247 | `result-track:a39c8b42019938d0182cef1795f718d8b08c58f79be582e73822b5a9632f08ca` |
| 37 | `theorem` | [comp_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/comp-assoc--e4aea08d7df1e1e5e9c2e8bf.md) | 250 | `result-track:e4aea08d7df1e1e5e9c2e8bf8d4e5d2e5e33bcac70d0874e9bd138cf325c8b44` |
| 38 | `theorem` | [map_smul_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/map-smul-of-tower--b57197198196b2f3552d35ef.md) | 254 | `result-track:b57197198196b2f3552d35efe966c11bdc3e82478e32c09d3a19b8a2a74f3499` |
| 39 | `instance` | [End](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/end--b37b781c979c254f4239f5e7.md) | 259 | `declaration-track:b37b781c979c254f4239f5e702d2a1581ecd3dc5704bc04c1aca5ef566c96cf7` |
| 40 | `theorem` | [one_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/one-apply--84abcff741329a50fb9a0acb.md) | 267 | `result-track:84abcff741329a50fb9a0acb5f2e5ce95b9fe5a94d2ff03263bcfc297fa66f0f` |
| 41 | `theorem` | [mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/mul-apply--540ff27623c03557f2867cac.md) | 271 | `result-track:540ff27623c03557f2867cacc6d87f307b4fe7661716985127588c9257a39251` |
| 42 | `def` | [counitCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/counitcoalghom--7a033192a1388f373397787b.md) | 286 | `declaration-track:7a033192a1388f373397787be25803a0b453891f4bc007a1ce3f2e765ca4760d` |
| 43 | `theorem` | [counitCoalgHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/counitcoalghom-apply--6fa5318ce829bb076f6a9667.md) | 295 | `result-track:6fa5318ce829bb076f6a9667ecb042cfd5fc384c2522428c06b6b5b5bbbbccca` |
| 44 | `theorem` | [counitCoalgHom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/counitcoalghom-tolinearmap--2dffbc9ed5c6aa8797d2a4f4.md) | 299 | `result-track:2dffbc9ed5c6aa8797d2a4f4580f1d90dda3fc6356ebec686224fdac9a7519e5` |
| 45 | `instance` | [subsingleton_to_ring](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/subsingleton-to-ring--e69ab66abc7f5b875ad66f2d.md) | 304 | `declaration-track:e69ab66abc7f5b875ad66f2ddf3b1daf0de945d8d8e629a4832b28ec9e222a3f` |
| 46 | `theorem` | [ext_to_ring](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/ext-to-ring--755853759b4fd877f3af9c5f.md) | 311 | `result-track:755853759b4fd877f3af9c5f21fbd6616c208311eaee4b37a61e526b2c6c5a63` |
| 47 | `def` | [Repr.induced](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.lean/declarations/repr-induced--9b4f7357e69ee52d5b9166dd.md) | 318 | `declaration-track:9b4f7357e69ee52d5b9166dd3cf74e83be866a1ec3f4fedb89f532f1f39b0306` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
