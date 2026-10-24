# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Symmetric.Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8efcc2b74466cfd3603f72cf3d5216b86825713e",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8efcc2b74466cfd3603f72cf3d5216b86825713e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean.json)

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
| 1 | `def` | [IsSymmSndFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/issymmsndfderivwithinat--91d00fd8d3867cd968d0a800.md) | 83 | `declaration-track:91d00fd8d3867cd968d0a800c46744f91f9a386df8ee15a6bc62ee926558cf79` |
| 2 | `def` | [IsSymmSndFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/issymmsndfderivat--43b6586079142ee7dba3cb14.md) | 91 | `declaration-track:43b6586079142ee7dba3cb14844baa799fb2eb2c1ad4dfec54dbcb33cca18cb6` |
| 3 | `lemma` | [IsSymmSndFDerivWithinAt.eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/issymmsndfderivwithinat-eq--9b196bbba4bbb6b5ed06d64f.md) | 94 | `result-track:9b196bbba4bbb6b5ed06d64fe94c107ed06fdaf2dc06f036d8dcecc00cd2d0ef` |
| 4 | `lemma` | [IsSymmSndFDerivAt.eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/issymmsndfderivat-eq--b9cbd132091e6ce8cc5de895.md) | 98 | `result-track:b9cbd132091e6ce8cc5de895d68d61f85da6cdab81cd05d99e4240ba922de279` |
| 5 | `lemma` | [fderivWithin_fderivWithin_eq_of_mem_nhdsWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/fderivwithin-fderivwithin-eq-of-mem-nhdswithin--858261eed49c82c714a9f158.md) | 103 | `result-track:858261eed49c82c714a9f158ae67e7b00bb917ceb8ce39994cb1f9857217ea5c` |
| 6 | `lemma` | [fderivWithin_fderivWithin_eq_of_eventuallyEqSet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/fderivwithin-fderivwithin-eq-of-eventuallyeqset--1601a02c54a5fe733f428a74.md) | 120 | `result-track:1601a02c54a5fe733f428a7473bc2776a92ee68a024a7e0807b27c03c10b4297` |
| 7 | `lemma` | [fderivWithin_fderivWithin_eq_of_mem_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/fderivwithin-fderivwithin-eq-of-mem-nhds--69621a1ba354941c3cb40cd9.md) | 131 | `result-track:69621a1ba354941c3cb40cd964d438d4dd56494cff1bd1619b75e806a5ddd1dd` |
| 8 | `lemma` | [isSymmSndFDerivWithinAt_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/issymmsndfderivwithinat-univ--4cc9786f2dd38d2a57e41623.md) | 138 | `result-track:4cc9786f2dd38d2a57e4162385989a0ea92bff6dbf630986c7e2df66c76e63f2` |
| 9 | `theorem` | [IsSymmSndFDerivWithinAt.mono_of_mem_nhdsWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/issymmsndfderivwithinat-mono-of-mem-nhdswithin--a97c8cd2f23f95ef4eb7ca88.md) | 142 | `result-track:a97c8cd2f23f95ef4eb7ca88d6a9cd8b63fe0d77177ce5a6c7a9990dcab7d03c` |
| 10 | `theorem` | [IsSymmSndFDerivWithinAt.congr_set](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/issymmsndfderivwithinat-congr-set--e6dc8a9c5d5b2c518f32ce34.md) | 150 | `result-track:e6dc8a9c5d5b2c518f32ce349c48054ea0fa25d46831e3400b92eff01f9739ac` |
| 11 | `theorem` | [isSymmSndFDerivWithinAt_congr_set](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/issymmsndfderivwithinat-congr-set--9077bff1270015d6fe29777a.md) | 156 | `result-track:9077bff1270015d6fe29777a6f2d25aad1ae65b71ff68b50c318031267791395` |
| 12 | `theorem` | [IsSymmSndFDerivAt.isSymmSndFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/issymmsndfderivat-issymmsndfderivwithinat--95ff483859b4f808276fde05.md) | 160 | `result-track:95ff483859b4f808276fde055802523af2ae1ccf8175ec5c479595d9e756ec75` |
| 13 | `theorem` | [isSymmSndFDerivWithinAt_iff_iteratedFDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/issymmsndfderivwithinat-iff-iteratedfderivwithin--826e3158910658cb55ac6a65.md) | 166 | `result-track:826e3158910658cb55ac6a655e6640a9691e6b4331eda51f8511fc0a16544052` |
| 14 | `theorem` | [isSymmSndFDerivAt_iff_iteratedFDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/issymmsndfderivat-iff-iteratedfderiv--f88c38275274377bb6b68c1d.md) | 174 | `result-track:f88c38275274377bb6b68c1d6f63f4f6c9e63041f254ee491e5e2b8b9009ede0` |
| 15 | `theorem` | [IsSymmSndFDerivWithinAt.iteratedFDerivWithin_cons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/issymmsndfderivwithinat-iteratedfderivwithin-cons--63eac01720b2bb4b046e5433.md) | 180 | `result-track:63eac01720b2bb4b046e5433a1fec4531893584e28fdcf8b014deaafbc051c1b` |
| 16 | `theorem` | [IsSymmSndFDerivAt.iteratedFDeriv_cons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/issymmsndfderivat-iteratedfderiv-cons--5d6b18f4cd65a98f3ec73916.md) | 189 | `result-track:5d6b18f4cd65a98f3ec739166204507866af3e8ec3adfa8321aa6956a6f3182f` |
| 17 | `theorem` | [ContDiffWithinAt.isSymmSndFDerivWithinAt_of_omega](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/contdiffwithinat-issymmsndfderivwithinat-of-omega--559f03ffb7cffd2ad1777c23.md) | 195 | `result-track:559f03ffb7cffd2ad1777c23b0b8573ce8a730762765ab4e33c43794eb192b80` |
| 18 | `theorem` | [ContDiffAt.isSymmSndFDerivAt_of_omega](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/contdiffat-issymmsndfderivat-of-omega--7cc60b9b31b027c9e3163632.md) | 202 | `result-track:7cc60b9b31b027c9e316363298992fc08eb1d70e4aa85e7159a3e37f281ec209` |
| 19 | `theorem` | [Convex.taylor_approx_two_segment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/convex-taylor-approx-two-segment--645c648049ab92bbb60e31a6.md) | 226 | `result-track:645c648049ab92bbb60e31a6098a94ebf15a0788c397049d1df2bbeba83a6a2a` |
| 20 | `theorem` | [Convex.isLittleO_alternate_sum_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/convex-islittleo-alternate-sum-square--ed0b8540b2deb04aa89f21e2.md) | 334 | `result-track:ed0b8540b2deb04aa89f21e2ce83ee1262fdc503d4ef26bec92b766115ecf138` |
| 21 | `theorem` | [Convex.second_derivative_within_at_symmetric_of_mem_interior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/convex-second-derivative-within-at-symmetric-of-mem-interior--d17cef02d9ed62e87b1b32a1.md) | 374 | `result-track:d17cef02d9ed62e87b1b32a18928207725df8df19850d236c7211f36e14eaa0a` |
| 22 | `theorem` | [Convex.second_derivative_within_at_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/convex-second-derivative-within-at-symmetric--021cec18eb2371886b65304a.md) | 399 | `result-track:021cec18eb2371886b65304a120e33e735494f81e6baffd9abfa13bed8d3f475` |
| 23 | `theorem` | [second_derivative_symmetric_of_eventually_of_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/second-derivative-symmetric-of-eventually-of-real--ddef095c7576be3ed9839572.md) | 446 | `result-track:ddef095c7576be3ed98395727cd7683ad1682db4ba340001a8d17a3003c40691` |
| 24 | `theorem` | [second_derivative_symmetric_of_eventually](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/second-derivative-symmetric-of-eventually--d782330db30f7898f894c6c9.md) | 464 | `result-track:d782330db30f7898f894c6c94828e7131219dcb9d3505e7c059f1e003ae33c0e` |
| 25 | `theorem` | [second_derivative_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/second-derivative-symmetric--45d3e933b50d1191649a74ae.md) | 483 | `result-track:45d3e933b50d1191649a74aea782df574e9b40f8ad3b8f5862b02dd66a0e126f` |
| 26 | `lemma` | [minSmoothness_of_isRCLikeNormedField](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/minsmoothness-of-isrclikenormedfield--4cf95de9093360422b0e7c22.md) | 496 | `result-track:4cf95de9093360422b0e7c22132c4b6062ee588071099bb9f5c50a57ee150694` |
| 27 | `lemma` | [le_minSmoothness](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/le-minsmoothness--ed57702ab63f78eaf2e65553.md) | 500 | `result-track:ed57702ab63f78eaf2e65553c11e86c8459aa1e676b963c3dea845b08239995b` |
| 28 | `lemma` | [minSmoothness_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/minsmoothness-add--7f11cfee3a828f9475aa792c.md) | 504 | `result-track:7f11cfee3a828f9475aa792c2bbbcb833065dadd79bf10228b19836b10b4fd5b` |
| 29 | `lemma` | [minSmoothness_monotone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/minsmoothness-monotone--5cc0b4b612b9303d1f065e5f.md) | 508 | `result-track:5cc0b4b612b9303d1f065e5f194ce0388bd4f9af4b9201cbc1e64b4b2d0df63a` |
| 30 | `lemma` | [minSmoothness_eq_infty](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/minsmoothness-eq-infty--aa8f3168c40ec1d49963aa48.md) | 513 | `result-track:aa8f3168c40ec1d49963aa48ebc6340a47751d823c4d02eb67b4e4b778b21436` |
| 31 | `lemma` | [exist_minSmoothness_le_ne_infty](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/exist-minsmoothness-le-ne-infty--0d6422732504ca472785d821.md) | 523 | `result-track:0d6422732504ca472785d8219ce3957a779034095bc66055de47108ddcdf81e4` |
| 32 | `theorem` | [ContDiffAt.isSymmSndFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/contdiffat-issymmsndfderivat--d4a9029a3ffc9805726b8bc8.md) | 534 | `result-track:d4a9029a3ffc9805726b8bc84d02ebe86a8c36768bf79a8398c4baa2887de601` |
| 33 | `theorem` | [ContDiffWithinAt.isSymmSndFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/declarations/contdiffwithinat-issymmsndfderivwithinat--34cbf47160e4afac4a44a73f.md) | 560 | `result-track:34cbf47160e4afac4a44a73fd2e05cee1513a10c74af2bcb038293f0be8b1c44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
