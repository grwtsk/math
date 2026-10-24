# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Similarity.Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36b7ef05b8ed02fc77683eacaf24954997a1e36e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36b7ef05b8ed02fc77683eacaf24954997a1e36e`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [similar_of_angle_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean/declarations/similar-of-angle-angle--5c77e6e187f4fe816cc3a545.md) | 44 | `result-track:5c77e6e187f4fe816cc3a545a8aab6b4d4a757aa36e6fafa0efa1be2ccf271e9` |
| 2 | `theorem` | [similar_of_side_angle_side](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean/declarations/similar-of-side-angle-side--60efdfcc9e0b8ca2a7979056.md) | 85 | `result-track:60efdfcc9e0b8ca2a7979056cd51653d16efc50ab070748e7f7234e562256e70` |
| 3 | `theorem` | [_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SimilarOfAngleAngle.Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.Similar.angle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-similarofanglea--327c43feb3ca2b1635529e28.md) | 121 | `result-track:327c43feb3ca2b1635529e285dd680b71b6c866107b95214d880569b7e651cf7` |
| 4 | `theorem` | [_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SimilarOfAngleAngle.Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.Similar.angle_eq_all](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-similarofanglea--b2ada92d6234ea46667822db.md) | 148 | `result-track:b2ada92d6234ea46667822db5c37589a551326d72bb64a4499f0e15ac08a28c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
