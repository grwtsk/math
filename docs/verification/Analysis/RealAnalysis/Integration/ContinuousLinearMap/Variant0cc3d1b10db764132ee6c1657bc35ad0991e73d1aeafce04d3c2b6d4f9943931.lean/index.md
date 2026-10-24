# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ContinuousLinearMap.Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d4329a27a93834efbde87a6f8dd5bc6d0db8d35",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d4329a27a93834efbde87a6f8dd5bc6d0db8d35`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_compLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-complp--b70b27c28f558b06a532766f.md) | 45 | `result-track:b70b27c28f558b06a532766fe2d708a7c1bdb7c4d844e6301b799d529b865307` |
| 2 | `theorem` | [setIntegral_compLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/setintegral-complp--2c199e19bd325f4cdf530d56.md) | 49 | `result-track:2c199e19bd325f4cdf530d5671347d1e32b0729565dc17a4c42c7ce7b87ce4d7` |
| 3 | `theorem` | [continuous_integral_comp_L1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/continuous-integral-comp-l1--a4e8c0c6b01aebbdf30bf304.md) | 53 | `result-track:a4e8c0c6b01aebbdf30bf304daa55a4b8fa0fc46a02748fe0ff20bf5d61291cd` |
| 4 | `theorem` | [integral_comp_commSL](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-comp-commsl--e54928e25b05cd8152b8fa46.md) | 59 | `result-track:e54928e25b05cd8152b8fa4626604188b1fdf42757e2cebb2b285fe722d6468c` |
| 5 | `theorem` | [integral_comp_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-comp-comm--5bd69ae5463711663c7ea3a9.md) | 77 | `result-track:5bd69ae5463711663c7ea3a9a1fe3cc4413209fad028f9fcb61f869a3e96f860` |
| 6 | `theorem` | [integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-apply--29085178ad056a87907c975e.md) | 80 | `result-track:29085178ad056a87907c975e58b47a4da6a39dcb6df26473b22c4d859401a04f` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.IntegralCompLp.Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.ContinuousMultilinearMap.integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/root-grwtsk-analysis-realanalysis-integration-integralcomplp-variant9e95--b67c6a3215cc925e9d0e001a.md) | 90 | `result-track:b67c6a3215cc925e9d0e001aca467196e02a79d33d71898aebaa81ad9401b4ca` |
| 8 | `theorem` | [integral_comp_comm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-comp-comm--5419178984aab75b5f814245.md) | 105 | `result-track:5419178984aab75b5f814245b292038998e7b06203734797ae48d7c82a67d221` |
| 9 | `theorem` | [integral_comp_L1_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-comp-l1-comm--9413d604aca9dc9712e2c820.md) | 114 | `result-track:9413d604aca9dc9712e2c820096d2daef547e9a4a264abb3e90d69596ca0732a` |
| 10 | `theorem` | [integral_comp_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-comp-comm--765887bbad37a8e357773f87.md) | 124 | `result-track:765887bbad37a8e357773f87aa710dfbdc8e3197f38710af203fe68037f46756` |
| 11 | `theorem` | [integral_comp_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-comp-comm--aed37f8c8769fff91d0170d8.md) | 133 | `result-track:aed37f8c8769fff91d0170d881314b0079a0c505921937ebc4e028b746a454bf` |
| 12 | `lemma` | [ContinuousMap.integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/continuousmap-integral-apply--28b7889fc7e9f7654d3f5d5f.md) | 146 | `result-track:28b7889fc7e9f7654d3f5d5f6c6cee6138ecb8be7bb582df6a2285c855d68e02` |
| 13 | `theorem` | [ContinuousMapZero.integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/continuousmapzero-integral-apply--cd27d59fe27fc312f67091f3.md) | 154 | `result-track:cd27d59fe27fc312f67091f38edd323b7d7c9d1be01290d3a47f452f391bf1e1` |
| 14 | `theorem` | [integral_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-ofreal--d8d54def301b653b5161b12d.md) | 166 | `result-track:d8d54def301b653b5161b12d5a00b4556c123a4f98251d0e62280f198cebcce6` |
| 15 | `theorem` | [integral_complex_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-complex-ofreal--b95d54cca11fdf7592c8e0f7.md) | 170 | `result-track:b95d54cca11fdf7592c8e0f7593e8c059c3fecc6d50eaa65694f1d336971d24a` |
| 16 | `theorem` | [integral_re](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-re--6158a98772b40b7442aa5686.md) | 172 | `result-track:6158a98772b40b7442aa568638f4d1807e68125507fa753f116da901006e08e4` |
| 17 | `theorem` | [integral_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-im--7d6c8f9271242f4716aa8107.md) | 176 | `result-track:7d6c8f9271242f4716aa8107db4f2af1863e9c81a77dbe6e3116bcef9cb8d49b` |
| 18 | `theorem` | [integral_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-conj--6eca9fe121d30574cf85e01d.md) | 181 | `result-track:6eca9fe121d30574cf85e01d8de9b7adbafb72603ea758a7777e4a8ef6f50474` |
| 19 | `theorem` | [integral_coe_re_add_coe_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-coe-re-add-coe-im--36dfbbe1febc9160fe0755fb.md) | 184 | `result-track:36dfbbe1febc9160fe0755fb916b133bfadac71e6a6000856a508e1b03911472` |
| 20 | `theorem` | [integral_re_add_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-re-add-im--1a7a5a2358f2c71f0f37420c.md) | 193 | `result-track:1a7a5a2358f2c71f0f37420c1cd20d35838340a1ed802627e2d745df10f1fddd` |
| 21 | `theorem` | [setIntegral_re_add_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/setintegral-re-add-im--c239d5aa5384bd0e86794e88.md) | 198 | `result-track:c239d5aa5384bd0e86794e8846950cde8323d85dc36f3e57ca57229f57717274` |
| 22 | `lemma` | [swap_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/swap-integral--57c55b29d938349d9bf01530.md) | 205 | `result-track:57c55b29d938349d9bf01530b425f0a6bec0cc63057c29a7d6797a213a863ac8` |
| 23 | `theorem` | [fst_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/fst-integral--650f5db8db03b0e8c8c1954f.md) | 208 | `result-track:650f5db8db03b0e8c8c1954fd855148dab54f38cecc1e9b82c7370f7039b7328` |
| 24 | `theorem` | [snd_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/snd-integral--84da21781144eaf61a70cb75.md) | 215 | `result-track:84da21781144eaf61a70cb75e97040847146beeb5b3ec88cbde214e9223fa2e1` |
| 25 | `theorem` | [integral_pair](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-pair--0e10f6eacea2bf77f87cbdd8.md) | 220 | `result-track:0e10f6eacea2bf77f87cbdd8417790b9339063529b10ec1ebf92a4187bdcd7e7` |
| 26 | `theorem` | [integral_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-smul-const--2d8fe9a48ef6e5f280fde6a1.md) | 226 | `result-track:2d8fe9a48ef6e5f280fde6a1f7423720bc3d6c42f50dfd4456b15eb7e2a2c7d7` |
| 27 | `lemma` | [integral_const_mul_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-const-mul-of-integrable--b4614870d4797eba86591967.md) | 241 | `result-track:b4614870d4797eba865919676b291394f35d2b3234069069270ab32c51916162` |
| 28 | `lemma` | [integral_mul_const_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-mul-const-of-integrable--824afe2cfc5b794b12dd116a.md) | 249 | `result-track:824afe2cfc5b794b12dd116a860981253e94b5c327aca9524e23ded639cbf97f` |
| 29 | `theorem` | [integral_withDensity_eq_integral_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-withdensity-eq-integral-smul--fc57caa081b1ac2907f0f99f.md) | 258 | `result-track:fc57caa081b1ac2907f0f99f82793e29327ec880dd16b3d18ee6522e1f4ac480` |
| 30 | `theorem` | [integral_withDensity_eq_integral_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-withdensity-eq-integral-smul--29bb4241dc4ff1ac044d6dce.md) | 303 | `result-track:29bb4241dc4ff1ac044d6dce9ebbf65541040d59b1a4d9c8aab893c950155633` |
| 31 | `theorem` | [integral_withDensity_eq_integral_toReal_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-withdensity-eq-integral-toreal-smul--d5324d4bb60c5d896c7e766f.md) | 318 | `result-track:d5324d4bb60c5d896c7e766fbdc2fa489c72589047246bd1bab27ec780adb461` |
| 32 | `theorem` | [integral_withDensity_eq_integral_toReal_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/integral-withdensity-eq-integral-toreal-smul--b647d70a747d3c13af50df34.md) | 325 | `result-track:b647d70a747d3c13af50df347237064e03a8882b24c9f096e744b17d35275dbe` |
| 33 | `theorem` | [setIntegral_withDensity_eq_setIntegral_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/setintegral-withdensity-eq-setintegral-smul--c6f48440712b597a55cb1246.md) | 330 | `result-track:c6f48440712b597a55cb12468a58e41fd1f1b97a2e72f992a504dadce8434585` |
| 34 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--0170ed2dbcb82b501db26e3f.md) | 335 | `result-track:0170ed2dbcb82b501db26e3f77cc6026be205f6058190e80dfc5c68ed14d6f6b` |
| 35 | `theorem` | [setIntegral_withDensity_eq_setIntegral_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/setintegral-withdensity-eq-setintegral-smul--8414e13df8c5e268179a2bad.md) | 341 | `result-track:8414e13df8c5e268179a2badd7fcaef85c891cdc57f20c7a32339da63e197ca9` |
| 36 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--f224dad0e3e028f0efd18470.md) | 346 | `result-track:f224dad0e3e028f0efd184705c8642ccfff1c1556520f95fd8a7eb8393bdde2b` |
| 37 | `theorem` | [setIntegral_withDensity_eq_setIntegral_smul₀'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/setintegral-withdensity-eq-setintegral-smul--81a64fef54ab79e59a6b3316.md) | 351 | `result-track:81a64fef54ab79e59a6b3316cfa4761b99898fc2293e2347b1ecba972936fa0b` |
| 38 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul₀'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--9eeca7dd0078b66ea7f43fbc.md) | 356 | `result-track:9eeca7dd0078b66ea7f43fbc1286d23523a5bd63343fe930d3dd5860071a132b` |
| 39 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--885b1752a81bbeb6ec82dacf.md) | 361 | `result-track:885b1752a81bbeb6ec82dacfee3bc1fcc00a1a5f883fc558ad429856558616a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
