# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitSignedQuarticCollisions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebc689c713c4dbf69e54c97b594ba519c2f5bd4f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebc689c713c4dbf69e54c97b594ba519c2f5bd4f`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitSignedResidueEnergy`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityHalfShiftSignedResidueRealBucket](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/parityhalfshiftsignedresiduerealbucket--4ccd50a4ff9596810199fa43.md) | 37 | `declaration-track:4ccd50a4ff9596810199fa433ccb0214d041546d6c20bef4865084858758e1a3` |
| 2 | `def` | [parityHalfShiftSignedResidueComplexBucket](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/parityhalfshiftsignedresiduecomplexbucket--fcddd7d5557e131ea16abc4a.md) | 48 | `declaration-track:fcddd7d5557e131ea16abc4accb13eefa71e1b7f5a0340c32a9c7d9efe2be1f7` |
| 3 | `theorem` | [parityHalfShiftSignedResidueComplexBucket_eq_real](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/parityhalfshiftsignedresiduecomplexbucket-eq-real--8bac7a7216a8b783184a9a37.md) | 56 | `result-track:8bac7a7216a8b783184a9a37eb94f0b9ef9b38b6f82e80d19450421f92b6ee55` |
| 4 | `theorem` | [parityEvenHalfShiftSignedResidueBucket_eq_generic](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/parityevenhalfshiftsignedresiduebucket-eq-generic--983f7d1555fa80b6013fccc0.md) | 75 | `result-track:983f7d1555fa80b6013fccc0183aa425f45b316f167de2d2449d5064cc7c0099` |
| 5 | `theorem` | [parityOddHalfShiftSignedResidueBucket_eq_generic](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/parityoddhalfshiftsignedresiduebucket-eq-generic--5cca937996b2039e8779fdb6.md) | 84 | `result-track:5cca937996b2039e8779fdb600055a68884005e89529d7a8fd83e7343337c1f2` |
| 6 | `def` | [parityHalfShiftSignedQuarticCollision](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/parityhalfshiftsignedquarticcollision--fd193dd48d39b956e260d029.md) | 95 | `declaration-track:fd193dd48d39b956e260d0296833bce7e6778b735084f2cef878955823b4c2dc` |
| 7 | `theorem` | [sum_sq_realBucket_eq_signedQuarticCollision](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/sum-sq-realbucket-eq-signedquarticcollision--c0e1468e866cd933a1597b60.md) | 111 | `result-track:c0e1468e866cd933a1597b604426ba71caae0b064fec14d5891abb367d969b49` |
| 8 | `theorem` | [sum_norm_sq_complexBucket_eq_signedQuarticCollision](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/sum-norm-sq-complexbucket-eq-signedquarticcollision--909efff0c8b4dbcf601e2ce7.md) | 153 | `result-track:909efff0c8b4dbcf601e2ce7d70695cb27519736ce9594b2f2594acb38572946` |
| 9 | `theorem` | [parityEvenHalfShiftSignedResidueEnergy_eq_quarticCollision](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/parityevenhalfshiftsignedresidueenergy-eq-quarticcollision--b40a5de0dc331684916b8871.md) | 164 | `result-track:b40a5de0dc331684916b8871eb8485f8a7c7d6ce9b585c6ccedef040acea18cb` |
| 10 | `theorem` | [parityOddHalfShiftSignedResidueEnergy_eq_quarticCollision](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/parityoddhalfshiftsignedresidueenergy-eq-quarticcollision--9b95fd1ce4aa024901b7a102.md) | 176 | `result-track:9b95fd1ce4aa024901b7a1020531cf6b0b6cc01d1b874df28101160aec60c954` |
| 11 | `def` | [twoNonunitRegularSignedQuarticCollisionMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/twononunitregularsignedquarticcollisionmajorant--7ce13b19c0b66dc7a4a7afc9.md) | 188 | `declaration-track:7ce13b19c0b66dc7a4a7afc96d70727174b8d38b1febba0f368b204948d4260f` |
| 12 | `theorem` | [residueL2Majorant_eq_signedQuarticCollision](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/residuel2majorant-eq-signedquarticcollision--cfce9e1b469f1f6ac6b6faac.md) | 204 | `result-track:cfce9e1b469f1f6ac6b6faac32bf1fe300e202a6518c7ed06b30246cf796737c` |
| 13 | `def` | [twoNonunitRegularSignedQuarticCollisionEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/twononunitregularsignedquarticcollisionendpointmajorant--d02ff88b2abad9c307a1d704.md) | 216 | `declaration-track:d02ff88b2abad9c307a1d7041b31a668999d3dd405460299bbf3a2c73ea7bf7f` |
| 14 | `theorem` | [residueL2EndpointMajorant_eq_signedQuarticCollision](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/residuel2endpointmajorant-eq-signedquarticcollision--1331328d4df5bb3a9f7901d2.md) | 227 | `result-track:1331328d4df5bb3a9f7901d282abe222df4f871ed6687aa72da08b943beccf48` |
| 15 | `def` | [DyadicNaturalScaleRegularSignedQuarticCollisionBudget](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/dyadicnaturalscaleregularsignedquarticcollisionbudget--95085fbf945f8c681f5a20aa.md) | 245 | `declaration-track:95085fbf945f8c681f5a20aa1ba332e55f74e6a35c83d0bf6191dee8d7afc744` |
| 16 | `theorem` | [regularResidueL2Budget_iff_signedQuarticCollision](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/regularresiduel2budget-iff-signedquarticcollision--a16bac94bd194282013cd6ef.md) | 254 | `result-track:a16bac94bd194282013cd6ef2a68c14b0158bd52666a4065fda07a32392c9a8e` |
| 17 | `structure` | [RegularSignedQuarticCollisionSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/regularsignedquarticcollisionsourcedata--541fcb7df821b9da30bda876.md) | 273 | `declaration-track:541fcb7df821b9da30bda87618b23cd31b89e216a5a87fa33514de437b09a811` |
| 18 | `def` | [RegularSignedQuarticCollisionSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/regularsignedquarticcollisionsource--df5f677b5bf8bf84bccd0cd2.md) | 284 | `declaration-track:df5f677b5bf8bf84bccd0cd2dcb4f38f7a4c45a7b1dea8d4462dd2983c110ec4` |
| 19 | `structure` | [ToRegularSignedQuarticCollisionBudgetAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/toregularsignedquarticcollisionbudgetadapter--88bd948157ff0513e14f58a6.md) | 296 | `declaration-track:88bd948157ff0513e14f58a6e0d274e6a34b32f7fd6e75313b5ebe88e1b5e54a` |
| 20 | `abbrev` | [RegularSignedQuarticCollisionAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/declarations/regularsignedquarticcollisionadapter--69824c9742a83feb29bbbe00.md) | 301 | `declaration-track:69824c9742a83feb29bbbe00403ef7cc32099a6e6c1f0a639e769d273e8b79c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
