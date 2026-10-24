# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be40033c8a984488535b040b2d7d09b7246d9d08",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be40033c8a984488535b040b2d7d09b7246d9d08`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Preadditive` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preadditiveYonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/declarations/preadditiveyonedaobj--bc5e5b367935731d67812d86.md) | 51 | `declaration-track:bc5e5b367935731d67812d868e8602fa8a2dcc1b29763fcfc06cd80ae3b1025c` |
| 2 | `def` | [preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/declarations/preadditiveyoneda--d9c3bad28ef4fc96d1bb2926.md) | 64 | `declaration-track:d9c3bad28ef4fc96d1bb292615b6c855af95997d5dc1657c0c3c72e3b7ffde30` |
| 3 | `def` | [preadditiveCoyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/declarations/preadditivecoyonedaobj--ca2ed04a907a6fa80890f4e4.md) | 80 | `declaration-track:ca2ed04a907a6fa80890f4e47d835948e3f4878cd88aa7879b5781901519cba2` |
| 4 | `def` | [preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/declarations/preadditivecoyoneda--f98a384c5b3300a03f0fc0e3.md) | 93 | `declaration-track:f98a384c5b3300a03f0fc0e31f199285204f5f0d59368890b8529fc713007e70` |
| 5 | `instance` | [additive_yonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/declarations/additive-yonedaobj--5c1a6f82c25a0bdd86285015.md) | 106 | `declaration-track:5c1a6f82c25a0bdd86285015e2a24fae5ea2c7fbf1b65ba7340a815d74006cd1` |
| 6 | `instance` | [additive_yonedaObj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/declarations/additive-yonedaobj--e5fcb6d59ef1cc1b3f89eb39.md) | 109 | `declaration-track:e5fcb6d59ef1cc1b3f89eb3952d60e5fedfc4f91762b44f0da43e0e34e4f6a52` |
| 7 | `instance` | [additive_coyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/declarations/additive-coyonedaobj--9c50fc3359603c10a206367e.md) | 112 | `declaration-track:9c50fc3359603c10a206367e238938a8be0adf8b0dc3bdaf1c3d9902156c595f` |
| 8 | `instance` | [additive_coyonedaObj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/declarations/additive-coyonedaobj--dbba11e8b4a888bd0b68d232.md) | 115 | `declaration-track:dbba11e8b4a888bd0b68d232db62b606df8d1bdb4320a8fc42fe3046e2a9eee8` |
| 9 | `theorem` | [whiskering_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/declarations/whiskering-preadditiveyoneda--1cd5730dc9d7850e703ad60c.md) | 122 | `result-track:1cd5730dc9d7850e703ad60c225519bccd836ee9ab3f963f41ba27438d5c69af` |
| 10 | `theorem` | [whiskering_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/declarations/whiskering-preadditivecoyoneda--bf4078b7d79060b0328f3720.md) | 133 | `result-track:bf4078b7d79060b0328f37204a269d10fb16b202bd6dbfe768fcb0bb580a751f` |
| 11 | `instance` | [full_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/declarations/full-preadditiveyoneda--649df975c00562148a388175.md) | 140 | `declaration-track:649df975c00562148a3881754f917d6ca989c69445d6ae076706cd62410c127d` |
| 12 | `instance` | [full_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/declarations/full-preadditivecoyoneda--bad2ff3607a1d0200f475a2d.md) | 148 | `declaration-track:bad2ff3607a1d0200f475a2d654cb676d3243fb79cef3b1df99a20e87e7f67da` |
| 13 | `instance` | [faithful_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/declarations/faithful-preadditiveyoneda--42aa0479136f5674dc07a70d.md) | 156 | `declaration-track:42aa0479136f5674dc07a70d84bb8902e34c9ec3043135692b2d8cf244ffc8b1` |
| 14 | `instance` | [faithful_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/declarations/faithful-preadditivecoyoneda--c95b37edd94ed31c20dfaa35.md) | 160 | `declaration-track:c95b37edd94ed31c20dfaa354d3d8c203a0843078f754e328dc71a77a09a142c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
