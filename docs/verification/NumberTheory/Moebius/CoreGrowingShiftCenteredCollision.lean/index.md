# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftCenteredCollision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fa2a73c532eac6b64535506b833fbf1234f4398",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fa2a73c532eac6b64535506b833fbf1234f4398`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticConnections`](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mertensTwoPointQuarticCollisionProgression](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/mertenstwopointquarticcollisionprogression--8e7b70bab1211ba5cc958e90.md) | 23 | `declaration-track:8e7b70bab1211ba5cc958e90a89d063a2a5ce149ebfad21507f018df0cf5bb3c` |
| 2 | `theorem` | [mertensTwoPointQuarticCollisionUpper_eq_progression](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/mertenstwopointquarticcollisionupper-eq-progression--996a7405cd5c24dba7934561.md) | 30 | `result-track:996a7405cd5c24dba7934561c672022ccb83092f0b79c78c799584fefaf4b26d` |
| 3 | `def` | [mertensTwoPointQuarticCenteredCollisionCell](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/mertenstwopointquarticcenteredcollisioncell--ac3c617026a1640262aa59e8.md) | 80 | `declaration-track:ac3c617026a1640262aa59e8535d5199c1aade1aaee293011fc68ae11fa12c94` |
| 4 | `def` | [mertensTwoPointQuarticCenteredCollision](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/mertenstwopointquarticcenteredcollision--971ade63d62c022bff143b7d.md) | 88 | `declaration-track:971ade63d62c022bff143b7d1d5b91be48f167cb8961cb5791e4e1e7292d61b5` |
| 5 | `theorem` | [mertensTwoPointQuarticCollisionProgression_eq_centered](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/mertenstwopointquarticcollisionprogression-eq-centered--bb97a26cdf18554132f79dae.md) | 95 | `result-track:bb97a26cdf18554132f79dae613a4dcafdfbc1c1dc62b283af346184de26f5d7` |
| 6 | `def` | [mertensTwoPointQuarticCenteredSquarefreeCell](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/mertenstwopointquarticcenteredsquarefreecell--17e007330718cb0701537fe6.md) | 126 | `declaration-track:17e007330718cb0701537fe606ac6cbbe6692f8b97f59a46befee22d99448162` |
| 7 | `theorem` | [mertensTwoPointQuarticCenteredCollisionCell_eq_squarefree](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/mertenstwopointquarticcenteredcollisioncell-eq-squarefree--c9ed2ccb1115b78e2ac80e0d.md) | 133 | `result-track:c9ed2ccb1115b78e2ac80e0dd55969102ff5af9a2f295125a2c0251fe37c90f5` |
| 8 | `def` | [mertensTwoPointQuarticCenteredSquarefreeCollision](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/mertenstwopointquarticcenteredsquarefreecollision--a0654f96598e3f5710182d03.md) | 148 | `declaration-track:a0654f96598e3f5710182d030a5732ee30102d974408f46bb266c860162ec9e6` |
| 9 | `theorem` | [mertensTwoPointQuarticCenteredCollision_eq_squarefree](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/mertenstwopointquarticcenteredcollision-eq-squarefree--bdf4e4c938ecbaf8c6000ccd.md) | 155 | `result-track:bdf4e4c938ecbaf8c6000ccdf6bfeb91648ec4bf6ff35eeb03f68e8ac2ad0caf` |
| 10 | `def` | [coreGrowingShiftQuarticCenteredSquarefreeCollisionEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/coregrowingshiftquarticcenteredsquarefreecollisionenergy--44c05cca7e29bf6d8926b235.md) | 166 | `declaration-track:44c05cca7e29bf6d8926b2357d695238f9b0f3dd432ed5404d375e77e65cb344` |
| 11 | `theorem` | [activeQuarticCollisionShift_pos](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/activequarticcollisionshift-pos--18d8ff00b884feb22fd44f37.md) | 174 | `result-track:18d8ff00b884feb22fd44f37438f9b9657be5a9d67b525cef85bcf408c721833` |
| 12 | `theorem` | [coreGrowingShiftQuarticCollisionEnergy_eq_centeredSquarefree](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/coregrowingshiftquarticcollisionenergy-eq-centeredsquarefree--fdce680719c01c0c3b748446.md) | 184 | `result-track:fdce680719c01c0c3b748446d472f3b016bb87e72dec910e05105cdff37d40c9` |
| 13 | `def` | [SubpolynomialCoreGrowingShiftQuarticCenteredSquarefreeCollisionLineCompensation](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/subpolynomialcoregrowingshiftquarticcenteredsquarefreecollisionlinecompe--b71741bf7510d8f2f27bc469.md) | 209 | `declaration-track:b71741bf7510d8f2f27bc469adb5eb557a9edc761a3d669599274d737284e6d7` |
| 14 | `theorem` | [subpolynomialCoreGrowingShiftQuarticCenteredSquarefreeCollisionLineCompensation_iff](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/subpolynomialcoregrowingshiftquarticcenteredsquarefreecollisionlinecompe--d76b2bf9ca8a3b3ab01ed9c7.md) | 220 | `result-track:d76b2bf9ca8a3b3ab01ed9c7c81a4ad193562e35dd2b7e263dd2c52df3f2f14f` |
| 15 | `theorem` | [riemannHypothesis_of_centeredSquarefreeCollision_and_collisionFree](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/riemannhypothesis-of-centeredsquarefreecollision-and-collisionfree--9ddf92461f35fc5785168322.md) | 241 | `result-track:9ddf92461f35fc5785168322deb1ba2ad281ebceb72b34d91a9722a842a9359d` |
| 16 | `structure` | [CenteredSquarefreeCollisionSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/centeredsquarefreecollisionsource--e3b81bf193a6529ffcf9fc7c.md) | 253 | `declaration-track:e3b81bf193a6529ffcf9fc7c6067aecbe86c90bb79223554b92e0d28a6f3c528` |
| 17 | `structure` | [ToCenteredSquarefreeCollisionLineCompensation](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/tocenteredsquarefreecollisionlinecompensation--add9d443885790da16109c49.md) | 262 | `declaration-track:add9d443885790da16109c495b1be2c5e0781d83cbbe9334a9ee79f472bc15a9` |
| 18 | `theorem` | [zeroShift_quarticCollisionSupport_hostileWitness](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/declarations/zeroshift-quarticcollisionsupport-hostilewitness--4d2eadbec5ca6c2e298fec50.md) | 277 | `result-track:4d2eadbec5ca6c2e298fec50d108c2ce7d75d402c86eb62fbc5bb06535584058` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
