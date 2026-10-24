# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticParallelogram

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d48c06b81e46edcaacc587e62a67694762b20499",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d48c06b81e46edcaacc587e62a67694762b20499`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftCenteredCollision`](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mertensTwoPointQuarticParallelogramCell](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/mertenstwopointquarticparallelogramcell--734fb1d43bbd2e62b4ef8436.md) | 22 | `declaration-track:734fb1d43bbd2e62b4ef8436291ccff6f4a1bdbc7769aaa249acaa8c7117c5f6` |
| 2 | `theorem` | [mertensTwoPointQuarticCell_eq_parallelogram](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/mertenstwopointquarticcell-eq-parallelogram--6b572eebf9882bfe9b62fb91.md) | 31 | `result-track:6b572eebf9882bfe9b62fb91f684aea2b5612272ad630533fac53d38fb4b3cb9` |
| 3 | `def` | [mertensTwoPointQuarticParallelogramSeparationSet](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/mertenstwopointquarticparallelogramseparationset--b413475c960a50dc3e504c92.md) | 45 | `declaration-track:b413475c960a50dc3e504c923332329e090808c587da50d6980fcd9c92b0df06` |
| 4 | `def` | [mertensTwoPointQuarticParallelogramSlice](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/mertenstwopointquarticparallelogramslice--09e8ecfde4ab02e86503d667.md) | 50 | `declaration-track:09e8ecfde4ab02e86503d667335048be9fbdc025f86dad9e8f87c492706ade33` |
| 5 | `def` | [mertensTwoPointQuarticParallelogramUpper](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/mertenstwopointquarticparallelogramupper--92a2cb7896f13626cfe41aff.md) | 56 | `declaration-track:92a2cb7896f13626cfe41affa7e0973f546674900e0f55bb0832c38d76d350f4` |
| 6 | `theorem` | [mertensTwoPointQuarticCollisionFreeUpper_eq_parallelogram](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/mertenstwopointquarticcollisionfreeupper-eq-parallelogram--00e660b28b308563c7cace9b.md) | 62 | `result-track:00e660b28b308563c7cace9bce148c18c06611f81c2119588a1a62c1374e5702` |
| 7 | `theorem` | [mertensTwoPointQuarticParallelogramCell_eq_collisionCell](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/mertenstwopointquarticparallelogramcell-eq-collisioncell--5a20aea9c59f26794031cae1.md) | 122 | `result-track:5a20aea9c59f26794031cae1f20ae0d9e727b55c5fa9745123ea2983efec4c88` |
| 8 | `def` | [coreGrowingShiftQuarticParallelogramEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/coregrowingshiftquarticparallelogramenergy--b29c8d1193137b13d3aeab35.md) | 133 | `declaration-track:b29c8d1193137b13d3aeab3573d60b99566460871c6e612b73fdcff38c9a66f8` |
| 9 | `theorem` | [coreGrowingShiftQuarticCollisionFreeEnergy_eq_parallelogram](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/coregrowingshiftquarticcollisionfreeenergy-eq-parallelogram--ef95f4f935f8985c5de05684.md) | 142 | `result-track:ef95f4f935f8985c5de0568411f93388436d2f0832d5f0d752e00043e26ac573` |
| 10 | `def` | [SubpolynomialCoreGrowingShiftQuarticParallelogramBudget](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/subpolynomialcoregrowingshiftquarticparallelogrambudget--04dda4e2b25d27eb72dcf5f9.md) | 157 | `declaration-track:04dda4e2b25d27eb72dcf5f990a61a9479497ba7aa4935658b1129d3d46b7b16` |
| 11 | `theorem` | [subpolynomialCoreGrowingShiftQuarticParallelogramBudget_iff_collisionFree](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/subpolynomialcoregrowingshiftquarticparallelogrambudget-iff-collisionfre--eaaf5c5647d7cfb2f31f61c8.md) | 166 | `result-track:eaaf5c5647d7cfb2f31f61c8d8ec561af952771c6b89fe618dd657843f2c3757` |
| 12 | `theorem` | [riemannHypothesis_of_centeredCollision_and_parallelogram](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/riemannhypothesis-of-centeredcollision-and-parallelogram--320899d2f239ac94dd6122e9.md) | 185 | `result-track:320899d2f239ac94dd6122e9cc0b493bf945d2345127050d843b50a6240295eb` |
| 13 | `structure` | [GrowingAffineParallelogramSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/growingaffineparallelogramsource--0bd42ba6686fb96ea2bb18c1.md) | 197 | `declaration-track:0bd42ba6686fb96ea2bb18c1afcbcc92071e7d8b9b7cf934475cb81817716801` |
| 14 | `structure` | [ToCoreGrowingShiftQuarticParallelogramBudget](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/tocoregrowingshiftquarticparallelogrambudget--04acfb8cb41996b52068319a.md) | 208 | `declaration-track:04acfb8cb41996b52068319aaeb51458dc07d0f6328e2e9779e3244e9e249fe6` |
| 15 | `structure` | [FullBoxU2ToActiveParallelogramSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/fullboxu2toactiveparallelogramsource--8187cefbc09c2005c8927bd9.md) | 225 | `declaration-track:8187cefbc09c2005c8927bd98f5f384c4dc56f323204c1f1edb4becc3393b0df` |
| 16 | `structure` | [ToCoreGrowingShiftQuarticParallelogramBudgetFromU2](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/declarations/tocoregrowingshiftquarticparallelogrambudgetfromu2--cf7e4bd505793e82ee0fce97.md) | 235 | `declaration-track:cf7e4bd505793e82ee0fce974df65afbcc7a14afd8fdbe2f07018f848b0f2df5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
