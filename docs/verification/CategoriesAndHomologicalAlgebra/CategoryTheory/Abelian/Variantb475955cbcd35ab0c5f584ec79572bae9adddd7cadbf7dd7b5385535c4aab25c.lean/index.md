# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Abelian.Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2ff988abf37c1caee54df49146607b1be853f30",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2ff988abf37c1caee54df49146607b1be853f30`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Homology` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [abelianImageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/declarations/abelianimagetokernel--216cc3babce4d4da7d9d27a2.md) | 48 | `declaration-track:216cc3babce4d4da7d9d27a25afe46a316f4096b90139fb34f9224d40d30dfed` |
| 2 | `lemma` | [abelianImageToKernel_comp_kernel_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/declarations/abelianimagetokernel-comp-kernel--df9324daa23473062cd36a74.md) | 54 | `result-track:df9324daa23473062cd36a745c4aed5fd7fbcf5442605470e40fd43233fd6890` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/declarations/instance--94d7cf2dbf33b20910b14c40.md) | 58 | `declaration-track:94d7cf2dbf33b20910b14c40520813b371981834d4d76d254102bdadf56efd9a` |
| 4 | `lemma` | [abelianImageToKernel_comp_kernel_ι_comp_cokernel_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/declarations/abelianimagetokernel-comp-kernel-comp-cokernel--a55018d234a336d8b08c0e2a.md) | 62 | `result-track:a55018d234a336d8b08c0e2ae51340347e29a7da2adc451a7fd095e5ddfed19e` |
| 5 | `def` | [abelianImageToKernelIsKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/declarations/abelianimagetokerneliskernel--9fbb01f7293a8b413f70894a.md) | 67 | `declaration-track:9fbb01f7293a8b413f70894a95d39c107a1d4421c9797bdc9f2e6c5180385297` |
| 6 | `def` | [ofAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/declarations/ofabelian--96fc49e05ba52c99537d5dd4.md) | 82 | `declaration-track:96fc49e05ba52c99537d5dd42c73d70b9bdbe3d3641d3c5fac298a7b3eef9563` |
| 7 | `def` | [cokernelToAbelianCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/declarations/cokerneltoabeliancoimage--ea159dcc3fb7701a5189e386.md) | 118 | `declaration-track:ea159dcc3fb7701a5189e3866b5045953771ca1a79ad7f5d340009efbad21aac` |
| 8 | `lemma` | [cokernel_π_comp_cokernelToAbelianCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/declarations/cokernel-comp-cokerneltoabeliancoimage--1106c3fe9862b8b7666f0dd5.md) | 124 | `result-track:1106c3fe9862b8b7666f0dd52a2279a54e6ba1320b7280e767d92e8b2e1c8c55` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/declarations/instance--3ef31796847847cfe225822c.md) | 128 | `declaration-track:3ef31796847847cfe225822c73f0f30341a542de409d4f89434f5c865b519bdb` |
| 10 | `lemma` | [kernel_ι_comp_cokernel_π_comp_cokernelToAbelianCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/declarations/kernel-comp-cokernel-comp-cokerneltoabeliancoimage--bc0e6ecefefba560127d732a.md) | 131 | `result-track:bc0e6ecefefba560127d732a59a4b1c178cab325f7a30548589f076327cc416d` |
| 11 | `def` | [cokernelToAbelianCoimageIsCokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/declarations/cokerneltoabeliancoimageiscokernel--22d648fee2fbc122e2d68ae2.md) | 135 | `declaration-track:22d648fee2fbc122e2d68ae2bf44a3127554d15b702447c2e80d8ab56e775aa9` |
| 12 | `def` | [ofAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/declarations/ofabelian--0404c42a8cf12a01001ec39a.md) | 151 | `declaration-track:0404c42a8cf12a01001ec39a81cff817937bfbbc78cfddc556473b1678371764` |
| 13 | `def` | [HomologyData.ofAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/declarations/homologydata-ofabelian--af6b1f4d4e9f8a704f102f99.md) | 184 | `declaration-track:af6b1f4d4e9f8a704f102f99a467da8a545e79e62afc5e03c96b38f4818f5eb4` |
| 14 | `instance` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AbelianImageToKernel.Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.CategoryTheory.categoryWithHomology_of_abelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variantb475955cbcd35ab0c5f584ec79572bae9adddd7cadbf7dd7b5385535c4aab25c.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-abelianimaget--06d492bf4abe3db3550fdecd.md) | 189 | `declaration-track:06d492bf4abe3db3550fdecd441158893652d03f9ece05116037b10ca010988a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
