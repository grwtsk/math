# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceKapitzaReconstruction.Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87addcea2051e9a0c0ff4c43a287fc8ba8ebeec2",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87addcea2051e9a0c0ff4c43a287fc8ba8ebeec2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedPsiError](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/normalizedpsierror--272e3549aefe6723f618e79e.md) | 33 | `declaration-track:272e3549aefe6723f618e79ee43c74d8f08deba8da48a1e98b79203cd1d504d7` |
| 2 | `def` | [kapitzaKernel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/kapitzakernel--7650af3d7de48f7c4c9a2cc3.md) | 37 | `declaration-track:7650af3d7de48f7c4c9a2cc36a11b98c37a78abe4cfb7b820cae635327cbc7d9` |
| 3 | `def` | [kapitzaWeight](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/kapitzaweight--dd20ca8b4e785789ae7c7c64.md) | 42 | `declaration-track:dd20ca8b4e785789ae7c7c64c7d5c92013cc658f2b72c3d06d935666f8da0729` |
| 4 | `def` | [endpointValue](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/endpointvalue--c9712cbc69cecf98047c3a04.md) | 45 | `declaration-track:c9712cbc69cecf98047c3a04787d629eec68b00596c5e114f5fca4b918f2f74b` |
| 5 | `def` | [endpointSlope](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/endpointslope--630bc2fd060e8396befdb419.md) | 48 | `declaration-track:630bc2fd060e8396befdb419711e9bc4b7d46c1a94b88934e759e30cd5521e4f` |
| 6 | `def` | [affineTrend](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/affinetrend--3e3445ac145b6973bb08bc24.md) | 52 | `declaration-track:3e3445ac145b6973bb08bc246748034a6769d758b8e50be06bd0eb4e032d724d` |
| 7 | `def` | [nonaffineDiscrepancy](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/nonaffinediscrepancy--ab446f610f2b14fb2d0656b7.md) | 55 | `declaration-track:ab446f610f2b14fb2d0656b74271d86c5470632ac91ee9f203cc2e25b34ae913` |
| 8 | `def` | [kernelMomentZero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/kernelmomentzero--f6e1bf983061a7d245d43ef7.md) | 58 | `declaration-track:f6e1bf983061a7d245d43ef7094bed2184f009dc7aa34be531fb9285b1f7b8f5` |
| 9 | `def` | [kernelMomentOne](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/kernelmomentone--baec805011e93bbd0488ac77.md) | 61 | `declaration-track:baec805011e93bbd0488ac77e06187c8af142b58ac6c9a29065c649ec6c15ac8` |
| 10 | `def` | [trendValue](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/trendvalue--2882d99f67d89a70d5dce224.md) | 64 | `declaration-track:2882d99f67d89a70d5dce2249d8901fa8667965763d2a6744a91d5e7e83949ea` |
| 11 | `def` | [nonaffineWork](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/nonaffinework--eb216db24aa236b58853b72a.md) | 68 | `declaration-track:eb216db24aa236b58853b72a27e3cae8114cf46144c10f03de241ac6a8263b2e` |
| 12 | `def` | [continuousDefect](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/continuousdefect--496ba96f69768b4f5a478a00.md) | 72 | `declaration-track:496ba96f69768b4f5a478a007a5b950da57ad8bde21d8dad650732a3bb15dcbe` |
| 13 | `theorem` | [normalizedPsiError_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/normalizedpsierror-zero--c68ecb49323a83621b714d58.md) | 75 | `result-track:c68ecb49323a83621b714d5837137ce355c6542d4f6cf570cd77667ec6b46644` |
| 14 | `theorem` | [nonaffineDiscrepancy_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/nonaffinediscrepancy-upper--0f84776799fae5c565fafbbb.md) | 78 | `result-track:0f84776799fae5c565fafbbb1c30cf4bfd5d6688581813c5d6747fd610c2186c` |
| 15 | `theorem` | [normalizedPsiError_eq_prefix](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/normalizedpsierror-eq-prefix--32e897e75baf020fa8043006.md) | 81 | `result-track:32e897e75baf020fa8043006b87cdcaac7d7f87e884e8408245055c35b3e06ee` |
| 16 | `theorem` | [chebyshev_mul_continuous_intervalIntegrable](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/chebyshev-mul-continuous-intervalintegrable--536748c26fd211da92187964.md) | 87 | `result-track:536748c26fd211da921879647e63be90a8f8842f2e87110d76d9f218e266926c` |
| 17 | `theorem` | [normalizedPsiError_intervalIntegrable](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/normalizedpsierror-intervalintegrable--2f3382dcdacf36fa8932fb6b.md) | 108 | `result-track:2f3382dcdacf36fa8932fb6b688bec2e179017fd1ccf02876e5daf0a1179f8fb` |
| 18 | `theorem` | [kapitzaWeight_continuous](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/kapitzaweight-continuous--58e41869787b686abb9fe7e2.md) | 118 | `result-track:58e41869787b686abb9fe7e2e895f44776b5eb888c44cfaede32f4d0a3738e39` |
| 19 | `theorem` | [weightedPsiError_intervalIntegrable](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/weightedpsierror-intervalintegrable--59b7c1e637abcf0274cf6212.md) | 123 | `result-track:59b7c1e637abcf0274cf621247c409e29d7f9eb6373918d706d3ff48cb4c781c` |
| 20 | `theorem` | [kernelMomentZero_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/kernelmomentzero-eq--73ffc957815a5cff7e61a4dd.md) | 130 | `result-track:73ffc957815a5cff7e61a4ddbb61fde3dd54fad09773568a287a02b58938b601` |
| 21 | `theorem` | [mertensResidual_eq_weightedPsi](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/mertensresidual-eq-weightedpsi--bf3aae7bd80c78a03df6b17c.md) | 149 | `result-track:bf3aae7bd80c78a03df6b17c32ff6aaf17cf0f8911c14ba67412ec341cc25a7c` |
| 22 | `theorem` | [mertensResidual_eq_affine_nonaffine](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/mertensresidual-eq-affine-nonaffine--46c24bae860bde913982bfd4.md) | 206 | `result-track:46c24bae860bde913982bfd47cc42302a813705bc07e858742284d86518fe937` |
| 23 | `theorem` | [one_add_continuous_eq_defect](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/one-add-continuous-eq-defect--f5a75ee0e8aa698e43dd400c.md) | 247 | `result-track:f5a75ee0e8aa698e43dd400cb4a92d888cc45b3d08e0997123b45c80ee845504` |
| 24 | `theorem` | [mertensResidual_eq_defect_trend_nonaffine](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/mertensresidual-eq-defect-trend-nonaffine--c6d09665b47bcdcb7954790d.md) | 256 | `result-track:c6d09665b47bcdcb7954790d61a14a08e5bdc31dc723881c8be94820d60feea0` |
| 25 | `def` | [negativeFirstMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/negativefirstmoment--c4fa0e6d14d11a437a66784b.md) | 263 | `declaration-track:c4fa0e6d14d11a437a66784b481670ddfb04ea44d11a743a170cb7e87fc1f2a4` |
| 26 | `theorem` | [positiveFirstMoment_eq_negative](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/positivefirstmoment-eq-negative--04e74f4974bce868bc378840.md) | 267 | `result-track:04e74f4974bce868bc37884070a89e9e85e25864399d6125d2177357877f6c8a` |
| 27 | `theorem` | [kernelMomentOne_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/kernelmomentone-eq--ceac7eb2451a1fc53ea0a760.md) | 315 | `result-track:ceac7eb2451a1fc53ea0a7606fb62e95f192638fc76b9d1f60b4c9c445cc3fa7` |
| 28 | `theorem` | [negativeFirstMoment_abs_le_four](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/negativefirstmoment-abs-le-four--305c9f75072bff20c464c13b.md) | 358 | `result-track:305c9f75072bff20c464c13b1d0be37f074e18c43a3d3bb3918757bcb53bb685` |
| 29 | `theorem` | [kernelMomentZero_abs_le_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/kernelmomentzero-abs-le-one--e7e7e46adb771e59d5276d2a.md) | 387 | `result-track:e7e7e46adb771e59d5276d2a44a8443dcc4cd7eaa2099d04bfe8c4d2d84bd22f` |
| 30 | `theorem` | [kernelMomentOne_abs_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/kernelmomentone-abs-le--6fa5c69b19dc3bb6906eaa60.md) | 393 | `result-track:6fa5c69b19dc3bb6906eaa60726df212680c7894083e6d4b62a174ea2eb3bf29` |
| 31 | `theorem` | [trendValue_abs_le_of_samples](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/trendvalue-abs-le-of-samples--89420c9917df35d7a7895759.md) | 410 | `result-track:89420c9917df35d7a78957598720cf6296b7b3f656f763330bd8ba65d4798c38` |
| 32 | `theorem` | [continuousDefect_antitone](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/continuousdefect-antitone--f1657741766485b4e89e76d7.md) | 437 | `result-track:f1657741766485b4e89e76d7f912d70b19aa1e69457de1ff99a53b7526820d75` |
| 33 | `def` | [originalPrefixFloor](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/originalprefixfloor--8e88564571110c6263991fc3.md) | 451 | `declaration-track:8e88564571110c6263991fc304ea4ac64a5a047cd10804ae485c459ab25355e2` |
| 34 | `theorem` | [originalPrefixFloor_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/originalprefixfloor-le--bdc53773a4c707cde4c5dbda.md) | 455 | `result-track:bdc53773a4c707cde4c5dbda563b1d7d18fbba055733de1486f8e76275abec2b` |
| 35 | `theorem` | [residual_le_of_nonaffine_cap](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/residual-le-of-nonaffine-cap--464d04a530ea2ad4b5bee6e4.md) | 463 | `result-track:464d04a530ea2ad4b5bee6e4079aca4c5f0c433d0be8e91236353b54ce131fda` |
| 36 | `theorem` | [original_lower_of_nonaffine_cap](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/original-lower-of-nonaffine-cap--6203440654e82d029a74ccc7.md) | 473 | `result-track:6203440654e82d029a74ccc77163c72c3a3959380f14a9cd6455b37417dd628b` |
| 37 | `theorem` | [estimate_of_nonaffine_cap](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/estimate-of-nonaffine-cap--1ff04f676c2213cc80953066.md) | 495 | `result-track:1ff04f676c2213cc809530662584d617051bb834df01fd82f71dd831aa7af640` |
| 38 | `def` | [consumerRadius](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/consumerradius--bd13f080f957200886f7b862.md) | 502 | `declaration-track:bd13f080f957200886f7b8624b7675778f61758570cc3e4050b44bcf8e163596` |
| 39 | `theorem` | [original_lower_of_separate_nonaffine_caps](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean/declarations/original-lower-of-separate-nonaffine-caps--162dcac4538837d7050be240.md) | 505 | `result-track:162dcac4538837d7050be2404d495f4fb3c87dce77253e610c0f255eccd347d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
