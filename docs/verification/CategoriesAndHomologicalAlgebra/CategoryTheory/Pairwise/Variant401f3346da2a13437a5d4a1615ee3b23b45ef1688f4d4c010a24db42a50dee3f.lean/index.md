# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pairwise.Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59539d39929ccbab9eff711a2c688b458525adca",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59539d39929ccbab9eff711a2c688b458525adca`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Preorder` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.IsLimit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Pairwise](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/pairwise--b1dc26b15737fd983fba1f17.md) | 47 | `declaration-track:b1dc26b15737fd983fba1f17f776ee160c63270bdfb6a6076f64e63923e098e1` |
| 2 | `instance` | [pairwiseInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/pairwiseinhabited--64dfc2b66fabc20b65a39464.md) | 55 | `declaration-track:64dfc2b66fabc20b65a394649c31fd2c37159698856000651b54905bd7c88bd9` |
| 3 | `inductive` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/hom--62aaded2434924d9d64dafbd.md) | 61 | `declaration-track:62aaded2434924d9d64dafbdae1e27caa66c0eaf7376fdb53bb29c9052700b74` |
| 4 | `instance` | [homInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/hominhabited--83ce4682319e0e0b3ed05ebb.md) | 69 | `declaration-track:83ce4682319e0e0b3ed05ebb6e49ff3a8375300c8e2de7be41b8ddae04a0b5d5` |
| 5 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/id--fd7af235322c4d38ab73973a.md) | 74 | `declaration-track:fd7af235322c4d38ab73973aa77e40a14b27f061497241764e7cd9db73083a3e` |
| 6 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/comp--348fac0f08bd6bd2d55d6273.md) | 79 | `declaration-track:348fac0f08bd6bd2d55d62739ca5dde5163bcf52fdce996ac634c10fe855728f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/instance--53f1c75b294c078a54cb3fb2.md) | 85 | `declaration-track:53f1c75b294c078a54cb3fb2eca71c8f7d7edbe77e68a9e4dfd1b99f0daa3f22` |
| 8 | `def` | [pairwiseCases](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/pairwisecases--d6d11c4c8d36a003bac85698.md) | 94 | `declaration-track:d6d11c4c8d36a003bac85698b6734c218a5bcca3dbcc29b0660c708a08f3aba8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/instance--b3073d1242128eae7a4d670c.md) | 98 | `declaration-track:b3073d1242128eae7a4d670cdb824ad493d29b3bfdaf174e882437422eddb460` |
| 10 | `def` | [diagramObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/diagramobj--00c7f82b539d1352a1557e03.md) | 110 | `declaration-track:00c7f82b539d1352a1557e03b2a111188a18d9fef43b0925520265147b5d2f7f` |
| 11 | `def` | [diagramMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/diagrammap--edfd442e6966f4c66fa01714.md) | 116 | `declaration-track:edfd442e6966f4c66fa017141d04a26c8c513c8fb6d631c52b43220ccaade3d1` |
| 12 | `def` | [diagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/diagram--ede7fb3ae47ed90690633cd8.md) | 127 | `declaration-track:ede7fb3ae47ed90690633cd8cc73846446d65e86706343096aebc5b17eb8dd97` |
| 13 | `def` | [coconeιApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/cocone-app--6587ee312358174669c71864.md) | 140 | `declaration-track:6587ee312358174669c718641fd8e3a53aac5410cab0a6449420b6b9464dcd3d` |
| 14 | `def` | [cocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/cocone--d15a65bc5cc60aa0aa0722c9.md) | 148 | `declaration-track:d15a65bc5cc60aa0aa0722c9b95060cf3b9625eef31630eadf43509d7127293b` |
| 15 | `def` | [coconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant401f3346da2a13437a5d4a1615ee3b23b45ef1688f4d4c010a24db42a50dee3f.lean/declarations/coconeiscolimit--98c74fb06ca30ca9e265534a.md) | 155 | `declaration-track:98c74fb06ca30ca9e265534a8dd700d6921d940dfcc20e7192c0a1288ab47fc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
