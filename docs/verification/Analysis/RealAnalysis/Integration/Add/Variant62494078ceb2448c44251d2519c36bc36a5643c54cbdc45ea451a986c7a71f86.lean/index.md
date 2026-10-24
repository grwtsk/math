# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Add.Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5cb1e78b786860849dba2df9dc9fd9f8450f213",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5cb1e78b786860849dba2df9dc9fd9f8450f213`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_iSup](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-isup--7807fee504de7611b24ecd58.md) | 38 | `result-track:7807fee504de7611b24ecd58552f8d03ec6c56c8b50c2156ca67e4513f365908` |
| 2 | `theorem` | [lintegral_iSup'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-isup--a767d29d70abd5e637d9bc3f.md) | 100 | `result-track:a767d29d70abd5e637d9bc3f149a659d8aa31acab55128f8d245be3bdac21ab4` |
| 3 | `theorem` | [lintegral_tendsto_of_tendsto_of_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-tendsto-of-tendsto-of-monotone--68197fa46ac387ef25c1a2c2.md) | 117 | `result-track:68197fa46ac387ef25c1a2c22b225fa60e4097f8d44706131f8b02e4e1ddf15a` |
| 4 | `theorem` | [lintegral_iSup_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-isup-ae--bbea70c78be2a7bc06e51052.md) | 132 | `result-track:bbea70c78be2a7bc06e51052ab4765e3af326d79a9e40ba30fd17179295d3b89` |
| 5 | `theorem` | [lintegral_iSup_directed_of_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-isup-directed-of-measurable--475fe7f32fbb2901542f73f2.md) | 156 | `result-track:475fe7f32fbb2901542f73f2d9ab436dea09705054add713c8e819578c0ee65a` |
| 6 | `theorem` | [lintegral_iSup_directed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-isup-directed--391b125101ed2c8385a70063.md) | 178 | `result-track:391b125101ed2c8385a70063ea01a37efa718e9cba9e88eecb5b1cb78e9153df` |
| 7 | `theorem` | [lintegral_liminf_le'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-liminf-le--0499a9c230e5adb79ac1ae8c.md) | 206 | `result-track:0499a9c230e5adb79ac1ae8c53dc5c1d464d17f2b3ba5a8c528f8af5d8bf1256` |
| 8 | `theorem` | [lintegral_liminf_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-liminf-le--c0abd5a5827c3be5f77eaede.md) | 218 | `result-track:c0abd5a5827c3be5f77eaede886113d2481aa527707df4b7c1e0a030f17dbacb` |
| 9 | `theorem` | [lintegral_eq_iSup_eapprox_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-eq-isup-eapprox-lintegral--a81bac0d173a50ae9209bd3b.md) | 226 | `result-track:a81bac0d173a50ae9209bd3b5145cee7bd0dcef70826f0adbcdc8a765c806800` |
| 10 | `lemma` | [lintegral_eapprox_le_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-eapprox-le-lintegral--abb1f54f7e4efb55efffda91.md) | 239 | `result-track:abb1f54f7e4efb55efffda91cd9b1b70d4e81abf8d86b62f4ebc1eeb8d069ab1` |
| 11 | `lemma` | [measure_support_eapprox_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/measure-support-eapprox-lt-top--5f03f92c447f9b591af89b11.md) | 244 | `result-track:5f03f92c447f9b591af89b1180b37f2c2834dd7ad500315781d0ceb45e2c3f26` |
| 12 | `theorem` | [le_lintegral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/le-lintegral-add--eb7b864b9b9c05617466e7c8.md) | 252 | `result-track:eb7b864b9b9c05617466e7c8066d9c8b68dd7e551de5061affc27dd3eda48ff4` |
| 13 | `theorem` | [lintegral_add_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-add-aux--8ce43bacb441ea67fe939297.md) | 260 | `result-track:8ce43bacb441ea67fe93929700615391c702e5505f6a44ce0e2c4ff641727779` |
| 14 | `theorem` | [lintegral_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-add-left--0d07ba08333bccdca738cbed.md) | 295 | `result-track:0d07ba08333bccdca738cbed88d23f96262cb1bd25fef02b0ff651680236257f` |
| 15 | `theorem` | [lintegral_add_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-add-left--d125816fd7d44f0252477c35.md) | 306 | `result-track:d125816fd7d44f0252477c35fed04b5a838f5f6c55eda227f1e243e31a0e435c` |
| 16 | `theorem` | [lintegral_add_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-add-right--080b0b9085500fc7259f5659.md) | 311 | `result-track:080b0b9085500fc7259f565913acecba507291dc4a3a53b1ecdaea1de06f86c2` |
| 17 | `theorem` | [lintegral_add_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-add-right--0b62f77c3bf46aea0caf45bf.md) | 319 | `result-track:0b62f77c3bf46aea0caf45bf040b1f987b9a39f15c837999583c429b1f75c6ba` |
| 18 | `theorem` | [lintegral_finset_sum'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-finset-sum--073ad3e54160fbf9dc4d0eb9.md) | 323 | `result-track:073ad3e54160fbf9dc4d0eb91b7e66236d9bafe17166d4e3974a5acadd0fc329` |
| 19 | `theorem` | [lintegral_finset_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-finset-sum--363a33ce2a20493a1b776335.md) | 334 | `result-track:363a33ce2a20493a1b776335124edc4e61f8a803881b24827dd490b6d6630326` |
| 20 | `theorem` | [lintegral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-tsum--762c155bdcfd2e0ded469378.md) | 338 | `result-track:762c155bdcfd2e0ded46937861bf409fcc63624010e3ff457c56a7ca8fbab1fd` |
| 21 | `theorem` | [lintegral_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-const-mul--dec20d4c8ef122458d42649f.md) | 357 | `result-track:dec20d4c8ef122458d42649f2879183f30f6e94e77428ac39073613f3f220f21` |
| 22 | `theorem` | [lintegral_const_mul''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-const-mul--a371f115a136cc384c084538.md) | 376 | `result-track:a371f115a136cc384c08453875de4f08cc4065303f4e47247645c5c361ed7e9c` |
| 23 | `theorem` | [lintegral_const_mul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-const-mul-le--68ec3e716e40a09cb68c427f.md) | 383 | `result-track:68ec3e716e40a09cb68c427fb4b12645a53632b002f02aeffd1df1a42ddee115` |
| 24 | `theorem` | [lintegral_const_mul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-const-mul--e504defc34a513f5bfbad3f4.md) | 393 | `result-track:e504defc34a513f5bfbad3f426b6d526611d7b4131efd829dff0fd028181e64d` |
| 25 | `theorem` | [lintegral_mul_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-mul-const--ed25f529772016c1640b2128.md) | 407 | `result-track:ed25f529772016c1640b2128377d63540e1b03fd7035a8b423ccc0e4f32eb4a2` |
| 26 | `theorem` | [lintegral_mul_const''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-mul-const--e343f6d04e3893683b44a550.md) | 410 | `result-track:e343f6d04e3893683b44a550fe08e51e101bff0bcd7083a41a74da5c8f1e0b08` |
| 27 | `theorem` | [lintegral_mul_const_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-mul-const-le--a4819fa54e1e5f07f5977b10.md) | 413 | `result-track:a4819fa54e1e5f07f5977b10c075be9a3fce7a51ad28168912ac74a0bdc3a2f3` |
| 28 | `theorem` | [lintegral_mul_const'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-mul-const--5df4baa0544844d3870931d3.md) | 417 | `result-track:5df4baa0544844d3870931d3e414b07d2eb67555df9f143139a6ebbffd8409f4` |
| 29 | `theorem` | [lintegral_lintegral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-lintegral-mul--2c04bf370f852f1ae2f455d6.md) | 422 | `result-track:2c04bf370f852f1ae2f455d6e7a0be5d0fe78a39e4573599306b9cea8c2f7f1d` |
| 30 | `theorem` | [lintegral_trim](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-trim--e9a20aeac662463b6378e3a0.md) | 433 | `result-track:e9a20aeac662463b6378e3a0ddaf5e2f69af26e00ab65cd3d802fd889acd8e85` |
| 31 | `theorem` | [lintegral_trim_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/declarations/lintegral-trim-ae--7ffb2cc1a02ead01c69a8bf5.md) | 452 | `result-track:7ffb2cc1a02ead01c69a8bf5554a01216ad74e28b2f84abe9786841b77ee3ac2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
