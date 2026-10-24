# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InducedCategory.Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "226841197b8acb7f6e214a06b439a2cb5b8832cf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `226841197b8acb7f6e214a06b439a2cb5b8832cf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InducedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba.lean/declarations/inducedcategory--a9482209b33ff3b010ce3722.md) | 54 | `declaration-track:a9482209b33ff3b010ce3722ebe1ac4f6249f5e5f244e7e497883f004309ffb6` |
| 2 | `instance` | [InducedCategory.hasCoeToSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba.lean/declarations/inducedcategory-hascoetosort--d38c80b926adb496f5d3f404.md) | 59 | `declaration-track:d38c80b926adb496f5d3f404ffd662182ea9a3078803f0f0045740dbbe2d53dd` |
| 3 | `instance` | [InducedCategory.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba.lean/declarations/inducedcategory-category--2daeae98b2093ba3f3a1be60.md) | 63 | `declaration-track:2daeae98b2093ba3f3a1be60b29b6a96c9a92875f1b89a70a09ed003f26959bd` |
| 4 | `def` | [InducedCategory.isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba.lean/declarations/inducedcategory-isomk--60184531b33f8c6486af5be4.md) | 71 | `declaration-track:60184531b33f8c6486af5be45ceff06bc3cd8686a090ac6b8261021706a70dd4` |
| 5 | `def` | [inducedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba.lean/declarations/inducedfunctor--8a8c28ce43fb05338bc354f3.md) | 81 | `declaration-track:8a8c28ce43fb05338bc354f379b28e118bc8c0c850f18ad8cd64cfda53005a85` |
| 6 | `def` | [fullyFaithfulInducedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba.lean/declarations/fullyfaithfulinducedfunctor--9581430a2ade2a4b2bd98159.md) | 86 | `declaration-track:9581430a2ade2a4b2bd9815982aa5476e57c4a12f63d5cf3f850b3cc372ec04f` |
| 7 | `instance` | [InducedCategory.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba.lean/declarations/inducedcategory-full--c1d2bf15b6f142e9598d9d49.md) | 89 | `declaration-track:c1d2bf15b6f142e9598d9d4913985b85639d976b97c03b318c7c954e04dd71bd` |
| 8 | `instance` | [InducedCategory.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant9c718ebd86e8fd55c75b5675c5bdf596eb9c0e8b5911c03205273744eb43a9ba.lean/declarations/inducedcategory-faithful--0dc1d4d59e1b6d4042c0af64.md) | 92 | `declaration-track:0dc1d4d59e1b6d4042c0af644f243daa15131f1a24da79f2861d5fb429254a5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
