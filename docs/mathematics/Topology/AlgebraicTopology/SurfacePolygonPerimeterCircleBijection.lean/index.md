# GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleBijection

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cea97cf3b665a0b3f3e0f5ba25887cb22ed5580c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [handleOrdinalEquiv](declarations/handleordinalequiv--60cbbc5e99a3e38473e1696c.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [directedSideOrdinalEquiv](declarations/directedsideordinalequiv--bffd89ecbd68af01e44ce852.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [handleOrdinalEquiv_val](declarations/handleordinalequiv-val--ad5f9c0b8790bc36cc51c4a5.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [directedSideOrdinalEquiv_val](declarations/directedsideordinalequiv-val--5bc71caf689bfd8ed348f9b7.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [directedSideOrdinal_injective](declarations/directedsideordinal-injective--e8d5c81646e06a14670e8031.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [directedSideOrdinal_surjective](declarations/directedsideordinal-surjective--46cf78b5211f959dd7781872.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [successorSide](declarations/successorside--e0524180a77ad99e11f05442.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [successorSide_perimeter_seam](declarations/successorside-perimeter-seam--c00b6c8abafe26b4dedb5815.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [normalizedSource](declarations/normalizedsource--0df267274ce726fca6f3b7de.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [perimeterConnected_normalizedSource](declarations/perimeterconnected-normalizedsource--13b13a7c6e5e67ff417d33fb.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [normalizedSource_fraction_lt_one](declarations/normalizedsource-fraction-lt-one--42034ddf68bfd0a2ee06988e.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [realAngularAddress](declarations/realangularaddress--947bbd622dd57cebff7a680f.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sourceAngularAddress_eq_coe_realAngularAddress](declarations/sourceangularaddress-eq-coe-realangularaddress--a84267b65edefa7420d33892.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [normalizedRealAngle_mem_Ico](declarations/normalizedrealangle-mem-ico--817be5bd478fd8634cc29669.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [normalizedRealAngle_floor](declarations/normalizedrealangle-floor--35b698c8629424ad67139e79.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [normalizedRealAngle_eq_of_circle_eq](declarations/normalizedrealangle-eq-of-circle-eq--69c8dad0758d4ae18d829f72.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normalizedSource_eq_of_angle_eq](declarations/normalizedsource-eq-of-angle-eq--e03ae60c790e4eea6a6f1658.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [angle_eq_iff_perimeterConnected](declarations/angle-eq-iff-perimeterconnected--410ed456b4f5e537d6eaa975.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [perimeterAngle_injective](declarations/perimeterangle-injective--6250449c8da0e3a47a849fdf.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [circleFundamentalRepresentative](declarations/circlefundamentalrepresentative--5066a5e4e28d72430b72ada1.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [circleRepresentative_floor_lt](declarations/circlerepresentative-floor-lt--61235bd327ebbba1d3857958.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [sourceOfCircleRepresentative](declarations/sourceofcirclerepresentative--7cdf32660d80df5708ad3df8.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [perimeterAngle_surjective](declarations/perimeterangle-surjective--08a610d2bd2699899339bafe.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [perimeterAngle_bijective](declarations/perimeterangle-bijective--678073409d449ff7ab27093c.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [unpairedPerimeter_compactSpace](declarations/unpairedperimeter-compactspace--3438a3f644aa332d36e18e3b.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [circlePeriodPositive](declarations/circleperiodpositive--a22191a6a0bc22b0a20d6967.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [perimeterHomeomorphAddCircle](declarations/perimeterhomeomorphaddcircle--9c6d16087b56936a2872353f.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [perimeterHomeomorphUnitAddCircle](declarations/perimeterhomeomorphunitaddcircle--646c59fe5e2c29c831170197.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [perimeterHomeomorph_source_formula](declarations/perimeterhomeomorph-source-formula--c6451f22f46326d7b33835c4.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [attaching_noninjective_despite_perimeter_circle](declarations/attaching-noninjective-despite-perimeter-circle--d321dd46d99ff10f43728f28.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [genus_two_circle_bijection](declarations/genus-two-circle-bijection--9b759a3ddc1c75e4db0bfb21.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [genus_three_circle_bijection](declarations/genus-three-circle-bijection--4700f67711853817e25fdc64.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
