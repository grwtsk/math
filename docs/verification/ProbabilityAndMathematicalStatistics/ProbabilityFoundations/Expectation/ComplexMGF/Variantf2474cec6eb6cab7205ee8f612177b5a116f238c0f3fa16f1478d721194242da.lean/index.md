# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ComplexMGF.Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a323cace15f2ccbcaef485538525de60470b828",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a323cace15f2ccbcaef485538525de60470b828`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean.json)

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
| 1 | `def` | [complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/complexmgf--074a81a1377ebbfd19b3ecfc.md) | 80 | `declaration-track:074a81a1377ebbfd19b3ecfcbe034270e0fec109c89069fd85486947b971fdb1` |
| 2 | `lemma` | [complexMGF_undef](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/complexmgf-undef--87f98d0300022e840cde1fd8.md) | 82 | `result-track:87f98d0300022e840cde1fd80200c3f918d230e0634ffe0372b1cb7077a79189` |
| 3 | `lemma` | [complexMGF_id_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/complexmgf-id-map--da0826bfa5bf089cc1f750e7.md) | 88 | `result-track:da0826bfa5bf089cc1f750e7422b58ba5f100cd9305c6a560d7a26211016744c` |
| 4 | `lemma` | [complexMGF_congr_identDistrib](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/complexmgf-congr-identdistrib--813f6585c5cf9f7911caee7b.md) | 94 | `result-track:813f6585c5cf9f7911caee7b4698a5bb8cc8489e11650a830b28c86bd0ce7713` |
| 5 | `lemma` | [norm_complexMGF_le_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/norm-complexmgf-le-mgf--f2504829be4ed550791e39b2.md) | 99 | `result-track:f2504829be4ed550791e39b29277e68fc4ef76d4e687ba6ec7b974f3a0a533a6` |
| 6 | `lemma` | [complexMGF_ofReal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/complexmgf-ofreal--59c469dd5d6f13968279cbda.md) | 106 | `result-track:59c469dd5d6f13968279cbda4c8cecbd94232c2718aac8c3c4b54b97e8cc50c0` |
| 7 | `lemma` | [re_complexMGF_ofReal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/re-complexmgf-ofreal--7702076ced00f5c2b0b0d13b.md) | 110 | `result-track:7702076ced00f5c2b0b0d13b7fd6d664f69960eba3f26366a340e487c24193df` |
| 8 | `lemma` | [re_complexMGF_ofReal'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/re-complexmgf-ofreal--74601bcab2578bc0dfa96c95.md) | 113 | `result-track:74601bcab2578bc0dfa96c95497deb42d6ca986a42b96546b6c4d9ffe6934637` |
| 9 | `lemma` | [complexMGF_id_mul_I](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/complexmgf-id-mul-i--85ad2d2bf0d1bcfcd82df620.md) | 117 | `result-track:85ad2d2bf0d1bcfcd82df6206561047a158a4dc6a7a79b0bfc904cb15592c7c2` |
| 10 | `lemma` | [complexMGF_mul_I](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/complexmgf-mul-i--2c18e08e8b75559cdcf76244.md) | 123 | `result-track:2c18e08e8b75559cdcf76244a2621ee25f53f7f9f95b28a8cc26df953bce5706` |
| 11 | `lemma` | [hasDerivAt_integral_pow_mul_exp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/hasderivat-integral-pow-mul-exp--8a3950919b7093dfda5ae17f.md) | 131 | `result-track:8a3950919b7093dfda5ae17ff2a8c52e84f77a06102b19ac394157606e2ff04a` |
| 12 | `theorem` | [hasDerivAt_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/hasderivat-complexmgf--4115205c070531438da9c8ca.md) | 177 | `result-track:4115205c070531438da9c8ca4e574bf79e99b3001a061dd8279a54b7ffb22d58` |
| 13 | `theorem` | [differentiableOn_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/differentiableon-complexmgf--1d17c68430f6e5dc66d7ceba.md) | 185 | `result-track:1d17c68430f6e5dc66d7cebacb5ed59ddd4a99ff138e583e56e27ca65f8c5982` |
| 14 | `theorem` | [analyticOnNhd_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/analyticonnhd-complexmgf--5ab66178d4ff31669aa522f8.md) | 192 | `result-track:5ab66178d4ff31669aa522f89876ea70a37061977e09cc927a3f1e833c1586c5` |
| 15 | `theorem` | [analyticOn_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/analyticon-complexmgf--eabbed58915ad9fedde3f306.md) | 198 | `result-track:eabbed58915ad9fedde3f3065481ac175dd8828188c975b41868bdbfc5ab4e9e` |
| 16 | `lemma` | [analyticAt_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/analyticat-complexmgf--1761433b0dc590e7f26e9cfd.md) | 203 | `result-track:1761433b0dc590e7f26e9cfdb3d7f3b321b336d16b0f96e5848bd4fb4db6f3f4` |
| 17 | `lemma` | [hasDerivAt_iteratedDeriv_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/hasderivat-iteratedderiv-complexmgf--e49302f0188756d1438bee44.md) | 213 | `result-track:e49302f0188756d1438bee4425253d107cb3e6135bfa4082b4fccc0102f078cb` |
| 18 | `lemma` | [iteratedDeriv_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/iteratedderiv-complexmgf--f3c2661fb6459d6938505876.md) | 230 | `result-track:f3c2661fb6459d6938505876e3b8201ba4e670bfbdf2b35a9065c4337053b0d0` |
| 19 | `lemma` | [integrableExpSet_eq_of_mgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/integrableexpset-eq-of-mgf--fa9d7676e2d345368e6e70f2.md) | 249 | `result-track:fa9d7676e2d345368e6e70f2d8737cd53fd84696d99dbb9e7416bce5e202269e` |
| 20 | `lemma` | [integrableExpSet_eq_of_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/integrableexpset-eq-of-mgf--2d6a88e6dc093397988ae663.md) | 261 | `result-track:2d6a88e6dc093397988ae663127c37e1cbc8552901f763bf0e9d434bb431453d` |
| 21 | `lemma` | [eqOn_complexMGF_of_mgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/eqon-complexmgf-of-mgf--eaaf500533c5051d7900b5e6.md) | 278 | `result-track:eaaf500533c5051d7900b5e604e7b0fb81b623bffc967d79d8d3f8853cb3b8cb` |
| 22 | `lemma` | [eqOn_complexMGF_of_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/eqon-complexmgf-of-mgf--51f56291fcd7eb64f795ef31.md) | 307 | `result-track:51f56291fcd7eb64f795ef319b0e34363940b281f4ad889dd87d575cb42d67b3` |
| 23 | `theorem` | [_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ComplexMGF.Variant05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.MeasureTheory.Measure.ext_of_complexMGF_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--acfa80ee0c1a7bd7705f9279.md) | 327 | `result-track:acfa80ee0c1a7bd7705f9279c1b06daf4286c165880151c158cf505668b077a2` |
| 24 | `lemma` | [_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ComplexMGF.Variant05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.MeasureTheory.Measure.ext_of_complexMGF_id_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--7a0658051a9eda16320d6519.md) | 343 | `result-track:7a0658051a9eda16320d6519274fbaacd11df9fbe347e81c75fc0980b0986b6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
