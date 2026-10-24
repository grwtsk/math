# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative09.Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2d31de645b729bf5a5471216944468ddb4d7a9e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2d31de645b729bf5a5471216944468ddb4d7a9e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/realrampantiderivative--42a7602ac34ecde6182f82e4.md) | 21 | `declaration-track:42a7602ac34ecde6182f82e4063b60a6a427d38cd29bc31bcffc8f56ad43fe4a` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/realrampantiderivative-hasderivat--c95ab83d5875ca34f0861932.md) | 24 | `result-track:c95ab83d5875ca34f086193203116504345cbb6fb39a30abc5e8c1df135e61f0` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/realrampantiderivative-tendsto--8c7000b8810137cbf18cb0b7.md) | 34 | `result-track:8c7000b8810137cbf18cb0b7464c7a0d94abef9cb86210cbc59b0b7e1a99ff9c` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/realramp-tail-integrable--c8a321aa60a5f4f93339b4c5.md) | 48 | `result-track:c8a321aa60a5f4f93339b4c5e2f41b9289a35a96c0c9ae9cf609dea5c5485456` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/realramp-tail-integral--9213172cff3120b0cfd71ebb.md) | 56 | `result-track:9213172cff3120b0cfd71ebbf0907ac5ec5c5d32cc7e08b3ea4035865b5e94a3` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/zeroon-lower-integrable--f1e7e5c0fbbbd404aac5396c.md) | 63 | `result-track:f1e7e5c0fbbbd404aac5396c3e19e4ea2c35d9159d1ea51dbfafa8fe310304fc` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/realramp-integrable--399013daf2d9d55a12412778.md) | 69 | `result-track:399013daf2d9d55a12412778077610c2f7c2ec3b1ead8b8d16fcc74a7c656a3f` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/realramp-integral--244a8f9c542e4ab0ddb6c3f8.md) | 79 | `result-track:244a8f9c542e4ab0ddb6c3f8a4fe0a5ad42d807d2a24f2336367a34ce32d3029` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/complexramp-norm--147960680c68b381cd6cbf35.md) | 97 | `result-track:147960680c68b381cd6cbf35e2a35afca47356f7759917b734849798b1567ef9` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualsinglerieszramp-integrable--d96a2afe0f6ff1de24ac6ce3.md) | 106 | `result-track:d96a2afe0f6ff1de24ac6ce34618291e83ecd0e659341059bfcf17d0fcb4756b` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualsinglerieszramp-integral-norm--be8d30130cd5c9eddb0af567.md) | 116 | `result-track:be8d30130cd5c9eddb0af567152d0152f74b51e83bd4492cca67486dc8a695ed` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/complexrampantiderivative--28eeb376234ad71ef991e59d.md) | 122 | `declaration-track:28eeb376234ad71ef991e59d3029211df2eb0e873907b9a8b323e86dd2cc01cd` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/complexrampantiderivative-hasderivat--425924e1bcb3d39c0f3c00a2.md) | 125 | `result-track:425924e1bcb3d39c0f3c00a2ef8a78d090385cfd04a389551b3f3c4c58cc558e` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/complex-exp-monomial-zero--a79117f826141b7a1c27a532.md) | 141 | `result-track:a79117f826141b7a1c27a5326b831e7949e5f01f3491bc539f9dc132597c57bb` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/complexrampantiderivative-tendsto--5fff5a82c992f1d13c2cc1f2.md) | 155 | `result-track:5fff5a82c992f1d13c2cc1f26b0f247f573e5b0c8cd97f975733adfa25046e01` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualsinglerieszramp-integral--d5c66f4b7a13cf341389884a.md) | 169 | `result-track:d5c66f4b7a13cf341389884a73d8c09ee1431538449db64d17f020dce25b853a` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualrieszlaplaceatom--372158d2c717c5b05f9267a6.md) | 202 | `declaration-track:372158d2c717c5b05f9267a6960982bae7e1c6421b850bdb3011bc1b1178e124` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualmangoldtrieszlaplace--48a3292d9c22317e75360a74.md) | 207 | `declaration-track:48a3292d9c22317e75360a7488ce84dc235017f33d7ec89b127f76357c7b26ff` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/atom-factor--39c2052bfb60d39af030a532.md) | 211 | `result-track:39c2052bfb60d39af030a53277233c43959a4287899c531c8db34b3231cee2cd` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualrieszlaplaceatom-integrable--aa1c7afe99425eebdec64c38.md) | 220 | `result-track:aa1c7afe99425eebdec64c389795a055a4f1dadfa8d4fb2a44ec304e048de3b5` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualrieszlaplaceatom-integral-norm--1581acc364967788e9c887f3.md) | 239 | `result-track:1581acc364967788e9c887f3448da13371602e16c903cc82024d46e79a323cd2` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--db6d5a181828ff2af22063e0.md) | 274 | `result-track:db6d5a181828ff2af22063e04bdf011a7fba539318833b36212cec950ddb684a` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualrieszlaplaceatoms-tsum--91be0d61bf8f00f9ba537bb8.md) | 285 | `result-track:91be0d61bf8f00f9ba537bb8b760c6060abdbca7f6bfe13445097688c32a9070` |
| 24 | `theorem` | [actualRieszPrimitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualrieszprimitive-continuous--6d5a2fc5b6cce1ba548d0eb5.md) | 310 | `result-track:6d5a2fc5b6cce1ba548d0eb5bb6f59cd514d1482e5af9bed58d45d46945e31e8` |
| 25 | `theorem` | [actualRieszLaplaceAtoms_tsum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualrieszlaplaceatoms-tsum-integrable--32649f5d2b751473c06ee453.md) | 329 | `result-track:32649f5d2b751473c06ee45323227b17e916aca310a721e5cf7b79d1a62bb9aa` |
| 26 | `theorem` | [actualRieszLaplaceAtoms_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualrieszlaplaceatoms-integral-tsum--0e8824c327c8ac12b6065cee.md) | 359 | `result-track:0e8824c327c8ac12b6065ceea6c0f29a508c16fe4f091844f238364e90dc36eb` |
| 27 | `theorem` | [actualRieszLaplaceAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualrieszlaplaceatom-integral--5d749f5ca8ae11fa54505529.md) | 367 | `result-track:5d749f5ca8ae11fa545055298b7ebfa5c1994b622fbfdf6e18814efa69aa2db7` |
| 28 | `theorem` | [continuousRamp_weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/continuousramp-weight-eq--62ea622bc0c52ad64519d8ee.md) | 392 | `result-track:62ea622bc0c52ad64519d8ee875527ed1acbba8245c663b8897d0de0cac8419b` |
| 29 | `theorem` | [actualRieszContinuousRamp_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualrieszcontinuousramp-laplace-integrable--fecb2f84b2ce480ada4a7f93.md) | 404 | `result-track:fecb2f84b2ce480ada4a7f933108b70c580c527e52d019aa65683c8416ab7620` |
| 30 | `theorem` | [actualRieszContinuousRamp_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualrieszcontinuousramp-laplace-integral--0c81bcbfd2210956f2b8f893.md) | 421 | `result-track:0c81bcbfd2210956f2b8f893ef7fe691943997d6872f254b09625681f6d6bcd5` |
| 31 | `theorem` | [actualH_weight_eq_sum_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualh-weight-eq-sum-sub--bc74d988a7afbbe31c2ef757.md) | 465 | `result-track:bc74d988a7afbbe31c2ef75721e0b2ed8c3b6b741553dbee6f395e482127260c` |
| 32 | `theorem` | [actualMangoldtRieszLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualmangoldtrieszlaplace-integrable--ccdddb4152c344fb08da258b.md) | 474 | `result-track:ccdddb4152c344fb08da258bf9e73c677664d4136530b2c842dacd8f1cb67f17` |
| 33 | `theorem` | [actualMangoldtRieszLaplace_eq_LSeries](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualmangoldtrieszlaplace-eq-lseries--161bc96def264001803c91b5.md) | 482 | `result-track:161bc96def264001803c91b51e50d760db676653fe4d8e210c0e2a2e1a68beb0` |
| 34 | `theorem` | [actualMangoldtRieszLaplace_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/declarations/actualmangoldtrieszlaplace-eq-logderiv--b241c5aa40067214fe2fd954.md) | 497 | `result-track:b241c5aa40067214fe2fd95451a5fe2934dc652330354b8c93bf9f169f64fe9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
