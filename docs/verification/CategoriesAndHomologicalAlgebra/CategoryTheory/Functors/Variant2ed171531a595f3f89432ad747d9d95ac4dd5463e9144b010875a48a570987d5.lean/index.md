# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7d84962c0c44e8442489a7f44df0476373b5f38",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7d84962c0c44e8442489a7f44df0476373b5f38`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.SheafCondition.Sites` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Pullback` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pushforward_sheaf_of_sheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean/declarations/pushforward-sheaf-of-sheaf--4f0905c7f030790feb3c467d.md) | 51 | `result-track:4f0905c7f030790feb3c467d19d5e431d056895f8d36d5d1a1399327b22f2057` |
| 2 | `def` | [pushforward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean/declarations/pushforward--d587e1fa2d63426ae335b353.md) | 58 | `declaration-track:d587e1fa2d63426ae335b353e0e7c1018680c35996cf6f7b32bea54e5a65236a` |
| 3 | `lemma` | [pushforward_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean/declarations/pushforward-forget--1b2cebb10f5c0b3080808fbf.md) | 61 | `result-track:1b2cebb10f5c0b3080808fbff12f7525fde98a4d602b1a25f07e9b40c41e7efd` |
| 4 | `def` | [pushforwardForgetIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean/declarations/pushforwardforgetiso--cdf6765ffd92f5275798410b.md) | 67 | `declaration-track:cdf6765ffd92f5275798410ba0492bb77bf85bb9e508d8903d4e1b30031b4467` |
| 5 | `lemma` | [pushforward_obj_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean/declarations/pushforward-obj-val--c3a21ce40a74f951acd5275c.md) | 72 | `result-track:c3a21ce40a74f951acd5275cb7bd5d290e51e5855e572b707097a1d687c09562` |
| 6 | `lemma` | [pushforward_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean/declarations/pushforward-map--7397dbcba286534c67a801e1.md) | 75 | `result-track:7397dbcba286534c67a801e125a522aec97e6d52e932a37f8785d9e012f07a67` |
| 7 | `def` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean/declarations/pullback--faeeffc4be04a98ccdb23e29.md) | 87 | `declaration-track:faeeffc4be04a98ccdb23e290b91e34d3fb8a1d968a43bb7e64c2536dfca2e75` |
| 8 | `def` | [pullbackIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean/declarations/pullbackiso--285234d283406354a31aa91d.md) | 94 | `declaration-track:285234d283406354a31aa91da46456f7b802e56a00ed89efab89d061e60fd8e1` |
| 9 | `def` | [pullbackPushforwardAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean/declarations/pullbackpushforwardadjunction--29345cac7b5dd9ba030fdd42.md) | 99 | `declaration-track:29345cac7b5dd9ba030fdd42bb955aa880147aa01143ae777946f85ca223a73b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean/declarations/instance--84ea748a18a6831be78fba0e.md) | 103 | `declaration-track:84ea748a18a6831be78fba0ea8ebe6f5425a096abe7d2b5b0bb9d1cbf4d3b34b` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant2ed171531a595f3f89432ad747d9d95ac4dd5463e9144b010875a48a570987d5.lean/declarations/instance--0bf29ace7dcea6ed64db2bea.md) | 104 | `declaration-track:0bf29ace7dcea6ed64db2beaa9b17003c8b73108ea738364dc6a3c586eb3cbd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
