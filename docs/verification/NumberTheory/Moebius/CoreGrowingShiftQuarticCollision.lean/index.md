# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticCollision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78447c27a530ef64b83c0f353944c82a9606eb56",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78447c27a530ef64b83c0f353944c82a9606eb56`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticCompensation`](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mertensTwoPointQuarticUpperTriangle](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertenstwopointquarticuppertriangle--53a385a60be4f3d0f91759ea.md) | 20 | `declaration-track:53a385a60be4f3d0f91759ea2d8a3281d96e39748f78500d0a265624fbf8939e` |
| 2 | `theorem` | [mertensTwoPointQuarticCell_comm](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertenstwopointquarticcell-comm--e3cb2ef94355846475d6f2f1.md) | 27 | `result-track:e3cb2ef94355846475d6f2f1704ec014ca6ed7d565004fbb2e7d34e049f0a499` |
| 3 | `theorem` | [mertensTwoPointQuarticRectangle_succ](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertenstwopointquarticrectangle-succ--0a07f9d2840b1890b9a9ad34.md) | 34 | `result-track:0a07f9d2840b1890b9a9ad343dce41090e610f707a695648ade4b7567f3e8824` |
| 4 | `theorem` | [mertensTwoPointQuarticDiagonal_succ](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertenstwopointquarticdiagonal-succ--f0b7a1a8f21ebd750e1a472e.md) | 55 | `result-track:f0b7a1a8f21ebd750e1a472e6f41640710c1b443f396839f9c948280e382f3e8` |
| 5 | `theorem` | [mertensTwoPointQuarticUpperTriangle_succ](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertenstwopointquarticuppertriangle-succ--876a15b30d492606676e15bd.md) | 62 | `result-track:876a15b30d492606676e15bd5ab4fe25ecd921126897dbee6d1bca19ab758810` |
| 6 | `theorem` | [mertensTwoPointQuarticOffDiagonal_eq_two_mul_upperTriangle](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertenstwopointquarticoffdiagonal-eq-two-mul-uppertriangle--3e24bf4a4f45d7f693b14356.md) | 72 | `result-track:3e24bf4a4f45d7f693b1435606af9bebaec0a534fe653618e240867771d7a208` |
| 7 | `def` | [mertensTwoPointQuarticCollisionUpper](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertenstwopointquarticcollisionupper--8292b4ef8c5192a66bfd299b.md) | 91 | `declaration-track:8292b4ef8c5192a66bfd299b6e8bb53b0a48223a5c4c554747c6fd78d19e6a74` |
| 8 | `def` | [mertensTwoPointQuarticCollisionFreeUpper](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertenstwopointquarticcollisionfreeupper--fadef3285d58d70c0c55f531.md) | 98 | `declaration-track:fadef3285d58d70c0c55f53194f9c53a1bd941e492f2d2be6eb4233fd4f6872b` |
| 9 | `theorem` | [mertensTwoPointQuarticUpperTriangle_eq_collision_add_free](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertenstwopointquarticuppertriangle-eq-collision-add-free--8f1269bbdc487eae490dfe9b.md) | 105 | `result-track:8f1269bbdc487eae490dfe9b08db5076ceebb64c23a0758ee128b8b3d1a34fe0` |
| 10 | `def` | [mertensTwoPointQuarticCollisionCell](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertenstwopointquarticcollisioncell--1e168fb75b363ef76ac3b74c.md) | 130 | `declaration-track:1e168fb75b363ef76ac3b74ca15a414f49ba4275db6047a7cf83ae2d3664d98a` |
| 11 | `theorem` | [mertensTwoPointQuarticCell_eq_collisionCell](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertenstwopointquarticcell-eq-collisioncell--47a1c82ed8a099f8d61867e3.md) | 137 | `result-track:47a1c82ed8a099f8d61867e3f2ba1fc33d209f618102c187e203b8025c04f8e5` |
| 12 | `theorem` | [mertensTwoPointQuarticCollisionUpper_eq_repeatedMiddle](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertenstwopointquarticcollisionupper-eq-repeatedmiddle--4101dae4a7522a18be019b90.md) | 150 | `result-track:4101dae4a7522a18be019b900cedf102dc0c9019afff24efb857e926feecb44c` |
| 13 | `def` | [MertensQuarticMiddleFormsDistinct](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertensquarticmiddleformsdistinct--bd776d640afc7cf840dcc8ff.md) | 167 | `declaration-track:bd776d640afc7cf840dcc8ff8e31b4bc2f001a975b430f86448984254aeb0dea` |
| 14 | `theorem` | [mertensQuarticMiddleFormsDistinct_iff](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertensquarticmiddleformsdistinct-iff--e50730228056872c3b22f32d.md) | 172 | `result-track:e50730228056872c3b22f32d0be2de5fab54ef9a07fdd3a68c4e275dd7d090eb` |
| 15 | `theorem` | [mertensQuarticCollision_not_middleDistinct](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/mertensquarticcollision-not-middledistinct--d23d3e6c2448c7b2bc8e9909.md) | 181 | `result-track:d23d3e6c2448c7b2bc8e9909c3b7c4bb08b0e478dbb5fd5bcf08d8fbfaf46242` |
| 16 | `def` | [coreGrowingShiftQuarticUpperEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/coregrowingshiftquarticupperenergy--bb8c93c46a839a99ccc898a9.md) | 188 | `declaration-track:bb8c93c46a839a99ccc898a9c5cbf7b55a6ae21b22f09bfbc362070207f42f05` |
| 17 | `def` | [coreGrowingShiftQuarticCollisionEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/coregrowingshiftquarticcollisionenergy--805c235bd89d1b417df4b799.md) | 196 | `declaration-track:805c235bd89d1b417df4b799f639e8d51ac9b1286c7adcad8fa5d74a96baa8b9` |
| 18 | `def` | [coreGrowingShiftQuarticCollisionFreeEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/coregrowingshiftquarticcollisionfreeenergy--f6d696e11ba8362ca691dc89.md) | 204 | `declaration-track:f6d696e11ba8362ca691dc89bc55c5ebda863c40f3fc2f60076877449e8fc16f` |
| 19 | `theorem` | [coreGrowingShiftQuarticOffDiagonalEnergy_eq_two_mul_upper](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/coregrowingshiftquarticoffdiagonalenergy-eq-two-mul-upper--fb8d56f311819bcad85c3ec3.md) | 212 | `result-track:fb8d56f311819bcad85c3ec34a0667c5af5783f69b0e4894e99e260f9d74c01a` |
| 20 | `theorem` | [coreGrowingShiftQuarticUpperEnergy_eq_collision_add_free](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/coregrowingshiftquarticupperenergy-eq-collision-add-free--e08a1bf099ba41a10e31bc2b.md) | 248 | `result-track:e08a1bf099ba41a10e31bc2b197d4ca3b9f923001432a849ccf65c634ab18c5d` |
| 21 | `theorem` | [coreGrowingShiftQuarticOffDiagonalEnergy_eq_collision_split](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/coregrowingshiftquarticoffdiagonalenergy-eq-collision-split--4df52982c172a186b54689d8.md) | 288 | `result-track:4df52982c172a186b54689d817c82fa63b7d7115133448ad7a2f9cc4251e4fec` |
| 22 | `def` | [SubpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/subpolynomialcoregrowingshiftquarticcollisionseparatedcompensation--1bee0e273d6b9eb4d6eebf38.md) | 297 | `declaration-track:1bee0e273d6b9eb4d6eebf38bade92e0ebc72927f8fc302ae4fc01d2e64ed619` |
| 23 | `theorem` | [subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_iff_offDiagonal](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/subpolynomialcoregrowingshiftquarticcollisionseparatedcompensation-iff-o--2f5560f4c30684d00ace91f3.md) | 308 | `result-track:2f5560f4c30684d00ace91f344983079663428026ea96cc5d277607a85e1426f` |
| 24 | `theorem` | [riemannHypothesis_of_coreGrowingShiftQuarticCollisionSeparatedCompensation](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/riemannhypothesis-of-coregrowingshiftquarticcollisionseparatedcompensati--5d676546bbf5e05ac1d17803.md) | 326 | `result-track:5d676546bbf5e05ac1d17803e38700f7bb8ce7165f184167cde75fc6961718a2` |
| 25 | `structure` | [GrowingShiftCollisionSeparatedQuarticSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/growingshiftcollisionseparatedquarticsource--9cc3dd539320873147083662.md) | 336 | `declaration-track:9cc3dd539320873147083662a3952154e2c1273dca3f505814678dcd67cdfda8` |
| 26 | `structure` | [ToCoreGrowingShiftQuarticCollisionSeparatedAdapter](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/tocoregrowingshiftquarticcollisionseparatedadapter--8a451e79560bbac7bd976b82.md) | 347 | `declaration-track:8a451e79560bbac7bd976b829889e42db8fa18fa14810efb46766b5866146b14` |
| 27 | `theorem` | [riemannHypothesis_of_collisionSeparatedQuarticAdapter](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/declarations/riemannhypothesis-of-collisionseparatedquarticadapter--9c469a00bf25d71d881a94a4.md) | 360 | `result-track:9c469a00bf25d71d881a94a404b1067aac0357f72fdb7de83a4274066f9a829d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
