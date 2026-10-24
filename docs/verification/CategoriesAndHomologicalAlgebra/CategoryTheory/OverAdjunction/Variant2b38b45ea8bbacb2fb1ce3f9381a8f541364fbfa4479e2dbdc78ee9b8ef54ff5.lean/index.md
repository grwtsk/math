# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OverAdjunction.Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e05098e9b2f705fa2dd8cfca33be3b9ebea341da",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e05098e9b2f705fa2dd8cfca33be3b9ebea341da`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Comma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Pullback` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Over.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean/declarations/over-map--065eb0f2770efe56b5892f8b.md) | 46 | `declaration-track:065eb0f2770efe56b5892f8b71daddb84b38054ecc5a00559bddc8ff596fea70` |
| 2 | `lemma` | [Over.map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean/declarations/over-map-comp--1950446c0f4a3cbd5225e0fd.md) | 49 | `result-track:1950446c0f4a3cbd5225e0fdcef473e5112191534925f1836f99b85badc98867` |
| 3 | `def` | [Over.mapComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean/declarations/over-mapcomp--4fafaccf45db94295d431bf8.md) | 59 | `declaration-track:4fafaccf45db94295d431bf8eb2ef4362cdc3c2d241f2f5537fc8a6275c709fa` |
| 4 | `def` | [Over.pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean/declarations/over-pullback--be045ce3d2dff5b066225145.md) | 72 | `declaration-track:be045ce3d2dff5b0662251458cec09484483f56188d3d701194fb2f5d825c8a2` |
| 5 | `def` | [Over.pullbackComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean/declarations/over-pullbackcomp--8a19a0c64687b23a8c0944b9.md) | 85 | `declaration-track:8a19a0c64687b23a8c0944b993f8e51627f0a7b1dc896578c6f7a9cca6e7f890` |
| 6 | `lemma` | [Over.pullbackComp_left_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean/declarations/over-pullbackcomp-left-fst-fst--a01958647af891e46317218e.md) | 90 | `result-track:a01958647af891e46317218e72a8df6a205f267317f06f8185db2e76e758b948` |
| 7 | `def` | [Over.pullbackCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean/declarations/over-pullbackcongr--6f99bfbff4c09b6e3321483a.md) | 98 | `declaration-track:6f99bfbff4c09b6e3321483ad272f1db8934717c20ddd807efba0bfe13fa9ed6` |
| 8 | `lemma` | [Over.pullbackCongr_hom_app_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean/declarations/over-pullbackcongr-hom-app-left-fst--43c22369905011a3f2450150.md) | 103 | `result-track:43c22369905011a3f24501506e3753c0c9c24c579555f40103fff0b45bb4082b` |
| 9 | `def` | [Over.mapPullbackAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean/declarations/over-mappullbackadj--c950869ca732c5c939dc0001.md) | 117 | `declaration-track:c950869ca732c5c939dc00012181c18cf34d6c737191a1f896c1bcdbc86dbb35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
