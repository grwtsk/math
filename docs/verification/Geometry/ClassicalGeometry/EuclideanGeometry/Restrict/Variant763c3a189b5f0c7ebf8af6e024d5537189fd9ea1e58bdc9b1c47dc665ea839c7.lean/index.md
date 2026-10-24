# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Restrict.Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4f0d85f82e9f670a51f02a857d9ad8ee54083f1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4f0d85f82e9f670a51f02a857d9ad8ee54083f1`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AffineSubspace.nonempty_map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean/declarations/affinesubspace-nonempty-map--3d3bb9a24e96b89a6533e649.md) | 31 | `result-track:3d3bb9a24e96b89a6533e649cdd4bf8200c4df08665f71161afd36ecb238ebb3` |
| 2 | `def` | [AffineMap.restrict](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean/declarations/affinemap-restrict--33dfd43e1c1371eede965970.md) | 39 | `declaration-track:33dfd43e1c1371eede9659702330dc095de55db8750ff788fe4ff349ec0b8608` |
| 3 | `theorem` | [AffineMap.restrict.coe_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean/declarations/affinemap-restrict-coe-apply--73c3a827f6e74656f5798161.md) | 50 | `result-track:73c3a827f6e74656f5798161901225c73aa3c755969c955a2149644e0c4306b4` |
| 4 | `theorem` | [AffineMap.restrict.linear_aux](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean/declarations/affinemap-restrict-linear-aux--3da2fdb1c2786087b2d1ad74.md) | 55 | `result-track:3da2fdb1c2786087b2d1ad74a0b1e7e224666d87f03764dd5a7181495590e183` |
| 5 | `theorem` | [AffineMap.restrict.linear](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean/declarations/affinemap-restrict-linear--8982af7e0248cfa7a9cd44cf.md) | 60 | `result-track:8982af7e0248cfa7a9cd44cf826fc08788422e1b7cd4153a3ec3b4b78db314fc` |
| 6 | `theorem` | [AffineMap.restrict.injective](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean/declarations/affinemap-restrict-injective--1d4621b89d3144902b74d442.md) | 65 | `result-track:1d4621b89d3144902b74d442dfac67e273d906ea42b9f2431205c268cda65524` |
| 7 | `theorem` | [AffineMap.restrict.surjective](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean/declarations/affinemap-restrict-surjective--d1f3d3a81c8a4bbea988be05.md) | 72 | `result-track:d1f3d3a81c8a4bbea988be051aec306166df4fe8adbe2f5b95829efe1136b9c6` |
| 8 | `theorem` | [AffineMap.restrict.bijective](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean/declarations/affinemap-restrict-bijective--fb60c572f2a3f233004c2089.md) | 80 | `result-track:fb60c572f2a3f233004c2089bea53b511ec5762eb6630193aab36ea4802e7530` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
