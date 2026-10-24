# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.VertexGroup.Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9add7e6426c4d776c759af702ac3da4396b5d847",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9add7e6426c4d776c759af702ac3da4396b5d847`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PathCategory.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [vertexGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean/declarations/vertexgroup--23b876815b1ec07337080eda.md) | 40 | `declaration-track:23b876815b1ec07337080edaab455fdf3a4ef15fe6e0101234ee00d22e184efd` |
| 2 | `theorem` | [vertexGroup.inv_eq_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean/declarations/vertexgroup-inv-eq-inv--121f3738d090484d1956ba5b.md) | 50 | `result-track:121f3738d090484d1956ba5b3937307a92c9c6d191165d2ae225a37bee98fcaf` |
| 3 | `def` | [vertexGroupIsomOfMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean/declarations/vertexgroupisomofmap--03133957b85b47554e5c315a.md) | 57 | `declaration-track:03133957b85b47554e5c315a07aaeb96a9bc1387b3846029e8c813ce9ef1aea6` |
| 4 | `def` | [vertexGroupIsomOfPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean/declarations/vertexgroupisomofpath--7b044c55e7a6c308e7c0daa8.md) | 71 | `declaration-track:7b044c55e7a6c308e7c0daa8c13758d89b972d76d9daa6678a964f77121b5bc3` |
| 5 | `def` | [CategoryTheory.Functor.mapVertexGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean/declarations/categorytheory-functor-mapvertexgroup--69489982faa8264e442016de.md) | 76 | `declaration-track:69489982faa8264e442016de7be016d65f065aba007cce20cec3b6aa94475407` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
