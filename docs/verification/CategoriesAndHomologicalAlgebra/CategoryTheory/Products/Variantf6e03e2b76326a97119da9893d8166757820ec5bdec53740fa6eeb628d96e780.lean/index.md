# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9b74760f9f318c78446fa58b19cffcd886f6258",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9b74760f9f318c78446fa58b19cffcd886f6258`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitMapConeFanMkEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/islimitmapconefanmkequiv--aaab3c243e782360924413aa.md) | 37 | `declaration-track:aaab3c243e782360924413aa2302d2e69288a287554d6ede667af662a8991321` |
| 2 | `def` | [isLimitFanMkObjOfIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/islimitfanmkobjofislimit--3736505ce8bcab55e56592a5.md) | 46 | `declaration-track:3736505ce8bcab55e56592a5e01f37d97b80cd86e3863194a60dfa025b1a09b5` |
| 3 | `def` | [isLimitOfIsLimitFanMkObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/islimitofislimitfanmkobj--a56a084c68bc1f15b270ba00.md) | 52 | `declaration-track:a56a084c68bc1f15b270ba00afb0f3c05837e7dd8825d65a3f72c0b80b00d49d` |
| 4 | `def` | [isLimitOfHasProductOfPreservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/islimitofhasproductofpreserveslimit--5ebf85e97e9e16cab5883cfe.md) | 65 | `declaration-track:5ebf85e97e9e16cab5883cfe861d603fde217f89c16279e9cb0c664d1c6699c9` |
| 5 | `lemma` | [PreservesProduct.of_iso_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/preservesproduct-of-iso-comparison--12149986e07e129ec7a55bb8.md) | 72 | `result-track:12149986e07e129ec7a55bb851f8039377b4e9e011d5642b04b7aeb0f88c5706` |
| 6 | `def` | [PreservesProduct.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/preservesproduct-iso--94b3eaefb763686223b9040f.md) | 85 | `declaration-track:94b3eaefb763686223b9040f474de68a3bb3ade967ab02352e197685d005a5b1` |
| 7 | `theorem` | [PreservesProduct.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/preservesproduct-iso-hom--47d5cd36e81b9d02775815c9.md) | 89 | `result-track:47d5cd36e81b9d02775815c98e7718ee31940bb9b4bb1476f71c2f3f9975f72e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/instance--48a8cab4d4ee97dbea9adf4d.md) | 92 | `declaration-track:48a8cab4d4ee97dbea9adf4db5f226b697d0c8eeef923e81685212ba5cd1b8ed` |
| 9 | `def` | [isColimitMapCoconeCofanMkEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/iscolimitmapcoconecofanmkequiv--215bff82b9c1c70d6c52220d.md) | 101 | `declaration-track:215bff82b9c1c70d6c52220d2530b8368d9c217d84be5e6d46250f3d548a60f4` |
| 10 | `def` | [isColimitCofanMkObjOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/iscolimitcofanmkobjofiscolimit--5e77e29ca683e4f9ee3890e8.md) | 109 | `declaration-track:5e77e29ca683e4f9ee3890e84673d4bcf21501c46e3a1a10398bd8d8441c8a6d` |
| 11 | `def` | [isColimitOfIsColimitCofanMkObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/iscolimitofiscolimitcofanmkobj--9324f78c40eae00dae265602.md) | 115 | `declaration-track:9324f78c40eae00dae2656022243d99145afb3987893e56946d52ac013cac7a6` |
| 12 | `def` | [isColimitOfHasCoproductOfPreservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/iscolimitofhascoproductofpreservescolimit--dd65b2a512047d6dde60fa9d.md) | 128 | `declaration-track:dd65b2a512047d6dde60fa9db91f33f20b0bbf3f964ad4443b41afe6fb091d9e` |
| 13 | `lemma` | [PreservesCoproduct.of_iso_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/preservescoproduct-of-iso-comparison--f4451256f825559bae299572.md) | 135 | `result-track:f4451256f825559bae2995728e7161fec63e14fae14041ad5db8c189fcb7adea` |
| 14 | `def` | [PreservesCoproduct.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/preservescoproduct-iso--d028ed96cd2d4d1fc7c36f19.md) | 147 | `declaration-track:d028ed96cd2d4d1fc7c36f19523286aa850fe7522ea23d8dbd8e9d4a20e6a273` |
| 15 | `theorem` | [PreservesCoproduct.inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/preservescoproduct-inv-hom--8318cf34ef6fe090f5124c75.md) | 152 | `result-track:8318cf34ef6fe090f5124c757fe5a4dad1e3d90b49332fe669ab7e40be5e4058` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/instance--20769ea91a8838043899281f.md) | 154 | `declaration-track:20769ea91a8838043899281f24ca430ed7dfca6ad2f0c51d027146afe68c6152` |
| 17 | `lemma` | [preservesLimitsOfShape_of_discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/preserveslimitsofshape-of-discrete--872c50e1310f067add1f5dd5.md) | 162 | `result-track:872c50e1310f067add1f5dd579e6a564c7093808798267a943fec7d205a09786` |
| 18 | `lemma` | [preservesColimitsOfShape_of_discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf6e03e2b76326a97119da9893d8166757820ec5bdec53740fa6eeb628d96e780.lean/declarations/preservescolimitsofshape-of-discrete--b6b0bbaa65e4d81274e719f7.md) | 169 | `result-track:b6b0bbaa65e4d81274e719f7581ebea02821401a1c03308daa5e9431b453b661` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
