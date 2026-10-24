# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c28ef13f2132a66fb5dad57a1b59e8a6df2f0589",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c28ef13f2132a66fb5dad57a1b59e8a6df2f0589`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.EffectiveEpi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Stonean.EffectiveEpi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.SheafComparison` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181.lean/declarations/equivalence--74790325dd608766f1e72d15.md) | 54 | `declaration-track:74790325dd608766f1e72d154f0e2cf8976a0cf588969e3037da659238d2b1ab` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181.lean/declarations/instance--ea80f2b89e0df841d7c35e02.md) | 63 | `declaration-track:ea80f2b89e0df841d7c35e0227e27f2f75bdbf5f24990004658b0f3afb703d6e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181.lean/declarations/instance--592c0ba56737d47845649a7a.md) | 67 | `declaration-track:592c0ba56737d47845649a7a76760d7793919e85da156d83c9bdd2372bd88850` |
| 4 | `def` | [stoneanToProfiniteEffectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181.lean/declarations/stoneantoprofiniteeffectivepresentation--67835a216f828b965aa6a6e2.md) | 74 | `declaration-track:67835a216f828b965aa6a6e2babee6c0feeaa29ea167db3bef574677b8ab2c34` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181.lean/declarations/instance--78c43fbfe8ab37691ce084d3.md) | 80 | `declaration-track:78c43fbfe8ab37691ce084d39d33297570923cdd61646614ee2bf546121bcbf2` |
| 6 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181.lean/declarations/equivalence--e52d1c4042a3ff275e045094.md) | 85 | `declaration-track:e52d1c4042a3ff275e045094cc6f26acf90630f4bf1c4e6e7c96d954a2ee8ab0` |
| 7 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181.lean/declarations/equivalence--df8af993005c51e42a4d68fa.md) | 97 | `declaration-track:df8af993005c51e42a4d68fa18824ef7623be06ebe1f2c7c1d313c1a028a9b8a` |
| 8 | `lemma` | [isSheafProfinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181.lean/declarations/issheafprofinite--10bee49a38fa0c0743a96eba.md) | 106 | `result-track:10bee49a38fa0c0743a96eba14c72d66b2a5d320fcd4fb158e7915c49d877a02` |
| 9 | `lemma` | [isSheafStonean](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantd7571355980dd15601793931c7ffb11cf21a92ed0ba6877dcb9eff4b7a15f181.lean/declarations/issheafstonean--f51862d6a92cfc14bf642f55.md) | 112 | `result-track:f51862d6a92cfc14bf642f55bb0c2f01f245963d8fe157dd26a2cd13d759ac81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
