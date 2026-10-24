# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Countable.Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9346b96ce43dbf1aed9d0efd8cd3350158b9d490",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9346b96ce43dbf1aed9d0efd8cd3350158b9d490`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EssentiallySmall` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FinCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Small` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [discreteCountable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/discretecountable--6c116dd48fa795a14a8c931b.md) | 23 | `declaration-track:6c116dd48fa795a14a8c931b3239dae820b8cc828e143fbc4cbcf3b8b8920b86` |
| 2 | `class` | [CountableCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/countablecategory--41a7addb902238c11023c549.md) | 27 | `declaration-track:41a7addb902238c11023c5494b4b07632492bc2215e5980adff66f09baef7ea2` |
| 3 | `instance` | [countablerCategoryDiscreteOfCountable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/countablercategorydiscreteofcountable--46998aae5c0c961a7fed8f1c.md) | 33 | `declaration-track:46998aae5c0c961a7fed8f1c5c05612c14b789906e194423e338234d750a4b69` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/instance--456f3863800537d329aab5a5.md) | 36 | `declaration-track:456f3863800537d329aab5a5e9bf55e8a3e48c0df0d910d4549c348d2684bd53` |
| 5 | `abbrev` | [ObjAsType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/objastype--073af4a125de55261ed92f16.md) | 43 | `declaration-track:073af4a125de55261ed92f16010656e69433ce542f96ff36acb744c604deb809` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/instance--7cb4a6f3ed2495a673ced0d9.md) | 46 | `declaration-track:7cb4a6f3ed2495a673ced0d97a2c0bee7c5bc16ed3635cf58a570ea40074d093` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/instance--9400e642560f588147047ebe.md) | 48 | `declaration-track:9400e642560f588147047ebe25759091c2138675e6bb1a4da8b830230766a8da` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/instance--988b273b9cc5f790fbd93a24.md) | 51 | `declaration-track:988b273b9cc5f790fbd93a245c14b9ceee7a49434c49c50bd5f35b06359a5251` |
| 9 | `def` | [objAsTypeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/objastypeequiv--4012b43cf8ff50badc934192.md) | 54 | `declaration-track:4012b43cf8ff50badc934192db1d131e261a25605c8b384b945fcd50743353dd` |
| 10 | `def` | [HomAsType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/homastype--8ca0bf9f30e474cfeb20ce63.md) | 58 | `declaration-track:8ca0bf9f30e474cfeb20ce631509efd932438357d3930475caea00dfe305fd3f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/instance--2ed96610a7765d38b037d470.md) | 60 | `declaration-track:2ed96610a7765d38b037d4702bb85bbc30dc6bc8335fb287444530e6d6c76d2e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/instance--766f36bbcccffddc3ee65f14.md) | 63 | `declaration-track:766f36bbcccffddc3ee65f145f0d664621a40c5eca255990a140333295927b13` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/instance--4ac46b282f1bd427d4dab4f5.md) | 65 | `declaration-track:4ac46b282f1bd427d4dab4f5fc151d0e5b91881727a6fa346cd5e92bd2d29b87` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/instance--37904f58aaf9a65c3742da07.md) | 67 | `declaration-track:37904f58aaf9a65c3742da074d607ec88b227a2497a40df5ead14ed05e240505` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/instance--e85f70a6758c3eb8e9e14203.md) | 72 | `declaration-track:e85f70a6758c3eb8e9e14203ee6daa8c07f1851b20136599d7feb5c5c4f88d69` |
| 16 | `def` | [homAsTypeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/homastypeequiv--b647daf16d99a0fc1fe1417f.md) | 75 | `declaration-track:b647daf16d99a0fc1fe1417f14023df01d5e51e7c845dabda270627a1aac64dc` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/instance--3712860b0b52b70acb44ffe5.md) | 80 | `declaration-track:3712860b0b52b70acb44ffe5c979ca8b551280ec43845d8b0401faf9b4bf4943` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/instance--a2bdb88f26bd754e0037a6f1.md) | 82 | `declaration-track:a2bdb88f26bd754e0037a6f1682e943a9d0890b6f921c57b75724145f9999a75` |
| 19 | `instance` | [countableCategoryOpposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/countablecategoryopposite--dd081ac37c18f76564e24830.md) | 87 | `declaration-track:dd081ac37c18f76564e2483035f83f339ffff7669329ccd7e84b34cf4c7701c9` |
| 20 | `instance` | [countableCategoryUlift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantb9a7fbc44deace53687e4fbeea71ad03bf659e3c94b70f60fdd4c4cdfc7298e8.lean/declarations/countablecategoryulift--201c091d9850e8a15dc6db95.md) | 93 | `declaration-track:201c091d9850e8a15dc6db95858a39c0552d41da1fa708adda2ff89406c848ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
