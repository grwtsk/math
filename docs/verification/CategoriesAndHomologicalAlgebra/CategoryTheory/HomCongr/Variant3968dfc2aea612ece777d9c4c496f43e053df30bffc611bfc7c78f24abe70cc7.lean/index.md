# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomCongr.Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39debf5c21c5c773afd88282dd16b482bc5eb6ac",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39debf5c21c5c773afd88282dd16b482bc5eb6ac`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Iso` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean/declarations/homcongr--97a548f6f52d5b432343cfac.md) | 44 | `declaration-track:97a548f6f52d5b432343cfac6a9ad4e1e5c4531f2ef82fcfecee20043c774837` |
| 2 | `theorem` | [homCongr_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean/declarations/homcongr-comp--aa0d7a53f33f75334507de03.md) | 54 | `result-track:aa0d7a53f33f75334507de03369481a28e7cc3007e881f4bd2554ea9b53900aa` |
| 3 | `theorem` | [homCongr_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean/declarations/homcongr-refl--0f3cc358503517a7cf13d5a7.md) | 57 | `result-track:0f3cc358503517a7cf13d5a7c88125210db5e660220a68374fe3bbd17e9dc44a` |
| 4 | `theorem` | [homCongr_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean/declarations/homcongr-trans--577169eec64ff481f555ae9d.md) | 59 | `result-track:577169eec64ff481f555ae9d3e1da999ed0c91a91b45800bc049f5bef470ae0f` |
| 5 | `theorem` | [homCongr_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean/declarations/homcongr-symm--fd66ae8f78540e2e8e754ec3.md) | 64 | `result-track:fd66ae8f78540e2e8e754ec3032a390271994bf2dc70e934a4d26a654549d434` |
| 6 | `def` | [isoCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean/declarations/isocongr--ee2101296ce016580e352dc7.md) | 71 | `declaration-track:ee2101296ce016580e352dc7b6f2d836d919447819a6571ba4612adb8adc5f95` |
| 7 | `def` | [isoCongrLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean/declarations/isocongrleft--377e69f5110208287e802925.md) | 78 | `declaration-track:377e69f5110208287e802925244ee7c9aa95512f36b9a6c319d7301871987b14` |
| 8 | `def` | [isoCongrRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean/declarations/isocongrright--82f8c91eee17691fffb41990.md) | 82 | `declaration-track:82f8c91eee17691fffb41990842ffc72ddefa63295eaa37de9268d547543e94c` |
| 9 | `theorem` | [map_homCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean/declarations/map-homcongr--1dc3411d2a81c34575c1e013.md) | 93 | `result-track:1dc3411d2a81c34575c1e01393bcba7655fdcd543006e377cb56c2dc29993687` |
| 10 | `theorem` | [map_isoCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7.lean/declarations/map-isocongr--134fa85f182298129685bfac.md) | 96 | `result-track:134fa85f182298129685bfac9a5f362e9854643c8dd7ec7578bfccdcae061d77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
