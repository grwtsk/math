# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Rotate.Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb16745146e06647884ec88bede767c9ccd35928",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb16745146e06647884ec88bede767c9ccd35928`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Triangle.rotate](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean/declarations/triangle-rotate--00c2b4b9b34e203d0309c238.md) | 49 | `declaration-track:00c2b4b9b34e203d0309c2384ba067ce0cd60ca70320e5b8e1b8a20d8eb3ef16` |
| 2 | `def` | [Triangle.invRotate](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean/declarations/triangle-invrotate--5c0f62c3445d8a48d4f54c9c.md) | 68 | `declaration-track:5c0f62c3445d8a48d4f54c9c8cb75a76d373fc48b0939c1a3175cf7cba6ded1a` |
| 3 | `def` | [rotate](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean/declarations/rotate--571a06c53e33d171df94eddb.md) | 83 | `declaration-track:571a06c53e33d171df94eddbcb5146508992f736899f65f491248ad2a246000a` |
| 4 | `def` | [invRotate](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean/declarations/invrotate--f760f32a3ff0c4ec5bae2f8f.md) | 96 | `declaration-track:f760f32a3ff0c4ec5bae2f8fc91e9b31b05457364ac68726aa2887eb72f7ee6b` |
| 5 | `def` | [rotCompInvRot](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean/declarations/rotcompinvrot--3f06a8a53c5fb408371d4962.md) | 114 | `declaration-track:3f06a8a53c5fb408371d4962cd33c48714f9900a10d65d728ed4ebd40ffb216a` |
| 6 | `def` | [invRotCompRot](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean/declarations/invrotcomprot--9d1fe13146379c8d5ba581c3.md) | 121 | `declaration-track:9d1fe13146379c8d5ba581c3c5926cc9e53a76a21d49fe7a89870f4e667cb74a` |
| 7 | `def` | [triangleRotation](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean/declarations/trianglerotation--daabfcb0ba0fe161f4222ff4.md) | 129 | `declaration-track:daabfcb0ba0fe161f4222ff4d30b9c5a857bd52801e32b10d413be06a9364cd2` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean/declarations/instance--c82b9b0c93feb07c1e164fbf.md) | 135 | `declaration-track:c82b9b0c93feb07c1e164fbfe3c591ed121c294cc55eb5c28a934949502b277f` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean/declarations/instance--e0d6f0fe43e9d558fd9ac9d3.md) | 139 | `declaration-track:e0d6f0fe43e9d558fd9ac9d3f052202ab03e1174434f2c3ef833ea4f94d7a374` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
