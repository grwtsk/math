# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grothendieck.Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd5ab406462509fa1e9b9531f68f2ae53a0d42fe",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd5ab406462509fa1e9b9531f68f2ae53a0d42fe`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean.json)

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
| 1 | `abbrev` | [domainCartesianLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/domaincartesianlift--9f65f96de1c9934116ffd636.md) | 39 | `declaration-track:9f65f96de1c9934116ffd636cf52ddb7aa301107b6e5105c8d228eaa5a74be1f` |
| 2 | `abbrev` | [cartesianLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/cartesianlift--5f76861380e544de2efdbca9.md) | 42 | `declaration-track:5f76861380e544de2efdbca90769b30cf8cde73f9fa33ab073764d12f0ccb2c9` |
| 3 | `instance` | [isHomLift_cartesianLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/ishomlift-cartesianlift--953722771e7124b7071b26b0.md) | 44 | `declaration-track:953722771e7124b7071b26b0d1b3e6d6a581dce3787db3823c3a1eb3c1295330` |
| 4 | `abbrev` | [homCartesianLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/homcartesianlift--3de06de5de0fb2dd817b2ac4.md) | 52 | `declaration-track:3de06de5de0fb2dd817b2ac457d071b3d234209847dc214c9f73eb1ad4b08f6e` |
| 5 | `instance` | [isHomLift_homCartesianLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/ishomlift-homcartesianlift--88d21b9692ea1431d98a7bd7.md) | 59 | `declaration-track:88d21b9692ea1431d98a7bd7521d0398ec4169ea21e450822a55c6f1abf5cf55` |
| 6 | `lemma` | [isStronglyCartesian_homCartesianLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/isstronglycartesian-homcartesianlift--7619f35065ecc0a55b7decb6.md) | 65 | `result-track:7619f35065ecc0a55b7decb6e648655bc9187f875f50d3c4013fce9234e95af4` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/instance--ab65ae274427a3c925bbc511.md) | 78 | `declaration-track:ab65ae274427a3c925bbc511b013ae3f708210212f0380126ec25cb2c86d8a08` |
| 8 | `def` | [ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/anonymous--7bcfad386726acfe47238215.md) | 88 | `declaration-track:7bcfad386726acfe472382156e3afb3d686f9ede73b3b4e02ddc89f59390b748` |
| 9 | `def` | [compIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/compiso--fa7ac944df0187ec62792696.md) | 102 | `declaration-track:fa7ac944df0187ec62792696c698fd37e96ebd2e675b70ea088d10cb6baac809` |
| 10 | `lemma` | [comp_const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/comp-const--0ecdbc7e2bf030fd7cde3181.md) | 105 | `result-track:0ecdbc7e2bf030fd7cde3181dbf71e8e13884a0d42f2cbecc34f1f8d87ae9d23` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/instance--cf965e7fafff8de5e19e3c20.md) | 110 | `declaration-track:cf965e7fafff8de5e19e3c20c6e2795206ccf11a769f668e2d5a95dd4c4dbde7` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/instance--eb93ba51706c0faee5068153.md) | 119 | `declaration-track:eb93ba51706c0faee5068153f88fc610f4da9e63771f1d700fc037744d92a3dc` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/instance--70ca2da381d0569a7e176067.md) | 127 | `declaration-track:70ca2da381d0569a7e176067c057eb2ef4d8f4dc6fe4f9df900dbd5ce127dd2d` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/instance--319ccc02e3dcd40ff0e58a5f.md) | 135 | `declaration-track:319ccc02e3dcd40ff0e58a5f06db069247c2d97c6dd4aa3b08241e9aa95301b6` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant4ee331f0672a3fcbf0fa853cc9c24c297d1d9cacf704b63edefd1488a1c65a61.lean/declarations/instance--e295836f2a58eb956fc88820.md) | 138 | `declaration-track:e295836f2a58eb956fc88820dfc9df6f6578ef9d43204e7084af73340210c7bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
