# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomologicalFunctor.Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5552b70022e379268543fb0d313b5d17150e33d1",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5552b70022e379268543fb0d313b5d17150e33d1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.ShiftSequence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Functor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Subcategory` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ExactSequence` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsHomological](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/ishomological--2a283d6e6f4ad086354d28db.md) | 71 | `declaration-track:2a283d6e6f4ad086354d28dbbc62f503cd050bf094efdf8c975d3c7f091d7814` |
| 2 | `lemma` | [map_distinguished_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/map-distinguished-exact--78dab08a8e417c73776a6418.md) | 75 | `result-track:78dab08a8e417c73776a6418fd5a12178566621e79e4abbeba1968ac3f12ebee` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/instance--cb8e522bac27d28d755e68af.md) | 79 | `declaration-track:cb8e522bac27d28d755e68aff887a6859da5d538f9d2fb426ad3b0fc552ec9be` |
| 4 | `lemma` | [IsHomological.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/ishomological-mk--b9ce1676720792d7a39d3857.md) | 83 | `result-track:b9ce1676720792d7a39d3857d4469934255bd4a5fe32baeff0aca09d1e609ef0` |
| 5 | `lemma` | [IsHomological.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/ishomological-of-iso--20461d704c531919962b5668.md) | 93 | `result-track:20461d704c531919962b566818c63c1061444a2dfc051612a7667ccdf28c6786` |
| 6 | `def` | [homologicalKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/homologicalkernel--f0824a1a305e2365ab09e4db.md) | 102 | `declaration-track:f0824a1a305e2365ab09e4db2f38000d46ef8014b95fdbdd893a14e5df48a555` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/instance--5315f98370335ac0aa045763.md) | 113 | `declaration-track:5315f98370335ac0aa045763c9d5a8e3c381366501edc6100e8f34dcdef87c3f` |
| 8 | `lemma` | [mem_homologicalKernel_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/mem-homologicalkernel-iff--88014a57a30664f8ae864904.md) | 117 | `result-track:88014a57a30664f8ae864904601e13fffd84ad16f98c51b0de46925a6ad65307` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/instance--03352ae5b7a3e73f122fe1a5.md) | 122 | `declaration-track:03352ae5b7a3e73f122fe1a595981fed34b8fb86c58dc27e50ae9775214dff8c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/instance--5af5401b194bf5429925daa4.md) | 143 | `declaration-track:5af5401b194bf5429925daa4a752769668ace22f0f21ce4935cc7f256b2a5625` |
| 11 | `lemma` | [isHomological_of_localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/ishomological-of-localization--fbe8a5fc59778edeadd6d7dd.md) | 146 | `result-track:fbe8a5fc59778edeadd6d7dd440cb297481aeaa990ceed552151814cc627a79d` |
| 12 | `def` | [homologySequenceδ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/homologysequence--3f1776c739c534073841d87a.md) | 164 | `declaration-track:3f1776c739c534073841d87abd944816cd0dd4fbf4c9fcb3997de325b3e8f01f` |
| 13 | `lemma` | [homologySequenceδ_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/homologysequence-naturality--eac504293ab04dd4a223f694.md) | 172 | `result-track:eac504293ab04dd4a223f694c27900811abd890d3282f5855037b25aacf4a535` |
| 14 | `lemma` | [comp_homologySequenceδ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/comp-homologysequence--72971918aebd22967c634988.md) | 188 | `result-track:72971918aebd22967c634988597042321f7892ff86b459721b83d8a14c4be98c` |
| 15 | `lemma` | [homologySequenceδ_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/homologysequence-comp--4732998439fc93120d31c497.md) | 194 | `result-track:4732998439fc93120d31c497e27284b7d0e95b18fcde6dd7a90e9807fd085e58` |
| 16 | `lemma` | [homologySequence_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/homologysequence-comp--7c339db523aa3f3a596bef12.md) | 200 | `result-track:7c339db523aa3f3a596bef12ff8725dcc24acf81d04c930f7d8ad43fb87523c5` |
| 17 | `lemma` | [homologySequence_exact₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/homologysequence-exact--cde8d75dc29fd8e5125b5e95.md) | 206 | `result-track:cde8d75dc29fd8e5125b5e951eb2d2ea00acf816efbf4664eb5172d98f3e0f59` |
| 18 | `lemma` | [homologySequence_exact₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/homologysequence-exact--61a09307048594e2ed66ebd9.md) | 214 | `result-track:61a09307048594e2ed66ebd9035849dc9ca9993a4585a1ad7a547c64ad3a7fa6` |
| 19 | `lemma` | [homologySequence_exact₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/homologysequence-exact--035f278aa759e30ae1926e46.md) | 220 | `result-track:035f278aa759e30ae1926e4613c401e94d9f40951d7f95fb127c92a17f6f7422` |
| 20 | `lemma` | [homologySequence_epi_shift_map_mor₁_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/homologysequence-epi-shift-map-mor-iff--0fdd5d14d0c95570137fd467.md) | 229 | `result-track:0fdd5d14d0c95570137fd46756bf94a8294d067c6423b21c8db97b59de9ab002` |
| 21 | `lemma` | [homologySequence_mono_shift_map_mor₁_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/homologysequence-mono-shift-map-mor-iff--7417527412d6e658eb7e29d5.md) | 233 | `result-track:7417527412d6e658eb7e29d5dd6cfa65cdd131388e53f64985a7ac0b0d179a8e` |
| 22 | `lemma` | [homologySequence_epi_shift_map_mor₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/homologysequence-epi-shift-map-mor-iff--9ee3540da1e05987262fccc9.md) | 237 | `result-track:9ee3540da1e05987262fccc9fcc4e1fd404d8180ef7f815910529cd4458eb245` |
| 23 | `lemma` | [homologySequence_mono_shift_map_mor₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/homologysequence-mono-shift-map-mor-iff--46550085e76fb961268473fa.md) | 241 | `result-track:46550085e76fb961268473faf9c37cb175723e94788411d4bb30d33fc0e09340` |
| 24 | `lemma` | [mem_homologicalKernel_W_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/mem-homologicalkernel-w-iff--f64c6d113e07efbc8aa05b26.md) | 246 | `result-track:f64c6d113e07efbc8aa05b2688ce59f3abd9fab6d73ef43376d15cca735c4b56` |
| 25 | `def` | [homologySequenceComposableArrows₅](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/homologysequencecomposablearrows--95534b35e5be418b0d3d64ab.md) | 268 | `declaration-track:95534b35e5be418b0d3d64ab72041bc39efd1af2257e96de07adcd70b2052b47` |
| 26 | `lemma` | [homologySequenceComposableArrows₅_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/declarations/homologysequencecomposablearrows-exact--27aa949dc5810477c743222e.md) | 273 | `result-track:27aa949dc5810477c743222e6330b26885f97f8cd5952bfac1452272d7b02a5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
