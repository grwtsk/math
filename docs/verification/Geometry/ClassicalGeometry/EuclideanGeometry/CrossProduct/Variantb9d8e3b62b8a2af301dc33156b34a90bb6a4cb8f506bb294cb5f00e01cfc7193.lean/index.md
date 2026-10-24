# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CrossProduct.Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc2137d4410a1a5534ab8f091a3bd726883a8f39",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc2137d4410a1a5534ab8f091a3bd726883a8f39`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CrossProduct` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_withLpEquiv_crossProduct](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193.lean/declarations/norm-withlpequiv-crossproduct--427f4963d3f63032d277f13d.md) | 26 | `result-track:427f4963d3f63032d277f13d32e4526a09844e24387b7e55e35ce628c28af330` |
| 2 | `theorem` | [norm_withLpEquiv_symm_crossProduct](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193.lean/declarations/norm-withlpequiv-symm-crossproduct--9cf3bb05678fe52c31c22e9e.md) | 40 | `result-track:9cf3bb05678fe52c31c22e9ee571778b57588940642a26f6dbef45acd333f031` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
