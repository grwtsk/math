# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RealThetaDerivative.Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1de6a374a69f3c211369b1169e02f4337c4af3c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1de6a374a69f3c211369b1169e02f4337c4af3c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean.json)

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
| 1 | `def` | [realThetaKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/realthetakernel--bdeedbfb7481cd64cf359804.md) | 31 | `declaration-track:bdeedbfb7481cd64cf359804ade2d45a1575cdb5e90138543dbf8c284113610d` |
| 2 | `def` | [differenceSamplingKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/differencesamplingkernel--ef32c32ee72982325a10df16.md) | 34 | `declaration-track:ef32c32ee72982325a10df16969f1594a18fefa97680e48eb0cc1200b4520324` |
| 3 | `def` | [realThetaDifferenceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/realthetadifferencekernel--86388dfb255cecc75011ac31.md) | 38 | `declaration-track:86388dfb255cecc75011ac318c75f1a92173e370bd1c122ba999aa0bdd4ea437` |
| 4 | `def` | [realThetaRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/realthetaremainder--f57955dcd889dd8c1bac7da1.md) | 41 | `declaration-track:f57955dcd889dd8c1bac7da16ad4cb8d40be0ac2d4546d080a54483434aae8a4` |
| 5 | `theorem` | [samplingIndices_eq_fixed_filter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/samplingindices-eq-fixed-filter--3bba566e8c7a071481d373e0.md) | 44 | `result-track:3bba566e8c7a071481d373e0c5f611a71c3a0d1f06b55fea2dfc75306632d44d` |
| 6 | `theorem` | [realThetaKernel_eq_strict_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/realthetakernel-eq-strict-sum--dcfa65f5034c29aa5682c672.md) | 60 | `result-track:dcfa65f5034c29aa5682c672f7340287cb5da7261be1695181880981cdf6e793` |
| 7 | `theorem` | [realThetaKernel_eq_nat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/realthetakernel-eq-nat--bed217d77ef0de2d5deaced5.md) | 75 | `result-track:bed217d77ef0de2d5deaced5454e13e4153dd32affb36b47ec92b7830aa108e2` |
| 8 | `theorem` | [realThetaRemainder_eq_nat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/realthetaremainder-eq-nat--aa1a368d31ae37ce2a370e0f.md) | 80 | `result-track:aa1a368d31ae37ce2a370e0f901d9efd4e52561ac42c9027bf1c567c7e0c8fae` |
| 9 | `theorem` | [differenceSamplingKernel_eq_mul_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/differencesamplingkernel-eq-mul-deriv--d6c93d5bb962c602d33bf1c9.md) | 85 | `result-track:d6c93d5bb962c602d33bf1c9e7f1dece1d6741883718588f2faaad73e3ccb41a` |
| 10 | `theorem` | [realThetaKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/realthetakernel-hasderivat--3e03db71f89916025d01b045.md) | 91 | `result-track:3e03db71f89916025d01b045987c1f7535f69a9df425bc68f3bc099cf6fbd2b8` |
| 11 | `theorem` | [realThetaKernel_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/realthetakernel-deriv--06480982429fb80f2c9b1cfb.md) | 107 | `result-track:06480982429fb80f2c9b1cfbde347dba7599804dfd6cefe8625aa9425820ec1e` |
| 12 | `theorem` | [realThetaRemainder_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/realthetaremainder-hasderivat--4bcb22d0c8384b434205882b.md) | 111 | `result-track:4bcb22d0c8384b434205882b346be5ff71def7eab82c470ddf65d4702ca2018a` |
| 13 | `theorem` | [realThetaRemainder_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/realthetaremainder-differentiableon--8bd387738326da18ac273d2d.md) | 121 | `result-track:8bd387738326da18ac273d2d64aa93c6e9cb2db5084c428d4c73d959d95789a3` |
| 14 | `theorem` | [difference_primitive_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/difference-primitive-eq--a7494b11a952437e79125b4a.md) | 126 | `result-track:a7494b11a952437e79125b4aebb455587bb83eb0ab1c03955b06c926f2dad9eb` |
| 15 | `def` | [differencePrimitiveSamplingKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/differenceprimitivesamplingkernel--83c44e33615890a293035c9f.md) | 144 | `declaration-track:83c44e33615890a293035c9f6de708549605cd024869dbab1d2f4bd69cde3bbb` |
| 16 | `theorem` | [differencePrimitiveSamplingKernel_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/differenceprimitivesamplingkernel-eq--1cdf0a3f67097109cceef39c.md) | 149 | `result-track:1cdf0a3f67097109cceef39c246c5eb3388c6882eaf2c72e3d28c801d2311d31` |
| 17 | `theorem` | [differencePrimitiveSamplingKernel_add_rankOne_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/differenceprimitivesamplingkernel-add-rankone-abs-le--9b39e426c8053e2d9c889911.md) | 156 | `result-track:9b39e426c8053e2d9c889911b1cc3122006db6123fd8c2de3ae42f4b17acd660` |
| 18 | `theorem` | [differencePrimitiveSamplingKernel_eq_fixed_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/differenceprimitivesamplingkernel-eq-fixed-sum--58d198479cb2b2995436a893.md) | 179 | `result-track:58d198479cb2b2995436a8938993d196214cfcd3c33a9bd769d9f57e22946a95` |
| 19 | `theorem` | [difference_tail_eq_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/difference-tail-eq-primitive--b41f985711cc143d7fcbe13f.md) | 199 | `result-track:b41f985711cc143d7fcbe13fdb3c7ef2b70cf8dbccab09cadc4bee43b01c0c23` |
| 20 | `theorem` | [rootWeight_difference_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/rootweight-difference-integral--1749973ad992c13c47a09094.md) | 237 | `result-track:1749973ad992c13c47a09094f370abe80dd96f26a2d3bba8eaa3188e9e7440fe` |
| 21 | `def` | [differenceInnerTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/differenceinnerterm--0739e087eef673964de01cae.md) | 247 | `declaration-track:0739e087eef673964de01caeb11cd69ae627e422c4f5c3af2ba24ef9653a623c` |
| 22 | `theorem` | [differenceInnerTerm_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/differenceinnerterm-eq--f9372e6c8b25a090c956e21f.md) | 251 | `result-track:f9372e6c8b25a090c956e21f439d49efca4744b65b280628367ccf3fb578ed31` |
| 23 | `theorem` | [differenceInnerTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/differenceinnerterm-integrable--cb1886df77e1891731ceb184.md) | 260 | `result-track:cb1886df77e1891731ceb18495b49be0da7a640ce9f1a891600644661398398f` |
| 24 | `theorem` | [differenceInnerTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/differenceinnerterm-integral--73f939b3fefa5af8bbe944c9.md) | 273 | `result-track:73f939b3fefa5af8bbe944c951b0c04443f5451cb08d16b2134ff29aae110832` |
| 25 | `theorem` | [differenceKernel_eq_inner_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/differencekernel-eq-inner-sum--c6472554b54272cdd3e0f438.md) | 290 | `result-track:c6472554b54272cdd3e0f43814abf8558a2a33d3a2d7e3a4fe56f224f7ef9874` |
| 26 | `theorem` | [differenceKernel_rescaled_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/differencekernel-rescaled-integrable--e308da86b48441e71f55f6df.md) | 302 | `result-track:e308da86b48441e71f55f6df599eb098916d19c62c12e85bb3a96fc748eb31ad` |
| 27 | `theorem` | [differenceKernel_integral_eq_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/differencekernel-integral-eq-primitive--23dff46beb0ec8cd83a1f042.md) | 312 | `result-track:23dff46beb0ec8cd83a1f042cfd977f83893b6e61252c055e1cf332012138314` |
| 28 | `theorem` | [differenceKernel_integral_add_rankOne_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/declarations/differencekernel-integral-add-rankone-abs-le--f4217dcfd8965c87e80cecc6.md) | 331 | `result-track:f4217dcfd8965c87e80cecc6134f4e73944a0df240a642ef47b561ba822c3b04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
