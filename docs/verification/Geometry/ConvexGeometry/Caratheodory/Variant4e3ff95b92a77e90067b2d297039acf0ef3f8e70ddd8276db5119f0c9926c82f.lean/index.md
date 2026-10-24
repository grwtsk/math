# Verification target: GRWTSK.Geometry.ConvexGeometry.Caratheodory.Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84d8d49afdef0eab52ce4aed7e8e7e83aad397ef",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Caratheodory/Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84d8d49afdef0eab52ce4aed7e8e7e83aad397ef`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Caratheodory/Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Caratheodory/Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Independent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_convexHull_erase](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f.lean/declarations/mem-convexhull-erase--e51dceb5b6d4e6d4f6de92e1.md) | 51 | `result-track:e51dceb5b6d4e6d4f6de92e1648b706785a108950ef6318dba73fc44802fee00` |
| 2 | `def` | [minCardFinsetOfMemConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f.lean/declarations/mincardfinsetofmemconvexhull--08d3dc2df1a4de73f490cd8b.md) | 103 | `declaration-track:08d3dc2df1a4de73f490cd8ba3ce2a7e7f363008f790e3fdf1c82faad9c1ca88` |
| 3 | `theorem` | [minCardFinsetOfMemConvexHull_subseteq](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f.lean/declarations/mincardfinsetofmemconvexhull-subseteq--bc6d4573148f412951d09d24.md) | 109 | `result-track:bc6d4573148f412951d09d245e17c960b85be0e97a39bc68a362432305208eab` |
| 4 | `theorem` | [mem_minCardFinsetOfMemConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f.lean/declarations/mem-mincardfinsetofmemconvexhull--a3c4d1ad14eb76eed3b94f23.md) | 112 | `result-track:a3c4d1ad14eb76eed3b94f23cc2066cda810ecfd9d21ddcb813a07c95c53cd88` |
| 5 | `theorem` | [minCardFinsetOfMemConvexHull_nonempty](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f.lean/declarations/mincardfinsetofmemconvexhull-nonempty--fc741af532705751d7b4b715.md) | 116 | `result-track:fc741af532705751d7b4b7155d885c09dfe08620d4a5ec3171b765e5cf3c70b1` |
| 6 | `theorem` | [minCardFinsetOfMemConvexHull_card_le_card](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f.lean/declarations/mincardfinsetofmemconvexhull-card-le-card--9767b9aaf1be4fdcd24b12fa.md) | 120 | `result-track:9767b9aaf1be4fdcd24b12fa66695a3a79c47863d093d9c6418652a801e01e8d` |
| 7 | `theorem` | [affineIndependent_minCardFinsetOfMemConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f.lean/declarations/affineindependent-mincardfinsetofmemconvexhull--2769018685f89955165e6ee0.md) | 124 | `result-track:2769018685f89955165e6ee015fd2f2e269dee0373851ed130ad16f863d86a54` |
| 8 | `theorem` | [convexHull_eq_union](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f.lean/declarations/convexhull-eq-union--9d98d5e44bd4f584750904d3.md) | 145 | `result-track:9d98d5e44bd4f584750904d3a55cd0a01cee8939db31a074288e3fea142b14b0` |
| 9 | `theorem` | [eq_pos_convex_span_of_mem_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Caratheodory/Variant4e3ff95b92a77e90067b2d297039acf0ef3f8e70ddd8276db5119f0c9926c82f.lean/declarations/eq-pos-convex-span-of-mem-convexhull--07c9bec2eb789500860be6a4.md) | 158 | `result-track:07c9bec2eb789500860be6a473b7600bac24a6c5b24d579f537cd994bb16c43b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
