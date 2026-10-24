# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Conformal.Variantc92ea199bc7c4c9ca795caf1c61c161ee33739890cd1f5104c14f6a478f482a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a0166bf0590f5894e3fd0b5e454f2684bd5b2e7",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Conformal/Variantc92ea199bc7c4c9ca795caf1c61c161ee33739890cd1f5104c14f6a478f482a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Conformal/Variantc92ea199bc7c4c9ca795caf1c61c161ee33739890cd1f5104c14f6a478f482a6.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Conformal/Variantc92ea199bc7c4c9ca795caf1c61c161ee33739890cd1f5104c14f6a478f482a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a0166bf0590f5894e3fd0b5e454f2684bd5b2e7`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Conformal/Variantc92ea199bc7c4c9ca795caf1c61c161ee33739890cd1f5104c14f6a478f482a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Conformal/Variantc92ea199bc7c4c9ca795caf1c61c161ee33739890cd1f5104c14f6a478f482a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Conformal.NormedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsConformalMap.preserves_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Conformal/Variantc92ea199bc7c4c9ca795caf1c61c161ee33739890cd1f5104c14f6a478f482a6.lean/declarations/isconformalmap-preserves-angle--9a48a1fa50470367a30c9f73.md) | 31 | `result-track:9a48a1fa50470367a30c9f73f1d3b6a5b53002be5efeadfd4fee58d512edcfb8` |
| 2 | `theorem` | [ConformalAt.preserves_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Conformal/Variantc92ea199bc7c4c9ca795caf1c61c161ee33739890cd1f5104c14f6a478f482a6.lean/declarations/conformalat-preserves-angle--ee6cccb7712558cf7e05de79.md) | 38 | `result-track:ee6cccb7712558cf7e05de799e890de64b6621d157980ccb70973f9ebe78efcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
