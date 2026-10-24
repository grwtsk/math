# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.VertexGroup.Variant5acb275e0df22488496d5bc4d8a8f09804265fe781ba31fc63c0c54aab8d5478

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8ff99db54103892e47d46928737d07386c29512",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant5acb275e0df22488496d5bc4d8a8f09804265fe781ba31fc63c0c54aab8d5478.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant5acb275e0df22488496d5bc4d8a8f09804265fe781ba31fc63c0c54aab8d5478.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant5acb275e0df22488496d5bc4d8a8f09804265fe781ba31fc63c0c54aab8d5478.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8ff99db54103892e47d46928737d07386c29512`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant5acb275e0df22488496d5bc4d8a8f09804265fe781ba31fc63c0c54aab8d5478.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant5acb275e0df22488496d5bc4d8a8f09804265fe781ba31fc63c0c54aab8d5478.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PathCategory.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [vertexGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant5acb275e0df22488496d5bc4d8a8f09804265fe781ba31fc63c0c54aab8d5478.lean/declarations/vertexgroup--3c8a3301970477142bf8500b.md) | 48 | `declaration-track:3c8a3301970477142bf8500b050afd1d8cf327b6fc738c6d6427a070dc5606c9` |
| 2 | `theorem` | [vertexGroup.inv_eq_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant5acb275e0df22488496d5bc4d8a8f09804265fe781ba31fc63c0c54aab8d5478.lean/declarations/vertexgroup-inv-eq-inv--7a5e66cca949950028a6d529.md) | 58 | `result-track:7a5e66cca949950028a6d529ffea89a78a7356ff93a12169f1a6d582a97beb7f` |
| 3 | `def` | [vertexGroupIsomOfMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant5acb275e0df22488496d5bc4d8a8f09804265fe781ba31fc63c0c54aab8d5478.lean/declarations/vertexgroupisomofmap--8b1a059bc1da1ec3ca711bb9.md) | 65 | `declaration-track:8b1a059bc1da1ec3ca711bb965b871c254776154881e630330858e136be1b851` |
| 4 | `def` | [vertexGroupIsomOfPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant5acb275e0df22488496d5bc4d8a8f09804265fe781ba31fc63c0c54aab8d5478.lean/declarations/vertexgroupisomofpath--73c78b83166b00b85e9ed14c.md) | 79 | `declaration-track:73c78b83166b00b85e9ed14cc7bf6398cbb41c6693c26f75d927e294c0143721` |
| 5 | `def` | [CategoryTheory.Functor.mapVertexGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant5acb275e0df22488496d5bc4d8a8f09804265fe781ba31fc63c0c54aab8d5478.lean/declarations/categorytheory-functor-mapvertexgroup--55d9bcd617016e3f7294cd26.md) | 84 | `declaration-track:55d9bcd617016e3f7294cd26f1c0ae9d8eab47904921124d747ab5ce970dfbf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
