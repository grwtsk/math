# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d885d78b3c36a82ac81a54b4bf846e916288e12e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d885d78b3c36a82ac81a54b4bf846e916288e12e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Over` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [widePullbackDiagramOfDiagramOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/declarations/widepullbackdiagramofdiagramover--5ec9bd86351b27a316a6a1aa.md) | 49 | `declaration-track:5ec9bd86351b27a316a6a1aab0aa5371f31a06fa905be31d5bfd901ef9391d1d` |
| 2 | `def` | [conesEquivInverseObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/declarations/conesequivinverseobj--b4085eaff6cbcd225533174a.md) | 56 | `declaration-track:b4085eaff6cbcd225533174a520552d31d97b175a3dcafd855f9da2dcd712cf8` |
| 3 | `def` | [conesEquivInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/declarations/conesequivinverse--00d1e76ad0abc137b0610170.md) | 71 | `declaration-track:00d1e76ad0abc137b06101700db54259857bbff6ecf4531b70cae156a5c654ac` |
| 4 | `def` | [conesEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/declarations/conesequivfunctor--d269ea75017231deb5c59f8e.md) | 90 | `declaration-track:d269ea75017231deb5c59f8ecb5aa1840008f324d7bae2d9c59c68797eaeb4d7` |
| 5 | `def` | [conesEquivUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/declarations/conesequivunitiso--ef463d0352cf2104a988485b.md) | 108 | `declaration-track:ef463d0352cf2104a988485bed5ba2fe432cc6222df9a741316bb61b25f78f24` |
| 6 | `def` | [conesEquivCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/declarations/conesequivcounitiso--32af2bcdbbbede61b29d62e3.md) | 121 | `declaration-track:32af2bcdbbbede61b29d62e3acb26110228d9ff9926d0b491c57f7c8455e2670` |
| 7 | `def` | [conesEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/declarations/conesequiv--ca6045dd4823834e8f1998a1.md) | 131 | `declaration-track:ca6045dd4823834e8f1998a170c8b1fa4ed24c17f498e142cfc661988763c305` |
| 8 | `theorem` | [has_over_limit_discrete_of_widePullback_limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/declarations/has-over-limit-discrete-of-widepullback-limit--d44eb71c3c4d148b1d1f9406.md) | 140 | `result-track:d44eb71c3c4d148b1d1f9406688b658ebda8b76717047038b11bcfb6b3f8cb04` |
| 9 | `theorem` | [over_product_of_widePullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/declarations/over-product-of-widepullback--a859d9f443daa0fca631d45f.md) | 149 | `result-track:a859d9f443daa0fca631d45f9b7998c6e0c00e1d9b4684ce4d258194e325e2cf` |
| 10 | `theorem` | [over_binaryProduct_of_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/declarations/over-binaryproduct-of-pullback--8b23021ca3d02046dd265517.md) | 155 | `result-track:8b23021ca3d02046dd265517b438c8be074c77294e656a2ff62ca39bf77160f6` |
| 11 | `theorem` | [over_products_of_widePullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/declarations/over-products-of-widepullbacks--80a17b2b727f12f10c5d6643.md) | 160 | `result-track:80a17b2b727f12f10c5d6643ce02d559e5452fb0c36888cb15051d4d6a895764` |
| 12 | `theorem` | [over_finiteProducts_of_finiteWidePullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/declarations/over-finiteproducts-of-finitewidepullbacks--86eef1e772e9ae553650d31b.md) | 166 | `result-track:86eef1e772e9ae553650d31bb09e46989db767974475a69e30f03f0fbac56359` |
| 13 | `theorem` | [over_hasTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/declarations/over-hasterminal--d82aee7557bc73921e77af0c.md) | 178 | `result-track:d82aee7557bc73921e77af0c9506053fcab85692e23844787ca8670890ada02b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
