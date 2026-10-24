# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceConvolutionAE.Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b1433db42c95e04c35b410b36beca6f5a38db60",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b1433db42c95e04c35b410b36beca6f5a38db60`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineOperator` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_integrable_of_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/smul-integrable-of-memlp-two--a9c8e5b5011968bcdbe9643a.md) | 15 | `result-track:a9c8e5b5011968bcdbe9643a0e4b3e44652553d9c72e4a50683fc69e303f288d` |
| 2 | `theorem` | [integral_norm_smul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/integral-norm-smul-le--b4c6e933e39e478dcd230a44.md) | 20 | `result-track:b4c6e933e39e478dcd230a44310e838e5a49a412f6bfc8a8a246415f88904dee` |
| 3 | `def` | [convolutionFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/convolutionfunction--1ec43af035af07c06a266027.md) | 35 | `declaration-track:1ec43af035af07c06a266027c3c198de7f533cebbacaa9020a4f08204ceb3a36` |
| 4 | `theorem` | [convolution_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/convolution-integrand-integrable--aef648a5f69af03bb67daeaa.md) | 38 | `result-track:aef648a5f69af03bb67daeaa73e32f51749a8bf09757b1cb5599fb77328c62e1` |
| 5 | `theorem` | [convolution_norm_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/convolution-norm-integral-bound--05bf8810b517bd8e7aa73231.md) | 43 | `result-track:05bf8810b517bd8e7aa7323114567bce503f333b03520b3d2c8c6f4681574916` |
| 6 | `theorem` | [convolution_integrand_stronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/convolution-integrand-stronglymeasurable--d26637e8aa85631ded458eb9.md) | 52 | `result-track:d26637e8aa85631ded458eb9e68bbed828f4fae2877120f59328c835bbd3eff9` |
| 7 | `theorem` | [convolution_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/convolution-product-integrable--9e061b302eeb0cc7152f991d.md) | 57 | `result-track:9e061b302eeb0cc7152f991daf82e43dccb95811140910707c419b987f856519` |
| 8 | `theorem` | [convolutionFunction_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/convolutionfunction-integrableon--0884855f863c92a21c7973d3.md) | 72 | `result-track:0884855f863c92a21c7973d346ab1abafbd3a1a1a847e1e820bc27edafbe60e6` |
| 9 | `theorem` | [vector_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/vector-setintegral--853ac31da554a8218979dc55.md) | 76 | `result-track:853ac31da554a8218979dc55862a35ab76ef1590446169a7041a9fa2b0f9ca4d` |
| 10 | `theorem` | [actualFull_ae_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/actualfull-ae-convolution--0fc26d8078ab3916f6ab22e6.md) | 91 | `result-track:0fc26d8078ab3916f6ab22e62b7690e836bcf41134561ce0f16dde1cc0cfa3fb` |
| 11 | `theorem` | [convolutionFunction_commuted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/convolutionfunction-commuted--a863c4ed243bcef5692bb234.md) | 103 | `result-track:a863c4ed243bcef5692bb234da736606155c7e04029bab8f47f8e5fe69e80b62` |
| 12 | `theorem` | [causal_integrand_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/causal-integrand-identity--41a0c84e44410b07a444fbe8.md) | 109 | `result-track:41a0c84e44410b07a444fbe8c010a7b42d4d6b775b24cb5e3a179cbcc47c0f60` |
| 13 | `theorem` | [convolutionFunction_zeroExtension_eq_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/convolutionfunction-zeroextension-eq-setintegral--acd8c3724e2fa016bed76ee5.md) | 121 | `result-track:acd8c3724e2fa016bed76ee5ca7f633b46641d6288efdceecfa1f25c9aebdc90` |
| 14 | `theorem` | [causal_setIntegral_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/causal-setintegral-integrable--21ce88d12a8e4b78bdf8759f.md) | 130 | `result-track:21ce88d12a8e4b78bdf8759f9f0f73335d966637858a759d289175107126a5fb` |
| 15 | `theorem` | [causal_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/causal-intervalintegrable--d775a6517f4cb9e009badb0f.md) | 140 | `result-track:d775a6517f4cb9e009badb0fca97c8efd9d475240ee0f4c42c863b97938746c5` |
| 16 | `theorem` | [convolutionFunction_zeroExtension_nonpositive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/convolutionfunction-zeroextension-nonpositive--489ea2fa26f06632873fc936.md) | 145 | `result-track:489ea2fa26f06632873fc936bb2c51e4092394e9de7d35b401f1b502250535d1` |
| 17 | `theorem` | [sourceOperator_ae_causal_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/sourceoperator-ae-causal-setintegral--fc4ae962d83ff5549284d64c.md) | 150 | `result-track:fc4ae962d83ff5549284d64cb682917dd919fb70c8cf45e025fddad6a952a47e` |
| 18 | `theorem` | [sourceOperator_ae_causal_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/sourceoperator-ae-causal-integral--c688daf521ef143fa6b8b90c.md) | 161 | `result-track:c688daf521ef143fa6b8b90cad4fe6a3e3cd3b4d07e430d257d372a814557c7f` |
| 19 | `theorem` | [full_sourceOperator_causal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/full-sourceoperator-causal--c53ab6960b4ca97e725152c1.md) | 170 | `result-track:c53ab6960b4ca97e725152c1b801a4d21fb76c6976cf2c948394af8c6711d968` |
| 20 | `theorem` | [zeroExtension_sourceOperator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc.lean/declarations/zeroextension-sourceoperator--1945a0f624fad4bc67158fda.md) | 177 | `result-track:1945a0f624fad4bc67158fdadd8ccce55d955be17ffa67e7e56f43625f0c4e53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
