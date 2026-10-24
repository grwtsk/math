# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7aa937c64696b59c50464dbcc097a5a70cea7fbb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7aa937c64696b59c50464dbcc097a5a70cea7fbb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Whiskering` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [sheafForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean/declarations/sheafforget--5bfa15765ff33b58188d9f3a.md) | 48 | `declaration-track:5bfa15765ff33b58188d9f3ad57a5b4bf5aff2b7b1f8c470adf6ea23744e1de1` |
| 2 | `abbrev` | [composeAndSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean/declarations/composeandsheafify--16f9594f558f6ce8a41cbc1b.md) | 64 | `declaration-track:16f9594f558f6ce8a41cbc1bf5287b31a86cc15fdd8726e86e6901bb3f2e5277` |
| 3 | `def` | [composeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean/declarations/composeequiv--775946a8613816200e574b1b.md) | 71 | `declaration-track:775946a8613816200e574b1bcc41b5d39b6b63b111fd0674a9dce4dcf7531f7a` |
| 4 | `def` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean/declarations/adjunction--dfa8b9f286e51f6f5fc13af8.md) | 95 | `declaration-track:dfa8b9f286e51f6f5fc13af8550e21fa5e15b9b5429fcd6b387061f643021517` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean/declarations/instance--ea4e8aec234841dd9e59cc27.md) | 114 | `declaration-track:ea4e8aec234841dd9e59cc276ab497dc1ecd545707157b57cb7373784a71b0dd` |
| 6 | `abbrev` | [composeAndSheafifyFromTypes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean/declarations/composeandsheafifyfromtypes--b71a22b0cebfbd3fcd465e57.md) | 120 | `declaration-track:b71a22b0cebfbd3fcd465e571f418dc5596a60976c277f2dfe34b4f69f4b53b2` |
| 7 | `def` | [adjunctionToTypes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean/declarations/adjunctiontotypes--fc209ea26cd163a6241264ff.md) | 127 | `declaration-track:fc209ea26cd163a6241264ffade67b554099324b7add3e3b7446c4a33e4b37ac` |
| 8 | `theorem` | [adjunctionToTypes_unit_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean/declarations/adjunctiontotypes-unit-app-val--2fb4d066317998a4fef71fd5.md) | 134 | `result-track:2fb4d066317998a4fef71fd5748e3c52f4bcf56e643b0d61cabe972cb19b7f85` |
| 9 | `theorem` | [adjunctionToTypes_counit_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean/declarations/adjunctiontotypes-counit-app-val--c9d08abd062a177027a10311.md) | 146 | `result-track:c9d08abd062a177027a1031138b2eb9a329f9739db9d7bff4737ad4bfef40d09` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd.lean/declarations/instance--7519ce433bab183949f1fd53.md) | 163 | `declaration-track:7519ce433bab183949f1fd53676ebca7911bf1b12f1ee91be7983176892fddcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
