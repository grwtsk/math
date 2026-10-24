# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticConnections

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc617f674d7eed25359a3ede099d4978da6d86b9",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc617f674d7eed25359a3ede099d4978da6d86b9`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticCollision`](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coreQuarticSquarefreeIndicatorReal](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/corequarticsquarefreeindicatorreal--99e54689c1ecd776199d332f.md) | 23 | `declaration-track:99e54689c1ecd776199d332fa92f4e94ecbb60a90a3026a8d0b193d73a35e588` |
| 2 | `theorem` | [moebiusReal_sq_eq_coreQuarticSquarefreeIndicator](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/moebiusreal-sq-eq-corequarticsquarefreeindicator--770a076a2b5857f91049a684.md) | 27 | `result-track:770a076a2b5857f91049a68414a604a2107380af899347df827a387f23e7c2b9` |
| 3 | `def` | [mertensTwoPointQuarticSquarefreeMidpointCell](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/mertenstwopointquarticsquarefreemidpointcell--b185ac4459d2696b24356d0f.md) | 35 | `declaration-track:b185ac4459d2696b24356d0f71cf64d2cd37373c047e08f447c53d2ff0165391` |
| 4 | `theorem` | [mertensTwoPointQuarticCollisionCell_eq_squarefreeMidpoint](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/mertenstwopointquarticcollisioncell-eq-squarefreemidpoint--769d36cbf4ad1d85d98144de.md) | 44 | `result-track:769d36cbf4ad1d85d98144de4c46ba01b393c6f0b95365c0f28483505b74a17a` |
| 5 | `def` | [mertensTwoPointQuarticSquarefreeCollisionUpper](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/mertenstwopointquarticsquarefreecollisionupper--7ecc9c53e005c6f7693e7104.md) | 58 | `declaration-track:7ecc9c53e005c6f7693e7104a2092c9cbeecce1f6206b5c8edb534c6bcff83f3` |
| 6 | `theorem` | [mertensTwoPointQuarticCollisionUpper_eq_squarefreeMidpoint](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/mertenstwopointquarticcollisionupper-eq-squarefreemidpoint--2e2e60cc0282eeb1904a9278.md) | 65 | `result-track:2e2e60cc0282eeb1904a927887b2d76256d33a1fbfae5eeddcb4cf244e978584` |
| 7 | `def` | [coreGrowingShiftQuarticSquarefreeCollisionEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/coregrowingshiftquarticsquarefreecollisionenergy--58845a90322e766fea8a13b1.md) | 78 | `declaration-track:58845a90322e766fea8a13b12f11071a18e07485852a3e39f4bae901c062de08` |
| 8 | `theorem` | [coreGrowingShiftQuarticCollisionEnergy_eq_squarefreeMidpoint](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/coregrowingshiftquarticcollisionenergy-eq-squarefreemidpoint--e99599a522ae75e9aa747658.md) | 87 | `result-track:e99599a522ae75e9aa7476584c3dc3860c65f7bc38181ecf156357a60bbdf9d7` |
| 9 | `def` | [MertensQuarticFourFormsPairwiseDistinct](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/mertensquarticfourformspairwisedistinct--4dbe519061be8417cce13832.md) | 103 | `declaration-track:4dbe519061be8417cce138323d7639340dee1c9014670870614368dded05c29f` |
| 10 | `theorem` | [mertensQuarticFourFormsPairwiseDistinct_of_collisionFree](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/mertensquarticfourformspairwisedistinct-of-collisionfree--af87641c715d04aca75282a4.md) | 114 | `result-track:af87641c715d04aca75282a41a2c5c4520f2223d61702c28a74c2934f646122c` |
| 11 | `theorem` | [coreGrowingShiftCollisionFreeCell_fourFormsPairwiseDistinct](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/coregrowingshiftcollisionfreecell-fourformspairwisedistinct--69eaaa23bc4b5b71ad0997eb.md) | 135 | `result-track:69eaaa23bc4b5b71ad0997eb496c815a99498bb8774c8c77cca5b8cfd67363fb` |
| 12 | `def` | [SubpolynomialCoreGrowingShiftQuarticCollisionLineCompensation](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/subpolynomialcoregrowingshiftquarticcollisionlinecompensation--dcb3fba29491f10a126e227c.md) | 155 | `declaration-track:dcb3fba29491f10a126e227ccdd664efdb567a92611185fefabc1b4dca0e2d86` |
| 13 | `def` | [SubpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/subpolynomialcoregrowingshiftquarticsquarefreecollisionlinecompensation--9ab13d8b4ba9dd246dc7ce80.md) | 164 | `declaration-track:9ab13d8b4ba9dd246dc7ce80712f52c6633b7dc763d628c175922da126402421` |
| 14 | `theorem` | [subpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation_iff_collisionLine](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/subpolynomialcoregrowingshiftquarticsquarefreecollisionlinecompensation--c8be5757b144e3ec49ee4da7.md) | 174 | `result-track:c8be5757b144e3ec49ee4da756257ba1f0124d2b8f82e0d8d5fc74581137a3de` |
| 15 | `def` | [SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/subpolynomialcoregrowingshiftquarticcollisionfreebudget--5b10d0af52e50cc6d94f213d.md) | 193 | `declaration-track:5b10d0af52e50cc6d94f213d58631995525d9c508ed7d04638da430dab8cc5da` |
| 16 | `theorem` | [subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_of_split](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/subpolynomialcoregrowingshiftquarticcollisionseparatedcompensation-of-sp--9a97db5767faeb57c8506b16.md) | 202 | `result-track:9a97db5767faeb57c8506b163893ddc3bf30653750f415284075ad7d0bad5ad7` |
| 17 | `theorem` | [subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_of_squarefree_and_free](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/subpolynomialcoregrowingshiftquarticcollisionseparatedcompensation-of-sq--85384a0063ef1a8655ea17f1.md) | 247 | `result-track:85384a0063ef1a8655ea17f172db32b24ba5fa542bbcaff9c96fd6613bbb2e94` |
| 18 | `theorem` | [riemannHypothesis_of_squarefreeCollisionLine_and_collisionFree](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/riemannhypothesis-of-squarefreecollisionline-and-collisionfree--19a45c2ae44e78f70887a4cf.md) | 258 | `result-track:19a45c2ae44e78f70887a4cfa959eb1a8bb18275709fd65ec68ee679f3852abe` |
| 19 | `structure` | [ToCoreGrowingShiftSquarefreeCollisionLineAdapter](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/tocoregrowingshiftsquarefreecollisionlineadapter--44d53609aec3c5d302f43eca.md) | 269 | `declaration-track:44d53609aec3c5d302f43eca9a4737efff7ddebda9e3de318436500d690827ec` |
| 20 | `structure` | [ToCoreGrowingShiftCollisionFreeBudgetAdapter](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/tocoregrowingshiftcollisionfreebudgetadapter--96386e0207a5542c0b1c1dc2.md) | 277 | `declaration-track:96386e0207a5542c0b1c1dc2cd91f95dc5fafeeafa9459960c402323d7ad0043` |
| 21 | `theorem` | [riemannHypothesis_of_collisionLine_and_collisionFreeAdapters](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/riemannhypothesis-of-collisionline-and-collisionfreeadapters--a767ee1b67571e9dfae1cc8f.md) | 284 | `result-track:a767ee1b67571e9dfae1cc8f6131bad4cfedb656a7a36bce9535f459f8a9b08f` |
| 22 | `structure` | [FixedFormBinarySquarefreeCollisionSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/fixedformbinarysquarefreecollisionsource--430f025f194338a1edff90f5.md) | 300 | `declaration-track:430f025f194338a1edff90f540750f19224a1db78247d83e26bfb459fd262478` |
| 23 | `structure` | [ToSquarefreeCollisionLineFromFixedFormBinary](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/tosquarefreecollisionlinefromfixedformbinary--562039571e613e74a6cb1a52.md) | 311 | `declaration-track:562039571e613e74a6cb1a52d6e79169f74c8d629cfbad775cce580145188d30` |
| 24 | `structure` | [FourPointParallelogramSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/fourpointparallelogramsource--a784166b1d8b7a97077f3701.md) | 325 | `declaration-track:a784166b1d8b7a97077f3701c696428ac869e4c1a04bbae5477ce38ccd4df4b7` |
| 25 | `structure` | [ToCollisionFreeBudgetFromFourPoint](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/tocollisionfreebudgetfromfourpoint--b1a72c2e812e2bf335b8ed81.md) | 334 | `declaration-track:b1a72c2e812e2bf335b8ed813f3d60952a8b178407b07a2598592d2fa16a0108` |
| 26 | `structure` | [MobiusU2ParallelogramSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/mobiusu2parallelogramsource--2794e2284610c4f7baae5729.md) | 348 | `declaration-track:2794e2284610c4f7baae57294cefd2736d2a5cafac4aa18b16e418ae8c9166fc` |
| 27 | `structure` | [ToCollisionFreeBudgetFromMobiusU2](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/tocollisionfreebudgetfrommobiusu2--0d2fba1b585a1a41329ab5ad.md) | 357 | `declaration-track:0d2fba1b585a1a41329ab5ada9972df69353f051f0a09c332aef7dc13a0c20e0` |
| 28 | `structure` | [AveragedHigherOrderChowlaSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/averagedhigherorderchowlasource--b62fd14001e134cc51051eba.md) | 372 | `declaration-track:b62fd14001e134cc51051eba64be89873ad29945bc01f6a64cc6a32cec1017be` |
| 29 | `structure` | [ToCollisionFreeBudgetFromAveragedHigherOrder](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/tocollisionfreebudgetfromaveragedhigherorder--4d38b39910858bbc1a963b47.md) | 381 | `declaration-track:4d38b39910858bbc1a963b479cc479ebf7a9c6a3e9a1bb20277d4ef960fabd3a` |
| 30 | `structure` | [ShortIntervalGowersCollisionSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/shortintervalgowerscollisionsource--b662eed848f3a383d4882f46.md) | 395 | `declaration-track:b662eed848f3a383d4882f467def8d0257c7b10461cd4ead8934a3421b482788` |
| 31 | `structure` | [ToQuarticSplitBudgetsFromShortIntervalGowers](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/toquarticsplitbudgetsfromshortintervalgowers--8afe27f6428e81705118d27c.md) | 404 | `declaration-track:8afe27f6428e81705118d27c8cc94a4a39a290c80434a101ffbc0af0e581f099` |
| 32 | `structure` | [LogarithmicGrowingShiftCollisionSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/logarithmicgrowingshiftcollisionsource--ea7ad1468157164b26f5a278.md) | 426 | `declaration-track:ea7ad1468157164b26f5a278412fc102d75d1fb42d74a5260a30150f9fd0fec3` |
| 33 | `structure` | [ToQuarticSplitBudgetsFromLogarithmicGrowingShift](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/declarations/toquarticsplitbudgetsfromlogarithmicgrowingshift--bee50308fc531c2d82071868.md) | 435 | `declaration-track:bee50308fc531c2d82071868860b32c8420025d3eaa7a9947fb0836ccf0529cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
