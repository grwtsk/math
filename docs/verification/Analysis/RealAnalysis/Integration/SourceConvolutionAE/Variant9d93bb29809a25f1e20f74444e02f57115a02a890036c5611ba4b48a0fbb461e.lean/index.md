# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceConvolutionAE.Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a454a3d6527e5664d5d15346ddfbe4479215ed80",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a454a3d6527e5664d5d15346ddfbe4479215ed80`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineOperator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_integrable_of_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/smul-integrable-of-memlp-two--6bd6e2e3ef61991f0cf86ea1.md) | 23 | `result-track:6bd6e2e3ef61991f0cf86ea108d4517573563062fce58fb45016e3805acc8b1e` |
| 2 | `theorem` | [integral_norm_smul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/integral-norm-smul-le--f9bc98122d1b1f799a5b760c.md) | 28 | `result-track:f9bc98122d1b1f799a5b760c39a2f203180b8998bba76adb2449ce2c59920f80` |
| 3 | `def` | [convolutionFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/convolutionfunction--63e0d686098d860cdfcbc897.md) | 43 | `declaration-track:63e0d686098d860cdfcbc89775a64444c3d2a9f26ea0a3ea4f814ab89bcb34c8` |
| 4 | `theorem` | [convolution_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/convolution-integrand-integrable--f25c0f71dcc0c2f0232f40d2.md) | 46 | `result-track:f25c0f71dcc0c2f0232f40d2e6e91771fb09a418ba6b4e894b065a81427831bb` |
| 5 | `theorem` | [convolution_norm_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/convolution-norm-integral-bound--1b5b58da370d99d2a7c1149e.md) | 51 | `result-track:1b5b58da370d99d2a7c1149e0917b677986bdb21f9fd6dfb94ad820a3290b52c` |
| 6 | `theorem` | [convolution_integrand_stronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/convolution-integrand-stronglymeasurable--bcffbe380163d80c73483240.md) | 60 | `result-track:bcffbe380163d80c73483240d84b51eb054cc38ddd5afc7565ad976950d49c08` |
| 7 | `theorem` | [convolution_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/convolution-product-integrable--39f6da983e2b0b677cc3cbec.md) | 65 | `result-track:39f6da983e2b0b677cc3cbec0eb9d8e31f781d934766cefe5eb99f61d5a28eb9` |
| 8 | `theorem` | [convolutionFunction_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/convolutionfunction-integrableon--a23dd1b73f02edd42e2de331.md) | 80 | `result-track:a23dd1b73f02edd42e2de3318eae9d70ec112a637c4543a7819828669009a37b` |
| 9 | `theorem` | [vector_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/vector-setintegral--f905d6ce60716dbf8f7fb990.md) | 84 | `result-track:f905d6ce60716dbf8f7fb99054494343aaf2bc4664a226b7668da67cd2bccf3d` |
| 10 | `theorem` | [actualFull_ae_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/actualfull-ae-convolution--3fb8458ea116493cb2025b03.md) | 99 | `result-track:3fb8458ea116493cb2025b03c50eaa89baaf8cc280c6a58a40a9edeb1b75cefe` |
| 11 | `theorem` | [convolutionFunction_commuted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/convolutionfunction-commuted--8c257341ad8a18d1851e18c7.md) | 111 | `result-track:8c257341ad8a18d1851e18c7e6c30228a0856ef8583da942dd0d3bfec502a35a` |
| 12 | `theorem` | [causal_integrand_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/causal-integrand-identity--131aa068d7db56a08dfb070f.md) | 117 | `result-track:131aa068d7db56a08dfb070f260f3a782935cb882f989fe15564e67854224f03` |
| 13 | `theorem` | [convolutionFunction_zeroExtension_eq_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/convolutionfunction-zeroextension-eq-setintegral--f103a6acc39b966d18a05988.md) | 129 | `result-track:f103a6acc39b966d18a059883f58993a66b4053a56d01f7178a2c9dee45a36b8` |
| 14 | `theorem` | [causal_setIntegral_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/causal-setintegral-integrable--9aed0316bb9ec991faad2aeb.md) | 138 | `result-track:9aed0316bb9ec991faad2aebed69d375b877d02904019b8f16e33ccbcdd502c4` |
| 15 | `theorem` | [causal_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/causal-intervalintegrable--a758aef50375c45db8fb89ec.md) | 148 | `result-track:a758aef50375c45db8fb89ecceb14eae5a290cda55fd07fbdd9d1966701ae41e` |
| 16 | `theorem` | [convolutionFunction_zeroExtension_nonpositive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/convolutionfunction-zeroextension-nonpositive--8ce33065e547effa1c1953f3.md) | 153 | `result-track:8ce33065e547effa1c1953f303bb794ee69e388904523e3546faec2300aec391` |
| 17 | `theorem` | [sourceOperator_ae_causal_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/sourceoperator-ae-causal-setintegral--29ad1acb4364bd3ef8b156c5.md) | 158 | `result-track:29ad1acb4364bd3ef8b156c5cec72a206f075461f190e0c543cee53b17b49a9f` |
| 18 | `theorem` | [sourceOperator_ae_causal_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/sourceoperator-ae-causal-integral--95e483382cdb6252ecdd1303.md) | 169 | `result-track:95e483382cdb6252ecdd13036cb3656273784a84b577ac3763b4b467638d91d9` |
| 19 | `theorem` | [full_sourceOperator_causal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/full-sourceoperator-causal--fc89c5cfcb6e147b1cdb6106.md) | 178 | `result-track:fc89c5cfcb6e147b1cdb61067bb7a0e35e1e6411dc55e93dab190aaeecea0d29` |
| 20 | `theorem` | [zeroExtension_sourceOperator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/declarations/zeroextension-sourceoperator--1f3ec62b68ec9a37db683a82.md) | 185 | `result-track:1f3ec62b68ec9a37db683a82413b3c9b1e94de582f21e551550d24932d4292f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
