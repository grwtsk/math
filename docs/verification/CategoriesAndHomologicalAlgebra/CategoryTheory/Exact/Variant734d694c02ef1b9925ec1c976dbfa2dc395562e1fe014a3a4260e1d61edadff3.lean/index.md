# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Exact.Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2115bb821b1fd56d3d72fda6a355f46de649f7c7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2115bb821b1fd56d3d72fda6a355f46de649f7c7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ImageToKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Exact` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Opposite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Zero` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Kernels` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exact_iff_epi_imageToKernel'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/exact-iff-epi-imagetokernel--85ac6b14c8894dd0e635aba5.md) | 50 | `result-track:85ac6b14c8894dd0e635aba59003773340139b9f5f0b7f85ae790d5e4e7f1d60` |
| 2 | `theorem` | [exact_iff_epi_imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/exact-iff-epi-imagetokernel--c650d250c09f99c65f740e96.md) | 62 | `result-track:c650d250c09f99c65f740e9690d6e6f1fad18a59bc3b76f116883255622aedc5` |
| 3 | `theorem` | [exact_iff_isIso_imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/exact-iff-isiso-imagetokernel--9353a7c7dfa725a315821648.md) | 67 | `result-track:9353a7c7dfa725a31582164849cc2f106dcca492e824b191f7748ed3f0b5717c` |
| 4 | `theorem` | [exact_iff_image_eq_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/exact-iff-image-eq-kernel--626eaa413038127a8e7d7b77.md) | 78 | `result-track:626eaa413038127a8e7d7b77e70b96437fcfbf4a89972fb72a3d5f15cfe0bdec` |
| 5 | `theorem` | [exact_iff_of_forks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/exact-iff-of-forks--36b801f6d29199562340523c.md) | 86 | `result-track:36b801f6d29199562340523cdad1dc72af5244c136551e883c669421a29ce556` |
| 6 | `def` | [Exact.isLimitImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/exact-islimitimage--99bb4f2dc5c5110380d39923.md) | 102 | `declaration-track:99bb4f2dc5c5110380d399239a4e5206de11c23944fde7365e467372870235c9` |
| 7 | `def` | [Exact.isLimitImage'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/exact-islimitimage--21aa798825c601d6b2292cd2.md) | 112 | `declaration-track:21aa798825c601d6b2292cd20577b7055e6cad7cd993f12889efa6aa684cfa5a` |
| 8 | `def` | [Exact.isColimitCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/exact-iscolimitcoimage--625caa78156562bd4093ab75.md) | 118 | `declaration-track:625caa78156562bd4093ab75057ff22b6e97d8cbcacad6da41024bb805b87b70` |
| 9 | `def` | [Exact.isColimitImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/exact-iscolimitimage--a994fbac463ab8c23a4bf00e.md) | 132 | `declaration-track:a994fbac463ab8c23a4bf00eb0f70ee0c26e1474a32c81016e78c4702a9a6a2c` |
| 10 | `theorem` | [exact_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/exact-kernel--9c090733c5cad52d61662dae.md) | 138 | `result-track:9c090733c5cad52d61662dae29d7b8d1bd259668408fadb11e76dc26a6e70350` |
| 11 | `theorem` | [exact_cokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/exact-cokernel--66e1ce01b794caffc966a403.md) | 142 | `result-track:66e1ce01b794caffc966a403460c3a80ffde48c72c2bf762a37b26fc997f8018` |
| 12 | `theorem` | [exact_iff_exact_image_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/exact-iff-exact-image--10b5ed568940e1d76068b4c3.md) | 148 | `result-track:10b5ed568940e1d76068b4c3d0499ed753b9d78eecefd5646da3ef5d6d19cd80` |
| 13 | `theorem` | [exact_iff_exact_coimage_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/exact-iff-exact-coimage--c23b5e34ac005879e248727d.md) | 156 | `result-track:c23b5e34ac005879e248727dbaab0b1c91af7de745db046b1b76acb8e2298f04` |
| 14 | `theorem` | [Abelian.tfae_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/abelian-tfae-mono--b4a920df12f01330919670d1.md) | 170 | `result-track:b4a920df12f01330919670d10f788da21048a97e9b274d5dcba2c0dec74a8e2b` |
| 15 | `theorem` | [Abelian.tfae_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/abelian-tfae-epi--1388a6342c886a48263fa93e.md) | 179 | `result-track:1388a6342c886a48263fa93e73374a2c4c86e59c4965b997875516581c48e0a6` |
| 16 | `lemma` | [reflects_exact_of_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/reflects-exact-of-faithful--13257848869f564e27653f58.md) | 196 | `result-track:13257848869f564e27653f580210c7fe5f25c2a1adefb907514ed2e971d96090` |
| 17 | `theorem` | [preservesMonomorphisms_of_map_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/preservesmonomorphisms-of-map-exact--341f0086cba96949dc7c1b17.md) | 230 | `result-track:341f0086cba96949dc7c1b1778952e839e6f12d0fc27ce79865cf3c684421c9b` |
| 18 | `theorem` | [preservesEpimorphisms_of_map_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/preservesepimorphisms-of-map-exact--fd336af53843ea53eec77b4e.md) | 237 | `result-track:fd336af53843ea53eec77b4e69974783d22d216df1e1d8ad852a380baa291842` |
| 19 | `lemma` | [preservesHomology_of_map_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/preserveshomology-of-map-exact--021e651b3c5c2551640a8131.md) | 244 | `result-track:021e651b3c5c2551640a813107a63c81bf24d9895b073f21b1a23542588d23d6` |
| 20 | `lemma` | [preservesHomology_of_preservesMonos_and_cokernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/preserveshomology-of-preservesmonos-and-cokernels--223f03155d67c65df360b5ca.md) | 269 | `result-track:223f03155d67c65df360b5caac2be29c3c0f2cfe16479ab0fec8fb1dfdceacb8` |
| 21 | `lemma` | [preservesHomology_of_preservesEpis_and_kernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/declarations/preserveshomology-of-preservesepis-and-kernels--6e912ae56d44072f7f8ac4d9.md) | 286 | `result-track:6e912ae56d44072f7f8ac4d9d938376a70954da12f6d875e545a797a98a3327b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
