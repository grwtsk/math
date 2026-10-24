# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.JacobianOneDim.Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f448cc8a62dc92b1f9164768532218eebaa4aab",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f448cc8a62dc92b1f9164768532218eebaa4aab`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean.json)

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
| 1 | `theorem` | [lintegral_image_eq_lintegral_abs_deriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/lintegral-image-eq-lintegral-abs-deriv-mul--82fc0fa80ae97f27a3c1c1ab.md) | 52 | `result-track:82fc0fa80ae97f27a3c1c1ab8bbb4ab6d889ad04a33420600af5fae3aae4cc01` |
| 2 | `theorem` | [integrableOn_image_iff_integrableOn_abs_deriv_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/integrableon-image-iff-integrableon-abs-deriv-smul--292e05b40f98aa42912ee396.md) | 64 | `result-track:292e05b40f98aa42912ee396cae048704d2ca05e5c82e8ab34260980de7cbfc7` |
| 3 | `theorem` | [integral_image_eq_integral_abs_deriv_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/integral-image-eq-integral-abs-deriv-smul--4dee9861878549e0beef2e46.md) | 74 | `result-track:4dee9861878549e0beef2e4687491f5414f2b9c8db2c4010f4c68abe0929e50f` |
| 4 | `theorem` | [exists_decomposition_of_monotoneOn_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/exists-decomposition-of-monotoneon-hasderivwithinat--2e2ca246d3fa04f075c23821.md) | 88 | `result-track:2e2ca246d3fa04f075c238215c385aa44ec9884424e98159875a63c39206995f` |
| 5 | `theorem` | [lintegral_image_eq_lintegral_deriv_mul_of_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/lintegral-image-eq-lintegral-deriv-mul-of-monotoneon--4fb41dbef307d3781dc5584b.md) | 190 | `result-track:4fb41dbef307d3781dc5584b4c3be0c24c6a9fc631876db95f145ca4f40c16f1` |
| 6 | `theorem` | [lintegral_deriv_eq_volume_image_of_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/lintegral-deriv-eq-volume-image-of-monotoneon--3a45c50738cabc2944a86c6a.md) | 230 | `result-track:3a45c50738cabc2944a86c6af32165f9e1ea350f0e095db8a98497ab7b5ead1d` |
| 7 | `theorem` | [integrableOn_image_iff_integrableOn_deriv_smul_of_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/integrableon-image-iff-integrableon-deriv-smul-of-monotoneon--d03cf498882afde2ef87afd5.md) | 238 | `result-track:d03cf498882afde2ef87afd5dd30e8ae7fd87380377cc15cdf021ea32252596f` |
| 8 | `theorem` | [integral_image_eq_integral_deriv_smul_of_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/integral-image-eq-integral-deriv-smul-of-monotoneon--4aaa769edcfd3298e8f8a2ec.md) | 274 | `result-track:4aaa769edcfd3298e8f8a2ec25dd430a0d742e2468957095bee9ed03258c9180` |
| 9 | `theorem` | [integral_Icc_deriv_smul_of_deriv_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/integral-icc-deriv-smul-of-deriv-nonneg--e67bd37fe6ee3305b9710181.md) | 317 | `result-track:e67bd37fe6ee3305b9710181f6f3e590064195c0c1d6611475445c70787c3167` |
| 10 | `theorem` | [integrableOn_Icc_deriv_smul_iff_of_deriv_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/integrableon-icc-deriv-smul-iff-of-deriv-nonneg--45afa463dadda80ca9510100.md) | 341 | `result-track:45afa463dadda80ca95101001901c4eb9d61a6bf4a5562efcb1d67d5c64bce39` |
| 11 | `theorem` | [lintegral_image_eq_lintegral_deriv_mul_of_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/lintegral-image-eq-lintegral-deriv-mul-of-antitoneon--90fd4b9ea108440cfc6db812.md) | 369 | `result-track:90fd4b9ea108440cfc6db8122d5bf5dd88db0b6b8e3457bfc8fc9c26a37cc469` |
| 12 | `theorem` | [lintegral_deriv_eq_volume_image_of_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/lintegral-deriv-eq-volume-image-of-antitoneon--222b1e94c3b893d4a7da9d43.md) | 388 | `result-track:222b1e94c3b893d4a7da9d4376877fea231d7fcecaab87adc31501c5600abe1f` |
| 13 | `theorem` | [integrableOn_image_iff_integrableOn_deriv_smul_of_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/integrableon-image-iff-integrableon-deriv-smul-of-antitoneon--ecb3feaaf6bd228b1fdba262.md) | 396 | `result-track:ecb3feaaf6bd228b1fdba2628be3bb047aae56919c8e86b2fb618587583c57fe` |
| 14 | `theorem` | [integral_image_eq_integral_deriv_smul_of_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/integral-image-eq-integral-deriv-smul-of-antitoneon--a49fb96ac18b5fecbf755ea7.md) | 415 | `result-track:a49fb96ac18b5fecbf755ea76df57b2b1df29c1cfd35f860209e787bf6df995f` |
| 15 | `theorem` | [integral_Icc_deriv_smul_of_deriv_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/integral-icc-deriv-smul-of-deriv-nonpos--bbb8a6ed575f7e78ac55aaad.md) | 433 | `result-track:bbb8a6ed575f7e78ac55aaad058bbcf0fd89e6f940a98ce76145865112701844` |
| 16 | `theorem` | [integrableOn_Icc_deriv_smul_iff_of_deriv_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/integrableon-icc-deriv-smul-iff-of-deriv-nonpos--c9fa6e51b4a281154420daac.md) | 458 | `result-track:c9fa6e51b4a281154420daac3f3cc7dd42447201fc929e7aef3c8e854a67f07e` |
| 17 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LintegralImageEqLintegralAbsDerivMul.Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.MeasurableEmbedding.withDensity_ofReal_comap_apply_eq_integral_abs_deriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-lintegralimageeql--088e1b61c7f9a3df63e8ad83.md) | 485 | `result-track:088e1b61c7f9a3df63e8ad8328e4c3c81dbab214484008545799dd048bc1ea52` |
| 18 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LintegralImageEqLintegralAbsDerivMul.Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.MeasurableEquiv.withDensity_ofReal_map_symm_apply_eq_integral_abs_deriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-lintegralimageeql--fa011a04d1de19feabbcb7c3.md) | 495 | `result-track:fa011a04d1de19feabbcb7c3352a2ed407950019c91d18ab31ce19bf3f1a9e93` |
| 19 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LintegralImageEqLintegralAbsDerivMul.Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.MeasurableEmbedding.withDensity_ofReal_comap_apply_eq_integral_abs_deriv_mul'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-lintegralimageeql--4e7c6bcb01cb5cf93a731113.md) | 505 | `result-track:4e7c6bcb01cb5cf93a7311132c950a0bb37c803537d761bf46927e4ac9757d71` |
| 20 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LintegralImageEqLintegralAbsDerivMul.Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.MeasurableEquiv.withDensity_ofReal_map_symm_apply_eq_integral_abs_deriv_mul'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-lintegralimageeql--200b042745b4005db52ef8ef.md) | 515 | `result-track:200b042745b4005db52ef8ef3ed7c5ffbeafed44b47d180502674e84b3024650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
