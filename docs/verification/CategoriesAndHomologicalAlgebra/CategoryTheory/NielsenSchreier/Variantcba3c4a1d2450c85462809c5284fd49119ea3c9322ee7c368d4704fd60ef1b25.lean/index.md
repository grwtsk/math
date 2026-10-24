# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NielsenSchreier.Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3842d8ae8d3809070885de9043d528acfc246bc8",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3842d8ae8d3809070885de9043d528acfc246bc8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Action` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Arborescence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.ConnectedComponent` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.IsFreeGroup` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFreeGroupoid.Generators](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/isfreegroupoid-generators--82b71841672b54b9c115b369.md) | 76 | `declaration-track:82b71841672b54b9c115b3691793073ecdfb132ce5c20a1e296d320a23f4acda` |
| 2 | `class` | [IsFreeGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/isfreegroupoid--8482a50075cec7f0b157d593.md) | 88 | `declaration-track:8482a50075cec7f0b157d593637d25b10c5e047646235d91fe79be72b61c617e` |
| 3 | `theorem` | [ext_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/ext-functor--060decb22f5bc37f1947d35e.md) | 105 | `result-track:060decb22f5bc37f1947d35e381b97683fa9c3255fdb0336f5d76ef676c1cab6` |
| 4 | `instance` | [actionGroupoidIsFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/actiongroupoidisfree--a1e6f9ec2dbd5dfcaa26f591.md) | 118 | `declaration-track:a1e6f9ec2dbd5dfcaa26f5918bd36b1aef437b122bffdba3e188bf08f39c7bf8` |
| 5 | `def` | [root'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/root--8164431607743005cb4a069e.md) | 167 | `declaration-track:8164431607743005cb4a069e99d09e91910cc816f38688424c5b1bad4cacf29e` |
| 6 | `def` | [homOfPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/homofpath--42a7b64ec847f6f1bb8c2255.md) | 175 | `declaration-track:42a7b64ec847f6f1bb8c2255f4e86be79ba82175ebe12c704c98b71c1c1d103d` |
| 7 | `def` | [treeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/treehom--2c5de577578b253c883d9176.md) | 181 | `declaration-track:2c5de577578b253c883d9176b7b5fdfbffdbfadb15a4ad4ead3158fb63ddae2e` |
| 8 | `theorem` | [treeHom_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/treehom-eq--fbf7798feec7c7e0f34a661a.md) | 186 | `result-track:fbf7798feec7c7e0f34a661ab333323ab81be8442c4bce5d7e2ca1e28fddf25f` |
| 9 | `theorem` | [treeHom_root](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/treehom-root--ea73967b448134614e9da85a.md) | 191 | `result-track:ea73967b448134614e9da85aaa6bae2bb0998c26b182bad1d25229e700793cff` |
| 10 | `def` | [loopOfHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/loopofhom--1955b113dc9f05a97328d6fa.md) | 198 | `declaration-track:1955b113dc9f05a97328d6fad3f79146f2ed4f202069601a4d8f1674041204eb` |
| 11 | `theorem` | [loopOfHom_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/loopofhom-eq-id--6a7a21a39cf75fb0ce665217.md) | 203 | `result-track:6a7a21a39cf75fb0ce66521760eaf762e44112df1b43056085d68e69f7b6281c` |
| 12 | `def` | [functorOfMonoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/functorofmonoidhom--9dc63a95198c60b1e38c2c01.md) | 216 | `declaration-track:9dc63a95198c60b1e38c2c01775695286f4712f22f7c9662241eca10c1d19dd1` |
| 13 | `def` | [endIsFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/endisfree--40892a2b515537325a9ba93a.md) | 233 | `declaration-track:40892a2b515537325a9ba93af83cddc56e60ebe0437345a7ee9c39584ef4a1f7` |
| 14 | `def` | [symgen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/symgen--f08340887eb7fdabaedfea35.md) | 276 | `declaration-track:f08340887eb7fdabaedfea35972756a6315fb31ca449b1934d4c1fbd75468d09` |
| 15 | `theorem` | [path_nonempty_of_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/path-nonempty-of-hom--47fcf64541e4d3e398fbba99.md) | 283 | `result-track:47fcf64541e4d3e398fbba99a841ea19b284a9d07487a4fc33d2ba707300cd3a` |
| 16 | `instance` | [generators_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/generators-connected--8b556b5fbcbc5d18437112f9.md) | 300 | `declaration-track:8b556b5fbcbc5d18437112f95c0381d9cf1fd3b7c45554766a11f8d38948a94c` |
| 17 | `instance` | [endIsFreeOfConnectedFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/endisfreeofconnectedfree--a4329db96c87495990bb5d2e.md) | 307 | `declaration-track:a4329db96c87495990bb5d2e764a8571e2473651081814789c367dde9e7e2ec0` |
| 18 | `instance` | [subgroupIsFreeOfIsFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean/declarations/subgroupisfreeofisfree--0e552255a8b0102ccdf85fa3.md) | 315 | `declaration-track:0e552255a8b0102ccdf85fa398f180d2fb588e2b7e952abd8f8619bc86c3007b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
