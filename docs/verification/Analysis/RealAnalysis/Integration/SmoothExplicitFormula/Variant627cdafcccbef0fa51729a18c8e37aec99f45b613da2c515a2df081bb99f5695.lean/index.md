# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SmoothExplicitFormula.Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f092d2a08e049e55de14dc1053b4bccde602832b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f092d2a08e049e55de14dc1053b4bccde602832b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Convolution` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [polynomial_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/polynomial-norm-le--515612cb25ddde8de0680af5.md) | 39 | `result-track:515612cb25ddde8de0680af5d69c9acac2b98d403157c3408f78d257f833cc7f` |
| 2 | `def` | [decayConstant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/decayconstant--be9c615f5c01055357332048.md) | 62 | `declaration-track:be9c615f5c01055357332048a6e730ffaddece435ab4de43e9eb559fad631cd4` |
| 3 | `theorem` | [transform_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/transform-norm-le--e18a122c843b601070b88f61.md) | 64 | `result-track:e18a122c843b601070b88f617676eda527c54ded654841a56c60a3a850c5ae89` |
| 4 | `theorem` | [transform_square_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/transform-square-norm-le--9fab1eb2e0f7b0e1c40b6949.md) | 117 | `result-track:9fab1eb2e0f7b0e1c40b6949486b438945ca1bb92c90d0bfe8d73e4977011899` |
| 5 | `theorem` | [eventually_one_le_shifted_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/eventually-one-le-shifted-norm--33f098c066b4d862a1e12a34.md) | 142 | `result-track:33f098c066b4d862a1e12a341df88739a6433e59a1b40fa9178fee15152378ad` |
| 6 | `theorem` | [source_transform_square_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/source-transform-square-norms-summable--174bc601009f33e51b904e3d.md) | 150 | `result-track:174bc601009f33e51b904e3de4ae2cc8164a5435a6fc43669b4e337dfef19c22` |
| 7 | `theorem` | [smoothed_square_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/smoothed-square-norm-le--032385beeb8f7f55a9216282.md) | 160 | `result-track:032385beeb8f7f55a921628248f6363340e7f8656025f96e87933062ee304b58` |
| 8 | `theorem` | [smoothed_squares_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/smoothed-squares-summable--75bfc607f836e49ca7e02004.md) | 180 | `result-track:75bfc607f836e49ca7e020047a9484d1c2514428eb0c62190d88c039d2ac5098` |
| 9 | `def` | [correlation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/correlation--8c3cf8c277f2f838423a222d.md) | 190 | `declaration-track:8c3cf8c277f2f838423a222d53d153c7dc7795b7a557dc685a8718b2f799a75d` |
| 10 | `def` | [bilateral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/bilateral--f92421bc4892f8c0c1a30bab.md) | 192 | `declaration-track:f92421bc4892f8c0c1a30bab8b7050c9651fc07793b8b5cb024c3009926eda39` |
| 11 | `theorem` | [weighted_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/weighted-integrable--90aaacc71702cba6440ad5f6.md) | 195 | `result-track:90aaacc71702cba6440ad5f654842a5c13c97b3a4525abbdaf1eeb93105124e8` |
| 12 | `theorem` | [correlation_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/correlation-eq-convolution--99a260262101d4cbe954dabb.md) | 204 | `result-track:99a260262101d4cbe954dabb32cbc4581c2c0d49b507b86bfc30699129934b8f` |
| 13 | `theorem` | [correlation_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/correlation-even--7645229860ff3d44b39103db.md) | 213 | `result-track:7645229860ff3d44b39103dba339eeafbfa95a6e7b9148af647301f6ccc8cf27` |
| 14 | `theorem` | [correlation_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/correlation-contdiff--300b3d3092c493653ac9d206.md) | 220 | `result-track:300b3d3092c493653ac9d2069262021ada5871135b5a4ecdb1e004cb52a51bbf` |
| 15 | `theorem` | [correlation_support_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/correlation-support-subset--6ea31c9be94bc58362279831.md) | 226 | `result-track:6ea31c9be94bc58362279831233f95fc26c5a470d14e06364ab0759c6deeefbc` |
| 16 | `theorem` | [weighted_correlation_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/weighted-correlation-eq-convolution--6c0d42498c83df8b479d489a.md) | 237 | `result-track:6c0d42498c83df8b479d489aa8b310f0a7a2779be65a03397172be48828e52aa` |
| 17 | `theorem` | [weighted_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/weighted-product-integrable--1f481f2f871d0ca77d88b3b0.md) | 260 | `result-track:1f481f2f871d0ca77d88b3b0b10a957423f45609cee91eafb22a46cbafefa934` |
| 18 | `theorem` | [bilateral_correlation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/bilateral-correlation--270cf5b8a5c23aa27ef7432d.md) | 269 | `result-track:270cf5b8a5c23aa27ef7432dfb33fd7cc62c25a6e2501f8a8d22c98ee7cc2d0d` |
| 19 | `def` | [smoothKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/smoothkernel--900d999b7f2afc16ff072dc0.md) | 279 | `declaration-track:900d999b7f2afc16ff072dc0f7cd506527c10abdc4d0c56d8b56cb66ab8dbb32` |
| 20 | `def` | [smoothKernelFT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/smoothkernelft--1d531f98faec92c7eff98c94.md) | 283 | `declaration-track:1d531f98faec92c7eff98c94b4b5ad875e56d2b59b523d48a8595972aca6d955` |
| 21 | `theorem` | [smoothKernelFT_eq_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/smoothkernelft-eq-square--da380795d5eacae9d4e1a153.md) | 288 | `result-track:da380795d5eacae9d4e1a15334bbd7293046183af6a541c02145402ce4a5e028` |
| 22 | `theorem` | [smoothKernelFT_shifted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/smoothkernelft-shifted--1c2cca98920e2226f8b2303d.md) | 301 | `result-track:1c2cca98920e2226f8b2303dc2636550b6f2bc25da113ee26634e2ec31032e21` |
| 23 | `theorem` | [smoothed_pole_bilateral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/smoothed-pole-bilateral--f0e4f634f158c06f3bd16c9f.md) | 310 | `result-track:f0e4f634f158c06f3bd16c9ff3f780316e40a400d96f78a9af33b0cc5a1bc6c4` |
| 24 | `def` | [SmoothExplicitFormulaObligation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/smoothexplicitformulaobligation--23a22c4e63a294814bd1b173.md) | 326 | `declaration-track:23a22c4e63a294814bd1b173b46d9c70c5f68aaa2f2f1f3fcd2c797f54888abf` |
| 25 | `theorem` | [smooth_kernel_admission](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/declarations/smooth-kernel-admission--f9059eb0418fb9039f6f7729.md) | 336 | `result-track:f9059eb0418fb9039f6f77291e6e4bcb0af727cef829507ea383ced0fe48fb79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
