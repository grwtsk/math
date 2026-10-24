# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheaf.Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e00bdebe360df5126ce9cd1c8129d4c8f57e33ad",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e00bdebe360df5126ce9cd1c8129d4c8f57e33ad`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Presheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Spaces` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/declarations/issheaf--6743f6ce9b738d9981b32b51.md) | 84 | `declaration-track:6743f6ce9b738d9981b32b51e1a9929cd5e75a1f49af48765fc6ae8c4f127ede` |
| 2 | `theorem` | [isSheaf_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/declarations/issheaf-unit--bd56daca228dc7bf650ede08.md) | 91 | `result-track:bd56daca228dc7bf650ede089bd799a3ed7195a76283dccf27953def6ccaf46d` |
| 3 | `theorem` | [isSheaf_iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/declarations/issheaf-iso-iff--ff2657f350cfbeda60421376.md) | 96 | `result-track:ff2657f350cfbeda60421376047d69ed263c50d6508cf8f83939afa654baa3bf` |
| 4 | `theorem` | [isSheaf_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/declarations/issheaf-of-iso--0cb813442fde6782681c1d62.md) | 103 | `result-track:0cb813442fde6782681c1d623f4b9aa12ff3548e1665206a895fc182ed052b8f` |
| 5 | `def` | [Sheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/declarations/sheaf--c82851a2d235b33649d508d7.md) | 115 | `declaration-track:c82851a2d235b33649d508d743db2cb95b267287e1c0a4c9b32d4bc55e3b9136` |
| 6 | `instance` | [SheafCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/declarations/sheafcat--fe6133c96adf641599a96e11.md) | 121 | `declaration-track:fe6133c96adf641599a96e110ca2cde1c817829cf2510f04f8a7e378dde594c0` |
| 7 | `abbrev` | [Sheaf.presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/declarations/sheaf-presheaf--c7acb2801bca8dca2d57b710.md) | 127 | `declaration-track:c7acb2801bca8dca2d57b710974c3b015473cf99e1638c03cceb663a2b3042ba` |
| 8 | `instance` | [sheafInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/declarations/sheafinhabited--d8050cc2dde5395b193312a4.md) | 135 | `declaration-track:d8050cc2dde5395b193312a4507baedf31814b3a1bfa00a1fad18ce42c512d4c` |
| 9 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/declarations/forget--ec41ae3f6dc3a9e6f2d0f79e.md) | 144 | `declaration-track:ec41ae3f6dc3a9e6f2d0f79eaa28a7484651642ca4e8c5f17a5a7da2b4c66a5a` |
| 10 | `instance` | [forgetFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/declarations/forgetfull--b4cb9538db5453339ff028b2.md) | 150 | `declaration-track:b4cb9538db5453339ff028b2368a70754733451a4a9258ca568d4a20dd28e6cf` |
| 11 | `instance` | [forgetFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/declarations/forgetfaithful--4ec4515a3dd471db6aa543bf.md) | 154 | `declaration-track:4ec4515a3dd471db6aa543bf2d32ce9ac7a8d95818e83b2aab9e9be4ee33cd4e` |
| 12 | `theorem` | [id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/declarations/id-app--b8d176ff9b4be07b563a4a21.md) | 158 | `result-track:b8d176ff9b4be07b563a4a21d73511a78be806c9cbcde1052465adcb68633bf8` |
| 13 | `theorem` | [comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/declarations/comp-app--000428ef85607c27c466e5aa.md) | 163 | `result-track:000428ef85607c27c466e5aa67cf0f92390faaf17f6f59d786b438e115082588` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
