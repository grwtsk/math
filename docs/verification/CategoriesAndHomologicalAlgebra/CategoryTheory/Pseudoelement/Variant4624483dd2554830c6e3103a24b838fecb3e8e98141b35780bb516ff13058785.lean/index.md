# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pseudoelement.Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89d30969fc7f55f1af6e03e17eb4fd9fdde5d4fb",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89d30969fc7f55f1af6e03e17eb4fd9fdde5d4fb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Pseudoelements` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Biproducts` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [x](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/declarations/x--2a123219c7998c2a9eba7d0a.md) | 48 | `declaration-track:2a123219c7998c2a9eba7d0adb383b0662e89f8370db40004553c3f92376ebef` |
| 2 | `def` | [y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/declarations/y--ba5f262d522ed4d1b34083e7.md) | 53 | `declaration-track:ba5f262d522ed4d1b34083e75e20f958b6728048dada8f3b5aa7e7be13e99d61` |
| 3 | `theorem` | [fst_x_pseudo_eq_fst_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/declarations/fst-x-pseudo-eq-fst-y--6ed0a869ff13d69cdf3bb494.md) | 58 | `result-track:6ed0a869ff13d69cdf3bb4942c43f29afadf87d43021c23f16b6ade4d4d120a5` |
| 4 | `theorem` | [snd_x_pseudo_eq_snd_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/declarations/snd-x-pseudo-eq-snd-y--794da432511b3f4bfb2b59af.md) | 66 | `result-track:794da432511b3f4bfb2b59af9954e575a0a462f748a64d31b0c5c52034085df9` |
| 5 | `theorem` | [x_not_pseudo_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/declarations/x-not-pseudo-eq--818a40332cd186b41904e1a0.md) | 78 | `result-track:818a40332cd186b41904e1a00d51b4ddd6ef1c3b7b1c85d6851b2468f11e1776` |
| 6 | `theorem` | [fst_mk'_x_eq_fst_mk'_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/declarations/fst-mk-x-eq-fst-mk-y--0994ca2d7fddc695f2f82422.md) | 111 | `result-track:0994ca2d7fddc695f2f82422187601dda4dde5e764028bc39d54d605611618c9` |
| 7 | `theorem` | [snd_mk'_x_eq_snd_mk'_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/declarations/snd-mk-x-eq-snd-mk-y--c6a51ad0aff5cac30a721421.md) | 117 | `result-track:c6a51ad0aff5cac30a721421f65e3d7fc472348aecebf81030997e2aa2b8a624` |
| 8 | `theorem` | [mk'_x_ne_mk'_y](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/declarations/mk-x-ne-mk-y--170877786ea60b99c89072bd.md) | 126 | `result-track:170877786ea60b99c89072bd7a891ff987d7464009124eb2957efb385fe26280` |
| 9 | `theorem` | [exist_ne_and_fst_eq_fst_and_snd_eq_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/declarations/exist-ne-and-fst-eq-fst-and-snd-eq-snd--b2bcbe5c78b5515efbc40c3a.md) | 132 | `result-track:b2bcbe5c78b5515efbc40c3a9637e74fb2d5d00e9acad49eeb51acdd76b3b0f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
