# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Normalize.Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f02fb9e824a30a8bd6d0a0df732f7fabdab9cdc8",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f02fb9e824a30a8bd6d0a0df732f7fabdab9cdc8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.Normalize` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Monoidal.Datatypes` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [evalComp_nil_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalcomp-nil-nil--effe3a15e928406961ac8d82.md) | 31 | `result-track:effe3a15e928406961ac8d82cecfe0b80580e080705e0853354965bf75902668` |
| 2 | `theorem` | [evalComp_nil_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalcomp-nil-cons--6563fe1f888db9cb5c00cf57.md) | 35 | `result-track:6563fe1f888db9cb5c00cf57c6c9d7607d5f5b5cfba9d75f8c6809a6e5f2d9d5` |
| 3 | `theorem` | [evalComp_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalcomp-cons--fe0f4079e32ef65377ed1132.md) | 39 | `result-track:fe0f4079e32ef65377ed11322000cca3473dfe3465124993d52ea2850764007b` |
| 4 | `theorem` | [eval_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/eval-comp--5d5ce4d1bba1e0607043806a.md) | 44 | `result-track:5d5ce4d1bba1e0607043806a9df10ef55957f3149301b8719a660ff9f47e4d38` |
| 5 | `theorem` | [eval_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/eval-of--39fcac491252ee54178ec896.md) | 50 | `result-track:39fcac491252ee54178ec896261ea17175bc88fb4a5faa50457e4ac309499ea7` |
| 6 | `theorem` | [eval_monoidalComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/eval-monoidalcomp--9da2e0d6a5e75ecfd9817bad.md) | 54 | `result-track:9da2e0d6a5e75ecfd9817bad9b0e0f5828218eaf76eff9ddd2dd6d89feddbc21` |
| 7 | `theorem` | [evalWhiskerLeft_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalwhiskerleft-nil--9e9835d5b62dd1d31fcb80f4.md) | 63 | `result-track:9e9835d5b62dd1d31fcb80f4b92f1d318ca79308515e7237cf9779a448742b24` |
| 8 | `theorem` | [evalWhiskerLeft_of_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalwhiskerleft-of-cons--cacad931dbcd2faaa7ada7ad.md) | 67 | `result-track:cacad931dbcd2faaa7ada7ad321a4f114e9a882a3f650893994ce6aff06cd1f7` |
| 9 | `theorem` | [evalWhiskerLeft_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalwhiskerleft-comp--45bb7fcccb3ae82963c3c493.md) | 72 | `result-track:45bb7fcccb3ae82963c3c493da82e30aef2f9438bfb921f1515b5d2fc572b670` |
| 10 | `theorem` | [evalWhiskerLeft_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalwhiskerleft-id--55c0a6e11b6129e9c0688c84.md) | 80 | `result-track:55c0a6e11b6129e9c0688c84e192b2c82d9d2ff1e4da769857e3e90170140862` |
| 11 | `theorem` | [eval_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/eval-whiskerleft--c4753048ac567ad545579e73.md) | 86 | `result-track:c4753048ac567ad545579e739179702eb38faaafe1e60f805918b22be19d9b3c` |
| 12 | `theorem` | [eval_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/eval-whiskerright--42444579ed3a0119df491677.md) | 92 | `result-track:42444579ed3a0119df491677eef804906381e2d97b2a117667effe58ddff04a4` |
| 13 | `theorem` | [eval_tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/eval-tensorhom--0c8f39d2b34ddeac7f7c1172.md) | 98 | `result-track:0c8f39d2b34ddeac7f7c1172e73264d31b339989e1f2f4b840d5059cebe2618e` |
| 14 | `theorem` | [evalWhiskerRight_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalwhiskerright-nil--cf77bfd591eb78d961e2b44e.md) | 105 | `result-track:cf77bfd591eb78d961e2b44e07eec1950c4c022f1a052e673840cd7482098697` |
| 15 | `theorem` | [evalWhiskerRight_cons_of_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalwhiskerright-cons-of-of--e3fe246b5a20ea7e03bd8a94.md) | 109 | `result-track:e3fe246b5a20ea7e03bd8a94f8a817340089ed4ecb749d34fe84858e44a6415f` |
| 16 | `theorem` | [evalWhiskerRight_cons_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalwhiskerright-cons-whisker--174316c53695c1f06bca1423.md) | 117 | `result-track:174316c53695c1f06bca14238b9b3bf3ef14865b8f78d0fa6919750563385f77` |
| 17 | `theorem` | [evalWhiskerRight_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalwhiskerright-comp--a0c6512f28f0955541785baa.md) | 130 | `result-track:a0c6512f28f0955541785baa1af9e84f3a630d40cff20dff347643d305c23bb6` |
| 18 | `theorem` | [evalWhiskerRight_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalwhiskerright-id--e5b1cdf05a836f616246643f.md) | 138 | `result-track:e5b1cdf05a836f616246643f4ad0c576d2728988ce29cfe91edec9c4588a2494` |
| 19 | `theorem` | [evalWhiskerRightAux_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalwhiskerrightaux-of--6923ba6b217a30f0dd75c147.md) | 144 | `result-track:6923ba6b217a30f0dd75c1476f1f0e702e46e0d74cb841aafa5087666ad170d2` |
| 20 | `theorem` | [evalWhiskerRightAux_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalwhiskerrightaux-cons--7cccb6a4ebafc7d56a37663b.md) | 148 | `result-track:7cccb6a4ebafc7d56a37663baceb47780fc8cb728689cf73c1b8828ea0bb4684` |
| 21 | `theorem` | [evalWhiskerRight_cons_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalwhiskerright-cons-of--ea87c8e11d2687e591b8d0b0.md) | 156 | `result-track:ea87c8e11d2687e591b8d0b06916b01c787a6116e8083365171f5e6d51eef359` |
| 22 | `theorem` | [evalHorizontalCompAux_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalhorizontalcompaux-of--3a199760d5eaf89a58400337.md) | 164 | `result-track:3a199760d5eaf89a58400337a6bcba765861643055c86533744aec1adc3f8085` |
| 23 | `theorem` | [evalHorizontalCompAux_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalhorizontalcompaux-cons--75c85ebad98e52007ae19553.md) | 168 | `result-track:75c85ebad98e52007ae19553818ec5cc854b9156c389df737576f0a60d7015f4` |
| 24 | `theorem` | [evalHorizontalCompAux'_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalhorizontalcompaux-whisker--9a5d04c5b835f1499e179fac.md) | 176 | `result-track:9a5d04c5b835f1499e179facf0aca5fbce09b92dc115d4620b0b3a4d35c4a1af` |
| 25 | `theorem` | [evalHorizontalCompAux'_of_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalhorizontalcompaux-of-whisker--27002962c74f34d1cdbf54a6.md) | 185 | `result-track:27002962c74f34d1cdbf54a61727e7616a1a858e17253dacddab23d37c447ff6` |
| 26 | `theorem` | [evalHorizontalComp_nil_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalhorizontalcomp-nil-nil--508845d7f36883fe0f42f017.md) | 196 | `result-track:508845d7f36883fe0f42f017c9395f6a0ff5e1b2f61cf7da978d50e22571d3ba` |
| 27 | `theorem` | [evalHorizontalComp_nil_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalhorizontalcomp-nil-cons--3298bf219c0270700e83055a.md) | 200 | `result-track:3298bf219c0270700e83055a94003b912df21cedf68fe462220ccfc5d78104e3` |
| 28 | `theorem` | [evalHorizontalComp_cons_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalhorizontalcomp-cons-nil--c6a1be4f826b530940c1868a.md) | 210 | `result-track:c6a1be4f826b530940c1868a0dcada56ae1e9722431d0b630a6e4791df7e3cce` |
| 29 | `theorem` | [evalHorizontalComp_cons_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/evalhorizontalcomp-cons-cons--335e523988734ca99c3ab627.md) | 218 | `result-track:335e523988734ca99c3ab627b2cc8be177f69246c20c0aae9fd90511e67e5e0c` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/instance--bf226304d13e6cd8b1ab84aa.md) | 232 | `declaration-track:bf226304d13e6cd8b1ab84aabda7080f6b1b5e5828e54ddb2ad1858c13fb007e` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/instance--644de190b505e71d34fc6292.md) | 284 | `declaration-track:644de190b505e71d34fc629262d63a7e78fa6d0f9e30c74640b12300af844755` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/instance--9a6dbfb70067dca8a3aed678.md) | 346 | `declaration-track:9a6dbfb70067dca8a3aed678c6b38c161af9e439d7b7d98256e8a446e2d259e1` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/instance--e6b1fed4692c5b3f351b7327.md) | 479 | `declaration-track:e6b1fed4692c5b3f351b7327c05f3a59ed2749d4833a32c3cfd14d64dcdb7a47` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/instance--d5e25b42a2fdd5c21e30b08e.md) | 672 | `declaration-track:d5e25b42a2fdd5c21e30b08efa90ecac6f4eeb01a6a8e2bc05d441077f083c95` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/instance--d4307f1f7160e008eb27368f.md) | 772 | `declaration-track:d4307f1f7160e008eb27368f0b81dc58626d481254bb93d98061830b3a699e0f` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/declarations/instance--d961c5a49f85182267708b67.md) | 784 | `declaration-track:d961c5a49f85182267708b67babcea319fc2de1cf2fc466aff3c3df6b52f18df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
