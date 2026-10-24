# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtensiveSheaves.Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "758bba642adcbbac7e12e8f3e0213f787d3dd979",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `758bba642adcbbac7e12e8f3e0213f787d3dd979`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Canonical` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Preserves` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Presieve.Extensive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean/declarations/presieve-extensive--6ef5020f0ff531e739a0da7e.md) | 42 | `declaration-track:6ef5020f0ff531e739a0da7e1f993ad9f66f64a16d879ca239c374e59262f328` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean/declarations/instance--c7835b29c3cc290d55ffff22.md) | 48 | `declaration-track:c7835b29c3cc290d55ffff22648114b26ec03f86a9b562c922ded8f2d4826314` |
| 3 | `theorem` | [isSheafFor_extensive_of_preservesFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean/declarations/issheaffor-extensive-of-preservesfiniteproducts--bc8941b91d2db6edca0ee898.md) | 59 | `result-track:bc8941b91d2db6edca0ee898589a60de3f0670a84b966080fcad386dc7c23f51` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean/declarations/instance--be07907a1649ded225791313.md) | 67 | `declaration-track:be07907a1649ded225791313b82173164005465ff1c6f5e93ed00b7197b3b323` |
| 5 | `theorem` | [extensiveTopology.isSheaf_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean/declarations/extensivetopology-issheaf-yoneda-obj--acc34565f9e01d4c691bf97f.md) | 71 | `result-track:acc34565f9e01d4c691bf97f78d55f63803e873bbca079f4c45a568668b8638c` |
| 6 | `instance` | [extensiveTopology.subcanonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean/declarations/extensivetopology-subcanonical--8df6cafbf9d5c699ea1ca3ae.md) | 80 | `declaration-track:8df6cafbf9d5c699ea1ca3ae89c1e39243d37b4c37c26ea51814bde3bdedb2d2` |
| 7 | `theorem` | [Presieve.isSheaf_iff_preservesFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean/declarations/presieve-issheaf-iff-preservesfiniteproducts--1b135cbe85e756d6c6d9194f.md) | 89 | `result-track:1b135cbe85e756d6c6d9194f7e641f96b68eefee5f92dd85744b395b9a1a0b3d` |
| 8 | `theorem` | [Presheaf.isSheaf_iff_preservesFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean/declarations/presheaf-issheaf-iff-preservesfiniteproducts--ab90a6448b48947f7cca5266.md) | 122 | `result-track:ab90a6448b48947f7cca52666157fddb4f81482b1a18109e9d39971ef8e500cc` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variantd96729d35d36cff5b1baee987b914da7c82f82c676af619c60884b6fe33fa73b.lean/declarations/instance--d18408db84daad493bcb5c2d.md) | 138 | `declaration-track:d18408db84daad493bcb5c2dd3c293f553fedd4c17c526e629db12d62f602854` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
