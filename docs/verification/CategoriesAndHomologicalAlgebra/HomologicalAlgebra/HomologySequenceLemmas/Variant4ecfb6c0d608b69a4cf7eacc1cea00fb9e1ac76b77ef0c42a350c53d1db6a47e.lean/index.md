# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologySequenceLemmas.Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26d1411fed80d22f590edd6abd66e9961da1faf0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26d1411fed80d22f590edd6abd66e9961da1faf0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomologySequence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.QuasiIso` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.DiagramLemmas.Four` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapSnakeInput](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/declarations/mapsnakeinput--f8171facd46b3b3b3c478b34.md) | 43 | `declaration-track:f8171facd46b3b3b3c478b342155aff9840414d8ca42881a19085f8fb043e4e2` |
| 2 | `lemma` | [δ_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/declarations/naturality--67a980298ba9d5623f295ac8.md) | 51 | `result-track:67a980298ba9d5623f295ac80709132cebea354401c923b22da6a4a07e36aee0` |
| 3 | `def` | [composableArrows₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/declarations/composablearrows--876882ba95b12cee7ac9f7ee.md) | 60 | `declaration-track:876882ba95b12cee7ac9f7ee5f330d042b831a0afaba39672f79937f22a9c207` |
| 4 | `lemma` | [composableArrows₂_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/declarations/composablearrows-exact--159f9f546b2755a34e560c0d.md) | 63 | `result-track:159f9f546b2755a34e560c0d215e5037ac0668c59071922295c5787ff6a6d5ab` |
| 5 | `def` | [composableArrows₅](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/declarations/composablearrows--5823bbdbd05757853ef4ae71.md) | 71 | `declaration-track:5823bbdbd05757853ef4ae7179383dfa3a5706bee135824cadb6f9a7322adad5` |
| 6 | `lemma` | [composableArrows₅_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/declarations/composablearrows-exact--e8138f71a38f6414addfc716.md) | 75 | `result-track:e8138f71a38f6414addfc7162222ce3e396bce174959a1b3f2baba970cc464bb` |
| 7 | `def` | [mapComposableArrows₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/declarations/mapcomposablearrows--f49b2b5d6088f9d2f78e52d8.md) | 85 | `declaration-track:f49b2b5d6088f9d2f78e52d891349abe70b1ba6947295b0130b0907a53725aa4` |
| 8 | `def` | [mapComposableArrows₅](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/declarations/mapcomposablearrows--be11e927fb149f5ee7850441.md) | 96 | `declaration-track:be11e927fb149f5ee785044179a2ee47b3093ff90615cfc1857c88614a150d9d` |
| 9 | `lemma` | [mono_homologyMap_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/declarations/mono-homologymap--bcaf76361ee79ed6a7bc4053.md) | 108 | `result-track:bcaf76361ee79ed6a7bc40539bcc8d09efacd61337e8c84e7337a0d11a3abff6` |
| 10 | `lemma` | [epi_homologyMap_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/declarations/epi-homologymap--00e280b56d14ee61d3598fc8.md) | 128 | `result-track:00e280b56d14ee61d3598fc854ee8e048c16666153e518e34e769b9fb683ec36` |
| 11 | `lemma` | [isIso_homologyMap_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/declarations/isiso-homologymap--58513f06a2a69bb292452027.md) | 149 | `result-track:58513f06a2a69bb29245202772af4789813a231d0e559b0008a2ce97110ae618` |
| 12 | `lemma` | [quasiIso_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/declarations/quasiiso--f8da28dc19fcb040b15611a8.md) | 163 | `result-track:f8da28dc19fcb040b15611a8ca248685f9f0ac0b0214a62d6b00db76bd781158` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
