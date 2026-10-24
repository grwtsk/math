# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Nonempty.Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c132c188defec8d698aa49834184f862bbbbf0a6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c132c188defec8d698aa49834184f862bbbbf0a6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SmallObject.Iteration.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SmallObject.Iteration.ExtendToSucc` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SmallObject.Iteration.FunctorOfCocone` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkOfBot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f.lean/declarations/mkofbot--ba3b4b42a3d71cac57412fa8.md) | 45 | `declaration-track:ba3b4b42a3d71cac57412fa84e88e5cf898009973e88bad4e75bb1df5706cdf7` |
| 2 | `def` | [mkOfSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f.lean/declarations/mkofsucc--e026b1695f867c8f15789ab7.md) | 56 | `declaration-track:e026b1695f867c8f15789ab7b459bb559d4db283c692f90a6b882df9e7ac8a0d` |
| 3 | `def` | [inductiveSystem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f.lean/declarations/inductivesystem--e36b729e408e9cfb6da436da.md) | 87 | `declaration-track:e36b729e408e9cfb6da436da0092c4bc5bae54c4e03acf05e0b70d8e514461aa` |
| 4 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f.lean/declarations/functor--52c3e5b0c11415e5a2000287.md) | 94 | `declaration-track:52c3e5b0c11415e5a200028791f0692769493f2c1afa8cc19d83d9bac41e8989` |
| 5 | `lemma` | [functor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f.lean/declarations/functor-obj--fd35681d27a73a35add2e8d5.md) | 98 | `result-track:fd35681d27a73a35add2e8d5fd0181f1f611c29d74290770815763c0f7240c68` |
| 6 | `lemma` | [arrowMap_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f.lean/declarations/arrowmap-functor--0c98a3bd9ec82a872ede5246.md) | 104 | `result-track:0c98a3bd9ec82a872ede524638a1d87cba3a344dd84f4282d6c49ea168537127` |
| 7 | `lemma` | [arrowMap_functor_to_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f.lean/declarations/arrowmap-functor-to-top--1aec43c1b56169fa5f2c86fe.md) | 110 | `result-track:1aec43c1b56169fa5f2c86fefcf1f31223f6183469a3acef2f89b820a1b64719` |
| 8 | `def` | [mkOfLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f.lean/declarations/mkoflimit--d36256d87d0af823cf367457.md) | 121 | `declaration-track:d36256d87d0af823cf367457e270ad42b6010b010dbc6223b4b18358519c9b6e` |
| 9 | `instance` | [nonempty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant747ea87a852172d9879cb28e45b5600f84d712cd4e7311c853b18ef7133dc74f.lean/declarations/nonempty--f43fba4c7a92caaf84003b8c.md) | 151 | `declaration-track:f43fba4c7a92caaf84003b8cb15af0c533318b855ac464c6818f262fe486d974` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
