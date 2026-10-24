# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bicones.Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9def7f73005beae724b928d0257f3c1f645c9bc1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9def7f73005beae724b928d0257f3c1f645c9bc1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Cones` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FinCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Bicone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean/declarations/bicone--8b9504a5ff957d64dd18788c.md) | 35 | `declaration-track:8b9504a5ff957d64dd18788c301b37404d91202f2f537a057569866c14080948` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean/declarations/instance--f446a4f6fecc55583a5c1bbe.md) | 43 | `declaration-track:f446a4f6fecc55583a5c1bbe7dd53979a759b32b3764dc5b912b1aaf62d0bb34` |
| 3 | `instance` | [finBicone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean/declarations/finbicone--11ace841d154b0f9302b2e8f.md) | 47 | `declaration-track:11ace841d154b0f9302b2e8f5b168a3f6dff5b0c294b11f5dd68434d81d8076b` |
| 4 | `inductive` | [BiconeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean/declarations/biconehom--ee6c8d04fc98f5a5f0eba288.md) | 55 | `declaration-track:ee6c8d04fc98f5a5f0eba288a39e06e0c473d52605e26005a35a75c5e475103a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean/declarations/instance--3bd745bf653b57ee42362927.md) | 62 | `declaration-track:3bd745bf653b57ee423629276440834bcaeaccdfeea5f32ba82321a85b3b1ae5` |
| 6 | `instance` | [BiconeHom.decidableEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean/declarations/biconehom-decidableeq--6bbdee3ff76cd67682830eb6.md) | 65 | `declaration-track:6bbdee3ff76cd67682830eb6ae83edb3bfa4dffb28ed5b1d7612f22006e3f218` |
| 7 | `instance` | [biconeCategoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean/declarations/biconecategorystruct--c011a41452514f0c9f81ce67.md) | 69 | `declaration-track:c011a41452514f0c9f81ce67b0f3f2b8b82b07c5fa8378ccd4bc00637dd0c7cf` |
| 8 | `instance` | [biconeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean/declarations/biconecategory--0434ed064e0c3eade4528e8f.md) | 83 | `declaration-track:0434ed064e0c3eade4528e8f266af535a9a82b00e05db1ceeec8a353bf35a362` |
| 9 | `def` | [biconeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean/declarations/biconemk--3716c910a37d4ddd82c65cbd.md) | 97 | `declaration-track:3716c910a37d4ddd82c65cbdcb0f15121589293da6ca7995e61a819e9c6e30b0` |
| 10 | `instance` | [finBiconeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean/declarations/finbiconehom--cd82c139a5e3495c449d9c11.md) | 119 | `declaration-track:cd82c139a5e3495c449d9c114934168da185e8be70ec060900650147d7d4d31f` |
| 11 | `instance` | [biconeSmallCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean/declarations/biconesmallcategory--c964ff6996ae84a7bd8fc942.md) | 153 | `declaration-track:c964ff6996ae84a7bd8fc942f8aa11ac063bc967858057edc24eb496f337c105` |
| 12 | `instance` | [biconeFinCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant0a65f7be8fc7a516616879729f9fe16194176353621baa80c99ad91fa35b9026.lean/declarations/biconefincategory--7a7d4583cc477b4092207b43.md) | 156 | `declaration-track:7a7d4583cc477b4092207b43951f17e1272f5c8140b249b643339a07e6dabd01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
