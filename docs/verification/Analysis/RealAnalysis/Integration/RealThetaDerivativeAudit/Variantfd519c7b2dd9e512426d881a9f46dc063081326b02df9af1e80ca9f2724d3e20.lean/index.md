# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RealThetaDerivativeAudit.Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "989ec19043f680d216c613841ac5c98df70f39c4",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `989ec19043f680d216c613841ac5c98df70f39c4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationPrimitiveMoments` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realThetaKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/realthetakernel--b092ab27a44ed1d567c68c3d.md) | 31 | `declaration-track:b092ab27a44ed1d567c68c3d3f65f42b070f10268b3ac23e90d5bb374deb6e0b` |
| 2 | `def` | [differenceSamplingKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/differencesamplingkernel--1eae364f3166eed0403fe24d.md) | 34 | `declaration-track:1eae364f3166eed0403fe24d879e96d81eee330e1d72004167df9fe60063e6c4` |
| 3 | `def` | [realThetaDifferenceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/realthetadifferencekernel--bd5227c3cd3bb16597296e7b.md) | 38 | `declaration-track:bd5227c3cd3bb16597296e7b959d6302a27e19aa5107d3501eace835406ce54a` |
| 4 | `def` | [realThetaRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/realthetaremainder--b3e7ca562d168fb349a7cd83.md) | 41 | `declaration-track:b3e7ca562d168fb349a7cd8384505dd07e60f047762da8f6ce36b8a1bbf3b27a` |
| 5 | `theorem` | [samplingIndices_eq_fixed_filter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/samplingindices-eq-fixed-filter--3366997ce88c1086f41cc8ea.md) | 44 | `result-track:3366997ce88c1086f41cc8ea47e5f031abd04aac3046d4e0689d887f3c5cd4c7` |
| 6 | `theorem` | [realThetaKernel_eq_strict_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/realthetakernel-eq-strict-sum--4b5d9485a49e9eabe0da0b26.md) | 60 | `result-track:4b5d9485a49e9eabe0da0b26704530e476b0cde3f5ebfe1caeb999a8511868aa` |
| 7 | `theorem` | [realThetaKernel_eq_nat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/realthetakernel-eq-nat--f17027175ac56736b1a0fc16.md) | 75 | `result-track:f17027175ac56736b1a0fc16df29ea5d54fb7a7b596f672c0fd24d1eca09612a` |
| 8 | `theorem` | [realThetaRemainder_eq_nat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/realthetaremainder-eq-nat--4d386513a81e69012270bb0d.md) | 80 | `result-track:4d386513a81e69012270bb0d56e48c395b9616e54c2a5e09f4ebfb0e5c61f121` |
| 9 | `theorem` | [differenceSamplingKernel_eq_mul_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/differencesamplingkernel-eq-mul-deriv--4a6e3ca946f748240fe2b566.md) | 85 | `result-track:4a6e3ca946f748240fe2b566d39c324dc303829403ec544b472ed28aab9bcab8` |
| 10 | `theorem` | [realThetaKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/realthetakernel-hasderivat--8430bc9df1f9f89211e913d5.md) | 91 | `result-track:8430bc9df1f9f89211e913d5e5e3f816f6b9eaa400c36457ae8e87ffe9df7a57` |
| 11 | `theorem` | [realThetaKernel_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/realthetakernel-deriv--a14b852f199f6b1cd56f878b.md) | 107 | `result-track:a14b852f199f6b1cd56f878bcff551ba84a5d11a3a947fa75b3664e45f017ebc` |
| 12 | `theorem` | [realThetaRemainder_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/realthetaremainder-hasderivat--08a0b5e85c2d6bcef07afcbe.md) | 111 | `result-track:08a0b5e85c2d6bcef07afcbe127b1595b5d7e07fa82f5cb76b3a6bacaf838fb1` |
| 13 | `theorem` | [realThetaRemainder_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/realthetaremainder-differentiableon--90295b87861761f1a09c0c3a.md) | 121 | `result-track:90295b87861761f1a09c0c3a83390412838017242ba4a9eb7ae895160e8f240d` |
| 14 | `theorem` | [difference_primitive_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/difference-primitive-eq--cebbb8b8fdbc6c1dfe71be57.md) | 126 | `result-track:cebbb8b8fdbc6c1dfe71be57d426710b73c8ca263d5d895206e8e4aa3c23c3a6` |
| 15 | `def` | [differencePrimitiveSamplingKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/differenceprimitivesamplingkernel--fee9c4d5acbfe0779a6dcdd4.md) | 144 | `declaration-track:fee9c4d5acbfe0779a6dcdd434e271c6780d6c74168ebd4e9fc563018891fa71` |
| 16 | `theorem` | [differencePrimitiveSamplingKernel_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/differenceprimitivesamplingkernel-eq--4454609547e34dbe2ed152b5.md) | 149 | `result-track:4454609547e34dbe2ed152b5b057d249cdd0d082e503185b2942198b459594b0` |
| 17 | `theorem` | [differencePrimitiveSamplingKernel_add_rankOne_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/differenceprimitivesamplingkernel-add-rankone-abs-le--4bee86447edff48b2b1320c1.md) | 156 | `result-track:4bee86447edff48b2b1320c1fe7c1720c65a90cd7ec95319fc55ed667859d638` |
| 18 | `theorem` | [differencePrimitiveSamplingKernel_eq_fixed_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/differenceprimitivesamplingkernel-eq-fixed-sum--94726d56b91df526888acb38.md) | 179 | `result-track:94726d56b91df526888acb3890bea60040858f82150f5f04df4e20afb7e47c65` |
| 19 | `theorem` | [difference_tail_eq_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/difference-tail-eq-primitive--d409beb306146e13e396f557.md) | 199 | `result-track:d409beb306146e13e396f5574494e6a59c37acf720c2c24af3f516d53032fa88` |
| 20 | `theorem` | [rootWeight_difference_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/rootweight-difference-integral--c245bd3505456b0bbd649720.md) | 237 | `result-track:c245bd3505456b0bbd649720957e1bd4d035b0ac2001d991dbbd4ad647192645` |
| 21 | `def` | [differenceInnerTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/differenceinnerterm--b76b373ec8219eb4bcfb6cce.md) | 247 | `declaration-track:b76b373ec8219eb4bcfb6ccedf43c80610b4a02fb74cb4a6b4bf9f3a5a422cad` |
| 22 | `theorem` | [differenceInnerTerm_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/differenceinnerterm-eq--7d448221c62e6c86979125b9.md) | 251 | `result-track:7d448221c62e6c86979125b9b5b17d1184e7f2e362bd8db53b79e784b8b41027` |
| 23 | `theorem` | [differenceInnerTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/differenceinnerterm-integrable--25feb568cbaa27b5735521e1.md) | 260 | `result-track:25feb568cbaa27b5735521e154e5961a53ef0d07a15d78a4ddbf03f778899a19` |
| 24 | `theorem` | [differenceInnerTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/differenceinnerterm-integral--5bc9bfa5ff109406528fce1d.md) | 273 | `result-track:5bc9bfa5ff109406528fce1db67dd4d5cc9b8d7eb0c0f02c1a831bb37d507a3a` |
| 25 | `theorem` | [differenceKernel_eq_inner_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/differencekernel-eq-inner-sum--4e4c22ab82e9fc94f350e64b.md) | 290 | `result-track:4e4c22ab82e9fc94f350e64b78bdebbb6e6240f25114612b02dc0190ccc04ca3` |
| 26 | `theorem` | [differenceKernel_rescaled_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/differencekernel-rescaled-integrable--583610b4386553b779e5c41e.md) | 302 | `result-track:583610b4386553b779e5c41e4c8ee6cea4110aa9930607aa668c8639837d096a` |
| 27 | `theorem` | [differenceKernel_integral_eq_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/differencekernel-integral-eq-primitive--e7388542c3915c5e12c156a8.md) | 312 | `result-track:e7388542c3915c5e12c156a83209b8c0a52b9636e5bca72145661181fff68d0d` |
| 28 | `theorem` | [differenceKernel_integral_add_rankOne_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/declarations/differencekernel-integral-add-rankone-abs-le--5cfc308becfc96062c1a943f.md) | 331 | `result-track:5cfc308becfc96062c1a943f60e2be460ba75378a15dfc256ca01c1de74bbfe7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
