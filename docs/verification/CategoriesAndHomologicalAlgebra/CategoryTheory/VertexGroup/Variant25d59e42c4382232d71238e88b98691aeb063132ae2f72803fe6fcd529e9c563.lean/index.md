# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.VertexGroup.Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7265c6b3ca6837a0b3799a87b1f2dd552e2f595",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7265c6b3ca6837a0b3799a87b1f2dd552e2f595`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Groupoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PathCategory` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Group` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.ConnectedComponent` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [vertexGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563.lean/declarations/vertexgroup--3a8a6a986a75989075119a6c.md) | 52 | `declaration-track:3a8a6a986a75989075119a6ce336d163ab195c1d1692c8184eb02611a8ecc9f6` |
| 2 | `theorem` | [vertexGroup.inv_eq_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563.lean/declarations/vertexgroup-inv-eq-inv--882f06df5993d6f781d07d5e.md) | 63 | `result-track:882f06df5993d6f781d07d5e97430d6810c75d97c4d9804ff4e6190a5b6c52ee` |
| 3 | `def` | [vertexGroupIsomOfMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563.lean/declarations/vertexgroupisomofmap--e4b3fcdc559425e429f44155.md) | 71 | `declaration-track:e4b3fcdc559425e429f441552a20b34ed120904db2ceb04047dd0ba5bb3abd62` |
| 4 | `def` | [vertexGroupIsomOfPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563.lean/declarations/vertexgroupisomofpath--e28dd9dfcf8982afa6c27825.md) | 87 | `declaration-track:e28dd9dfcf8982afa6c27825b22d129473a876214948fb445310ea2f863de92c` |
| 5 | `def` | [CategoryTheory.Functor.mapVertexGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant25d59e42c4382232d71238e88b98691aeb063132ae2f72803fe6fcd529e9c563.lean/declarations/categorytheory-functor-mapvertexgroup--0b49e38c57873f67bd9a8f45.md) | 93 | `declaration-track:0b49e38c57873f67bd9a8f454e461f7b67a9fc322185f0404e0f0892baa40c26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
