# GRWTSK.Analysis.RealAnalysis.Integration.NumericalEstimate.Variant8104fa4893626c727cda36dca0e9b7d2ef0659e6603ea480292e0b247d5f429e

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/NumericalEstimate/Variant8104fa4893626c727cda36dca0e9b7d2ef0659e6603ea480292e0b247d5f429e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37063d9f0e45dd4c6db23a263300520d7401e798`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/NumericalEstimate/Variant8104fa4893626c727cda36dca0e9b7d2ef0659e6603ea480292e0b247d5f429e.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [NumericalEstimateKind](declarations/numericalestimatekind--bd5c3c54aa6d30ce188cf195.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [DifferentialProblemKind](declarations/differentialproblemkind--554c0aa62b6523a614b5501b.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [FiniteDomain](declarations/finitedomain--1056eca963ec048852b40033.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [PrecisionSpec](declarations/precisionspec--5fc941c399cf378f3bf31498.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AlgorithmSpec](declarations/algorithmspec--e0caaa35d98bbc4e5fdebb4f.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [ErrorModel](declarations/errormodel--c2abce9c36b06462c7dc9b93.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [RationalIntervalEndpoint](declarations/rationalintervalendpoint--c5cc8980497675f84c606d5c.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [RationalInterval](declarations/rationalinterval--398c8e153f82c867669017a0.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [IntervalArithmeticPayload](declarations/intervalarithmeticpayload--a4740b48d7790baa729ae034.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [TailBoundPayload](declarations/tailboundpayload--8927ffdf0abd42960302fc09.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [ContourIntegralPayload](declarations/contourintegralpayload--82fdc6a5748407579e470a04.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ArgumentPrincipleCountPayload](declarations/argumentprinciplecountpayload--aea9fc613a8b9ec678003ced.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [ValidatedIntegrationPayload](declarations/validatedintegrationpayload--7448b5a2a5a23f5acb450087.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [SpectralEnclosurePayload](declarations/spectralenclosurepayload--df259c46e6f7f7d5fa16796b.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [OperatorNormBoundPayload](declarations/operatornormboundpayload--49dfba89501e8a1f7a566e92.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [RigorousQuadraturePayload](declarations/rigorousquadraturepayload--54785e41f5c888d3b4e9ac13.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [FiniteNumericalEstimatePayload](declarations/finitenumericalestimatepayload--809033fe672a94ab0f85046e.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [finite_domain_sound](declarations/finite-domain-sound--59f8c5f03273a144c8e25cd1.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [precision_spec_sound](declarations/precision-spec-sound--0c10eea3cf069f307a61da9c.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [algorithm_spec_sound](declarations/algorithm-spec-sound--bcf81d471764e54a2558f632.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [error_model_sound](declarations/error-model-sound--0c68b686effa15a0d46e7ac1.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rational_interval_sound](declarations/rational-interval-sound--3ee3a207e42053c125fb331b.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [interval_arithmetic_payload_sound](declarations/interval-arithmetic-payload-sound--5388ec31ced3468d7684af82.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tail_bound_payload_sound](declarations/tail-bound-payload-sound--06ad4aa2a33716a9c02d8fe1.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [contour_integral_payload_sound](declarations/contour-integral-payload-sound--ecd2f583e16b1f2d73212ace.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [argument_principle_count_payload_sound](declarations/argument-principle-count-payload-sound--cb58524d68fe3389f95dd23a.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [validated_integration_payload_sound](declarations/validated-integration-payload-sound--6f627bca4c28c2b4f51c15c2.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [spectral_enclosure_payload_sound](declarations/spectral-enclosure-payload-sound--28e14e9585b5426e9a0f0abb.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [operator_norm_bound_payload_sound](declarations/operator-norm-bound-payload-sound--19f34f57198f3946eaaacbfc.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rigorous_quadrature_payload_sound](declarations/rigorous-quadrature-payload-sound--1888238c0a3f198bcb88908b.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [finite_numerical_estimate_payload_sound](declarations/finite-numerical-estimate-payload-sound--59bff3661e75dfd7f1da5ee3.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [FinitePayloadOwnsIntervalArithmeticTheorem](declarations/finitepayloadownsintervalarithmetictheorem--2a84f88ae5cc4fe3f4da273c.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [FinitePayloadOwnsTailBoundTheorem](declarations/finitepayloadownstailboundtheorem--b42ca1785dd7175f7e519a5b.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [FinitePayloadOwnsContourIntegralTheorem](declarations/finitepayloadownscontourintegraltheorem--4b46f0fd1e15704c6a9f6add.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [FinitePayloadOwnsArgumentPrincipleCountTheorem](declarations/finitepayloadownsargumentprinciplecounttheorem--9bc8dd454343985fef8395db.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [FinitePayloadOwnsValidatedIntegrationTheorem](declarations/finitepayloadownsvalidatedintegrationtheorem--60db915188c91cb3a28becbd.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [FinitePayloadOwnsSpectralEnclosureTheorem](declarations/finitepayloadownsspectralenclosuretheorem--a9021c27cf2541b7c4cfd53c.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [FinitePayloadOwnsOperatorNormBoundTheorem](declarations/finitepayloadownsoperatornormboundtheorem--e00ded9bd8c82f1f6671bed3.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [FinitePayloadOwnsRigorousQuadratureTheorem](declarations/finitepayloadownsrigorousquadraturetheorem--eaff2474cc420b04cf097a54.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [FinitePayloadOwnsTheoremLevelInterpretation](declarations/finitepayloadownstheoremlevelinterpretation--46aa236e173676fed3de91dc.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [finite_payload_not_interval_arithmetic_theorem](declarations/finite-payload-not-interval-arithmetic-theorem--1d4ac151a4bcb0b344bf6c8d.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [finite_payload_not_tail_bound_theorem](declarations/finite-payload-not-tail-bound-theorem--891f6d2bd311ef9e327b791f.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [finite_payload_not_contour_integral_theorem](declarations/finite-payload-not-contour-integral-theorem--a9db68bbbe68f8e4c9f1c82c.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [finite_payload_not_argument_principle_count_theorem](declarations/finite-payload-not-argument-principle-count-theorem--6f3d2f0f02a17b20e6f2e0a2.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [finite_payload_not_validated_integration_theorem](declarations/finite-payload-not-validated-integration-theorem--2263413307a8305139562262.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [finite_payload_not_spectral_enclosure_theorem](declarations/finite-payload-not-spectral-enclosure-theorem--fa1d4cb59b65affbdf84e07e.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [finite_payload_not_operator_norm_bound_theorem](declarations/finite-payload-not-operator-norm-bound-theorem--87513b0aaa6ac481c374c5ad.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [finite_payload_not_rigorous_quadrature_theorem](declarations/finite-payload-not-rigorous-quadrature-theorem--b61b93e073cb406167190c13.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [finite_payload_not_theorem_level_interpretation](declarations/finite-payload-not-theorem-level-interpretation--2af156dc2a1ddb6f2c8a38dc.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [finite_numerical_estimate_payload_boundary_summary](declarations/finite-numerical-estimate-payload-boundary-summary--6d45c7486c58c07a5029cb39.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
