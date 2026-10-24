# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pushforward.Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afa05991b275802592b66e0d91ee87b4241a53cf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afa05991b275802592b66e0d91ee87b4241a53cf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.ChangeOfRings` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pushforward₀_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean/declarations/pushforward-obj--c9f5bbeb0d3ebea6455ce035.md) | 41 | `declaration-track:c9f5bbeb0d3ebea6455ce0352de5c4ac5ee3f019e9c892264b13b2e7d2e03908` |
| 2 | `def` | [pushforward₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean/declarations/pushforward--a8a48c76543e3ae9daa516d9.md) | 59 | `declaration-track:a8a48c76543e3ae9daa516d93aa36fa89a41ec6847d64be774be8543d7b91944` |
| 3 | `def` | [pushforward₀CompToPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean/declarations/pushforward-comptopresheaf--1fcce99409a11e7a68ed6ca0.md) | 66 | `declaration-track:1fcce99409a11e7a68ed6ca0a0acb33b532ac8782c51a7cbbab9d86398b888a4` |
| 4 | `def` | [pushforward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean/declarations/pushforward--2619081b874eede45b9b05fa.md) | 77 | `declaration-track:2619081b874eede45b9b05fa10f5c831614cefff55aeb63d98bac1435ca5d1bd` |
| 5 | `def` | [pushforwardCompToPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean/declarations/pushforwardcomptopresheaf--216ed0d1d0a716500a76cbbb.md) | 82 | `declaration-track:216ed0d1d0a716500a76cbbb5d0232624ce14f352b05e36436bacf4402f6f61f` |
| 6 | `lemma` | [pushforward_obj_map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean/declarations/pushforward-obj-map-apply--c5e551403ad0d4a615296154.md) | 86 | `result-track:c5e551403ad0d4a6152961543a59a78b3ee6395e93c06332ff70360407642ff1` |
| 7 | `lemma` | [pushforward_obj_map_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean/declarations/pushforward-obj-map-apply--559d6511460e496e4a96490c.md) | 92 | `result-track:559d6511460e496e4a96490c6015a476e8333378568d95285d2b8e32c44d5f36` |
| 8 | `lemma` | [pushforward_map_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean/declarations/pushforward-map-app-apply--9b4294ac172e98b84ce265a0.md) | 99 | `result-track:9b4294ac172e98b84ce265a0495b020d22587bbb22241752407cb75167a48206` |
| 9 | `lemma` | [pushforward_map_app_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea.lean/declarations/pushforward-map-app-apply--e3db36455dfbd6a12c3fbd73.md) | 105 | `result-track:e3db36455dfbd6a12c3fbd73d2791ce58a8ebea1523283175419186323a51397` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
