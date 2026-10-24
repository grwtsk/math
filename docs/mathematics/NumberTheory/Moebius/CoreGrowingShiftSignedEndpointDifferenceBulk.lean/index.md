# GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointDifferenceBulk

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**59 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceBulk.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `290d38c9a599b61e9e2c9c55b9a422d284cf5138`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceBulk.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [coreGrowingShiftEndpointDifferencePrefixLower](declarations/coregrowingshiftendpointdifferenceprefixlower--c4791ffe0fafc8be44f15a76.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [coreGrowingShiftEndpointDifferencePrefixUpper](declarations/coregrowingshiftendpointdifferenceprefixupper--56dc1b085308b963945c9599.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [coreGrowingShiftEndpointDifferenceBulkPrefixSet](declarations/coregrowingshiftendpointdifferencebulkprefixset--e9c00316aa4feeaa73d013b2.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [coreGrowingShiftEndpointDifferenceLeftClipPrefixSet](declarations/coregrowingshiftendpointdifferenceleftclipprefixset--b02b2db00e9fdc7a965ec659.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [coreGrowingShiftEndpointDifferenceRetainedPrefixSet](declarations/coregrowingshiftendpointdifferenceretainedprefixset--6a91f1612eba35ef5e3af919.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coreGrowingShiftEndpointAggregatePrefixLower_eq_max_difference](declarations/coregrowingshiftendpointaggregateprefixlower-eq-max-difference--a907b5928fb81b9ca57a7a84.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coreGrowingShiftEndpointAggregatePrefixUpper_eq_difference](declarations/coregrowingshiftendpointaggregateprefixupper-eq-difference--06f108b31ca80816e52f5207.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coreGrowingShiftEndpointExplicitPrefixSet_eq_differenceRetained](declarations/coregrowingshiftendpointexplicitprefixset-eq-differenceretained--bdd8db55591c5cefd823f04a.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coreGrowingShiftEndpointDifferenceBulkPrefixSet_eq_clip_union_retained](declarations/coregrowingshiftendpointdifferencebulkprefixset-eq-clip-union-retained--ed113a427a821b4cdd4d7619.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coreGrowingShiftEndpointDifferenceLeftClip_disjoint_retained](declarations/coregrowingshiftendpointdifferenceleftclip-disjoint-retained--cf58479c451089f5e4ecc250.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [coreGrowingShiftEndpointDifferencePrefixKernel](declarations/coregrowingshiftendpointdifferenceprefixkernel--7c5eed0e1f8081902889b660.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coreGrowingShiftSignedEndpointKernel_eq_differencePrefixKernel](declarations/coregrowingshiftsignedendpointkernel-eq-differenceprefixkernel--64711a1b23cb9bf68008ffe3.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [coreGrowingShiftEndpointDifferenceBulkKernel](declarations/coregrowingshiftendpointdifferencebulkkernel--31fba7fcf45cb099bf508d19.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [coreGrowingShiftEndpointDifferenceLeftClipCorrection](declarations/coregrowingshiftendpointdifferenceleftclipcorrection--f9cc047a1057464d8e98a0b4.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coreGrowingShiftEndpointAggregateKernel_eq_differenceBulk_sub_leftClip](declarations/coregrowingshiftendpointaggregatekernel-eq-differencebulk-sub-leftclip--efed25e8207fc6cf91cd4aa2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coreGrowingShiftEndpointAggregateBoundaryKernel_eq_differenceBulk_sub_leftClip](declarations/coregrowingshiftendpointaggregateboundarykernel-eq-differencebulk-sub-le--495aac14514f69f2a92796f3.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [coreGrowingShiftEndpointDifferenceIntervalAnchorSet](declarations/coregrowingshiftendpointdifferenceintervalanchorset--f1c70e693a1f8a5a2d27856e.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [coreGrowingShiftEndpointDifferenceIntervalTailLower](declarations/coregrowingshiftendpointdifferenceintervaltaillower--3249b1222163842481510b6a.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [coreGrowingShiftEndpointDifferenceIntervalTailSet](declarations/coregrowingshiftendpointdifferenceintervaltailset--8328f2475a080220201217cb.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coreGrowingShiftEndpointDifferenceInterval_eq_anchor_union_tail](declarations/coregrowingshiftendpointdifferenceinterval-eq-anchor-union-tail--a52e9c55df3675262168d753.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coreGrowingShiftEndpointDifferenceIntervalAnchor_disjoint_tail](declarations/coregrowingshiftendpointdifferenceintervalanchor-disjoint-tail--f6ea8f568f91418ac78fb9a6.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coreGrowingShiftEndpointDifferencePrefixKernel_eq_anchor](declarations/coregrowingshiftendpointdifferenceprefixkernel-eq-anchor--ee0ca46bdff169d149c88da9.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coreGrowingShiftEndpointDifferencePrefixKernel_eq_tail](declarations/coregrowingshiftendpointdifferenceprefixkernel-eq-tail--053844dabc1f313b01294961.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity](declarations/coregrowingshiftendpointdifferenceintervalanchormultiplicity--eb7e447d482a66ecac0115fd.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [coreGrowingShiftEndpointDifferenceIntervalTailBoundary](declarations/coregrowingshiftendpointdifferenceintervaltailboundary--6a1d3da12c8d9fba11665456.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [coreGrowingShiftEndpointDifferenceIntervalBoundaryKernel](declarations/coregrowingshiftendpointdifferenceintervalboundarykernel--24c1d955fab1f9e7b0311f5b.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coreGrowingShiftEndpointDifferenceIntervalAnchorSum](declarations/coregrowingshiftendpointdifferenceintervalanchorsum--29a0bc83f31716718d60eed6.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coreGrowingShiftEndpointDifferenceIntervalTailSum](declarations/coregrowingshiftendpointdifferenceintervaltailsum--8321468ae9adc2bdc8853deb.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coreGrowingShiftEndpointDifferenceIntervalSum_eq_boundary](declarations/coregrowingshiftendpointdifferenceintervalsum-eq-boundary--bfd569d25f5a012b4125205e.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [coreGrowingShiftEndpointDifferenceBulkBoundaryKernel](declarations/coregrowingshiftendpointdifferencebulkboundarykernel--d2433144ad07315c6d389c86.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [coreGrowingShiftEndpointDifferenceLeftClipBoundaryCorrection](declarations/coregrowingshiftendpointdifferenceleftclipboundarycorrection--a5d746e2b6c02788633c9e1a.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coreGrowingShiftEndpointDifferenceBulkKernel_eq_boundary](declarations/coregrowingshiftendpointdifferencebulkkernel-eq-boundary--0ca6d473352aafedc3ed0ee0.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coreGrowingShiftEndpointDifferenceLeftClipCorrection_eq_boundary](declarations/coregrowingshiftendpointdifferenceleftclipcorrection-eq-boundary--1674b9f5762d162f86c73ae0.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coreGrowingShiftEndpointAggregateBoundaryKernel_eq_closedDifferenceSplit](declarations/coregrowingshiftendpointaggregateboundarykernel-eq-closeddifferencesplit--081e7152df5eaa0fe17654be.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [coreGrowingShiftEndpointDifferenceBulkSymbol](declarations/coregrowingshiftendpointdifferencebulksymbol--1eae1d477bd99c00ed3f721b.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [coreGrowingShiftEndpointCyclicDifferenceBulkKernel](declarations/coregrowingshiftendpointcyclicdifferencebulkkernel--ed565dd060cc0de0f6cdeade.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coreGrowingShiftEndpointCyclicDifferenceBulkKernel_add](declarations/coregrowingshiftendpointcyclicdifferencebulkkernel-add--58c6e8fbd6bf737e13b02bb8.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coreGrowingShiftEndpointCyclicDifference_val_eq_natSub](declarations/coregrowingshiftendpointcyclicdifference-val-eq-natsub--883611f782b79b24d60f7acb.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coreGrowingShiftEndpointCyclicDifferenceBulkKernel_eq_ordinary](declarations/coregrowingshiftendpointcyclicdifferencebulkkernel-eq-ordinary--1fae08fee0cb7f5ccecb575a.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [coreGrowingShiftEndpointDifferenceSupportCorrectionKernel](declarations/coregrowingshiftendpointdifferencesupportcorrectionkernel--687ae67433d51e9fc4e03659.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [coreGrowingShiftEndpointDifferenceLeftClipCorrectionKernel](declarations/coregrowingshiftendpointdifferenceleftclipcorrectionkernel--741da6a7e8318aa18eaee251.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_differenceDecomposition](declarations/coregrowingshiftendpointboundarykernelzeropad-eq-differencedecomposition--751980fd0df096f730018968.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [coreGrowingShiftEndpointCyclicDifferenceBulkKernelDFT2](declarations/coregrowingshiftendpointcyclicdifferencebulkkerneldft2--c4ee5afff8c466e44a42dfe6.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [coreGrowingShiftEndpointDifferenceSupportCorrectionKernelDFT2](declarations/coregrowingshiftendpointdifferencesupportcorrectionkerneldft2--b3ffb9ae97575f6db7b0aede.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [coreGrowingShiftEndpointDifferenceLeftClipCorrectionKernelDFT2](declarations/coregrowingshiftendpointdifferenceleftclipcorrectionkerneldft2--b840917479decb79aaf0ea14.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [coreGrowingShiftEndpointDifferenceDecompositionKernelDFT2](declarations/coregrowingshiftendpointdifferencedecompositionkerneldft2--dcc555a61da9a87463c1eb46.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coreGrowingShiftEndpointBoundaryKernelDFT2_eq_differenceDecomposition](declarations/coregrowingshiftendpointboundarykerneldft2-eq-differencedecomposition--7bf2b9e9e8c616ca813c9b13.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacketComplex](declarations/coregrowingshiftsignedendpointdifferencedecompositionfourierpacketcomple--8865ced89a887e2a672e6a31.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacketComplex_eq_boundary](declarations/coregrowingshiftsignedendpointdifferencedecompositionfourierpacketcomple--7cc569cf2c66d0cca0f9f47d.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket](declarations/coregrowingshiftsignedendpointdifferencedecompositionfourierpacket--040ee467518d6172958471ca.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket_eq_boundary](declarations/coregrowingshiftsignedendpointdifferencedecompositionfourierpacket-eq-bo--e9736fa50f918e37ff16b23b.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointDifferenceDecompositionFourier](declarations/coregrowingshiftfirstdifferencepacket-eq-two-mul-endpointdifferencedecom--b5e8f3a76857a1a2918e6047.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [SubpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket](declarations/subpolynomialcoregrowingshiftsignedendpointdifferencedecompositionfourie--170b9b18b72fabb45fad8644.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [subpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket_iff_boundary](declarations/subpolynomialcoregrowingshiftsignedendpointdifferencedecompositionfourie--c50bec0fd2b168a67c65c551.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket](declarations/riemannhypothesis-of-subpolynomialcoregrowingshiftsignedendpointdifferen--3f92d5fff5c6ef82c0579865.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `structure` | [SignedEndpointDifferenceDecompositionFourierSource](declarations/signedendpointdifferencedecompositionfouriersource--42aefef9d59efbbe8411f828.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `structure` | [ToCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket](declarations/tocoregrowingshiftsignedendpointdifferencedecompositionfourierpacket--9adb4f27a8e0ef0d31d4f482.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [riemannHypothesis_of_signedEndpointDifferenceDecompositionAdapter](declarations/riemannhypothesis-of-signedendpointdifferencedecompositionadapter--5dd3ea5b454dd5bf25b7fa61.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [signedEndpointDifferenceDecompositionCancellation_hostileWitness](declarations/signedendpointdifferencedecompositioncancellation-hostilewitness--f595b055e9a86de88bfdfbb9.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
