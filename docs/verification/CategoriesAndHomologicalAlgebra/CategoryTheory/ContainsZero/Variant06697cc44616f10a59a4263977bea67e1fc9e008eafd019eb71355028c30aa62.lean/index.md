# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ContainsZero.Variant06697cc44616f10a59a4263977bea67e1fc9e008eafd019eb71355028c30aa62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4a2f34e267a85282b3cb626013e6792de302943",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant06697cc44616f10a59a4263977bea67e1fc9e008eafd019eb71355028c30aa62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant06697cc44616f10a59a4263977bea67e1fc9e008eafd019eb71355028c30aa62.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant06697cc44616f10a59a4263977bea67e1fc9e008eafd019eb71355028c30aa62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4a2f34e267a85282b3cb626013e6792de302943`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant06697cc44616f10a59a4263977bea67e1fc9e008eafd019eb71355028c30aa62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant06697cc44616f10a59a4263977bea67e1fc9e008eafd019eb71355028c30aa62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Zero` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContainsZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant06697cc44616f10a59a4263977bea67e1fc9e008eafd019eb71355028c30aa62.lean/declarations/containszero--5a888ea43cb6dba880c4b449.md) | 42 | `declaration-track:5a888ea43cb6dba880c4b44922f23cec42625aa41b6576c9b10bdd2e37c1b53d` |
| 2 | `lemma` | [exists_prop_of_containsZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant06697cc44616f10a59a4263977bea67e1fc9e008eafd019eb71355028c30aa62.lean/declarations/exists-prop-of-containszero--fe8ca70a75fe850f4fabe855.md) | 45 | `result-track:fe8ca70a75fe850f4fabe855b4c1734178aa2a2838d275052e2c1d1e67db204a` |
| 3 | `lemma` | [prop_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant06697cc44616f10a59a4263977bea67e1fc9e008eafd019eb71355028c30aa62.lean/declarations/prop-of-iszero--a0c21495dd90e3aaf9b5c34d.md) | 49 | `result-track:a0c21495dd90e3aaf9b5c34d413f17f51494d920dd29a4081049786e46994d0b` |
| 4 | `lemma` | [prop_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant06697cc44616f10a59a4263977bea67e1fc9e008eafd019eb71355028c30aa62.lean/declarations/prop-zero--1066f51b3f45cc4994e8f06c.md) | 55 | `result-track:1066f51b3f45cc4994e8f06ca01b6f58b9191bc57613dd670e48e0ebda75186e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant06697cc44616f10a59a4263977bea67e1fc9e008eafd019eb71355028c30aa62.lean/declarations/instance--bb6ebaacaa4b15ceb77420f4.md) | 59 | `declaration-track:bb6ebaacaa4b15ceb77420f450e707e2007addeb3a59a73914fd55b4d1312467` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant06697cc44616f10a59a4263977bea67e1fc9e008eafd019eb71355028c30aa62.lean/declarations/instance--7c2b0374456b2b019a5a50c6.md) | 62 | `declaration-track:7c2b0374456b2b019a5a50c6ff9b27e2477a14666ab62ff279dbeab9eb69a4be` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant06697cc44616f10a59a4263977bea67e1fc9e008eafd019eb71355028c30aa62.lean/declarations/instance--138b45ad2325a71dd0aec370.md) | 65 | `declaration-track:138b45ad2325a71dd0aec370c5e8edc4e7a46664d32eebddb5e7c8a56f4ea3ec` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant06697cc44616f10a59a4263977bea67e1fc9e008eafd019eb71355028c30aa62.lean/declarations/instance--7f123b6f86bd68706b77e1d4.md) | 71 | `declaration-track:7f123b6f86bd68706b77e1d4c19d1c82a232af7a316abb36ef1876711fa80709` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
