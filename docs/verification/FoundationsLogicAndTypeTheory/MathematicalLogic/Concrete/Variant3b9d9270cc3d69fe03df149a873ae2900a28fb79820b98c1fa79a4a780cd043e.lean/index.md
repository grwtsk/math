# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Concrete.Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06b8bae76257c7caee1081235525ebd26450cdc6",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06b8bae76257c7caee1081235525ebd26450cdc6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Cycle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.List` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [formPerm_disjoint_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/formperm-disjoint-iff--859153e2cc9b9b58e10c4d15.md) | 62 | `result-track:859153e2cc9b9b58e10c4d15b217b672dbe60ce40766572459c86e57d1409f94` |
| 2 | `theorem` | [isCycle_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/iscycle-formperm--1dad01b9bbb8ed790ee599b7.md) | 76 | `result-track:1dad01b9bbb8ed790ee599b7ac349130709de3a9652e41642a6bd8f31aa23b4f` |
| 3 | `theorem` | [pairwise_sameCycle_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/pairwise-samecycle-formperm--841798d622f5267f4d1623b4.md) | 90 | `result-track:841798d622f5267f4d1623b4e3838b573cd1f891a3231ab4bff5324c2910c27a` |
| 4 | `theorem` | [cycleOf_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/cycleof-formperm--87c7430c711864666328647e.md) | 97 | `result-track:87c7430c711864666328647e0899778bedf9c7a2c5fdfa47c4953db49ef6b4f4` |
| 5 | `theorem` | [cycleType_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/cycletype-formperm--da664055350f469b8c4df54c.md) | 104 | `result-track:da664055350f469b8c4df54cff2a7ea03f394e0d2f39a3fde462bdf10042dd0b` |
| 6 | `theorem` | [formPerm_apply_mem_eq_next](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/formperm-apply-mem-eq-next--88b637e29c3f0c7d3a922a20.md) | 118 | `result-track:88b637e29c3f0c7d3a922a20395be2a7e229e119d65b60060c8a652655c179a3` |
| 7 | `def` | [formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/formperm--581a7bc2837329bebab67afe.md) | 132 | `declaration-track:581a7bc2837329bebab67afe5b838f0729bfa7abb6b7ca1a6b17704d60ff7127` |
| 8 | `theorem` | [formPerm_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/formperm-coe--ddebe76ba84a908c39631b4c.md) | 141 | `result-track:ddebe76ba84a908c39631b4cd26e5402c3e612234f1bf2a6c1b4c6897254e22d` |
| 9 | `theorem` | [formPerm_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/formperm-subsingleton--382ce047c148ea0f558c4ba9.md) | 144 | `result-track:382ce047c148ea0f558c4ba911cf9ca82f18bbbc1cce0028eb5c9698b4af7f08` |
| 10 | `theorem` | [isCycle_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/iscycle-formperm--a23d27e0325316daef3043b2.md) | 153 | `result-track:a23d27e0325316daef3043b2ecd2e1f356c4a434c2d7022c82936a34617c5e36` |
| 11 | `theorem` | [support_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/support-formperm--282f03853805ffb5f5e2731d.md) | 158 | `result-track:282f03853805ffb5f5e2731db4c8f15121453185b6ac8e67d14c12cb46fc108d` |
| 12 | `theorem` | [formPerm_eq_self_of_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/formperm-eq-self-of-notmem--12b2406e96d3b07dd1ee30c1.md) | 165 | `result-track:12b2406e96d3b07dd1ee30c1f994e4100769141882a2b099e58a82b36d7fef6b` |
| 13 | `theorem` | [formPerm_apply_mem_eq_next](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/formperm-apply-mem-eq-next--0edb915bfe053fb98e589956.md) | 173 | `result-track:0edb915bfe053fb98e589956cf9a6866812fa18a437f5ca3556c9fcbb8deae5a` |
| 14 | `theorem` | [formPerm_reverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/formperm-reverse--65c9498f92b09d32451f07fc.md) | 178 | `result-track:65c9498f92b09d32451f07fc6d91550e8db96de73fcb91e69340d97b4908eff3` |
| 15 | `theorem` | [formPerm_eq_formPerm_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/formperm-eq-formperm-iff--62f581927b42936af2d3223c.md) | 183 | `result-track:62f581927b42936af2d3223cab95bb3eb6a41bada226e32f6beaa38960d99e31` |
| 16 | `def` | [toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/tolist--c1202aad4864ccc2a178b9cc.md) | 204 | `declaration-track:c1202aad4864ccc2a178b9ccca0293bec6ae7a13bc84e0cb6c2a64bd3ef444b7` |
| 17 | `theorem` | [toList_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/tolist-one--4ac70351a7b0c0207801374d.md) | 208 | `result-track:4ac70351a7b0c0207801374dfc12f718d8d418b20b1654a11ff4c2636ee89cea` |
| 18 | `theorem` | [toList_eq_nil_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/tolist-eq-nil-iff--f4a69d186affbe3f23bf1daf.md) | 211 | `result-track:f4a69d186affbe3f23bf1daf7bd5479544718545bf8811a4026766190b9dce0c` |
| 19 | `theorem` | [length_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/length-tolist--366e318aabe4cc600a73dbda.md) | 214 | `result-track:366e318aabe4cc600a73dbda0b0d7338d4e75ee01d7819b47d86b4494c598ff7` |
| 20 | `theorem` | [toList_ne_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/tolist-ne-singleton--96677704a4b6a844df3694a1.md) | 216 | `result-track:96677704a4b6a844df3694a136c8cd1c04d12c58e94c10317d93c4e3d414494c` |
| 21 | `theorem` | [two_le_length_toList_iff_mem_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/two-le-length-tolist-iff-mem-support--ec737463272384feebc73666.md) | 220 | `result-track:ec737463272384feebc73666c1f641a2daba41ccf64805bc80aea977e4ecf314` |
| 22 | `theorem` | [length_toList_pos_of_mem_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/length-tolist-pos-of-mem-support--bb37185d4d71434439815240.md) | 223 | `result-track:bb37185d4d71434439815240fa0512af646efe69bd4afcac114a7d7c0e9af427` |
| 23 | `theorem` | [getElem_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/getelem-tolist--d2d68e00ef201d7e34a29856.md) | 226 | `result-track:d2d68e00ef201d7e34a298562eef1704b6765e10c3cd86db78db66d1e98fe9b7` |
| 24 | `theorem` | [get_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/get-tolist--d51b69ceaa8738818c2a8df1.md) | 230 | `result-track:d51b69ceaa8738818c2a8df115c32a7f99897e63805ad6713415d377571f5101` |
| 25 | `theorem` | [toList_getElem_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/tolist-getelem-zero--a213e7925c952612b62b07cd.md) | 233 | `result-track:a213e7925c952612b62b07cd839052dab038ad88ffd16f8c8d455a7a2ef7a0f8` |
| 26 | `theorem` | [toList_get_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/tolist-get-zero--47c966dba679efe23e9fe203.md) | 237 | `result-track:47c966dba679efe23e9fe203aee6f962f5a194b1baaf30f63d8a6ca55004eca5` |
| 27 | `theorem` | [mem_toList_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/mem-tolist-iff--a5ce5bfeddb7149fa117a867.md) | 242 | `result-track:a5ce5bfeddb7149fa117a867e945e2631175423294633bb4f1c4c033cfc99a37` |
| 28 | `theorem` | [nodup_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/nodup-tolist--e6442c6c1cc350a0da8128b3.md) | 253 | `result-track:e6442c6c1cc350a0da8128b36ac8a438a31f1ce859a4d6849171ca11927ae4d6` |
| 29 | `theorem` | [next_toList_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/next-tolist-eq-apply--47befd915d5a62ad2f4d07fe.md) | 286 | `result-track:47befd915d5a62ad2f4d07fed8fed124b6971b1f148f7fc2bc3c748e9486e8fa` |
| 30 | `theorem` | [toList_pow_apply_eq_rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/tolist-pow-apply-eq-rotate--9f1bd006ed95d481b999258a.md) | 297 | `result-track:9f1bd006ed95d481b999258ae900899b0f44b8d8154b099b4d6f862d31b70db8` |
| 31 | `theorem` | [SameCycle.toList_isRotated](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/samecycle-tolist-isrotated--1d0d7e41588e4972dd3b70a7.md) | 305 | `result-track:1d0d7e41588e4972dd3b70a7c0032e425da8a5fb8446c4551c91efb62582701e` |
| 32 | `theorem` | [pow_apply_mem_toList_iff_mem_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/pow-apply-mem-tolist-iff-mem-support--35897542a018576de5d3b4ee.md) | 317 | `result-track:35897542a018576de5d3b4ee4df006339419256e63d166a2a2aeb34b46c91800` |
| 33 | `theorem` | [toList_formPerm_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/tolist-formperm-nil--cd01f706904ceb7991832764.md) | 322 | `result-track:cd01f706904ceb79918327643f2ed80786d48599f5fb7ccbcfba8bac6aa586ea` |
| 34 | `theorem` | [toList_formPerm_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/tolist-formperm-singleton--9fc424ba82c11f1ef9683e8c.md) | 324 | `result-track:9fc424ba82c11f1ef9683e8c93627fcc4ad15e43141f8d7b688bdf532d7e054a` |
| 35 | `theorem` | [toList_formPerm_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/tolist-formperm-nontrivial--0446dd038b7a3b8e6e3dbc3c.md) | 326 | `result-track:0446dd038b7a3b8e6e3dbc3c3d23db9d4ba7787a79503c815cb5905e1cebe7a4` |
| 36 | `theorem` | [toList_formPerm_isRotated_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/tolist-formperm-isrotated-self--dc6f95500fbf5e89acf61603.md) | 339 | `result-track:dc6f95500fbf5e89acf61603adcde59aa1ecc51c4616476fe25e3fb574202902` |
| 37 | `theorem` | [formPerm_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/formperm-tolist--dfd39edebd7bfeb8644817f8.md) | 351 | `result-track:dfd39edebd7bfeb8644817f81747487d20c62b2d897265ec3b9b7ffd407345c3` |
| 38 | `def` | [toCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/tocycle--48628b10f4f80adc6283e920.md) | 370 | `declaration-track:48628b10f4f80adc6283e920a6ffff070c3a23823f463604f0dc449ab612ec4d` |
| 39 | `theorem` | [toCycle_eq_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/tocycle-eq-tolist--552a14cec8e7b7e69b693ddf.md) | 380 | `result-track:552a14cec8e7b7e69b693ddf50d8087306cc94d0cebb8bcd3861a3dbd6db0a32` |
| 40 | `theorem` | [nodup_toCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/nodup-tocycle--2ebb42ece10dc64341763ff0.md) | 386 | `result-track:2ebb42ece10dc64341763ff0b9e7b5db430b4fbfc6c8b462f2df727c503b7a77` |
| 41 | `theorem` | [nontrivial_toCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/nontrivial-tocycle--51a7afecdbc7805b31988afa.md) | 390 | `result-track:51a7afecdbc7805b31988afa31913949eae00e69c0474b3cc69521f129028081` |
| 42 | `def` | [isoCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/isocycle--82bcdd8132af561fbc40aedc.md) | 398 | `declaration-track:82bcdd8132af561fbc40aedce69baedb5123bb7b72d1b555d4d9c466c0faead3` |
| 43 | `theorem` | [IsCycle.existsUnique_cycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/iscycle-existsunique-cycle--f963066e5afacb9bb8b7048f.md) | 428 | `result-track:f963066e5afacb9bb8b7048f02679b9b1e1503979e73ad16616aaf3c094144f9` |
| 44 | `theorem` | [IsCycle.existsUnique_cycle_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/iscycle-existsunique-cycle-subtype--24a5fdb4f8ccd3cf69c68ba2.md) | 445 | `result-track:24a5fdb4f8ccd3cf69c68ba2a3224b56867046053932f0f804339bbaf880f91b` |
| 45 | `theorem` | [IsCycle.existsUnique_cycle_nontrivial_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/iscycle-existsunique-cycle-nontrivial-subtype--83f544fbaf8a1a700dd17880.md) | 452 | `result-track:83f544fbaf8a1a700dd178802e12e3d663de2fb3004ef07763ab20740cefafab` |
| 46 | `def` | [isoCycle'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/isocycle--82b1c3694e512411fd55ff70.md) | 473 | `declaration-track:82b1c3694e512411fd55ff701b211c6bc00a2a8e517b8e6ab5558508450b0542` |
| 47 | `instance` | [instRepr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3b9d9270cc3d69fe03df149a873ae2900a28fb79820b98c1fa79a4a780cd043e.lean/declarations/instrepr--c79797e79ad0515ec6e68285.md) | 505 | `declaration-track:c79797e79ad0515ec6e68285691311cff7d74c5dd877f2c5738a7b9281566275` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
