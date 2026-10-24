# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompatibleSheafification.Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9eede80c50ffcba88665dad77ba1b7c4cd5f828",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9eede80c50ffcba88665dad77ba1b7c4cd5f828`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.CompatiblePlus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.ConcreteSheafification` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sheafifyCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean/declarations/sheafifycompiso--2688ccb8ba728f1edbc798d1.md) | 47 | `declaration-track:2688ccb8ba728f1edbc798d1d1da571544a2774268e0dd1dde9fe7f622bd20b9` |
| 2 | `def` | [sheafificationWhiskerLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean/declarations/sheafificationwhiskerleftiso--588e6bbfd8f10716349b1c51.md) | 52 | `declaration-track:588e6bbfd8f10716349b1c51d79bf81056822b80ab8ea4790c1cfa62af58d791` |
| 3 | `theorem` | [sheafificationWhiskerLeftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean/declarations/sheafificationwhiskerleftiso-hom-app--5f9540ba1a2672f185537e3e.md) | 63 | `result-track:5f9540ba1a2672f185537e3e2a9481fdc383a25e5ead1127b27b7fc69f12aa8a` |
| 4 | `theorem` | [sheafificationWhiskerLeftIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean/declarations/sheafificationwhiskerleftiso-inv-app--c2362963556821d6f8cea4a7.md) | 72 | `result-track:c2362963556821d6f8cea4a72fa7c79bc95b98ef02e98d91600009337536fdf6` |
| 5 | `def` | [sheafificationWhiskerRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean/declarations/sheafificationwhiskerrightiso--c8cf6dab865618e205961f7e.md) | 82 | `declaration-track:c8cf6dab865618e205961f7e23f4732e62cbfca2e99a8bf322d7b7ed4370d417` |
| 6 | `theorem` | [sheafificationWhiskerRightIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean/declarations/sheafificationwhiskerrightiso-hom-app--a3d5684920c3b19801e843fd.md) | 92 | `result-track:a3d5684920c3b19801e843fd47de918df121a34a38628d346124aca73164ea9d` |
| 7 | `theorem` | [sheafificationWhiskerRightIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean/declarations/sheafificationwhiskerrightiso-inv-app--037a693e4234991eca151468.md) | 99 | `result-track:037a693e4234991eca151468763ccfd27b0ea15aaa705fd5bb5245512d74f666` |
| 8 | `theorem` | [whiskerRight_toSheafify_sheafifyCompIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean/declarations/whiskerright-tosheafify-sheafifycompiso-hom--67495d3ee0d74c85f8f899d5.md) | 106 | `result-track:67495d3ee0d74c85f8f899d59cebf389a57306d7c5e3d17390f9f4592874b338` |
| 9 | `theorem` | [toSheafify_comp_sheafifyCompIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean/declarations/tosheafify-comp-sheafifycompiso-inv--addd1b6a9fb3c0cb2e97b2d4.md) | 116 | `result-track:addd1b6a9fb3c0cb2e97b2d486704c2d8e591498cc478c2bc753b20b86add52e` |
| 10 | `theorem` | [sheafifyCompIso_inv_eq_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant19635f1d4ea0f57b39e9bf07fbe3cab4a736624048f0a8e1eb70a16eb1b0b1b4.lean/declarations/sheafifycompiso-inv-eq-sheafifylift--3de128594574acb944a35404.md) | 128 | `result-track:3de128594574acb944a354045a1ce7ed3283e6cd73b5f73247524ca366f2be43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
