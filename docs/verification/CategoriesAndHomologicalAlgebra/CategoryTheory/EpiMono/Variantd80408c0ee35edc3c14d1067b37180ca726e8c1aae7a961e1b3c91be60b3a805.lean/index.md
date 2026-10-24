# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c29bc81023151d0e510c17c12169c36edde32fb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c29bc81023151d0e510c17c12169c36edde32fb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [preserves_mono_of_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805.lean/declarations/preserves-mono-of-preserveslimit--ec6b3c2e8e8ecbc860cc5a35.md) | 32 | `result-track:ec6b3c2e8e8ecbc860cc5a35b4a9f30e45d9178cee069fcd311f0350db3b4770` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805.lean/declarations/instance--0facde7c5e1f8f84851c9310.md) | 38 | `declaration-track:0facde7c5e1f8f84851c9310842fcadce32ff9d8083a3c340113ae4f057903cf` |
| 3 | `theorem` | [reflects_mono_of_reflectsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805.lean/declarations/reflects-mono-of-reflectslimit--0ff6a81df571a90a554e883d.md) | 43 | `result-track:0ff6a81df571a90a554e883d275b7ffa3538cd11399670798bb82510309a5c43` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805.lean/declarations/instance--5893fff4c2d535f533938ea8.md) | 49 | `declaration-track:5893fff4c2d535f533938ea887400bfdeca633603a6c3cde9061744daf7edb8d` |
| 5 | `theorem` | [preserves_epi_of_preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805.lean/declarations/preserves-epi-of-preservescolimit--c8ec3f61ef94816ebcbb2d86.md) | 54 | `result-track:c8ec3f61ef94816ebcbb2d8686fd8c1abab2b74b26f645c4aa4b5d05a080a8cc` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805.lean/declarations/instance--f074c8e84bf02a65fd4e7451.md) | 60 | `declaration-track:f074c8e84bf02a65fd4e74516f0e68939ea1d4b7a0b5d41d96ab0e36f5815edd` |
| 7 | `theorem` | [reflects_epi_of_reflectsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805.lean/declarations/reflects-epi-of-reflectscolimit--f1af335973c4e46dd125410d.md) | 65 | `result-track:f1af335973c4e46dd125410d0c62af0c41839dc1e3f136ac7baa533d5299a9d6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805.lean/declarations/instance--975b4af1cbfcbc160bfa6967.md) | 73 | `declaration-track:975b4af1cbfcbc160bfa696779715f04149e961241983cb57c2a5c3f74a5a6f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
