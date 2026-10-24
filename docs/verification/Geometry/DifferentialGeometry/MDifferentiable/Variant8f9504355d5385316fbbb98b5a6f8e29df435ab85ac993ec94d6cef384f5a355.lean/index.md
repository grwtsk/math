# Verification target: GRWTSK.Geometry.DifferentialGeometry.MDifferentiable.Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efc9af6dff7b308a2044e2f33f26b8e58896bb93",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efc9af6dff7b308a2044e2f33f26b8e58896bb93`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.VectorBundle.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.NormedSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.SpecificFunctions` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mdifferentiableWithinAt_totalSpace](../../../../../mathematics/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean/declarations/mdifferentiablewithinat-totalspace--583a24ef8c89978ae196634e.md) | 45 | `result-track:583a24ef8c89978ae196634e711a43d7946303ec3f3f845422a62d176d6082a0` |
| 2 | `lemma` | [MDifferentiableWithinAt.clm_apply_of_inCoordinates](../../../../../mathematics/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean/declarations/mdifferentiablewithinat-clm-apply-of-incoordinates--9ab6677e2a27082c0c763c67.md) | 109 | `result-track:9ab6677e2a27082c0c763c67264709dd7ed96b6fbf653f844c8cc61184f3515d` |
| 3 | `lemma` | [MDifferentiableAt.clm_apply_of_inCoordinates](../../../../../mathematics/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean/declarations/mdifferentiableat-clm-apply-of-incoordinates--cdb0cfdf1ef35c4bf6fe7cdd.md) | 147 | `result-track:cdb0cfdf1ef35c4bf6fe7cdd440c737cd2ef6405592469808aa00583f2cde114` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
