# Verification target: GRWTSK.Analysis.MeasureTheory.CondexpL2.Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdabb6f6a5f2f247f40ce2d7eaf3d2b0f495e527",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdabb6f6a5f2f247f40ce2d7eaf3d2b0f495e527`.

Source path: `GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Unique` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condExpL2](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpl2--cd885bc8f053bc75ef51b9af.md) | 73 | `declaration-track:cd885bc8f053bc75ef51b9afb24236cee96a24c5a26ceec6c1ff3d108a994272` |
| 2 | `theorem` | [aestronglyMeasurable_condExpL2](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/aestronglymeasurable-condexpl2--b78ec8390523c4c72e3232b6.md) | 81 | `result-track:b78ec8390523c4c72e3232b6c4f46ccc4b276f546fce0077bbe3afadf777077a` |
| 3 | `theorem` | [integrableOn_condExpL2_of_measure_ne_top](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/integrableon-condexpl2-of-measure-ne-top--7ad6b46983724c297aed8b94.md) | 91 | `result-track:7ad6b46983724c297aed8b9471b42f1bce08f493789d8e819c6641060677fc12` |
| 4 | `theorem` | [integrable_condExpL2_of_isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/integrable-condexpl2-of-isfinitemeasure--b2188271438c1a17b617ae37.md) | 99 | `result-track:b2188271438c1a17b617ae37ced7c8137b124bacb69de1a210d0001f8a576483` |
| 5 | `theorem` | [norm_condExpL2_le_one](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/norm-condexpl2-le-one--b2d5e05f3389f064cecbd224.md) | 106 | `result-track:b2d5e05f3389f064cecbd224cd1facc1d8e3cd9711bad689f01313da7ed9552c` |
| 6 | `theorem` | [norm_condExpL2_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/norm-condexpl2-le--475b60e5d40b488a5365a012.md) | 112 | `result-track:475b60e5d40b488a5365a01296e078b3e510bea0e79bf6e679514dc90c6533c4` |
| 7 | `theorem` | [eLpNorm_condExpL2_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/elpnorm-condexpl2-le--6a33dcb4dec4b598820e76b8.md) | 118 | `result-track:6a33dcb4dec4b598820e76b82ad2238dc93e4c79d331f2be4022adff73d343da` |
| 8 | `theorem` | [norm_condExpL2_coe_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/norm-condexpl2-coe-le--2ebff9699b05fce48578b756.md) | 126 | `result-track:2ebff9699b05fce48578b7567bf6efa7defdb6e17565deec12157ce03827ee37` |
| 9 | `theorem` | [inner_condExpL2_left_eq_right](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/inner-condexpl2-left-eq-right--93b57d949d5d27f5c1cfb232.md) | 133 | `result-track:93b57d949d5d27f5c1cfb23262befaae926486fafb5afccdc2495bb4851f14d1` |
| 10 | `theorem` | [condExpL2_indicator_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpl2-indicator-of-measurable--ea5f0cc1983be99fca402401.md) | 141 | `result-track:ea5f0cc1983be99fca402401fa1f6ecb8066b540628cd9eb5f7747408910f1cc` |
| 11 | `theorem` | [inner_condExpL2_eq_inner_fun](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/inner-condexpl2-eq-inner-fun--9a898e75b35c3da60c61e888.md) | 157 | `result-track:9a898e75b35c3da60c61e888d83ee03a0b9b11dfdf237c2bc3440e90ce657258` |
| 12 | `theorem` | [integral_condExpL2_eq_of_fin_meas_real](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/integral-condexpl2-eq-of-fin-meas-real--2d651c94071cc8e951e681c4.md) | 172 | `result-track:2d651c94071cc8e951e681c449231e635d4b667ee50e9018572a4e5381d20e7a` |
| 13 | `theorem` | [lintegral_nnnorm_condExpL2_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/lintegral-nnnorm-condexpl2-le--bc8bb7d8f6f32c900f3d383c.md) | 183 | `result-track:bc8bb7d8f6f32c900f3d383ca948c9477450612f3aeb0f62c9bf15b644d99c93` |
| 14 | `theorem` | [condExpL2_ae_eq_zero_of_ae_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpl2-ae-eq-zero-of-ae-eq-zero--55dee606be64d12cb8e59e98.md) | 209 | `result-track:55dee606be64d12cb8e59e981b00fe3598067e6481f9ea5e3f6b29b6e0a8d998` |
| 15 | `theorem` | [lintegral_nnnorm_condExpL2_indicator_le_real](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/lintegral-nnnorm-condexpl2-indicator-le-real--4811a9515d87998e908bb1ea.md) | 231 | `result-track:4811a9515d87998e908bb1ea7ebc46d9bfe306da8689cc0baeb7b694ba09602e` |
| 16 | `theorem` | [condExpL2_const_inner](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpl2-const-inner--dff5edf2653813aa7c1c5916.md) | 256 | `result-track:dff5edf2653813aa7c1c591634324c655816f41eb34fe886b793a3bd9edc51f6` |
| 17 | `theorem` | [integral_condExpL2_eq](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/integral-condexpl2-eq--ef278ec2f99eec0ac8643a69.md) | 284 | `result-track:ef278ec2f99eec0ac8643a695046ae9efcb8d67994b05bb0b0909ee5979db2a4` |
| 18 | `theorem` | [condExpL2_comp_continuousLinearMap](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpl2-comp-continuouslinearmap--99912f44de8c813c713272fc.md) | 310 | `result-track:99912f44de8c813c713272fc86ed11b236147c8a8bdb870637efe61088738bd0` |
| 19 | `theorem` | [condExpL2_indicator_ae_eq_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpl2-indicator-ae-eq-smul--ef168b45f93bb05ed41b367a.md) | 339 | `result-track:ef168b45f93bb05ed41b367a3bc6b4f0d387d26b653d912f28066f46705a23b6` |
| 20 | `theorem` | [condExpL2_indicator_eq_toSpanSingleton_comp](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpl2-indicator-eq-tospansingleton-comp--d1e4f24ee0d3904e3f2b1ce9.md) | 353 | `result-track:d1e4f24ee0d3904e3f2b1ce960d48ee33074d931c07382a94f32c844a0fcd033` |
| 21 | `theorem` | [setLIntegral_nnnorm_condExpL2_indicator_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/setlintegral-nnnorm-condexpl2-indicator-le--e02c2e7fe7a7ce9d16bedea7.md) | 369 | `result-track:e02c2e7fe7a7ce9d16bedea76a8f9543880168d07e2f9a01053b7890d04b7428` |
| 22 | `theorem` | [lintegral_nnnorm_condExpL2_indicator_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/lintegral-nnnorm-condexpl2-indicator-le--f3cf9de88b2bc19ea8776cf0.md) | 388 | `result-track:f3cf9de88b2bc19ea8776cf06b72db89a31fc457984f3503dbb72e763bdb551c` |
| 23 | `theorem` | [integrable_condExpL2_indicator](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/integrable-condexpl2-indicator--eda8e85ab1af76905feaf34e.md) | 401 | `result-track:eda8e85ab1af76905feaf34e6ac17e07266b792f42f1deecfed7263e88c5dde4` |
| 24 | `def` | [condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpindsmul--de1b8b9c2d4abd2c444fae83.md) | 422 | `declaration-track:de1b8b9c2d4abd2c444fae83b4ed708f4c8429ab877293af6413e597ce81d94b` |
| 25 | `theorem` | [aestronglyMeasurable_condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/aestronglymeasurable-condexpindsmul--fc6afc458a8ab990ba503b1c.md) | 428 | `result-track:fc6afc458a8ab990ba503b1cb26e94f1248e7e268d09521dfbc991b991342439` |
| 26 | `theorem` | [condExpIndSMul_add](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpindsmul-add--50057a9db679329e5703a87d.md) | 442 | `result-track:50057a9db679329e5703a87d63a5543fb6da324213ef9b87969f36c5b0b3e9bf` |
| 27 | `theorem` | [condExpIndSMul_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpindsmul-smul--f047df0365c57b7d7d562a8c.md) | 448 | `result-track:f047df0365c57b7d7d562a8c71fbfc623f07f164b617d1350911cebc164d2dc3` |
| 28 | `theorem` | [condExpIndSMul_smul'](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpindsmul-smul--025e819288871a858ffa1722.md) | 454 | `result-track:025e819288871a858ffa1722a7e7fdb56054e831141436f20c79a9a7e90496ca` |
| 29 | `theorem` | [condExpIndSMul_ae_eq_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpindsmul-ae-eq-smul--63eb4e4a47aebb3d36099e16.md) | 462 | `result-track:63eb4e4a47aebb3d36099e16867733dd3a52f98b396b5673a7d7d4dbcf0f4d6c` |
| 30 | `theorem` | [setLIntegral_nnnorm_condExpIndSMul_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/setlintegral-nnnorm-condexpindsmul-le--cad38239c5739387d2262621.md) | 469 | `result-track:cad38239c5739387d2262621f0685a14c9812fef0d72088825eed1cffa029dab` |
| 31 | `theorem` | [lintegral_nnnorm_condExpIndSMul_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/lintegral-nnnorm-condexpindsmul-le--ce212b183978974c03faf642.md) | 487 | `result-track:ce212b183978974c03faf642da5c7d49d4b6a061963dfb828420dbf628d117ff` |
| 32 | `theorem` | [integrable_condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/integrable-condexpindsmul--c0c3c87ad31bf3c0049bbe61.md) | 499 | `result-track:c0c3c87ad31bf3c0049bbe612613fa4173fac1c5bf711a4bb52ff5ac124e8746` |
| 33 | `theorem` | [condExpIndSMul_empty](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpindsmul-empty--c604c68fc40d4417b959bc94.md) | 510 | `result-track:c604c68fc40d4417b959bc94654bc68ba94563b84d64c4f809b5eb9954e7fde9` |
| 34 | `theorem` | [setIntegral_condExpL2_indicator](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/setintegral-condexpl2-indicator--2301e45b72f25cfaa2254c05.md) | 517 | `result-track:2301e45b72f25cfaa2254c056a5bcc8c55d2c899f0d800314416e2fc5dbcb5c8` |
| 35 | `theorem` | [setIntegral_condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/setintegral-condexpindsmul--13d550d01b60837510200832.md) | 530 | `result-track:13d550d01b60837510200832e509c16cbfb25fcf7ce0e8dfc7fecb1ea8bba9f0` |
| 36 | `theorem` | [condExpL2_indicator_nonneg](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpl2-indicator-nonneg--2edb6760eb1f17222994c691.md) | 544 | `result-track:2edb6760eb1f17222994c6911ac8c9f518d4f96fa505c06ec6553b379ef58549` |
| 37 | `theorem` | [condExpIndSMul_nonneg](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/declarations/condexpindsmul-nonneg--d0eeb25ffc034d728cda654b.md) | 568 | `result-track:d0eeb25ffc034d728cda654bc7325325622b8f68bdd6a103dcebb25d1fb72ba9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
