# GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfd3e090cadde51c011080362b9e3a5c3addf17c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](declarations/cornerdiscretetopology--ad51d8336f80c1bad577fa76.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [ConeCylinder](declarations/conecylinder--70d16018cbc0feb76c2702c9.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [PerimeterConeStep](declarations/perimeterconestep--2e60f3df4897d6c87c3c10a1.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ConeConnected](declarations/coneconnected--bab967fc5ac6d288ab2cb97a.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coneConnected_iff](declarations/coneconnected-iff--d38491b9a956dfbb591464bd.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [coneSetoid](declarations/conesetoid--647edf7b338cb429543928d3.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [coneSourceSetoid](declarations/conesourcesetoid--bfb91f2e887d92edbbaa0c10.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [PerimeterCone](declarations/perimetercone--96e014da5924f98bcc5504c3.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [perimeterConeTopology](declarations/perimeterconetopology--fb5145b0b76ec61cd450223e.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coneTopology_coinduced](declarations/conetopology-coinduced--f987c4c546e6df2b855ceec7.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [coneProjection](declarations/coneprojection--2c3a401a0ab8cd4c22dc1f8c.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coneProjection_continuous](declarations/coneprojection-continuous--10a438609c8e495df6753664.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coneProjection_isQuotientMap](declarations/coneprojection-isquotientmap--95e88ac937cf4f1b8da1591b.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coneProjection_eq_iff_of_ne_zero](declarations/coneprojection-eq-iff-of-ne-zero--15920a98ffaefed066259769.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coneConnected_preserves_radius](declarations/coneconnected-preserves-radius--e6d1d432f4766402416d3cc8.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [coneRadius](declarations/coneradius--dbcd35da15b273ee5f0ac931.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coneRadius_projection](declarations/coneradius-projection--357e1c43450171507678cc4c.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coneRadius_continuous](declarations/coneradius-continuous--3f70ecc41856faf68aa7cf86.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coneConnected_jointRadialMap_eq](declarations/coneconnected-jointradialmap-eq--23a3811e4520b57cfed7a7a0.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [coneToFilled](declarations/conetofilled--181c74661a675fff718cdb44.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coneToFilled_projection](declarations/conetofilled-projection--12167a6221894e44c67b6abb.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coneToFilled_continuous](declarations/conetofilled-continuous--aae7db82efe68ee3b6a9b0ae.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coneToFilled_surjective](declarations/conetofilled-surjective--0995d0b2811054c741612be4.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coneToFilled_preserves_radius](declarations/conetofilled-preserves-radius--99e4841dee7ef6934168a6a5.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [coneApex](declarations/coneapex--881e3a2fcc7edd297574e55b.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cone_zero_eq_apex](declarations/cone-zero-eq-apex--ef2ac440f5e4dbf8f6ae5e5a.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coneToFilled_apex](declarations/conetofilled-apex--ae9d79cfb22d1a371bed466d.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [coneBoundary](declarations/coneboundary--c88f3531b441760a593b5293.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coneBoundary_continuous](declarations/coneboundary-continuous--d67d5f40c69471a2e7a7eefc.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coneBoundary_injective](declarations/coneboundary-injective--5f978c65b69f87c63e71b52f.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coneToFilled_boundary](declarations/conetofilled-boundary--02153110deb4e6d38cb9a9c1.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [unitCircleConeBoundary](declarations/unitcircleconeboundary--53b404b4d689d444d724a777.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [unitCircleConeBoundary_continuous](declarations/unitcircleconeboundary-continuous--239a71e8823ed6b9cb937e61.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coneToFilled_unitCircle_boundary](declarations/conetofilled-unitcircle-boundary--bd711e24062c4557d108fe8e.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coneToFilled_not_injective](declarations/conetofilled-not-injective--8e4379224cdfae57397ea420.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [perimeterConeCompactSpace](declarations/perimeterconecompactspace--9b30817843a46c230e35ba90.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [filledPolygonCompactSpace](declarations/filledpolygoncompactspace--eeeb3caf6934670ccde0eaec.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coneApex_ne_boundary](declarations/coneapex-ne-boundary--d2f180afdd7eff172e619064.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [genusTwo_coneToFilled_noninjective](declarations/genustwo-conetofilled-noninjective--6783a7f674300e12b45f8fc0.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [genusThree_coneToFilled_noninjective](declarations/genusthree-conetofilled-noninjective--50abc798647a4b45c01d25e5.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
