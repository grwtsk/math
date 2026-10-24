# GRWTSK.Analysis.RealAnalysis.Integration.NumericalEstimate.Variantba80e3528287d69d0a6829266591a502c8b348b24c4155fc9d89acf99aeb2e33

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/NumericalEstimate/Variantba80e3528287d69d0a6829266591a502c8b348b24c4155fc9d89acf99aeb2e33.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22d6abb8119e099c4a409f3905fa1b966a538981`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/NumericalEstimate/Variantba80e3528287d69d0a6829266591a502c8b348b24c4155fc9d89acf99aeb2e33.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [NumericalEstimateKind](declarations/numericalestimatekind--165d0be2c0e5254b9fd1a922.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [DifferentialProblemKind](declarations/differentialproblemkind--31fdf66e1d925696a2d581c3.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [FiniteDomain](declarations/finitedomain--4a9df47e8b7d4795257be47e.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [PrecisionSpec](declarations/precisionspec--281b557404c18b8b52c7b81a.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AlgorithmSpec](declarations/algorithmspec--1063c0bf798f6bde1daf6908.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [ErrorModel](declarations/errormodel--67b504c9aa59af6d81d24184.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [RationalIntervalEndpoint](declarations/rationalintervalendpoint--deeaceab59fdb1e9363afe49.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [RationalInterval](declarations/rationalinterval--78b4aa7115efd3513d27c308.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [IntervalArithmeticPayload](declarations/intervalarithmeticpayload--afa67a0f9500af0f88229f6e.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [TailBoundPayload](declarations/tailboundpayload--2f2752a2e9ab823d608c2eac.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [ContourIntegralPayload](declarations/contourintegralpayload--9c1bd1688af7f885c35601d2.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ArgumentPrincipleCountPayload](declarations/argumentprinciplecountpayload--225133fba5b2f675882fa7e9.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [ValidatedIntegrationPayload](declarations/validatedintegrationpayload--2d53e69db9f41db163dd6a17.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [SpectralEnclosurePayload](declarations/spectralenclosurepayload--f8d7fa00a164be720d8c0908.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [OperatorNormBoundPayload](declarations/operatornormboundpayload--e748b167aec6aee66b59b2c2.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [RigorousQuadraturePayload](declarations/rigorousquadraturepayload--fcda5ab5317b12152bca9abb.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [FiniteNumericalEstimatePayload](declarations/finitenumericalestimatepayload--21a201e9e830acc4e2a2a437.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [finite_domain_sound](declarations/finite-domain-sound--4cda1b67b76aab2fc13d3316.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [precision_spec_sound](declarations/precision-spec-sound--6e42e737b8e2f4cda2c4dc50.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [algorithm_spec_sound](declarations/algorithm-spec-sound--3cbe9d293c97a9d8e7c091d8.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [error_model_sound](declarations/error-model-sound--2d3854b402675b410d3c1b30.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rational_interval_sound](declarations/rational-interval-sound--05987be0de30480da8283af5.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [interval_arithmetic_payload_sound](declarations/interval-arithmetic-payload-sound--43d8ad29689fc8e07f1e8599.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tail_bound_payload_sound](declarations/tail-bound-payload-sound--7bdafb38a5f59effdf124dea.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [contour_integral_payload_sound](declarations/contour-integral-payload-sound--8f7db7ec82f5b871b24b0170.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [argument_principle_count_payload_sound](declarations/argument-principle-count-payload-sound--7359fb0e0cc152e43362406d.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [validated_integration_payload_sound](declarations/validated-integration-payload-sound--53a8088ab31c648374800b06.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [spectral_enclosure_payload_sound](declarations/spectral-enclosure-payload-sound--d9233f900f289daac4f08c5c.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [operator_norm_bound_payload_sound](declarations/operator-norm-bound-payload-sound--5158811fc60ae5e080580df1.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rigorous_quadrature_payload_sound](declarations/rigorous-quadrature-payload-sound--5dafc47b13da14c6b923494b.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [finite_numerical_estimate_payload_sound](declarations/finite-numerical-estimate-payload-sound--8eeabbbf67572d9adcb95c60.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [FinitePayloadOwnsIntervalArithmeticTheorem](declarations/finitepayloadownsintervalarithmetictheorem--da1a44d091f96aa04c9aed35.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [FinitePayloadOwnsTailBoundTheorem](declarations/finitepayloadownstailboundtheorem--3e3c56abf4d1ae3fd6bc7fb3.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [FinitePayloadOwnsContourIntegralTheorem](declarations/finitepayloadownscontourintegraltheorem--fabe4f690a0a097c76e1b6b8.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [FinitePayloadOwnsArgumentPrincipleCountTheorem](declarations/finitepayloadownsargumentprinciplecounttheorem--4a4ad4ef04c4513f3e608756.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [FinitePayloadOwnsValidatedIntegrationTheorem](declarations/finitepayloadownsvalidatedintegrationtheorem--d233ff6130215533ed691815.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [FinitePayloadOwnsSpectralEnclosureTheorem](declarations/finitepayloadownsspectralenclosuretheorem--ab1755d3f225c1945fef78c7.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [FinitePayloadOwnsOperatorNormBoundTheorem](declarations/finitepayloadownsoperatornormboundtheorem--ec11bb44e204e701a5d76825.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [FinitePayloadOwnsRigorousQuadratureTheorem](declarations/finitepayloadownsrigorousquadraturetheorem--de9f055f0c35e6a9acee0cf4.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [FinitePayloadOwnsTheoremLevelInterpretation](declarations/finitepayloadownstheoremlevelinterpretation--21e53f4c52cb0699f1272715.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [finite_payload_not_interval_arithmetic_theorem](declarations/finite-payload-not-interval-arithmetic-theorem--e5d575dd11eabb917ce93723.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [finite_payload_not_tail_bound_theorem](declarations/finite-payload-not-tail-bound-theorem--6d417cd8b788c6baef423e39.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [finite_payload_not_contour_integral_theorem](declarations/finite-payload-not-contour-integral-theorem--7c7da026398993b667ace227.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [finite_payload_not_argument_principle_count_theorem](declarations/finite-payload-not-argument-principle-count-theorem--51340aaa717a61a9b290de74.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [finite_payload_not_validated_integration_theorem](declarations/finite-payload-not-validated-integration-theorem--4a429f11553efe1283aa0392.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [finite_payload_not_spectral_enclosure_theorem](declarations/finite-payload-not-spectral-enclosure-theorem--3db9b44d5c54f9772122674a.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [finite_payload_not_operator_norm_bound_theorem](declarations/finite-payload-not-operator-norm-bound-theorem--636cbcc7fe412f58b8a1cb86.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [finite_payload_not_rigorous_quadrature_theorem](declarations/finite-payload-not-rigorous-quadrature-theorem--a6b8d7dc85018ecbf1756d80.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [finite_payload_not_theorem_level_interpretation](declarations/finite-payload-not-theorem-level-interpretation--0eb600b794a0a40d8b23a8e6.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [finite_numerical_estimate_payload_boundary_summary](declarations/finite-numerical-estimate-payload-boundary-summary--5e8211a5554f620f2c79b2d5.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
