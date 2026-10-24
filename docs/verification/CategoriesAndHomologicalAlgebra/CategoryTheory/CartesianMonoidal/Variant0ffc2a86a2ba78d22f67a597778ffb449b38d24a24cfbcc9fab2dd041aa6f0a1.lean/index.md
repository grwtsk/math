# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CartesianMonoidal.Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1139452fa906e909bb1f0f307016786d7e533e16",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1139452fa906e909bb1f0f307016786d7e533e16`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Cartesian.FunctorCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Limits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tensorProd_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/declarations/tensorprod-issheaf--a37189a35b3f31ae2e24eea3.md) | 30 | `result-track:a37189a35b3f31ae2e24eea385eff97697778270c04788ee7710a0bb34f2a156` |
| 2 | `lemma` | [tensorUnit_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/declarations/tensorunit-issheaf--61d58400a0ceab98e858e8da.md) | 36 | `result-track:61d58400a0ceab98e858e8dab36060bd7f03f3d0362b9bc7a78f1f1049675711` |
| 3 | `instance` | [cartesianMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/declarations/cartesianmonoidalcategory--67abf196fb954582ae14e8a8.md) | 44 | `declaration-track:67abf196fb954582ae14e8a80155281e791c0aec62290646ad502bb002c8b671` |
| 4 | `lemma` | [cartesianMonoidalCategoryFst_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/declarations/cartesianmonoidalcategoryfst-val--f504420d36f4e2f804aebdb1.md) | 68 | `result-track:f504420d36f4e2f804aebdb1bafa7ee209b29a897ee321d7cd9e46184e18b7f0` |
| 5 | `lemma` | [cartesianMonoidalCategorySnd_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/declarations/cartesianmonoidalcategorysnd-val--76246bdec3f089986ee11d72.md) | 69 | `result-track:76246bdec3f089986ee11d721def30e183c86442d66bdcf396befc2ce72a456f` |
| 6 | `lemma` | [cartesianMonoidalCategoryLift_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/declarations/cartesianmonoidalcategorylift-val--0b814c7dbe973e6768477638.md) | 74 | `result-track:0b814c7dbe973e6768477638dea40136b9d80093cf82788b75835756507da41e` |
| 7 | `lemma` | [cartesianMonoidalCategoryWhiskerLeft_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/declarations/cartesianmonoidalcategorywhiskerleft-val--b44410b23bf0aee62b17f1bb.md) | 75 | `result-track:b44410b23bf0aee62b17f1bbc1d3e29d3427b618f45c31a9af5111b531bcd62e` |
| 8 | `lemma` | [cartesianMonoidalCategoryWhiskerRight_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/declarations/cartesianmonoidalcategorywhiskerright-val--ed5d28044f61593ae1e2fb43.md) | 76 | `result-track:ed5d28044f61593ae1e2fb43f7702c70e1ebe5522c3723a840b1e5858ae5a67c` |
| 9 | `instance` | [sheafToPresheafMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/declarations/sheaftopresheafmonoidal--5cbd5270c0c7f02373fd6120.md) | 82 | `declaration-track:5cbd5270c0c7f02373fd61203ea0029dd9c5ceae3f61ef2ac6350077e7c6f529` |
| 10 | `lemma` | [sheafToPresheaf_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/declarations/sheaftopresheaf--1f42af4cba2f8fc8dd2347bf.md) | 89 | `result-track:1f42af4cba2f8fc8dd2347bfe37ffefefff5c1852c451b893ca8f12c0618c80b` |
| 11 | `lemma` | [sheafToPresheaf_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/declarations/sheaftopresheaf--c685a9bc00a0ce3a0086985b.md) | 90 | `result-track:c685a9bc00a0ce3a0086985be9db5ec90c2dd92ee8e8e47277c3c4da768c058f` |
| 12 | `lemma` | [sheafToPresheaf_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/declarations/sheaftopresheaf--847a5c61c86358547e146bdc.md) | 94 | `result-track:847a5c61c86358547e146bdc468ca9487c9374e568d7143c56d06567e7dd6921` |
| 13 | `lemma` | [sheafToPresheaf_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/declarations/sheaftopresheaf--5c6f20f04c0a4639ab61642b.md) | 95 | `result-track:5c6f20f04c0a4639ab61642b347c5db1b852be4b4dd4c9425581fdfa0c90c581` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
