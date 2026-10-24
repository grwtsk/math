# GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterConeCircleTransport

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c64e49ba0ee568349fec4781e6a6b580f4a91951`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](declarations/cornerdiscretetopology--4bdc3a5ba8c4c4c60dbee81d.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [coneSourceSetoid](declarations/conesourcesetoid--66b71892629391a6891bea9c.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [StandardCircleConeCylinder](declarations/standardcircleconecylinder--bb4a71ccaa2f6cbb689a0236.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [StandardCircleConeStep](declarations/standardcircleconestep--0f95884ca8b86bb582f74cce.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [StandardCircleConeConnected](declarations/standardcircleconeconnected--d83fae5961599b078547347c.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [standardCircleConeConnected_iff](declarations/standardcircleconeconnected-iff--b96b48d173d4a4f89ed9050c.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [standardCircleConeSetoid](declarations/standardcircleconesetoid--0e26beb25cf19917775b3246.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [StandardCircleCone](declarations/standardcirclecone--e44c17c5394a7b818cf21912.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [standardConeSourceSetoid](declarations/standardconesourcesetoid--360d029ee2929fe0e056f759.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [standardCircleConeTopology](declarations/standardcircleconetopology--6b3af155ac4bba86a54de78c.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [standardCircleConeTopology_coinduced](declarations/standardcircleconetopology-coinduced--9f534b2cd13ecd561ddf870a.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [standardCircleConeProjection](declarations/standardcircleconeprojection--0ad86b305dcbad11c3517c21.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [standardCircleConeProjection_continuous](declarations/standardcircleconeprojection-continuous--9311062e0e8b0b15aa134dbd.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [standardCircleConeProjection_isQuotientMap](declarations/standardcircleconeprojection-isquotientmap--5e92ba0bab5abbb299f3b0be.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [standardCircleConeProjection_eq_iff_of_ne_zero](declarations/standardcircleconeprojection-eq-iff-of-ne-zero--50be1b8d478a1cfc406fd800.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [standardCircleConeConnected_preserves_radius](declarations/standardcircleconeconnected-preserves-radius--dc357a7cd173e39f9d369b83.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [standardCircleConeRadius](declarations/standardcircleconeradius--3ac40acbb3ec8da790f8788c.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [standardCircleConeRadius_projection](declarations/standardcircleconeradius-projection--211bbabbab5ed783ac971d4a.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [standardCircleConeRadius_continuous](declarations/standardcircleconeradius-continuous--734e833a207f8d62b6a6635b.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [standardCircleConeApex](declarations/standardcircleconeapex--6f59e75a7ecb4b89e958e3b1.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [standardCircleCone_zero_eq_apex](declarations/standardcirclecone-zero-eq-apex--f3f87d83c37fcfcbd7efce92.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [standardCircleConeBoundary](declarations/standardcircleconeboundary--8d4c62b23ee89545b27c7ad8.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [standardCircleConeBoundary_continuous](declarations/standardcircleconeboundary-continuous--bc47a5380cac25f794a3a595.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [standardCircleConeBoundary_injective](declarations/standardcircleconeboundary-injective--3900a522a2d35e74c663b116.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [standardCircleConeCompactSpace](declarations/standardcircleconecompactspace--9a7561164477aa84a498120d.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [perimeterToStandardCircleConeSource](declarations/perimetertostandardcircleconesource--35d8aa9a8ba90779d41095b2.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [perimeterToStandardCircleConeSource_continuous](declarations/perimetertostandardcircleconesource-continuous--f38a19694ad6f906b6a9a021.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coneConnected_perimeterToStandardCircleConeSource](declarations/coneconnected-perimetertostandardcircleconesource--d67962502b14b37002b9f26e.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [perimeterConeToStandardCircleCone](declarations/perimeterconetostandardcirclecone--111cceb10e6cd6113294467c.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [perimeterConeToStandardCircleCone_projection](declarations/perimeterconetostandardcirclecone-projection--4d2d2669727a9ed0d61227bf.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [perimeterConeToStandardCircleCone_continuous](declarations/perimeterconetostandardcirclecone-continuous--88ee81fd714f86c4ba4985c2.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [perimeterConeToStandardCircleCone_zero](declarations/perimeterconetostandardcirclecone-zero--fa945b132873cf155feb21f9.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [standardCircleToPerimeterConeSource](declarations/standardcircletoperimeterconesource--f91dfd6d8895a5cf59626328.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [standardCircleToPerimeterConeSource_continuous](declarations/standardcircletoperimeterconesource-continuous--d92949823eae70b46a24b83c.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [standardCircleConeConnected_standardCircleToPerimeterConeSource](declarations/standardcircleconeconnected-standardcircletoperimeterconesource--1a303ef1fec7fefe1aa360ac.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [standardCircleConeToPerimeterCone](declarations/standardcircleconetoperimetercone--c4224c424fa0a8c148de2dd0.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [standardCircleConeToPerimeterCone_projection](declarations/standardcircleconetoperimetercone-projection--2a17d5a5ed0b7ad3eca519b8.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [standardCircleConeToPerimeterCone_continuous](declarations/standardcircleconetoperimetercone-continuous--996a18e334580930550e95f5.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [standardCircleConeToPerimeterCone_leftInverse](declarations/standardcircleconetoperimetercone-leftinverse--5eb30065a10e640308248d66.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [standardCircleConeToPerimeterCone_rightInverse](declarations/standardcircleconetoperimetercone-rightinverse--52529018f89be81ff3a50982.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [perimeterConeEquivStandardCircleCone](declarations/perimeterconeequivstandardcirclecone--617afe6195590ce3558b751c.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [perimeterConeHomeomorphStandardCircleCone](declarations/perimeterconehomeomorphstandardcirclecone--b6cd61e8bb312b6994858c8a.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_apply](declarations/perimeterconehomeomorphstandardcirclecone-apply--3ec84f39d6f405c09e43f081.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_symm_apply](declarations/perimeterconehomeomorphstandardcirclecone-symm-apply--f1794b7177199064eed25b78.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_radius](declarations/perimeterconehomeomorphstandardcirclecone-radius--be2055682dea93f1efab9c73.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_apex](declarations/perimeterconehomeomorphstandardcirclecone-apex--e47259f863bb898d6946df13.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_boundary](declarations/perimeterconehomeomorphstandardcirclecone-boundary--a9cfeb3b6c497d07cb08a42d.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_symm_boundary](declarations/perimeterconehomeomorphstandardcirclecone-symm-boundary--52870be60ac853f969667b9b.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [genusTwoPerimeterConeHomeomorphStandardCircleCone](declarations/genustwoperimeterconehomeomorphstandardcirclecone--9ca77ae1f2cc109b80b7867a.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [genusThreePerimeterConeHomeomorphStandardCircleCone](declarations/genusthreeperimeterconehomeomorphstandardcirclecone--5dc37d831a2f166c64f0e708.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
