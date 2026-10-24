# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Ideal.Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "203558eea69b40549b59c10e87411f01e7f471b3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `203558eea69b40549b59c10e87411f01e7f471b3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.FiniteProductsOfBinaryProducts` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Cartesian` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subterminal` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ExponentialIdeal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/exponentialideal--59f35f602c7ca844759c1b1f.md) | 47 | `declaration-track:59f35f602c7ca844759c1b1ff799c309a2d9f47c853be486b25acc750a140e23` |
| 2 | `theorem` | [ExponentialIdeal.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/exponentialideal-mk--1547f52dfc941c73017f00c4.md) | 54 | `result-track:1547f52dfc941c73017f00c4acd317fea5d905bcf3459c744ad93724a3f11258` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/instance--fe78a04f7ec8020325028953.md) | 61 | `declaration-track:fe78a04f7ec80203250289532f9020c2f38c6fa6cf3ed9fecf9dbeaabb26adb0` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/instance--7cb76c811ef89c576fac7390.md) | 67 | `declaration-track:7cb76c811ef89c576fac73905c0089c01e0a8f38c2c5234dbfcc5e462e44bc21` |
| 5 | `def` | [exponentialIdealReflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/exponentialidealreflective--c09e2a303a1a75b6b2b87ff9.md) | 78 | `declaration-track:c09e2a303a1a75b6b2b87ff951da1df4949049e50865d8cb36017d0dc751a7b0` |
| 6 | `theorem` | [ExponentialIdeal.mk_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/exponentialideal-mk-of-iso--d82f3ece40bcc7c7dc32ba2d.md) | 90 | `result-track:d82f3ece40bcc7c7dc32ba2df359109f8fdf7b177e8f6a578606ce43bb80754b` |
| 7 | `theorem` | [reflective_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/reflective-products--9df10f8b5fcebf627d7f853d.md) | 106 | `result-track:9df10f8b5fcebf627d7f853db26100ce23ddc363a0d389408dbeb26de57b540e` |
| 8 | `abbrev` | [CartesianMonoidalCategory.ofReflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/cartesianmonoidalcategory-ofreflective--6fdfc1bd88a4f0f113d7cedc.md) | 117 | `declaration-track:6fdfc1bd88a4f0f113d7cedc4b9112c40917905f4a7ad271244fd3bb22192d5e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/instance--6fd5bc1531499ef04aa65f94.md) | 162 | `declaration-track:6fd5bc1531499ef04aa65f94e1d3510c5cbb02bfb831ce23c38aefcd31f2dcf5` |
| 10 | `def` | [cartesianClosedOfReflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/cartesianclosedofreflective--4bf7a349e2c322df0354862d.md) | 190 | `declaration-track:4bf7a349e2c322df0354862d4d6aa02ea692f10c5394bfdf66f765352824c447` |
| 11 | `def` | [bijection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/bijection--ccef40167709edff9fbf3326.md) | 216 | `declaration-track:ccef40167709edff9fbf33265c4cbff0e2ba2b5fbf3ac539bab24ad82de54d6e` |
| 12 | `theorem` | [bijection_symm_apply_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/bijection-symm-apply-id--c453ae75be510c36daac310e.md) | 239 | `result-track:c453ae75be510c36daac310edae164056be2a0b7b9c7bbce15258f9076e10ac9` |
| 13 | `theorem` | [bijection_natural](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/bijection-natural--0744e0767ab91683f5651058.md) | 261 | `result-track:0744e0767ab91683f5651058bcef0c60bb09432c554e1ca27ee25f89f32eca72` |
| 14 | `theorem` | [prodComparison_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/prodcomparison-iso--0ecf8bfe95c89e9cd7572c08.md) | 279 | `result-track:0ecf8bfe95c89e9cd7572c0870cf77ebd89aa6c218d19866eb581473819af4bc` |
| 15 | `lemma` | [preservesBinaryProducts_of_exponentialIdeal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/preservesbinaryproducts-of-exponentialideal--df382c72e0dd584b66e46877.md) | 294 | `result-track:df382c72e0dd584b66e468772cef2069710de5ad1c68d45c732dac6f7ce9c229` |
| 16 | `lemma` | [Limits.PreservesFiniteProducts.of_exponentialIdeal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant82e9f2b4fed7a58e79d7fcf8452abf2f01755ffa1a0718f1d2884e7a28d48966.lean/declarations/limits-preservesfiniteproducts-of-exponentialideal--e621734711a007a5c142c9ca.md) | 304 | `result-track:e621734711a007a5c142c9ca33f547d381af82922e5c493bb2f7533f19c743e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
