# GRWTSK.Analysis.Complex.HolomorphicAreaGaugeTransport

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/HolomorphicAreaGaugeTransport.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0bd8e61c6305566ce1685fe8bdf15e74f0b7f22f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GaugeAreaCompletion](declarations/gaugeareacompletion--bf7cebd902f767d785a8cc4d.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [areaGauge](declarations/areagauge--98db53388034cf7d40fd716a.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [realizedSection](declarations/realizedsection--0979a40453a7d4b9d6ed34f1.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [realizedSection_on_gauge](declarations/realizedsection-on-gauge--fef13d939638f8afbf1c1e50.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [realizedSection_on_class](declarations/realizedsection-on-class--57cdaaf74e3c66fcbd3d9ff6.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [realizedSection_energy](declarations/realizedsection-energy--ae895ab6d0e685beb4b3fe0f.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [realizedSection_finite](declarations/realizedsection-finite--367db4ece5dfc6cec488b926.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [scalarSection_coordinate](declarations/scalarsection-coordinate--628501001b7fdee66620f8df.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [chartEvaluation](declarations/chartevaluation--c3fa30b2037fd26216631e7c.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [chartEvaluation_apply](declarations/chartevaluation-apply--3afd8d9691ff4585d16a68fe.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [chartEvaluation_eq_coordinate](declarations/chartevaluation-eq-coordinate--d434d30d091265d3a43d4b6c.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [chartKernelVector](declarations/chartkernelvector--8a5ac7d0024db24f368ca2b4.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [chartKernelVector_evaluation](declarations/chartkernelvector-evaluation--0d7edcbd59c4eb6a2c3b3c58.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [chartKernelVector_transport](declarations/chartkernelvector-transport--cbfd0845589217f8a0391e71.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [chartKernelVector_norm](declarations/chartkernelvector-norm--9fd2362420965b94fa459c51.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [chartKernel](declarations/chartkernel--15801335f728182526408ab9.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [chartKernel_eq_inner](declarations/chartkernel-eq-inner--0a49312c8ba38a14a27aebf8.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [chartKernel_transport](declarations/chartkernel-transport--41ef50695a03db871cdcb931.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [chartKernel_holomorphic](declarations/chartkernel-holomorphic--cce1ca6baab4d9d2f9ac64ba.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [gauge_multiplier_intertwines](declarations/gauge-multiplier-intertwines--7b0b13322429d9f2d62e1878.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [chartEvaluation_multiplier](declarations/chartevaluation-multiplier--0d696bddc44e3294e9ad4296.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [target_adjoint_kernel](declarations/target-adjoint-kernel--9cbbe27757ab623d1a383cb6.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [pulledL2Inclusion](declarations/pulledl2inclusion--fce1fdbdd30b68c17fccc72d.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pulledL2Inclusion_ae](declarations/pulledl2inclusion-ae--3c1c76ce356ddfe02253dfeb.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [pulledL2Inclusion_norm](declarations/pulledl2inclusion-norm--ac53c329f66a6a3f94f958e0.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [pulledLift](declarations/pulledlift--2d9e2414db1f17238df0f2f4.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [pulledLift_eq](declarations/pulledlift-eq--e9a22cf93e57cc118f625e93.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [pulledProjection](declarations/pulledprojection--ae93f0b25d0eba0391c23d55.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [pulledProjection_eq](declarations/pulledprojection-eq--2313b743c4bd25116e9f44c6.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [pulledLift_realizedSection](declarations/pulledlift-realizedsection--58844dfd6847a0de8b5d6488.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [phaseUnit](declarations/phaseunit--9008c71b5e0d131e4ac2210d.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [phaseGauge](declarations/phasegauge--a5a83e3fb0a4cb8cfcec0978.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [phase_kernel](declarations/phase-kernel--6eb4d8c6349bfd76657beffd.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [phase_wrong_sign](declarations/phase-wrong-sign--66d8abbb74c68ae94072f635.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [doubling_kernel](declarations/doubling-kernel--3c31dd13948207d21efcef6b.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [doubling_diagonal_not_invariant](declarations/doubling-diagonal-not-invariant--973ed68f855d2a3a6a2d31a7.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
