# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToApp.Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed2d0d1cb09dbc9ef84aa5e6d5e2512b97d40652",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed2d0d1cb09dbc9ef84aa5e6d5e2512b97d40652`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Cat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AddRelatedDecl` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [catAppSimp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean/declarations/catappsimp--b7bc5cd686cb2de5f53781af.md) | 34 | `declaration-track:b7bc5cd686cb2de5f53781afc4095658e521673f08d4d481d261f81b334b96e9` |
| 2 | `def` | [toCatExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean/declarations/tocatexpr--4d72979ed4519b53103c9325.md) | 46 | `declaration-track:4d72979ed4519b53103c93251668ed8d445f530ed00ed1656d313ef21823e536` |
| 3 | `def` | [toAppExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean/declarations/toappexpr--cd6bf815954f3ec6d7cb3778.md) | 91 | `declaration-track:cd6bf815954f3ec6d7cb37788fa3809cc7b36aa0433830380c3eb9f91c65186f` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean/declarations/syntax--76fc80fbfab3a31e80786aa2.md) | 112 | `declaration-track:76fc80fbfab3a31e80786aa20e33e51b9366147d844f31af792f2ffec6b69b22` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean/declarations/initialize--996d1842544ca051964516f7.md) | 114 | `declaration-track:996d1842544ca051964516f7fc9f3594dc59f3c5035bcb43e1da228c64f8d417` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variant05743edb3183017f0d29fe18a8f05465fce4ea078873365e44a36a0123ca3e07.lean/declarations/elab--5203439ea4a4f7b62925b585.md) | 139 | `declaration-track:5203439ea4a4f7b62925b58564a5ac415f1a0fb1dff4c8ef538e92a9cde8603b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
