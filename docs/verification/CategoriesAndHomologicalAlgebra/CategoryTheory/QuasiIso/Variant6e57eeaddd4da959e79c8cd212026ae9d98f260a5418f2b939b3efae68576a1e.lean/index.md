# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuasiIso.Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "060f915f097a53a8a70af87faaccd48859484fb8",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `060f915f097a53a8a70af87faaccd48859484fb8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Homology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso--60525f7be988be6b5c0c458c.md) | 30 | `declaration-track:60525f7be988be6b5c0c458c9c06860cfa58069e19548074857e57134659e42e` |
| 2 | `instance` | [QuasiIso.isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-isiso--f37f600d0b6df1ceab53a023.md) | 34 | `declaration-track:f37f600d0b6df1ceab53a0234c2fc462bf77773d84b915ff20d55a43efaa784e` |
| 3 | `lemma` | [quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-iff--4cb7b36d4a7ff9295c9f49c6.md) | 36 | `result-track:4cb7b36d4a7ff9295c9f49c6ac6b49e91c416b5a4e4e0188b73fb90e66a4c04f` |
| 4 | `instance` | [quasiIso_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-of-isiso--bdc2b072fd89795931f5af1e.md) | 44 | `declaration-track:bdc2b072fd89795931f5af1e4eb9cf0914ad16e8495f1bebb3bb9c0ea2322d9e` |
| 5 | `instance` | [quasiIso_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-comp--e15375534d531591e9953464.md) | 47 | `declaration-track:e15375534d531591e9953464132bc2ff3c2b499f898d3a4a4a69b1c989245bb2` |
| 6 | `lemma` | [quasiIso_of_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-of-comp-left--88c9c846f22f63603b0ce791.md) | 53 | `result-track:88c9c846f22f63603b0ce79143af6d0e39f2a3abf438f562f94f9fd12b2ddbf2` |
| 7 | `lemma` | [quasiIso_iff_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-iff-comp-left--ca96aa23e057aed6f552c15f.md) | 60 | `result-track:ca96aa23e057aed6f552c15f962c005d19ad1802788e451784f9ce1b68c2b677` |
| 8 | `lemma` | [quasiIso_of_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-of-comp-right--1bfcc69165597f3c26caf1f9.md) | 68 | `result-track:1bfcc69165597f3c26caf1f9e7b131b4a7b8fa5224f7364c0ba2dcc60d2d29d6` |
| 9 | `lemma` | [quasiIso_iff_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-iff-comp-right--626723fcab6030b6b058cac5.md) | 75 | `result-track:626723fcab6030b6b058cac518e8d9f40b0fff731854e05f7aac6c3dd1924c7c` |
| 10 | `lemma` | [quasiIso_of_arrow_mk_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-of-arrow-mk-iso--9d995bc9a40c44a1e747cb4a.md) | 83 | `result-track:9d995bc9a40c44a1e747cb4adaaff63e8649b5baae8a6c8cf6cced5680091256` |
| 11 | `lemma` | [quasiIso_iff_of_arrow_mk_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-iff-of-arrow-mk-iso--13ce22f4c6a6c78594ac3cae.md) | 93 | `result-track:13ce22f4c6a6c78594ac3cae651c8ed7284bb6f5b4edba5431dbad76da9676a8` |
| 12 | `lemma` | [LeftHomologyMapData.quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/lefthomologymapdata-quasiiso-iff--59cd51369e31a8375059a3a6.md) | 97 | `result-track:59cd51369e31a8375059a3a66b323f6a09e393cb69e33a8dded4f6c65e145c3b` |
| 13 | `lemma` | [RightHomologyMapData.quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/righthomologymapdata-quasiiso-iff--d0952b2e26e476839c3758ba.md) | 109 | `result-track:d0952b2e26e476839c3758baa3b4c30e913788b17ba5abc1c5c5911e109a3175` |
| 14 | `lemma` | [quasiIso_iff_isIso_leftHomologyMap'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-iff-isiso-lefthomologymap--2daba60c971360c9d5abb74f.md) | 121 | `result-track:2daba60c971360c9d5abb74f98586d37db07260d32159a57aca29c65fa43c467` |
| 15 | `lemma` | [quasiIso_iff_isIso_rightHomologyMap'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-iff-isiso-righthomologymap--2fb637456717fce42c6c6208.md) | 127 | `result-track:2fb637456717fce42c6c6208af29b136a5e9f823f8f40e32b003a3a538a5314a` |
| 16 | `lemma` | [quasiIso_iff_isIso_homologyMap'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-iff-isiso-homologymap--9ac7df8aaffb4a32b8a1ef64.md) | 133 | `result-track:9ac7df8aaffb4a32b8a1ef6482b7ffabd46d88a7c8226086d46fe3bf1fecdbdf` |
| 17 | `lemma` | [quasiIso_of_epi_of_isIso_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-of-epi-of-isiso-of-mono--661df5f0ca359ebed3c959e6.md) | 138 | `result-track:661df5f0ca359ebed3c959e604eb5305bbc1f5156ab2b3a8518bb7ebd4676554` |
| 18 | `lemma` | [quasiIso_opMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-opmap-iff--1794c5105f2f9ed8e357f407.md) | 144 | `result-track:1794c5105f2f9ed8e357f40782cae27463d2ed82e9c13ce74811fc35f6b15b47` |
| 19 | `lemma` | [quasiIso_opMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-opmap--0eb7ed1638bbd08db735e10f.md) | 155 | `result-track:0eb7ed1638bbd08db735e10f2d76b093acfc388358e29c22d2d747b8a235b8ad` |
| 20 | `lemma` | [quasiIso_unopMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-unopmap--b8efb8d2add96c6646063355.md) | 160 | `result-track:b8efb8d2add96c66460633558781845682b7b19d643eea611541a61df2486aac` |
| 21 | `lemma` | [quasiIso_iff_isIso_liftCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-iff-isiso-liftcycles--49105da495577b4af9cec4bc.md) | 167 | `result-track:49105da495577b4af9cec4bce99dbf39ce7645b4b5d55dc52486e1b0868e865e` |
| 22 | `lemma` | [quasiIso_iff_isIso_descOpcycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6e57eeaddd4da959e79c8cd212026ae9d98f260a5418f2b939b3efae68576a1e.lean/declarations/quasiiso-iff-isiso-descopcycles--013d2a123cb59f56cc0f74c4.md) | 176 | `result-track:013d2a123cb59f56cc0f74c4fa77c0eca62e49c54b154899d52e369f64548c0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
