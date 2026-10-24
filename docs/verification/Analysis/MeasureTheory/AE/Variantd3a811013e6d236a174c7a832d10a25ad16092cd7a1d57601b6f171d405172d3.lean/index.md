# Verification target: GRWTSK.Analysis.MeasureTheory.AE.Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf1a04fe1b1353cacaca394e9cc736a55238b108",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf1a04fe1b1353cacaca394e9cc736a55238b108`.

Source path: `GRWTSK/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.OuterMeasure.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ae](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae--f8d92ce27037993747204081.md) | 51 | `declaration-track:f8d92ce2703799374720408122a47bdf09ffa9b4309f91d60859a6d5015310fe` |
| 2 | `theorem` | [mem_ae_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/mem-ae-iff--ad8ba1d009b5955bc26a5f3f.md) | 78 | `result-track:ad8ba1d009b5955bc26a5f3fe20555243eb7c189b18978715980b36b0f8d4640` |
| 3 | `theorem` | [ae_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-iff--6dbb9671dad709614fd93f75.md) | 81 | `result-track:6dbb9671dad709614fd93f754fcdb0a94c4a4ee4e21993ab2ee25e995121160a` |
| 4 | `theorem` | [compl_mem_ae_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/compl-mem-ae-iff--a61e1116773f228e490529e5.md) | 84 | `result-track:a61e1116773f228e490529e5d1c39c3a3b75f74c01356fb4e5c77916bce3de50` |
| 5 | `theorem` | [frequently_ae_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/frequently-ae-iff--711f6052fabf203eb577b585.md) | 86 | `result-track:711f6052fabf203eb577b585663afd478df52df4b9caa056a6a9d154b0a8ac2d` |
| 6 | `theorem` | [frequently_ae_mem_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/frequently-ae-mem-iff--d0c85e20c3f45525caa9ac53.md) | 89 | `result-track:d0c85e20c3f45525caa9ac534a9359abf0fb6f36bebb4b73838690888d5eead4` |
| 7 | `theorem` | [measure_zero_iff_ae_notMem](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/measure-zero-iff-ae-notmem--6f248fd58466c2a7e011020e.md) | 92 | `result-track:6f248fd58466c2a7e011020e82cc6b246cd25b4f851650a9858c93637b99f678` |
| 8 | `theorem` | [ae_of_all](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-of-all--5c78c89195ecf45e5b010a75.md) | 97 | `result-track:5c78c89195ecf45e5b010a75efe706428fc86cb4a8afc41b70f1c007b30de15e` |
| 9 | `instance` | [instCountableInterFilter](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/instcountableinterfilter--f7f850a9f9e0ceaa3aef8f34.md) | 100 | `declaration-track:f7f850a9f9e0ceaa3aef8f347ee9397f982c6c1763abcd7327ea6ea211021e7a` |
| 10 | `theorem` | [ae_all_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-all-iff--506a9280d7906cf69a5de7e0.md) | 103 | `result-track:506a9280d7906cf69a5de7e01bbb2b7470150d0e016deaa6952338a91c333717` |
| 11 | `theorem` | [all_ae_of](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/all-ae-of--69cdf741141148ded334aa62.md) | 107 | `result-track:69cdf741141148ded334aa62d381555b3901cd05df04e4bd3990ff6bc752f7ad` |
| 12 | `lemma` | [ae_iff_of_countable](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-iff-of-countable--f40fdde67b8ba13f58eb2c2f.md) | 111 | `result-track:f40fdde67b8ba13f58eb2c2f0e37fb25e2abdfd43dc676ef0a5f5c62fdcf04bb` |
| 13 | `theorem` | [ae_ball_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-ball-iff--9e701d0c0da3fc041884fe60.md) | 115 | `result-track:9e701d0c0da3fc041884fe60d28d2355820663fe7fe3925659f25b09ed3407f4` |
| 14 | `lemma` | [ae_eq_refl](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-refl--dbc3fd0fc6ec8b188a4bb7e4.md) | 119 | `result-track:dbc3fd0fc6ec8b188a4bb7e4a01a7b4e4ac566c3be04750c05ede0d2c1004aad` |
| 15 | `lemma` | [ae_eq_rfl](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-rfl--02524627f8d022978af381d3.md) | 120 | `result-track:02524627f8d022978af381d36ce92c74002d53ecb21f12c84bcef52d1a76bdb3` |
| 16 | `lemma` | [ae_eq_comm](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-comm--0adf01afc42d25594796af24.md) | 121 | `result-track:0adf01afc42d25594796af246d1ba2cf61fb145d2c4746a501fca89b764cec59` |
| 17 | `theorem` | [ae_eq_symm](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-symm--0c7a0e0d8cf75784778067fe.md) | 123 | `result-track:0c7a0e0d8cf75784778067fe32b33de8c107e42c0010be150e2eba0e0ab8e48f` |
| 18 | `theorem` | [ae_eq_trans](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-trans--d5c99506f10ceecd2367ecd8.md) | 126 | `result-track:d5c99506f10ceecd2367ecd83813ff75403a78160711c42577f76d343db6d1b9` |
| 19 | `lemma` | [ae_eq_top](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-top--063e971712e645eeb1fa68a2.md) | 129 | `result-track:063e971712e645eeb1fa68a2bac1a1d3d9620bbe72096e1dcc251a03d1aa599f` |
| 20 | `theorem` | [ae_le_of_ae_lt](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-le-of-ae-lt--03604c52d17f94f956026167.md) | 138 | `result-track:03604c52d17f94f956026167ed7a1c78af39b1fcac185a69e5db97396cde1bff` |
| 21 | `theorem` | [ae_eq_empty](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-empty--ef06ff1af4b1e05245d80857.md) | 143 | `result-track:ef06ff1af4b1e05245d8085725e661a58c3d2fe24eb09ff0f88286ba1ebd4bab` |
| 22 | `theorem` | [ae_eq_univ](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-univ--2bbc8285ff3b1cb50dc221f0.md) | 148 | `result-track:2bbc8285ff3b1cb50dc221f0ff0434c04f443a0a71fdccfde840a12bfdd90283` |
| 23 | `theorem` | [ae_le_set](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-le-set--ef9b1e5e2db5b5f5d88cda95.md) | 151 | `result-track:ef9b1e5e2db5b5f5d88cda952aa595d285f517e74f4b7c72f4587369a9b94551` |
| 24 | `theorem` | [ae_le_set_inter](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-le-set-inter--57dd22d1213422c1b17ed3fb.md) | 156 | `result-track:57dd22d1213422c1b17ed3fb22be35b3d363b8c5d50de34bf9f402f8f32fc2bb` |
| 25 | `theorem` | [ae_le_set_union](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-le-set-union--62da5b3b750dd11da8d30b02.md) | 160 | `result-track:62da5b3b750dd11da8d30b02afba834f78eca78ebeb86e51d73afac9af39543f` |
| 26 | `theorem` | [union_ae_eq_right](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/union-ae-eq-right--8bdcfde2835e16ab0362526e.md) | 164 | `result-track:8bdcfde2835e16ab0362526e33bca24dd6c1c0c294e01e247ccbbc229c2eecb6` |
| 27 | `theorem` | [diff_ae_eq_self](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/diff-ae-eq-self--71d07005d42990b1cf11a1f4.md) | 168 | `result-track:71d07005d42990b1cf11a1f45eb632363241e665d545abf67d625493cdbdb67f` |
| 28 | `theorem` | [diff_null_ae_eq_self](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/diff-null-ae-eq-self--c3d1738580f8e3ab2524c7d2.md) | 172 | `result-track:c3d1738580f8e3ab2524c7d2120e182f8f2f041ea4860dd6927678e1b5107fce` |
| 29 | `theorem` | [ae_eq_set](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-set--28489bd46ef791e2add52208.md) | 175 | `result-track:28489bd46ef791e2add522082ee0e5ce61d1156e845819f910e75d6f307f2522` |
| 30 | `theorem` | [measure_symmDiff_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/measure-symmdiff-eq-zero-iff--1c592cd26b1aa4e992b1a8f6.md) | 180 | `result-track:1c592cd26b1aa4e992b1a8f6756c2eb0d4c64bee18030e02bcd4997857a69e38` |
| 31 | `theorem` | [ae_eq_set_compl_compl](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-set-compl-compl--180d014315bae78be5861552.md) | 184 | `result-track:180d014315bae78be586155259923acc5c8ad90febcdea15fc9a7fa3f07389d0` |
| 32 | `theorem` | [ae_eq_set_compl](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-set-compl--c35b8ca3c03151fe63457e4a.md) | 187 | `result-track:c35b8ca3c03151fe63457e4adb55b13dcdb341f89922be641cc3f8ba4c44edc9` |
| 33 | `theorem` | [ae_eq_set_inter](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-set-inter--a9d612b5e8d3c6e78e5bd674.md) | 190 | `result-track:a9d612b5e8d3c6e78e5bd6742d3e855d9ee0784c9e58a1c5015df15c4d33ad46` |
| 34 | `theorem` | [ae_eq_set_union](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-set-union--d308753991ec20fade67f399.md) | 194 | `result-track:d308753991ec20fade67f3997537a552f436a09685d1728e0fda448f78ef2da7` |
| 35 | `theorem` | [ae_eq_set_diff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-set-diff--a16eb17c39d2a9f3d5f63dd8.md) | 198 | `result-track:a16eb17c39d2a9f3d5f63dd8c2b3c7536dc38f1b3e95e4b40e240fe79c7fd158` |
| 36 | `theorem` | [ae_eq_set_symmDiff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/ae-eq-set-symmdiff--e86536cf32688d8a42f65613.md) | 203 | `result-track:e86536cf32688d8a42f65613b679a3daf21208751c60e66dca0553878d6fa147` |
| 37 | `theorem` | [union_ae_eq_univ_of_ae_eq_univ_left](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/union-ae-eq-univ-of-ae-eq-univ-left--100f17d921ffd4ca0ad98b25.md) | 207 | `result-track:100f17d921ffd4ca0ad98b2566e484301db67d42f1368b4578790ff57fff9237` |
| 38 | `theorem` | [union_ae_eq_univ_of_ae_eq_univ_right](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/union-ae-eq-univ-of-ae-eq-univ-right--287b5a9b620b3f2c82d311c8.md) | 210 | `result-track:287b5a9b620b3f2c82d311c8a9f16616bc057fc1969f9d35a78ec0d45dc026bd` |
| 39 | `theorem` | [union_ae_eq_right_of_ae_eq_empty](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/union-ae-eq-right-of-ae-eq-empty--5cbe71cdcdd98ba46eeeeb58.md) | 214 | `result-track:5cbe71cdcdd98ba46eeeeb58741b23f5d24cc21e6ecbbc5b3cb92cf8a5eeb98b` |
| 40 | `theorem` | [union_ae_eq_left_of_ae_eq_empty](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/union-ae-eq-left-of-ae-eq-empty--54032efaa6fef65c18183541.md) | 218 | `result-track:54032efaa6fef65c181835413a0ea4bf47cfbf034f1a5a8f7417dd6a74a52c7a` |
| 41 | `theorem` | [inter_ae_eq_right_of_ae_eq_univ](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/inter-ae-eq-right-of-ae-eq-univ--32e1740d7e05ec47b316c07e.md) | 222 | `result-track:32e1740d7e05ec47b316c07e49cd4138105bebcad1e3e3440292d9b49c61a6bd` |
| 42 | `theorem` | [inter_ae_eq_left_of_ae_eq_univ](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/inter-ae-eq-left-of-ae-eq-univ--e64d2dbeaafec056866aa6e2.md) | 226 | `result-track:e64d2dbeaafec056866aa6e2f4e100f55171becb686286ce068c28dac5cb04ff` |
| 43 | `theorem` | [inter_ae_eq_empty_of_ae_eq_empty_left](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/inter-ae-eq-empty-of-ae-eq-empty-left--d5a9963c43c5523a5ae319f2.md) | 230 | `result-track:d5a9963c43c5523a5ae319f24cce7ae0a76a1444e1aeea86996ca83f5b9e12a6` |
| 44 | `theorem` | [inter_ae_eq_empty_of_ae_eq_empty_right](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/inter-ae-eq-empty-of-ae-eq-empty-right--8d24012527490bf42caee380.md) | 235 | `result-track:8d24012527490bf42caee3805cddfc551af34278e45cb93c7cc76b165f93799e` |
| 45 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Ae.Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.Set.mulIndicator_ae_eq_one](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/root-grwtsk-analysis-measuretheory-ae-variant4268b197e092c8db090343d1b10--a4ba521080dc8d7db5be2e0f.md) | 241 | `result-track:a4ba521080dc8d7db5be2e0f8e2b870ab82e4246b471604957972bc69767b515` |
| 46 | `theorem` | [measure_mono_ae](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/measure-mono-ae--7851d1d62f043d5525c76672.md) | 247 | `result-track:7851d1d62f043d5525c76672c28f871a8a02c92955379ffe502397444de1697b` |
| 47 | `theorem` | [measure_congr](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/measure-congr--8500f8ff5dc5f0c2903a83ed.md) | 257 | `result-track:8500f8ff5dc5f0c2903a83ed0705b6d0f4f31e628ec850aeef8fc0da9c3b180e` |
| 48 | `theorem` | [measure_mono_null_ae](../../../../../mathematics/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/declarations/measure-mono-null-ae--12e06f868448a729ee59a8b7.md) | 262 | `result-track:12e06f868448a729ee59a8b7137f168afdecade22176a237e48dd99c331f2f8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
