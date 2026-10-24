# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegralRepresentation.Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5acbc2ea0489dab0c3527605f737ba783a708bb5",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5acbc2ea0489dab0c3527605f737ba783a708bb5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rpowIntegrand₀₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/rpowintegrand--45f9ea18d105096c325b4108.md) | 58 | `declaration-track:45f9ea18d105096c325b4108ed31be259d84e63f40db113f1af84a377b30c78e` |
| 2 | `lemma` | [rpowIntegrand₀₁_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/rpowintegrand-zero-right--79f369337843303d5e645043.md) | 63 | `result-track:79f369337843303d5e6450433ef6a5d06081abdd364489b30cf5d679b686e95f` |
| 3 | `lemma` | [rpowIntegrand₀₁_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/rpowintegrand-zero-left--f22a8df7a8200b201e5c8a66.md) | 65 | `result-track:f22a8df7a8200b201e5c8a66e163266a08a92498ebfe9662a4b7338979ad7d3f` |
| 4 | `lemma` | [rpowIntegrand₀₁_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/rpowintegrand-nonneg--499468cbd15db7b977116a6d.md) | 68 | `result-track:499468cbd15db7b977116a6dbc5f80d8ab484d83466d68227cbf00fdf91ff317` |
| 5 | `lemma` | [rpowIntegrand₀₁_eq_pow_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/rpowintegrand-eq-pow-div--676fc348d42d9f4e13e11f57.md) | 79 | `result-track:676fc348d42d9f4e13e11f57c75aac707e216427deb2bdadf7695ecbbb89c9a4` |
| 6 | `lemma` | [rpowIntegrand₀₁_eqOn_pow_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/rpowintegrand-eqon-pow-div--bacb6284e075234d109ced3c.md) | 96 | `result-track:bacb6284e075234d109ced3c9119c997fb5f4a1eb3bccb88373019898fee07aa` |
| 7 | `lemma` | [rpowIntegrand₀₁_apply_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/rpowintegrand-apply-mul--472e8b4e0ea66b658a94e06e.md) | 101 | `result-track:472e8b4e0ea66b658a94e06ece137a717f1b55bd0f66f2f3f1afa6031aae3f32` |
| 8 | `lemma` | [rpowIntegrand₀₁_apply_mul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/rpowintegrand-apply-mul--38b06b7b682024bb22071998.md) | 117 | `result-track:38b06b7b682024bb220719983a52b5992faf450e8278286badc34a2350aa875a` |
| 9 | `lemma` | [rpowIntegrand₀₁_apply_mul_eqOn_Ici](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/rpowintegrand-apply-mul-eqon-ici--8003be4b3193d8f288f06c68.md) | 123 | `result-track:8003be4b3193d8f288f06c68ff6c940e6bf50c096832fea01953c4ece53bb1ce` |
| 10 | `lemma` | [continuousOn_rpowIntegrand₀₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/continuouson-rpowintegrand--3dad3b78597cb46c2f5420d9.md) | 128 | `result-track:3dad3b78597cb46c2f5420d91eedfd12fb16b560e39cf950a27c15d33e43b319` |
| 11 | `lemma` | [aestronglyMeasurable_rpowIntegrand₀₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/aestronglymeasurable-rpowintegrand--303b3ef6f4c69c4ddf6a9a2b.md) | 135 | `result-track:303b3ef6f4c69c4ddf6a9a2b3eeecc43a8b32a0a77c54984b27a7e8b6f3cb73b` |
| 12 | `lemma` | [rpowIntegrand₀₁_le_rpow_sub_two_mul_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/rpowintegrand-le-rpow-sub-two-mul-self--89a70598deba675dfbe5260d.md) | 139 | `result-track:89a70598deba675dfbe5260db1ba33238daf87ffb759f62e345fb9f1ffb75699` |
| 13 | `lemma` | [rpowIntegrand₀₁_le_rpow_sub_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/rpowintegrand-le-rpow-sub-one--d412a8af212df39c16a15b9b.md) | 150 | `result-track:d412a8af212df39c16a15b9b217900a38b0289cfd6fa14c7ce0cf642d64dd4d4` |
| 14 | `lemma` | [rpowIntegrand₀₁_one_ge_rpow_sub_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/rpowintegrand-one-ge-rpow-sub-two--624f674c4fad541b28778808.md) | 164 | `result-track:624f674c4fad541b287788087cc4a310e7ffc5b0d7d76468570dbfdebf9824ec` |
| 15 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/integrableon-rpowintegrand-ioc--fccead29aa8c70441f6314bf.md) | 179 | `result-track:fccead29aa8c70441f6314bf86451a60cc5681d0bba616258c4230b6051e2c0a` |
| 16 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioi_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/integrableon-rpowintegrand-ioi-one--ce2bb0101c8a0cef1d374963.md) | 200 | `result-track:ce2bb0101c8a0cef1d3749638bc0e5f497445f4a5924dc20efbde1bc7d38b1d5` |
| 17 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/integrableon-rpowintegrand-ioi--c6ef94d91defdf5930f80ada.md) | 219 | `result-track:c6ef94d91defdf5930f80adaa5c87d8b3f1a096f6815d705f17a307096d5c103` |
| 18 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ici](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/integrableon-rpowintegrand-ici--72c20772a3d5bffa0863f6bb.md) | 227 | `result-track:72c20772a3d5bffa0863f6bb12d908d4ff0502826b2bac36471396ff1fc37c26` |
| 19 | `lemma` | [integral_rpowIntegrand₀₁_eq_rpow_mul_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/integral-rpowintegrand-eq-rpow-mul-const--bbe1049003e177db678e1b66.md) | 231 | `result-track:bbe1049003e177db678e1b66d894a186f22bec1c4d09fad94f35a8ef0d8aa199` |
| 20 | `lemma` | [le_integral_rpowIntegrand₀₁_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/le-integral-rpowintegrand-one--fb9f8ecdc1d9e03856a0ae4e.md) | 253 | `result-track:fb9f8ecdc1d9e03856a0ae4e5eff850862119d3df460d1cb05eaeb4bae7177b1` |
| 21 | `lemma` | [integral_rpowIntegrand₀₁_one_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/integral-rpowintegrand-one-pos--c4468508a8e27d1515e37f78.md) | 273 | `result-track:c4468508a8e27d1515e37f78cc025ac283926df2a87ccec806cfe8cc13588ccd` |
| 22 | `lemma` | [rpow_eq_const_mul_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/rpow-eq-const-mul-integral--4dde283b044622b6fd7bd763.md) | 282 | `result-track:4dde283b044622b6fd7bd763ea487edcbcc4af3d1b3d2a69c7bf56144955f32a` |
| 23 | `lemma` | [exists_measure_rpow_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/declarations/exists-measure-rpow-eq-integral--3d7f066a1b083991b8d2bed2.md) | 295 | `result-track:3d7f066a1b083991b8d2bed2fdb44e9ae5613249a7fece072801690e7ff288c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
