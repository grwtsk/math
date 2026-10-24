# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Discrete.Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd6f85a0a0334c6c67ad2a2e42f737197ea42cd0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd6f85a0a0334c6c67ad2a2e42f737197ea42cd0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.NaturalTransformation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Discrete.monoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean/declarations/discrete-monoidal--c663b1a9985d269e0fc69dfe.md) | 27 | `declaration-track:c663b1a9985d269e0fc69dfe0a193c349ecd9ac4739732fc190921015dfcd81c` |
| 2 | `lemma` | [Discrete.monoidal_tensorUnit_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean/declarations/discrete-monoidal-tensorunit-as--841d72bb76863117b7f31dd6.md) | 38 | `result-track:841d72bb76863117b7f31dd65f16f21823567fdc5043495409ed9bfd7dee3ba6` |
| 3 | `def` | [Discrete.monoidalFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean/declarations/discrete-monoidalfunctor--be8b3ec2b23fa6172bce7828.md) | 46 | `declaration-track:be8b3ec2b23fa6172bce78280936fce3bee861c4def74999cc9a445a2b437752` |
| 4 | `lemma` | [Discrete.monoidalFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean/declarations/discrete-monoidalfunctor-obj--cdeeebfd9c6a4bf540fee576.md) | 50 | `result-track:cdeeebfd9c6a4bf540fee57668a474366574928c94801657c06b457d3ce8c568` |
| 5 | `instance` | [Discrete.monoidalFunctorMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean/declarations/discrete-monoidalfunctormonoidal--31eb3735a3265a818cbea9f0.md) | 54 | `declaration-track:31eb3735a3265a818cbea9f0f9901302029d9f597789284037904e57fb7080f2` |
| 6 | `lemma` | [Discrete.monoidalFunctor_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean/declarations/discrete-monoidalfunctor--e9ea779208259c318d3d78e9.md) | 63 | `result-track:e9ea779208259c318d3d78e9e1d03799c0cc005f6e136224fea1fc15a28bc2b5` |
| 7 | `lemma` | [Discrete.monoidalFunctor_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean/declarations/discrete-monoidalfunctor--e7c5eb00eba7f50bec5e1a32.md) | 67 | `result-track:e7c5eb00eba7f50bec5e1a322f31005b669b7073a2a778d5e2f40d45cdd45173` |
| 8 | `lemma` | [Discrete.monoidalFunctor_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean/declarations/discrete-monoidalfunctor--0e504fe2d2b27ff9776aeea4.md) | 71 | `result-track:0e504fe2d2b27ff9776aeea4b12e3e2348be5facf4c182fdb52ce5940fccac66` |
| 9 | `lemma` | [Discrete.monoidalFunctor_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean/declarations/discrete-monoidalfunctor--7abac8cb55c7af2e980e323e.md) | 75 | `result-track:7abac8cb55c7af2e980e323e6964945680a178b61ea8bc1b8e3867ddcd5c33dd` |
| 10 | `def` | [Discrete.monoidalFunctorComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean/declarations/discrete-monoidalfunctorcomp--d1e5b75ffceaaef086cf7dea.md) | 88 | `declaration-track:d1e5b75ffceaaef086cf7deae5e54a6646a3e212f48714b2265b66bd97b3e399` |
| 11 | `instance` | [Discrete.monoidalFunctorComp_isMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4.lean/declarations/discrete-monoidalfunctorcomp-ismonoidal--c80c6c3b5a41ded5d3884df5.md) | 93 | `declaration-track:c80c6c3b5a41ded5d3884df5b76b9f81cf30ad98880f2f0c8c64bdf39cb04652` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
