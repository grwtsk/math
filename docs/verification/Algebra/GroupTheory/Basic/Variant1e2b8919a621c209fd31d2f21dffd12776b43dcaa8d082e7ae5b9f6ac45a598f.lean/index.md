# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af782cea4794d830078e28c42f22bc5780063ce9",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af782cea4794d830078e28c42f22bc5780063ce9`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddConstMap](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/addconstmap--044c7d4266ab7154439f4c9f.md) | 50 | `declaration-track:044c7d4266ab7154439f4c9ff2178d5f7d36e70305869585f54fff8f67935ad6` |
| 2 | `class` | [AddConstMapClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/addconstmapclass--7a2713831061cf4d9110b402.md) | 65 | `declaration-track:7a2713831061cf4d9110b402547b06416509b249d43bb0e72e86de4ac2cb9a7a` |
| 3 | `theorem` | [semiconj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/semiconj--69409cf803298a1b72eb025c.md) | 83 | `result-track:69409cf803298a1b72eb025c51f6af92f812dad7ac023ed0954e44c478346869` |
| 4 | `theorem` | [map_add_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-add-nsmul--1a0523e2fac3c590f629d719.md) | 88 | `result-track:1a0523e2fac3c590f629d7193de21970e4d86c37c3f5fd5e703749aca98f0ef9` |
| 5 | `theorem` | [map_add_nat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-add-nat--ff229bea75c10a3f1b0076fb.md) | 93 | `result-track:ff229bea75c10a3f1b0076fb367445db3a97d513ad26abe03089af718cab33c5` |
| 6 | `theorem` | [map_add_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-add-one--2f34a74da0422dded69407fe.md) | 96 | `result-track:2f34a74da0422dded69407fe3ab9083bbeb115aca16a8655a942a4a862c7807d` |
| 7 | `theorem` | [map_add_ofNat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-add-ofnat--259a631fc32b5b4efd8edc7e.md) | 100 | `result-track:259a631fc32b5b4efd8edc7eb1beb5e5ed360d15fa8e97326ca20173f42e68cc` |
| 8 | `theorem` | [map_add_nat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-add-nat--66a0c4e3fb140084ed01843e.md) | 105 | `result-track:66a0c4e3fb140084ed01843e07c0f201fcc8703b7eadafdb08b820194b8276a3` |
| 9 | `theorem` | [map_add_ofNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-add-ofnat--9db3d3146a0148af40845622.md) | 108 | `result-track:9db3d3146a0148af4084562219c5b90740997059358abcdf78cae7a9ba4fbb00` |
| 10 | `theorem` | [map_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-const--c561697b084e5668b3c9a19a.md) | 113 | `result-track:c561697b084e5668b3c9a19a611d1b96be2df9130c3a83df116fd134c9134b61` |
| 11 | `theorem` | [map_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-one--6c348b124f3d23dda5be8e94.md) | 117 | `result-track:6c348b124f3d23dda5be8e94fd5541f4e42a1fc07a549cec43b77a0533ddbfa5` |
| 12 | `theorem` | [map_nsmul_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-nsmul-const--947fec64241c96c4cd7934ff.md) | 122 | `result-track:947fec64241c96c4cd7934ff1d9bca917cde694620ca0b1fbd83150b87864df9` |
| 13 | `theorem` | [map_nat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-nat--866a66ee2be961df38bf00f9.md) | 127 | `result-track:866a66ee2be961df38bf00f9a3ed844454884c57e7e8dc8ca38243ad7148543c` |
| 14 | `theorem` | [map_ofNat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-ofnat--a6f32a4483442f38f94b404c.md) | 131 | `result-track:a6f32a4483442f38f94b404cdcb4b98fde8a219c66c5835a38c5fa6c0e8f6443` |
| 15 | `theorem` | [map_nat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-nat--d2e7837103cd99e854e5157d.md) | 136 | `result-track:d2e7837103cd99e854e5157d9e00c32e69d6a85d59a3204f6ac581a0cdcf4993` |
| 16 | `theorem` | [map_ofNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-ofnat--2c09baa37f9500b1acfd10cd.md) | 139 | `result-track:2c09baa37f9500b1acfd10cdfc99bb75231ca71614ce4b4d4edf0d0ddb45232e` |
| 17 | `theorem` | [map_const_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-const-add--2a42b0e1f6216438531badcc.md) | 144 | `result-track:2a42b0e1f6216438531badcc2ca5c8a1d768bb08709546f813a41bb391e2619d` |
| 18 | `theorem` | [map_one_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-one-add--fc728cda4cc275e7549a1439.md) | 148 | `result-track:fc728cda4cc275e7549a143922437676215c1239d850f3f20dfd8f6835d76ba6` |
| 19 | `theorem` | [map_nsmul_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-nsmul-add--595da4da47bf60efc1cc38d8.md) | 152 | `result-track:595da4da47bf60efc1cc38d8ffe3b1f6a23f72a886642fe1801d49465439bd9a` |
| 20 | `theorem` | [map_nat_add'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-nat-add--6a384a536d9bb758e6f7ae8f.md) | 157 | `result-track:6a384a536d9bb758e6f7ae8f06ea25df8a7d13885e3fbd17882af89a3e1b3099` |
| 21 | `theorem` | [map_ofNat_add'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-ofnat-add--2ee0ea888fcb5c3eb20c3a1a.md) | 161 | `result-track:2ee0ea888fcb5c3eb20c3a1a18db0a08d076573eb9a944629b47b56811982255` |
| 22 | `theorem` | [map_nat_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-nat-add--254f89588d2cc69dc3603d68.md) | 166 | `result-track:254f89588d2cc69dc3603d68dd7d8e02db4e0be1009988598664e824a9aa683e` |
| 23 | `theorem` | [map_ofNat_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-ofnat-add--958df86e20386f270c4bacff.md) | 169 | `result-track:958df86e20386f270c4bacff73ca74a5e3f21084a24e81364e476fbaa6da3f59` |
| 24 | `theorem` | [map_sub_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-sub-nsmul--c98815e0bd38f95f536ecd7a.md) | 175 | `result-track:c98815e0bd38f95f536ecd7a3fc79e6633756e460ceb51c54de467a1f65db901` |
| 25 | `theorem` | [map_sub_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-sub-const--c429cb7ea00a55d2c7a2e690.md) | 180 | `result-track:c429cb7ea00a55d2c7a2e69086e45572bc59be540a9f9e6caec5f38918ca1d08` |
| 26 | `theorem` | [map_sub_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-sub-one--129114cfee2273dc7c907bce.md) | 184 | `result-track:129114cfee2273dc7c907bce07dc22f9a85e14739b1d81a4adc28fc5e710b4c4` |
| 27 | `theorem` | [map_sub_nat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-sub-nat--e0b4157055b4db196eceaf9c.md) | 189 | `result-track:e0b4157055b4db196eceaf9cf61c101f1c198757a31f017fa272f55a17691376` |
| 28 | `theorem` | [map_sub_ofNat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-sub-ofnat--aa37edeaba2f3de1aabdb911.md) | 194 | `result-track:aa37edeaba2f3de1aabdb911b77d280c9860db471fc6495e3978af1e2660ef53` |
| 29 | `theorem` | [map_add_zsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-add-zsmul--41a7ca01d4cfb6d7d8a00995.md) | 200 | `result-track:41a7ca01d4cfb6d7d8a0099518f486a2e4b21ea7e791af6e97520ab1d243fc75` |
| 30 | `theorem` | [map_zsmul_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-zsmul-const--dcaeba94af633e0ef6de60be.md) | 206 | `result-track:dcaeba94af633e0ef6de60beb33b298124313439a8ae50c3f050308b378a3977` |
| 31 | `theorem` | [map_add_int'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-add-int--ab7dc6dc9bce28e50404a54c.md) | 211 | `result-track:ab7dc6dc9bce28e50404a54cdd9acdf37501e41084a8e0aa88fb26db034ebee1` |
| 32 | `theorem` | [map_add_int](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-add-int--339e19ed38267bbc04dce1eb.md) | 215 | `result-track:339e19ed38267bbc04dce1ebd7a4890ec4b75481cf85a50116965e9628e3e523` |
| 33 | `theorem` | [map_sub_zsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-sub-zsmul--530792e96bc5c14a92ee6407.md) | 219 | `result-track:530792e96bc5c14a92ee6407a94a112c95a1c18666e7598e7a64248093c51b91` |
| 34 | `theorem` | [map_sub_int'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-sub-int--a1aa47da371854b76a1fc4f3.md) | 224 | `result-track:a1aa47da371854b76a1fc4f3c100608977dae060578120e7197af314fd95d855` |
| 35 | `theorem` | [map_sub_int](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-sub-int--7bf301a0c7407b5d768940ee.md) | 228 | `result-track:7bf301a0c7407b5d768940ee204af86838028d394996ee8adfd718cdf6e92fcf` |
| 36 | `theorem` | [map_zsmul_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-zsmul-add--f56aadd6b76b1f764641fadc.md) | 232 | `result-track:f56aadd6b76b1f764641fadc2291976169def5f1208a37da66eb12a707611f54` |
| 37 | `theorem` | [map_int_add'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-int-add--886abd5cff380ef31847cdb8.md) | 237 | `result-track:886abd5cff380ef31847cdb8a3f3dea0e768144d302d4e3c161a1f72cfc9da3e` |
| 38 | `theorem` | [map_int_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-int-add--74610620ee5ef593ff40a04c.md) | 241 | `result-track:74610620ee5ef593ff40a04c5a4b2abdec470d179813f96eeb8638170b5b756c` |
| 39 | `theorem` | [map_fract](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/map-fract--25acabb4f5754e6fdd5905d6.md) | 244 | `result-track:25acabb4f5754e6fdd5905d65305c9fd30672a6382747393b60b784f0fbd3e87` |
| 40 | `theorem` | [rel_map_of_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/rel-map-of-icc--2b88e94c6a7b86d57764bb1e.md) | 252 | `result-track:2b88e94c6a7b86d57764bb1ecd29436e806e636c4236c15425f9e4647baf47ad` |
| 41 | `theorem` | [monotone_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/monotone-iff-icc--b72677838dcc0a9bc6705061.md) | 293 | `result-track:b72677838dcc0a9bc670506163454247e2fc37ee0e1c4e1df39d511e8727c0f5` |
| 42 | `theorem` | [antitone_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/antitone-iff-icc--4fb8fa06e0b7127d00dfc467.md) | 300 | `result-track:4fb8fa06e0b7127d00dfc467a35a7bd504e0b18bc23b56e40e4bde510a0f0847` |
| 43 | `theorem` | [strictMono_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/strictmono-iff-icc--f608dc9c4174a6a10d5d58e0.md) | 306 | `result-track:f608dc9c4174a6a10d5d58e0908ee45a8fea7a616f503502b50b1ce712d48cf6` |
| 44 | `theorem` | [strictAnti_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/strictanti-iff-icc--868944f0d308235cc2ad395f.md) | 312 | `result-track:868944f0d308235cc2ad395f5b6eeaddecc6cc685cafbce2386158012e4536a5` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/instance--711d27a9acc4d399fe87a6df.md) | 333 | `declaration-track:711d27a9acc4d399fe87a6df5176d24d02f4b107c558e48d0596780964e46d9b` |
| 46 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/coe-mk--b2b7a0b7da23da8a267b50a6.md) | 337 | `result-track:b2b7a0b7da23da8a267b50a609aeb9603d37602ba5ad25a309e479509405486a` |
| 47 | `theorem` | [mk_coe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/mk-coe--5f32db5292e0784ddf84efd0.md) | 338 | `result-track:5f32db5292e0784ddf84efd06df540352e4c4c94b8e9fdd84080ae4729af6107` |
| 48 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/tofun-eq-coe--75c16667b4eaabab3d76dd97.md) | 339 | `result-track:75c16667b4eaabab3d76dd970deccf14275665934d373370f08466b6b0262be9` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/instance--ffccde1b8e05560909e1310a.md) | 341 | `declaration-track:ffccde1b8e05560909e1310ae80bdcad5137d1d890c363a0811b97ecc28d84aa` |
| 50 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/ext--2e1aae4225e05faa2525f4dc.md) | 344 | `result-track:2e1aae4225e05faa2525f4dceedf6d6a8380b143671e58c30831e8b29e0b7692` |
| 51 | `def` | [id](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/id--d86609de21076f7b8a66474a.md) | 355 | `declaration-track:d86609de21076f7b8a66474aa3b9d9d8743b6e651d00b7dc0a62b9553355ee71` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/instance--efe40f2c85f64e9ec0d53c7c.md) | 357 | `declaration-track:efe40f2c85f64e9ec0d53c7c7c380682e11b5e332a601c31c27512f49ea45c27` |
| 53 | `def` | [comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/comp--5cf0577bf55ef119bf595b48.md) | 361 | `declaration-track:5cf0577bf55ef119bf595b486264f85d030203a5502594dd296f2d0f69be79ec` |
| 54 | `theorem` | [comp_id](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/comp-id--9593c9d2b28a5f32e4798502.md) | 365 | `result-track:9593c9d2b28a5f32e479850250ddd4da29bf75e61f0fb0494372984b866d7392` |
| 55 | `theorem` | [id_comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/id-comp--ce1d6a9ce0106c825a90d057.md) | 366 | `result-track:ce1d6a9ce0106c825a90d0574fec60c4d5b800e0ceea5f381e35ba6012891a60` |
| 56 | `def` | [replaceConsts](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/replaceconsts--3d87484ff9bb4946700f0fdf.md) | 370 | `declaration-track:3d87484ff9bb4946700f0fdf850b599fd10607982d6d57ac63a8fd5b5985dc64` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/instance--f9f2e35f6412df13f2860c67.md) | 380 | `declaration-track:f9f2e35f6412df13f2860c674274977feecceddea36c5c9b0cfe40cb5d15275c` |
| 58 | `theorem` | [coe_vadd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/coe-vadd--91c57193ffc4f2b2155b4b04.md) | 384 | `result-track:91c57193ffc4f2b2155b4b040cf7e0dd3c4b3478ba0c06fc52518d7c22fb8ec9` |
| 59 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/instance--5f0df4c9c79cf4f19c3ed2c6.md) | 388 | `declaration-track:5f0df4c9c79cf4f19c3ed2c602dea7a4f72cee00d4fdcb55c4c73003b32aea3d` |
| 60 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/instance--f9e94852c6e39104ad092823.md) | 396 | `declaration-track:f9e94852c6e39104ad0928232ab4ea698770c0e2ec808e1f67d7bdffd8fcb71d` |
| 61 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/instance--f8470011cc4a317445041ffc.md) | 397 | `declaration-track:f8470011cc4a317445041ffca4a7df0716a4c76beffd875fa076400288d9e1af` |
| 62 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/instance--964f556a50dd3259585971a6.md) | 399 | `declaration-track:964f556a50dd3259585971a61886af4f757767fcd6dc9be5391e4e44bd496fdd` |
| 63 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/instance--a0eeb9d88f73fb809063f041.md) | 402 | `declaration-track:a0eeb9d88f73fb809063f0419f6b1d056cfb036124542b71e58198dbac90630f` |
| 64 | `theorem` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/mul-def--c2b5d6dd900f1ff81b9ac28a.md) | 405 | `result-track:c2b5d6dd900f1ff81b9ac28aa0d3c7c875296cbce7bdf9e316bdb1d1a9910bb5` |
| 65 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/coe-mul--93d3805eca0629f8418c759a.md) | 406 | `result-track:93d3805eca0629f8418c759abbe17d2715d0d95a2cc1f106bd3da7bf0ab9e318` |
| 66 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/one-def--1d9c0a9c7fe4fcd671bbfa03.md) | 408 | `result-track:1d9c0a9c7fe4fcd671bbfa03a6ffa62adc4ec1f6e915565c85472062f76babe4` |
| 67 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/coe-one--4846d370158dc89a344aeffe.md) | 409 | `result-track:4846d370158dc89a344aeffe497933f075154ebfb0026dd4e1229a2dbc7c5919` |
| 68 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/coe-pow--f6c4bd8a40dafa0d1789d0b2.md) | 411 | `result-track:f6c4bd8a40dafa0d1789d0b2eaabc4856791e39ccd77f59f5ae808c58c042cf9` |
| 69 | `theorem` | [pow_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/pow-apply--6e1c2f435b8c907730fae093.md) | 413 | `result-track:6e1c2f435b8c907730fae093bcdfe6abd787b25f80b0572782ec42768632f116` |
| 70 | `def` | [toEnd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/toend--e5d7784d33ab65c5d83770ef.md) | 417 | `declaration-track:e5d7784d33ab65c5d83770ef3dc94120a80a3b90de837c69f2479c644805b000` |
| 71 | `def` | [smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/smul--b14ca78e104b0ef32a4bf56a.md) | 440 | `declaration-track:b14ca78e104b0ef32a4bf56ac675a6fc9a0c8cd03119848b053849d29a030c04` |
| 72 | `def` | [addLeftHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/addlefthom--6171d868388460de5605e3a8.md) | 453 | `declaration-track:6171d868388460de5605e3a8556ba2e6b4cef84148609638234a62d277e76d49` |
| 73 | `def` | [conjNeg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/conjneg--af7aa3442674f2605301f78c.md) | 466 | `declaration-track:af7aa3442674f2605301f78c45f56aa3db7ec5729dea66a7063dbcd605304c2d` |
| 74 | `theorem` | [conjNeg_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/conjneg-symm--8930aad4ce945ff32f1aad1c.md) | 470 | `result-track:8930aad4ce945ff32f1aad1cb6d27f8fe10eb4e13583c4540e64a2a803fdb539` |
| 75 | `def` | [mkFract](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/declarations/mkfract--3ab08238efd1a75edc6d89b7.md) | 480 | `declaration-track:3ab08238efd1a75edc6d89b73c240e8b41a019b3ee70639cf2a3eaa0e12c722f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
