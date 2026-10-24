# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef5ed6605f8b384082f28f396a1b3be034ad4131",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef5ed6605f8b384082f28f396a1b3be034ad4131`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AddRelatedDecl` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forall_congr_forget_Type](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/declarations/forall-congr-forget-type--1a89a9aa55d4d4bcebad1e87.md) | 53 | `result-track:1a89a9aa55d4d4bcebad1e87a4a88eb9f27d3464f0b679ce85ab9fdcfcffe053` |
| 2 | `theorem` | [forget_hom_Type](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/declarations/forget-hom-type--b23b9a8e031bec66a7aaed73.md) | 58 | `result-track:b23b9a8e031bec66a7aaed73a291bda4a3a536171690166dc31fab49ddbfd44c` |
| 3 | `theorem` | [hom_elementwise](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/declarations/hom-elementwise--c52a0e47f45093492816fc7e.md) | 60 | `result-track:c52a0e47f45093492816fc7ed59a7992c9c239713a9ca30cfb28232fe9124861` |
| 4 | `def` | [elementwiseThms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/declarations/elementwisethms--daeaa23d8369bf6d809d6233.md) | 66 | `declaration-track:daeaa23d8369bf6d809d6233f45eeb12f22ba239deff335c3de512f18bed0d3a` |
| 5 | `def` | [elementwiseExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/declarations/elementwiseexpr--bef373255fcd268902d2b82f.md) | 93 | `declaration-track:bef373255fcd268902d2b82fad75dbcdee3fe1d66564c9a4118018311a66ca9b` |
| 6 | `def` | [mkUnusedName](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/declarations/mkunusedname--fb38b90e7ad974b13230ccdd.md) | 164 | `declaration-track:fb38b90e7ad974b13230ccddb7557b32c21902b93f8ce533a4fda7b870951577` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/declarations/syntax--08c1c53943dd4a5b9dc5388e.md) | 213 | `declaration-track:08c1c53943dd4a5b9dc5388e2dd58acf5986b4d9f526968c8f849b79a82b6e44` |
| 8 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/declarations/initialize--8d2090e93d55d095349d8487.md) | 216 | `declaration-track:8d2090e93d55d095349d84870f750777ad1a6c325123d4a8fa79e087b20825d5` |
| 9 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/declarations/elab--714517ef29a9ab2ec0bc276a.md) | 261 | `declaration-track:714517ef29a9ab2ec0bc276a8d8ec579876058bfcbd0ebd6bd23f7f3604b3b71` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/declarations/syntax--cab3e11346d5ae254eb37c8b.md) | 267 | `declaration-track:cab3e11346d5ae254eb37c8bc1dee5a03918770d10b972893ef646a41fd17882` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/declarations/syntax--517e8caf7d58269c13682364.md) | 268 | `declaration-track:517e8caf7d58269c1368236483ecf4956b728fca9a1dfc8f8bd44bd9500195b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
