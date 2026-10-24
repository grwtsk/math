# GRWTSK.NumberTheory.Moebius.RegularOrbitSignedQuarticCollisions

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**20 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebc689c713c4dbf69e54c97b594ba519c2f5bd4f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [parityHalfShiftSignedResidueRealBucket](declarations/parityhalfshiftsignedresiduerealbucket--4ccd50a4ff9596810199fa43.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [parityHalfShiftSignedResidueComplexBucket](declarations/parityhalfshiftsignedresiduecomplexbucket--fcddd7d5557e131ea16abc4a.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [parityHalfShiftSignedResidueComplexBucket_eq_real](declarations/parityhalfshiftsignedresiduecomplexbucket-eq-real--8bac7a7216a8b783184a9a37.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [parityEvenHalfShiftSignedResidueBucket_eq_generic](declarations/parityevenhalfshiftsignedresiduebucket-eq-generic--983f7d1555fa80b6013fccc0.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [parityOddHalfShiftSignedResidueBucket_eq_generic](declarations/parityoddhalfshiftsignedresiduebucket-eq-generic--5cca937996b2039e8779fdb6.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [parityHalfShiftSignedQuarticCollision](declarations/parityhalfshiftsignedquarticcollision--fd193dd48d39b956e260d029.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sum_sq_realBucket_eq_signedQuarticCollision](declarations/sum-sq-realbucket-eq-signedquarticcollision--c0e1468e866cd933a1597b60.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sum_norm_sq_complexBucket_eq_signedQuarticCollision](declarations/sum-norm-sq-complexbucket-eq-signedquarticcollision--909efff0c8b4dbcf601e2ce7.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [parityEvenHalfShiftSignedResidueEnergy_eq_quarticCollision](declarations/parityevenhalfshiftsignedresidueenergy-eq-quarticcollision--b40a5de0dc331684916b8871.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [parityOddHalfShiftSignedResidueEnergy_eq_quarticCollision](declarations/parityoddhalfshiftsignedresidueenergy-eq-quarticcollision--9b95fd1ce4aa024901b7a102.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [twoNonunitRegularSignedQuarticCollisionMajorant](declarations/twononunitregularsignedquarticcollisionmajorant--7ce13b19c0b66dc7a4a7afc9.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [residueL2Majorant_eq_signedQuarticCollision](declarations/residuel2majorant-eq-signedquarticcollision--cfce9e1b469f1f6ac6b6faac.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [twoNonunitRegularSignedQuarticCollisionEndpointMajorant](declarations/twononunitregularsignedquarticcollisionendpointmajorant--d02ff88b2abad9c307a1d704.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [residueL2EndpointMajorant_eq_signedQuarticCollision](declarations/residuel2endpointmajorant-eq-signedquarticcollision--1331328d4df5bb3a9f7901d2.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [DyadicNaturalScaleRegularSignedQuarticCollisionBudget](declarations/dyadicnaturalscaleregularsignedquarticcollisionbudget--95085fbf945f8c681f5a20aa.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [regularResidueL2Budget_iff_signedQuarticCollision](declarations/regularresiduel2budget-iff-signedquarticcollision--a16bac94bd194282013cd6ef.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [RegularSignedQuarticCollisionSourceData](declarations/regularsignedquarticcollisionsourcedata--541fcb7df821b9da30bda876.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [RegularSignedQuarticCollisionSource](declarations/regularsignedquarticcollisionsource--df5f677b5bf8bf84bccd0cd2.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [ToRegularSignedQuarticCollisionBudgetAdapter](declarations/toregularsignedquarticcollisionbudgetadapter--88bd948157ff0513e14f58a6.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [RegularSignedQuarticCollisionAdapter](declarations/regularsignedquarticcollisionadapter--69824c9742a83feb29bbbe00.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
