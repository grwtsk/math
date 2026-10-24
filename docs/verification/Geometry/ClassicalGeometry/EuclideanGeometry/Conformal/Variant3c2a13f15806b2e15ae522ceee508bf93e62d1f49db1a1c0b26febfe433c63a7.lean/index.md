# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Conformal.Variant3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ad1d5ac2c557cb3e52e5dcb4e5bc79bf669c006",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Conformal/Variant3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Conformal/Variant3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Conformal/Variant3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ad1d5ac2c557cb3e52e5dcb4e5bc79bf669c006`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Conformal/Variant3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Conformal/Variant3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Conformal.NormedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsConformalMap.preserves_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Conformal/Variant3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7.lean/declarations/isconformalmap-preserves-angle--65d263085ab3a54e6203724b.md) | 23 | `result-track:65d263085ab3a54e6203724be22a322f7236e3bb8cffe9029b0eb314f10aaa41` |
| 2 | `theorem` | [ConformalAt.preserves_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Conformal/Variant3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7.lean/declarations/conformalat-preserves-angle--54a2f220ec66f4e4b50a0d4e.md) | 30 | `result-track:54a2f220ec66f4e4b50a0d4ef40e44d463d5a92e40255244755473668f00befd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
