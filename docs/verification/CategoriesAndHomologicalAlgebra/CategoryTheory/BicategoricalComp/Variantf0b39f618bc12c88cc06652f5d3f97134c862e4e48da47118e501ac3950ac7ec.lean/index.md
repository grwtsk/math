# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BicategoricalComp.Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bf08a09a93293f9a3a8d3a49c153de7dd550f20",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bf08a09a93293f9a3a8d3a49c153de7dd550f20`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BicategoricalCoherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/bicategoricalcoherence--7adc42bd6dbafbe81c35c9f6.md) | 35 | `declaration-track:7adc42bd6dbafbe81c35c9f68160bac723b57af0c82c7ad194d0e7db6893f835` |
| 2 | `abbrev` | [bicategoricalIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/bicategoricaliso--f6a95e839246e4af45184108.md) | 45 | `declaration-track:f6a95e839246e4af45184108d9bc7436d3626e4e037d11dc49e47e7598c04614` |
| 3 | `def` | [bicategoricalComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/bicategoricalcomp--4cb89017c8482d8e30a1efd3.md) | 50 | `declaration-track:4cb89017c8482d8e30a1efd36385e342b105aa877b7af1926eb533228c77bd7f` |
| 4 | `def` | [bicategoricalIsoComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/bicategoricalisocomp--e712b30fd21bac31f67b67e2.md) | 60 | `declaration-track:e712b30fd21bac31f67b67e2219c0ea2964a52bae69ef68fd621b6dc4173d68d` |
| 5 | `instance` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/refl--8146f220bd70dc93c55c6adf.md) | 71 | `declaration-track:8146f220bd70dc93c55c6adf690fa5ca64df26478407fa6a8879f070792ee96d` |
| 6 | `instance` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/whiskerleft--d41537848709dc339d44180c.md) | 75 | `declaration-track:d41537848709dc339d44180cbdb5c51a15f8885e1d5794da769b83653a9c67ff` |
| 7 | `instance` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/whiskerright--4d7d1948c857f59251888ef6.md) | 80 | `declaration-track:4d7d1948c857f59251888ef6334075bfad88b5ef56368ab3d6d30055fa75f80f` |
| 8 | `instance` | [tensorRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/tensorright--0ef1723057e558b482654e47.md) | 85 | `declaration-track:0ef1723057e558b482654e47ad8d9b268d402bbe294904d6ca98aeff1bd41dce` |
| 9 | `instance` | [tensorRight'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/tensorright--b3da915f6c418b9cf7b55e64.md) | 90 | `declaration-track:b3da915f6c418b9cf7b55e6440a3b2668844055334ec652e0c809c90bfeb8664` |
| 10 | `instance` | [left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/left--976343d5774b7763b43fba78.md) | 95 | `declaration-track:976343d5774b7763b43fba786917e4c6293a627d12817f0b0c7fa7e6553a6dff` |
| 11 | `instance` | [left'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/left--b50b3ad40827f568c8c1e682.md) | 100 | `declaration-track:b50b3ad40827f568c8c1e6823c0a37c012a8e8496a7467e7e90c9ca435eb2a7a` |
| 12 | `instance` | [right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/right--d471241466f6a2e9f3a7f0cb.md) | 105 | `declaration-track:d471241466f6a2e9f3a7f0cbb473bdc6361637f8942dc8a1faf13261e7672aca` |
| 13 | `instance` | [right'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/right--f662103bc13f00797b7095ff.md) | 110 | `declaration-track:f662103bc13f00797b7095ff9b9eaaa1ed3f9f0c0f35020236e89bc0ddc18393` |
| 14 | `instance` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/assoc--0ce2273bf955cab4bb46d75c.md) | 115 | `declaration-track:0ce2273bf955cab4bb46d75c0a034804b15007c5f0f6507b2b7e509a9ce1c381` |
| 15 | `instance` | [assoc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/assoc--84b7492d2ccd0ab1f43be306.md) | 121 | `declaration-track:84b7492d2ccd0ab1f43be3061a5c2a2904a6ff767eca108be5faa191d24ab572` |
| 16 | `theorem` | [bicategoricalComp_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variantf0b39f618bc12c88cc06652f5d3f97134c862e4e48da47118e501ac3950ac7ec.lean/declarations/bicategoricalcomp-refl--a42e0604c288e73c4e13d751.md) | 129 | `result-track:a42e0604c288e73c4e13d751302882daaa71efa73f60eda0ecdf0a57805b5a62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
