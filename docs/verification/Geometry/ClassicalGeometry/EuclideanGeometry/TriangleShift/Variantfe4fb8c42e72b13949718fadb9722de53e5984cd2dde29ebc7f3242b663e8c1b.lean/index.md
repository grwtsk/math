# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.TriangleShift.Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2c34532004d7a90498c960bd01064350e84b835",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2c34532004d7a90498c960bd01064350e84b835`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Rotate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.NegOnePow` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Triangle.shiftFunctor](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean/declarations/triangle-shiftfunctor--d9f249185a29c49860645eac.md) | 44 | `declaration-track:d9f249185a29c49860645eacf264512a0b2036abb36aac9bf8e667f21f6b876e` |
| 2 | `def` | [Triangle.shiftFunctorZero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean/declarations/triangle-shiftfunctorzero--d0421d10ab8e196744ae303a.md) | 66 | `declaration-track:d0421d10ab8e196744ae303a856467d3e4b3c4f3fbebc99be8210b1495c9be68` |
| 3 | `def` | [Triangle.shiftFunctorAdd'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean/declarations/triangle-shiftfunctoradd--32d4639b6741faa0082a4969.md) | 81 | `declaration-track:32d4639b6741faa0082a4969ce3015a10240f0c590d701a86f5708fddabb9258` |
| 4 | `def` | [rotateRotateRotateIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean/declarations/rotaterotaterotateiso--5c39dec8dff554521f2b8f08.md) | 110 | `declaration-track:5c39dec8dff554521f2b8f0864e1f2673603dd12ebc1c914e228e030c567778e` |
| 5 | `def` | [invRotateInvRotateInvRotateIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean/declarations/invrotateinvrotateinvrotateiso--b648c5041803d82459b15345.md) | 118 | `declaration-track:b648c5041803d82459b153451f3df90948671502ecfa3e016c301c093a86f43c` |
| 6 | `def` | [invRotateIsoRotateRotateShiftFunctorNegOne](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean/declarations/invrotateisorotaterotateshiftfunctornegone--a35b0785fa28e23e1115d23d.md) | 131 | `declaration-track:a35b0785fa28e23e1115d23d436ffdbf7f948e2541f285a8a6283f3c63f73838` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean/declarations/instance--7894f815b0411b5c3d02c62d.md) | 150 | `declaration-track:7894f815b0411b5c3d02c62d9d9b50120d53f4acc2292ae78d804e0a0623f662` |
| 8 | `lemma` | [shiftFunctor_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean/declarations/shiftfunctor-eq--7901b8c9d0f6030353dcb68d.md) | 164 | `result-track:7901b8c9d0f6030353dcb68d3430c3b63e0931e2e892a35a0815619be93736e3` |
| 9 | `lemma` | [shiftFunctorZero_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean/declarations/shiftfunctorzero-eq--1be368071073cb7b7725045e.md) | 168 | `result-track:1be368071073cb7b7725045e68746afa6c01fbab91cffc2cad18dad2b59d630c` |
| 10 | `lemma` | [shiftFunctorAdd_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean/declarations/shiftfunctoradd-eq--3f4a9018c9e1fce8c9b47e91.md) | 173 | `result-track:3f4a9018c9e1fce8c9b47e913216ef61223cc19d6e6f620e3564722f4d9fbf41` |
| 11 | `lemma` | [shiftFunctorAdd'_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Variantfe4fb8c42e72b13949718fadb9722de53e5984cd2dde29ebc7f3242b663e8c1b.lean/declarations/shiftfunctoradd-eq--f1aa94868ce30a4a34a08029.md) | 179 | `result-track:f1aa94868ce30a4a34a08029115b11d83a860d28d57be240d40ae9218013f4ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
