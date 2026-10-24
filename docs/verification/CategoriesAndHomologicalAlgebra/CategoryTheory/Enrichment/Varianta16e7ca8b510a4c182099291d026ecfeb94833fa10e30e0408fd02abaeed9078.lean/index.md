# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Enrichment.Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14ad60ae77b44d6664837e1d2a5d3315475bfdc7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14ad60ae77b44d6664837e1d2a5d3315475bfdc7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Enriched.Ordinary.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [enrichedCategorySelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean/declarations/enrichedcategoryself--61324596e57aef3d07bedb23.md) | 35 | `declaration-track:61324596e57aef3d07bedb23b14f9b4665318d80bc08828480e30b86fe3fae06` |
| 2 | `lemma` | [enrichedCategorySelf_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean/declarations/enrichedcategoryself-hom--43ad26d2505225728e43df5f.md) | 45 | `result-track:43ad26d2505225728e43df5f19639f97a73ca4984978ee1b4f0d2858fc540fee` |
| 3 | `lemma` | [enrichedCategorySelf_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean/declarations/enrichedcategoryself-id--2d3810b78b675973b8ed8c43.md) | 48 | `result-track:2d3810b78b675973b8ed8c43195d266c77f71cef6a22d385e2660dc8b30c1794` |
| 4 | `lemma` | [enrichedCategorySelf_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean/declarations/enrichedcategoryself-comp--9f596db1971aa360ee95b3e4.md) | 51 | `result-track:9f596db1971aa360ee95b3e4515d6cf2c834c765d0b2b324c106ca2c165601f4` |
| 5 | `instance` | [enrichedOrdinaryCategorySelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean/declarations/enrichedordinarycategoryself--4206e0da0388ca5e76b97af5.md) | 57 | `declaration-track:4206e0da0388ca5e76b97af596b19db55a2d9ac9ee5004237ed28c9df95347ac` |
| 6 | `lemma` | [enrichedOrdinaryCategorySelf_eHomWhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean/declarations/enrichedordinarycategoryself-ehomwhiskerleft--f0b18801e508294f30f10e06.md) | 62 | `result-track:f0b18801e508294f30f10e0638a96b11a901422bc98ef0183631440095767acf` |
| 7 | `lemma` | [enrichedOrdinaryCategorySelf_eHomWhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean/declarations/enrichedordinarycategoryself-ehomwhiskerright--a55ef2a1644065a356607e36.md) | 67 | `result-track:a55ef2a1644065a356607e363b5af3fc8ca726d2700454eab58fc2ae0f2eeb9d` |
| 8 | `lemma` | [enrichedOrdinaryCategorySelf_homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean/declarations/enrichedordinarycategoryself-homequiv--3f082c1f322a6a3d16d0ade4.md) | 72 | `result-track:3f082c1f322a6a3d16d0ade4d5dde8630d0c0d674bc8bc11c70ce6b7c32a3666` |
| 9 | `lemma` | [enrichedOrdinaryCategorySelf_homEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean/declarations/enrichedordinarycategoryself-homequiv-symm--c771362d39629e212b71e5b1.md) | 75 | `result-track:c771362d39629e212b71e5b1381d1454ca1b22f59e7a1c8b1f892a97986c8a32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
