# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Forget.Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6e52b0cd5eac929436817660f73cbc97009e04b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6e52b0cd5eac929436817660f73cbc97009e04b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.EqualizerProducts` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagramCompPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean/declarations/diagramcomppreserveslimits--84d0bd11fd0987a75e366eb4.md) | 66 | `declaration-track:84d0bd11fd0987a75e366eb4b7290ef1efb011e4ae618fcda971354892dd840b` |
| 2 | `def` | [mapConeFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean/declarations/mapconefork--3e11d79d46f2f0e4acc0d896.md) | 103 | `declaration-track:3e11d79d46f2f0e4acc0d896f3b580f2b0c1234d0606e447d5aa8c74266920cb` |
| 3 | `theorem` | [isSheaf_iff_isSheaf_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean/declarations/issheaf-iff-issheaf-comp--8fae776e0a0df68878a04143.md) | 160 | `result-track:8fae776e0a0df68878a041430d80a3b74f1007b62609f35283eea7d820cf569f` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean/declarations/example--6c7fb4cb309aba7c65d5c234.md) | 244 | `declaration-track:6c7fb4cb309aba7c65d5c234b3eb7d0c234b024b32595cc365a3f8b454f4d4be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
