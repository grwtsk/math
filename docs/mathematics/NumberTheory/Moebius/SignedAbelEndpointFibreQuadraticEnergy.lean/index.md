# GRWTSK.NumberTheory.Moebius.SignedAbelEndpointFibreQuadraticEnergy

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**20 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `841c6083ed45756773d82c3b0d410a700ecd153b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [signedAbelActiveTailPairSet](declarations/signedabelactivetailpairset--68c32289a943ab93c215453e.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [signedAbelEndpointFibrePairSet](declarations/signedabelendpointfibrepairset--f14baee56ca004c92ef1dd3d.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [signedAbelActivePairToEndpoint](declarations/signedabelactivepairtoendpoint--cf67b272e36872448553756e.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [signedAbelEndpointToActivePair](declarations/signedabelendpointtoactivepair--f2d5ce693baa47c990e426d4.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [signedAbelActivePairToEndpoint_mem](declarations/signedabelactivepairtoendpoint-mem--bf568cbb6a8b2a3234f7a7ec.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [signedAbelEndpointToActivePair_mem](declarations/signedabelendpointtoactivepair-mem--cfd2e4f6f4bca3617e8cd348.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [signedAbelEndpointToActivePair_leftInverse](declarations/signedabelendpointtoactivepair-leftinverse--2d5b74022278ac3ec7d5aaba.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [signedAbelActivePairToEndpoint_rightInverse](declarations/signedabelactivepairtoendpoint-rightinverse--93182644cc623100a11d13f6.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sum_signedAbelActivePairs_eq_endpointFibres](declarations/sum-signedabelactivepairs-eq-endpointfibres--11876fd0fb2c9744fd559279.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [signedAbelActivePairTerm_eq_endpointTerm](declarations/signedabelactivepairterm-eq-endpointterm--decdd16fd24b5086a642c8c4.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_activePairSum](declarations/weightedmertenssignedabelactivetailquadraticenergy-eq-activepairsum--25b7a2346d8eea223ef56eea.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mertensTwoPointEndpointFibreQuadraticEnergy](declarations/mertenstwopointendpointfibrequadraticenergy--fee4e8b58c6e4e4c3f9f4b58.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [weightedMertensSignedAbelEndpointFibreQuadraticEnergy](declarations/weightedmertenssignedabelendpointfibrequadraticenergy--d4cada7847a573b9f0e8e7e2.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sum_Ico_one_Y_indicator_lt](declarations/sum-ico-one-y-indicator-lt--15eec1dfad2ec1c0002b58de.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sum_signedAbelEndpointPairs_eq_endpointFibreEnergy](declarations/sum-signedabelendpointpairs-eq-endpointfibreenergy--a42ca2dd4e8536ef42b4855b.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_endpointFibres](declarations/weightedmertenssignedabelactivetailquadraticenergy-eq-endpointfibres--a774dbd3447d37400be2f53f.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [weightedMertensSignedAbelEndpointFibreQuadraticEnergy_nonneg](declarations/weightedmertenssignedabelendpointfibrequadraticenergy-nonneg--d9f7744eca22012a042576eb.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [SubpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy](declarations/subpolynomialdyadicsignedabelendpointfibrequadraticenergy--078d7f7663b1bb82a191bdd1.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [subpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy_iff_activeTail](declarations/subpolynomialdyadicsignedabelendpointfibrequadraticenergy-iff-activetail--13e228f3932872590925d99b.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy](declarations/riemannhypothesis-of-subpolynomialdyadicsignedabelendpointfibrequadratic--e7e4d1556e27b4fe7696fab1.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
