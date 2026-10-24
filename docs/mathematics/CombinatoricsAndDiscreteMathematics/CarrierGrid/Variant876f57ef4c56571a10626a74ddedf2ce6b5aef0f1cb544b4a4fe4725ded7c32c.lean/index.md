# GRWTSK.CombinatoricsAndDiscreteMathematics.CarrierGrid.Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12d82ed2af813090359f3c90581ce0c90f916569`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NormalizedPoint](declarations/normalizedpoint--8849a9914f4b2f5486d6b713.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [InClosedUnitInterval](declarations/inclosedunitinterval--c7244729bb2a565145bd3999.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [AxisSupports](declarations/axissupports--306e4f6db00f2559c5d78262.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [axisSupportsDecidable](declarations/axissupportsdecidable--4c4a942d86739e18aaa1493b.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [axisCarriers](declarations/axiscarriers--4c7be313aaa2e7860722f31e.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ExactCarrier](declarations/exactcarrier--3277fc02ec91106ca822e9f1.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [exactCarrierDecidablePred](declarations/exactcarrierdecidablepred--57d87fa1e4d6e6b89224f69a.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [carrierMultiplicity](declarations/carriermultiplicity--cde3b7366ff11eb3faa22c7d.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [AxisOriginMatches](declarations/axisoriginmatches--84784e35a22670fcfda219dd.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [OriginMatches](declarations/originmatches--07edbb12f32bce256ae6afa3.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_axisCarriers_iff](declarations/mem-axiscarriers-iff--a1168af497e16547b27b17a2.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [exactCarrier_iff_axis_membership](declarations/exactcarrier-iff-axis-membership--cc6be1c7af04df6d1d84f5dc.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [exactCarrierEquivAxisCarriers](declarations/exactcarrierequivaxiscarriers--8bb1c014cf13c061297d7c5a.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [card_exactCarrier_eq_carrierMultiplicity](declarations/card-exactcarrier-eq-carriermultiplicity--2890a118862a1287b96114d5.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [axisOriginMatches_implies_support](declarations/axisoriginmatches-implies-support--6ff9e31552af37dd62f1808e.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [originMatches_implies_exactCarrier](declarations/originmatches-implies-exactcarrier--296a891c697aadc7f53be395.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [InteriorAxisStratum](declarations/interioraxisstratum--ab995f4bbe581fe1d5050403.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [InteriorAxisStratum.codimension](declarations/interioraxisstratum-codimension--3b0a9ce97432eeb644e0290d.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fin_eq_of_val_eq](declarations/fin-eq-of-val-eq--303a63174f7ec22cfbb1abb6.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [axisCarriers_eq_singleton_of_cell](declarations/axiscarriers-eq-singleton-of-cell--504e594676a105da0ec74097.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [axisCarriers_eq_pair_of_internalBoundary](declarations/axiscarriers-eq-pair-of-internalboundary--d42defecdd1fa728dfff3274.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [InteriorGridStratum](declarations/interiorgridstratum--521867a66cf5e1bdca04ff40.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [InteriorGridStratum.codimension](declarations/interiorgridstratum-codimension--e1f7b65d5008ccc60a43bffe.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [carrierMultiplicity_eq_two_pow_codimension](declarations/carriermultiplicity-eq-two-pow-codimension--8f9b21dbc8b37c4c84be0592.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [center](declarations/center--b87958a27806db0a4183429c.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [oddCenterIndex](declarations/oddcenterindex--0dbca3093fea7f27c3f0a601.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [evenCenterLeft](declarations/evencenterleft--e664a69d95dbdcc0f3f05d13.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [evenCenterRight](declarations/evencenterright--b583ff33016c8512f6e8d40c.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [odd_center_axisCarriers](declarations/odd-center-axiscarriers--8365c870b3353d84cc85f9ac.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [even_center_axisCarriers](declarations/even-center-axiscarriers--f7e42f54cc376e876357b92a.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [odd_center_carrierMultiplicity](declarations/odd-center-carriermultiplicity--8b2404c815a3f6d981a8f8fd.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [even_center_carrierMultiplicity](declarations/even-center-carriermultiplicity--4694040ff2d1ba9a95670d7c.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [odd_center_axisOriginMatches_iff](declarations/odd-center-axisoriginmatches-iff--9ede1d7bb9ea0a224a10a54a.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [even_center_axisOriginMatches_false](declarations/even-center-axisoriginmatches-false--3dfda0ca9f2e6f69d0267fbb.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
