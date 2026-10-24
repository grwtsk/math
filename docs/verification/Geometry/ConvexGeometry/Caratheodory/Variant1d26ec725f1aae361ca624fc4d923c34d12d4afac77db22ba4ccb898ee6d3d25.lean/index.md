# Verification target: GRWTSK.Geometry.ConvexGeometry.Caratheodory.Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a90175b9be6086d75d1c4d887394967f5d464621",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a90175b9be6086d75d1c4d887394967f5d464621`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Independent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_convexHull_erase](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/declarations/mem-convexhull-erase--7b155a83d8458a0f0b930c62.md) | 59 | `result-track:7b155a83d8458a0f0b930c62d6e1353bc92310063e1485561b722b87452f9796` |
| 2 | `def` | [minCardFinsetOfMemConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/declarations/mincardfinsetofmemconvexhull--b7ce2d0d7b9f193f14e01fd9.md) | 111 | `declaration-track:b7ce2d0d7b9f193f14e01fd9b2cbf02cf9b0bc7e3bd7d24d13e7023e09ce6ae7` |
| 3 | `theorem` | [minCardFinsetOfMemConvexHull_subseteq](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/declarations/mincardfinsetofmemconvexhull-subseteq--ab1759095d6fe047f15da5e3.md) | 117 | `result-track:ab1759095d6fe047f15da5e3b52ec5e9548e313941c424b3a729c7d606151887` |
| 4 | `theorem` | [mem_minCardFinsetOfMemConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/declarations/mem-mincardfinsetofmemconvexhull--534240e6d02db053bb608622.md) | 120 | `result-track:534240e6d02db053bb608622ffd6669b4a9439e8dddea6d1f1d267e82c8a04a2` |
| 5 | `theorem` | [minCardFinsetOfMemConvexHull_nonempty](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/declarations/mincardfinsetofmemconvexhull-nonempty--fd85cc02662bc4969f463852.md) | 124 | `result-track:fd85cc02662bc4969f4638521ded576558bc6d86e83497cc56b17fc1d47153ba` |
| 6 | `theorem` | [minCardFinsetOfMemConvexHull_card_le_card](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/declarations/mincardfinsetofmemconvexhull-card-le-card--4bcf1218372bc5378b7c0dcd.md) | 128 | `result-track:4bcf1218372bc5378b7c0dcd69f0be5011f38115d0df128abda7452892665f4a` |
| 7 | `theorem` | [affineIndependent_minCardFinsetOfMemConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/declarations/affineindependent-mincardfinsetofmemconvexhull--9e17085c15dbe9064b1d672e.md) | 132 | `result-track:9e17085c15dbe9064b1d672ed2c01ea3ea265ef9e1469b69616714f03d00da8d` |
| 8 | `theorem` | [convexHull_eq_union](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/declarations/convexhull-eq-union--aa1871312f3aedf9a2bcc591.md) | 153 | `result-track:aa1871312f3aedf9a2bcc59184e99f8c1c90142b16ed2026629734d353509f41` |
| 9 | `theorem` | [eq_pos_convex_span_of_mem_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/declarations/eq-pos-convex-span-of-mem-convexhull--77f3dd71696adb928f39e200.md) | 166 | `result-track:77f3dd71696adb928f39e2006518f8eb9e68b7e31e29643109f6a89fc2335782` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
