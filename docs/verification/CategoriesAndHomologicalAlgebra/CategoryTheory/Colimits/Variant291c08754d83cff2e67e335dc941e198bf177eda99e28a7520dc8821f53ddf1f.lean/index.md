# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colimits.Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fa49b3040a128ca94ce4ef87c008b155ad15906",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fa49b3040a128ca94ce4ef87c008b155ad15906`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prequotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/prequotient--ad71de906d94b4552ffa8d2e.md) | 72 | `declaration-track:ad71de906d94b4552ffa8d2e4ba1f7c9acd6e12fddf0c64e676a829bb1d2ac5a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/instance--0c0251258ce7245323fe9d26.md) | 79 | `declaration-track:0c0251258ce7245323fe9d2636a37efc256a17e19dafaaabf21fe4168814a0b0` |
| 3 | `inductive` | [Relation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/relation--f47d7bdf1eb7b89ac4712007.md) | 88 | `declaration-track:f47d7bdf1eb7b89ac47120073fd39866ca8ff8bc610a2ae674a0223d98822402` |
| 4 | `def` | [colimitSetoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/colimitsetoid--5edaf56f83e500cd4abedd46.md) | 109 | `declaration-track:5edaf56f83e500cd4abedd46fccd33a8ee3f29ae35eda1e0eb98f701099ffef7` |
| 5 | `def` | [ColimitType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/colimittype--459461b16e575eb3c0135ad8.md) | 117 | `declaration-track:459461b16e575eb3c0135ad8532b0d9da29931e7a8d5227a52f3bbc85e29bc63` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/instance--6fc7a12ae747039271d2c78b.md) | 120 | `declaration-track:6fc7a12ae747039271d2c78b7aebe4b721632780381fdc8f6099344df479b595` |
| 7 | `instance` | [monoidColimitType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/monoidcolimittype--9fa47830c9bc3dc4e6dfd7f6.md) | 124 | `declaration-track:9fa47830c9bc3dc4e6dfd7f6502f1199eff334cd598e8b67c1c92fbc6f8b96b9` |
| 8 | `theorem` | [quot_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/quot-one--34d44473a062ed1e6484a418.md) | 134 | `result-track:34d44473a062ed1e6484a41858ac598bca49539cd1f21674226b7f1b25e152ef` |
| 9 | `theorem` | [quot_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/quot-mul--f5916e966fbeb941c26bd104.md) | 138 | `result-track:f5916e966fbeb941c26bd104f4f021cec8760e77087b791e8d7323db6c0ded86` |
| 10 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/colimit--0c8cd98807efc2b195f8368d.md) | 144 | `declaration-track:0c8cd98807efc2b195f8368d7a4ee6476a50bcbeff3833ea521ff0e72883da4d` |
| 11 | `def` | [coconeFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/coconefun--f0851f9864da32b938c64b69.md) | 148 | `declaration-track:f0851f9864da32b938c64b69af50a06cea32688a5ad0ce6b0e553f344f1597f5` |
| 12 | `def` | [coconeMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/coconemorphism--7d6022e93526d75a3fe5bed1.md) | 152 | `declaration-track:7d6022e93526d75a3fe5bed1cf29f1ae548cf73ce20c1e704fa17f8486fd0d6f` |
| 13 | `theorem` | [cocone_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/cocone-naturality--f64aa9bdf5682733019a7400.md) | 159 | `result-track:f64aa9bdf5682733019a7400769f4442a56771f43c1956ba3159c43106a8b279` |
| 14 | `theorem` | [cocone_naturality_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/cocone-naturality-components--85b05070d6e4fe22317143d1.md) | 166 | `result-track:85b05070d6e4fe22317143d14ef67e6e038bad6ae1940a3bb4cd9283f0d7494f` |
| 15 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/colimitcocone--4e8c43ac022172c4c8cbb791.md) | 172 | `declaration-track:4e8c43ac022172c4c8cbb791bd588ad67d4d5822d80970c5f5a2af47242d6f7b` |
| 16 | `def` | [descFunLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/descfunlift--dfb46edb8521f122c97d89f5.md) | 178 | `declaration-track:dfb46edb8521f122c97d89f5b9c50baaaffab35429435bbddfd9b180764e1e4a` |
| 17 | `def` | [descFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/descfun--a7c96f9055317c23d7bb6eb8.md) | 184 | `declaration-track:a7c96f9055317c23d7bb6eb83a68e6fba104564adf105173102d9c9b24b31847` |
| 18 | `def` | [descMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/descmorphism--526d67e81be58f8b33acbd36.md) | 202 | `declaration-track:526d67e81be58f8b33acbd360d1180aa4fa9804c81246660ebe6a99fb1948e0f` |
| 19 | `def` | [colimitIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/colimitiscolimit--0afd16680b7ff97a380e47d8.md) | 214 | `declaration-track:0afd16680b7ff97a380e47d82b44c4e6fd8e383b5f721397e55420cd8d95aecc` |
| 20 | `instance` | [hasColimits_monCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/declarations/hascolimits-moncat--68842f86def6017ac12a92b5.md) | 232 | `declaration-track:68842f86def6017ac12a92b5451b9a6be812c97cc163c0d77f9052620d123f7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
