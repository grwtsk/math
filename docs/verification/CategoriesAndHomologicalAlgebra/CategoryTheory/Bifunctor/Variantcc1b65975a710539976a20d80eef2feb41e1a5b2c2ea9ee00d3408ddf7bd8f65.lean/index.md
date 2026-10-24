# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d240a579dd17f7b83326d82102b468a211d161b7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d240a579dd17f7b83326d82102b468a211d161b7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GradedObject` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/declarations/mapbifunctor--a8b202d11b0853a967e11513.md) | 34 | `declaration-track:a8b202d11b0853a967e115131cc4f5bcdffcca840bf04de272952dc4633b710f` |
| 2 | `def` | [mapBifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/declarations/mapbifunctormapobj--65fa468ca713238ab7a989f1.md) | 49 | `declaration-track:65fa468ca713238ab7a989f16f72f3ee337517171e753c392e3b146d653bddd8` |
| 3 | `def` | [ιMapBifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/declarations/mapbifunctormapobj--a894e8f215cca90fa6516674.md) | 55 | `declaration-track:a894e8f215cca90fa65166747060b49fec51e16e4713264dfb9a2b925b0b6844` |
| 4 | `def` | [mapBifunctorMapMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/declarations/mapbifunctormapmap--deeba8c2ca0c43197cc1f03c.md) | 64 | `declaration-track:deeba8c2ca0c43197cc1f03c3385fb65a0b903f00b485a5b616f9afa39b4e43c` |
| 5 | `lemma` | [ι_mapBifunctorMapMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/declarations/mapbifunctormapmap--21a884553352628a05d88533.md) | 73 | `result-track:21a884553352628a05d8853340db054d0fa4416982dcb1d9fbb5dfba8fe5ff6c` |
| 6 | `lemma` | [mapBifunctorMapObj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/declarations/mapbifunctormapobj-ext--3a20e33c176d8ca2d6381583.md) | 84 | `result-track:3a20e33c176d8ca2d6381583dc3978352438a016f26e989be56f32d5f0cf9071` |
| 7 | `def` | [mapBifunctorMapObjDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/declarations/mapbifunctormapobjdesc--9467ccfe23b12864e12f7f3d.md) | 96 | `declaration-track:9467ccfe23b12864e12f7f3df8bde2bd62db6c0d47ff76bf9e6b685cb4d551b8` |
| 8 | `lemma` | [ι_mapBifunctorMapObjDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/declarations/mapbifunctormapobjdesc--ad2c5b6d0d9178c33c17e1df.md) | 104 | `result-track:ad2c5b6d0d9178c33c17e1df55eb03c3b1b806726a28ed8aa13120dfaa39e7f9` |
| 9 | `def` | [mapBifunctorMapMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/declarations/mapbifunctormapmapiso--29f6180730201335d6bcf23f.md) | 120 | `declaration-track:29f6180730201335d6bcf23fd3897f6b3655371c9d91a2417b5e2ade2b28db54` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/declarations/instance--7a5e9839e682b724ba39020b.md) | 127 | `declaration-track:7a5e9839e682b724ba39020b23f67a94416719a3ada8d01c7a988f3c6862a9d0` |
| 11 | `def` | [mapBifunctorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/declarations/mapbifunctormap--b1657e3ee96a66ff43032c52.md) | 140 | `declaration-track:b1657e3ee96a66ff43032c52e63eaa11b337d86185a881f0646442c724b6ea50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
