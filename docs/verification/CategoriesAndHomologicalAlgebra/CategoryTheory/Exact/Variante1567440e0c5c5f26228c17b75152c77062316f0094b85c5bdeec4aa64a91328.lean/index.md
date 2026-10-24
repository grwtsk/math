# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Exact.Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d61bc66107b5a0cb6a82ed9ae8aea839662dd0e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d61bc66107b5a0cb6a82ed9ae8aea839662dd0e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ImageToKernel` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Exact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Opposite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Zero` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Kernels` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exact_iff_epi_imageToKernel'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/exact-iff-epi-imagetokernel--04334b890e591bb3e47464be.md) | 58 | `result-track:04334b890e591bb3e47464be65fa6e7368dddcf618e64abdb8fad7849b8c5788` |
| 2 | `theorem` | [exact_iff_epi_imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/exact-iff-epi-imagetokernel--f67df0a6c82ee42ba4295b78.md) | 70 | `result-track:f67df0a6c82ee42ba4295b78cf4bb8ead54cdcc1c60c12ee469fb24b0f45422e` |
| 3 | `theorem` | [exact_iff_isIso_imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/exact-iff-isiso-imagetokernel--129ff1bbbc5a6d6d693fa2a6.md) | 75 | `result-track:129ff1bbbc5a6d6d693fa2a67fcc2288cb23b55abf9040e7f509bb8c2349c22f` |
| 4 | `theorem` | [exact_iff_image_eq_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/exact-iff-image-eq-kernel--c4551241d674cd13192fc519.md) | 86 | `result-track:c4551241d674cd13192fc5197936c1585e2e11918e975368baefeb51ffe771bf` |
| 5 | `theorem` | [exact_iff_of_forks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/exact-iff-of-forks--dd1cb28ea4bbd80f85e66bfd.md) | 94 | `result-track:dd1cb28ea4bbd80f85e66bfd80013d75e72a31be1bf42b466e4323f44549d222` |
| 6 | `def` | [Exact.isLimitImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/exact-islimitimage--d8894d9d2af89c669cc3aaf5.md) | 110 | `declaration-track:d8894d9d2af89c669cc3aaf5c9419bbb073fb2e776c2e23ba3c31b70672893b4` |
| 7 | `def` | [Exact.isLimitImage'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/exact-islimitimage--3de8789c1c2e82b3d12eaa28.md) | 120 | `declaration-track:3de8789c1c2e82b3d12eaa283db031369b2e43a0d4a68fc66488b90a3cd1e63b` |
| 8 | `def` | [Exact.isColimitCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/exact-iscolimitcoimage--ed29fbc3897c1f58d2308223.md) | 126 | `declaration-track:ed29fbc3897c1f58d23082233919dc4a49654d1e2ea6a10d56fcf4fd8d7abcf7` |
| 9 | `def` | [Exact.isColimitImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/exact-iscolimitimage--f512e80c11ee3d3c2727958d.md) | 140 | `declaration-track:f512e80c11ee3d3c2727958de8c84a76be895e55e01f3d0635cbde9c196038f9` |
| 10 | `theorem` | [exact_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/exact-kernel--b8890796fe49c2fba97be6d9.md) | 146 | `result-track:b8890796fe49c2fba97be6d9932ae89aa53753840d0340394c90b4f815836de9` |
| 11 | `theorem` | [exact_cokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/exact-cokernel--24bd5d3df3bf7948f94a8714.md) | 150 | `result-track:24bd5d3df3bf7948f94a8714ab1700f764b3377b0749889423b18bb8953d91d3` |
| 12 | `theorem` | [exact_iff_exact_image_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/exact-iff-exact-image--87e8be6c0b6a25e69a59ec67.md) | 156 | `result-track:87e8be6c0b6a25e69a59ec67a44cd0578ac66ee322c0973579fc0dab8180fa8c` |
| 13 | `theorem` | [exact_iff_exact_coimage_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/exact-iff-exact-coimage--11b9be121ca6b01e71a1f0ab.md) | 164 | `result-track:11b9be121ca6b01e71a1f0ab4239e1ee7e79f697ca90de61baee28d50f49d8e8` |
| 14 | `theorem` | [Abelian.tfae_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/abelian-tfae-mono--7adb858225d3f970adcf5477.md) | 178 | `result-track:7adb858225d3f970adcf5477445639a7410857cec9a006bcb3f03c8a86dc9043` |
| 15 | `theorem` | [Abelian.tfae_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/abelian-tfae-epi--bf9c3c07787913561fdf0466.md) | 187 | `result-track:bf9c3c07787913561fdf0466207e696157c69f15667abf7ff810102527a535bb` |
| 16 | `lemma` | [reflects_exact_of_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/reflects-exact-of-faithful--299082b0cebc4bfd51c89879.md) | 204 | `result-track:299082b0cebc4bfd51c89879320864b922df336aec69bc97a7e821caa0c9e189` |
| 17 | `theorem` | [preservesMonomorphisms_of_map_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/preservesmonomorphisms-of-map-exact--0f33ca9c6102212e925b8da3.md) | 238 | `result-track:0f33ca9c6102212e925b8da32e66edbb8b9b43462b31eefbbe7d1aeb10ea4cad` |
| 18 | `theorem` | [preservesEpimorphisms_of_map_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/preservesepimorphisms-of-map-exact--6886fe4ff881bb8abd0fdef5.md) | 245 | `result-track:6886fe4ff881bb8abd0fdef5fe615b0d38f44790877c3693ef56a35d6992e301` |
| 19 | `lemma` | [preservesHomology_of_map_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/preserveshomology-of-map-exact--8baf173750fd2fe8c9ba1e51.md) | 252 | `result-track:8baf173750fd2fe8c9ba1e51b012d4c2acf54783dae7b93ec884726076981a9a` |
| 20 | `lemma` | [preservesHomology_of_preservesMonos_and_cokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/preserveshomology-of-preservesmonos-and-cokernels--d46ddd76428f9a69bb224e7b.md) | 277 | `result-track:d46ddd76428f9a69bb224e7b7ef3ba22f134a48b2348e25706e6fd0efb2e1a6b` |
| 21 | `lemma` | [preservesHomology_of_preservesEpis_and_kernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/declarations/preserveshomology-of-preservesepis-and-kernels--2d1979616288a8a5d60e5142.md) | 294 | `result-track:2d1979616288a8a5d60e5142c29e076741ea05ba38ec453e6e4c0b4373efe252` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
