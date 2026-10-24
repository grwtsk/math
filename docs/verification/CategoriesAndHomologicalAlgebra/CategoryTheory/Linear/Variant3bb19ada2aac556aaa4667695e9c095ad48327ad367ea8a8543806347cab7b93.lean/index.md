# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dc2a0b33662c017bab0703802c32c70c5b1c9af",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dc2a0b33662c017bab0703802c32c70c5b1c9af`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Preadditive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/instance--618e85972b31b0290fb7621f.md) | 38 | `declaration-track:618e85972b31b0290fb7621f8672619f3f0f347763fa3b5520cde699f93c6b07` |
| 2 | `lemma` | [smul_τ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/smul--f85802dab135e5c4e5017232.md) | 44 | `result-track:f85802dab135e5c4e5017232824fe5ad8febb160b26e8e516595663d654899c8` |
| 3 | `lemma` | [smul_τ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/smul--aced3ad2cfc04267a0f1988c.md) | 45 | `result-track:aced3ad2cfc04267a0f1988c3dd62eaca8d24e33d4a015ebb11133baca5c7cec` |
| 4 | `lemma` | [smul_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/smul--559ad24ceceb9b919f60804c.md) | 46 | `result-track:559ad24ceceb9b919f60804cd9fbce1a889dda8c502341f69cbdc29c57db6083` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/instance--af5c10d91a560f5a2d6e796b.md) | 48 | `declaration-track:af5c10d91a560f5a2d6e796b9b7d2a596971aa17f514441107e3f09e3ed1affa` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/instance--9148a16c41db577692f51d15.md) | 56 | `declaration-track:9148a16c41db577692f51d15bc211052605e477ad1842e62a73a5d38c6f51a74` |
| 7 | `def` | [smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/smul--ae8f2c39a8a6942961890b7d.md) | 69 | `declaration-track:ae8f2c39a8a6942961890b7dade68f5a8ae9466e5b5160504600290907ad120e` |
| 8 | `lemma` | [leftHomologyMap'_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/lefthomologymap-smul--ad87d0cd8539ffce0a051bd6.md) | 79 | `result-track:ad87d0cd8539ffce0a051bd6f56f255b8a9785ebdd717bb09d201ca16771c31e` |
| 9 | `lemma` | [cyclesMap'_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/cyclesmap-smul--6c3d86ea14d4e97c2233268c.md) | 85 | `result-track:6c3d86ea14d4e97c2233268c1114b1c7115302bc228488d9003a0f1108141a7f` |
| 10 | `lemma` | [leftHomologyMap_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/lefthomologymap-smul--cb8f675aafbe8709f840a838.md) | 95 | `result-track:cb8f675aafbe8709f840a83880908016399f76005ac7c76d85b1619cf9dad25f` |
| 11 | `lemma` | [cyclesMap_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/cyclesmap-smul--7c3bc128ea7b7956daed9293.md) | 99 | `result-track:7c3bc128ea7b7956daed9293d0df41d537f4d02f5e069197fed4ed9d7d41dabf` |
| 12 | `instance` | [leftHomologyFunctor_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/lefthomologyfunctor-linear--d65bc39835dff82f49c61897.md) | 104 | `declaration-track:d65bc39835dff82f49c6189745caea2de22ea5afb3530f6ff068ffbb65ed4552` |
| 13 | `instance` | [cyclesFunctor_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/cyclesfunctor-linear--2fbc9cb54716b75114178744.md) | 107 | `declaration-track:2fbc9cb54716b75114178744cca3b9e6c31452f39a02e162ced9e5dcdb9c4fe3` |
| 14 | `def` | [smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/smul--4525942b3fc48ae64a4f6408.md) | 123 | `declaration-track:4525942b3fc48ae64a4f64081f84d99e5e2827fffeec9cbccbdd20870e0cc67d` |
| 15 | `lemma` | [rightHomologyMap'_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/righthomologymap-smul--360c87eddd8ef27a6c3bb0dc.md) | 133 | `result-track:360c87eddd8ef27a6c3bb0dc47cd950b179dc9fe69f1c7b0763d6ecd0322b74b` |
| 16 | `lemma` | [opcyclesMap'_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/opcyclesmap-smul--aad487eb651c77827c59b2a6.md) | 139 | `result-track:aad487eb651c77827c59b2a638d5e348c6f9b30e7233bd2feaca6a44d5efed85` |
| 17 | `lemma` | [rightHomologyMap_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/righthomologymap-smul--31296276a4790d4d7175ae75.md) | 149 | `result-track:31296276a4790d4d7175ae756cfe67384fb0ac4a0fec6657e07de21a564eeb60` |
| 18 | `lemma` | [opcyclesMap_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/opcyclesmap-smul--44d7db24a3d1dcde57c43cb8.md) | 153 | `result-track:44d7db24a3d1dcde57c43cb843f74374f018bc2b9e1594f989a156a7aab2b211` |
| 19 | `instance` | [rightHomologyFunctor_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/righthomologyfunctor-linear--81ed447f35adace6cd41b1e6.md) | 158 | `declaration-track:81ed447f35adace6cd41b1e6187a706057a20ba8f5218648c191273df3f70f0c` |
| 20 | `instance` | [opcyclesFunctor_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/opcyclesfunctor-linear--4e6c5e8fd26d94d84f57fe6f.md) | 161 | `declaration-track:4e6c5e8fd26d94d84f57fe6f708f3864b64dab352ad93d72bbafb9b15a976a28` |
| 21 | `def` | [smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/smul--82dfe8b9e0bed32580dc1d06.md) | 177 | `declaration-track:82dfe8b9e0bed32580dc1d06c2c6e754ad7e34e66eadc9fd9237482bbf32f29b` |
| 22 | `lemma` | [homologyMap'_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/homologymap-smul--52ef8e1a2e8cda878a755cb3.md) | 187 | `result-track:52ef8e1a2e8cda878a755cb3ae2aff23c30385d8c088d03027f617687c1ac5ac` |
| 23 | `lemma` | [homologyMap_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/homologymap-smul--87c50a1ba9386f0474db4f91.md) | 194 | `result-track:87c50a1ba9386f0474db4f9137e8f31760f5a54bce53b59b7fc6bec7de86cca6` |
| 24 | `instance` | [homologyFunctor_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/homologyfunctor-linear--52a30d0e114e23601b7a1953.md) | 198 | `declaration-track:52a30d0e114e23601b7a195369385b90c80f28b5515688e720449865382b7438` |
| 25 | `def` | [Homotopy.smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant3bb19ada2aac556aaa4667695e9c095ad48327ad367ea8a8543806347cab7b93.lean/declarations/homotopy-smul--140eebc38032360c66de4abc.md) | 205 | `declaration-track:140eebc38032360c66de4abcb563a4844bef66f95cc338c86669df262f2f15ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
