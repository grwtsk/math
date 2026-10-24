# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NielsenSchreier.Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88ebe60261e07028bee2f29098a56b7d7558e897",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88ebe60261e07028bee2f29098a56b7d7558e897`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Action` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Arborescence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.ConnectedComponent` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeGroup.IsFreeGroup` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFreeGroupoid.Generators](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/isfreegroupoid-generators--10effd864575a67542f51a7d.md) | 71 | `declaration-track:10effd864575a67542f51a7dd0dacef92dc544ac6300a217a94f8851e671cce1` |
| 2 | `class` | [IsFreeGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/isfreegroupoid--8bdd0aec1f1b6d9000ac8c2e.md) | 83 | `declaration-track:8bdd0aec1f1b6d9000ac8c2e911ea172d2848212450c4e25fe9f35f3d09e131d` |
| 3 | `theorem` | [ext_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/ext-functor--924dccf4d73abaff0e91a31e.md) | 99 | `result-track:924dccf4d73abaff0e91a31e885dcc6b8ba685f8f198120c71198289dcc494ff` |
| 4 | `instance` | [actionGroupoidIsFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/actiongroupoidisfree--39069e41c762fca475cf6aaf.md) | 114 | `declaration-track:39069e41c762fca475cf6aafb25c6b48e7403b662ca6da22cbb9c69724f34c5d` |
| 5 | `def` | [root'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/root--91c69c02c857f15e81a0de5e.md) | 161 | `declaration-track:91c69c02c857f15e81a0de5eeef05dc780936eec112833f80599b61ff6e500d5` |
| 6 | `def` | [homOfPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/homofpath--6dfd60637751686470bf363e.md) | 168 | `declaration-track:6dfd60637751686470bf363e6cc89a3cec4ee9caca4695e60dd92252f18bdee1` |
| 7 | `def` | [treeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/treehom--0b3589b83d144335ba1c8fab.md) | 173 | `declaration-track:0b3589b83d144335ba1c8fabd2df7880774dfdf5e386a8c81bd94e259b69d3e9` |
| 8 | `theorem` | [treeHom_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/treehom-eq--d802d5164449382b17c9190d.md) | 177 | `result-track:d802d5164449382b17c9190de0bc090bd532c43ddf4bf0df5af4ed2f679344f1` |
| 9 | `theorem` | [treeHom_root](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/treehom-root--134775bf820d1bf35344cdbc.md) | 181 | `result-track:134775bf820d1bf35344cdbc0ba5deda3113fbccffe2ba90a1991d96f03aa7eb` |
| 10 | `def` | [loopOfHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/loopofhom--8e395ba0db3a1a3225e340a3.md) | 187 | `declaration-track:8e395ba0db3a1a3225e340a393f8d9ceeb560bbc375a6936eed5d7088da85f9c` |
| 11 | `theorem` | [loopOfHom_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/loopofhom-eq-id--efbeb21f22811deb2329e221.md) | 191 | `result-track:efbeb21f22811deb2329e2211297e4e1079e539086446f39ac2729d48bcf1958` |
| 12 | `def` | [functorOfMonoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/functorofmonoidhom--c530b821325011d46027f494.md) | 203 | `declaration-track:c530b821325011d46027f49469009c5ce7be72dfa30484df91aa3a8add3ef5fe` |
| 13 | `lemma` | [endIsFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/endisfree--6fdb5732e50ed3be3f707120.md) | 220 | `result-track:6fdb5732e50ed3be3f707120bd991689367f5886463b3b31c9b73d2ae10c9961` |
| 14 | `def` | [symgen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/symgen--3f5379f4edafab4e30652e7f.md) | 265 | `declaration-track:3f5379f4edafab4e30652e7fb4cf55bfb700e4b2cbf4733a8d9a4385d6de33b0` |
| 15 | `theorem` | [path_nonempty_of_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/path-nonempty-of-hom--2341441c839e8e2f73036497.md) | 271 | `result-track:2341441c839e8e2f73036497ad4fe4aec3ed2d664ccf7841800d06e202c8903c` |
| 16 | `instance` | [generators_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/generators-connected--e9fe67ba7887ba606be3eb05.md) | 287 | `declaration-track:e9fe67ba7887ba606be3eb05b5e3dec6263e75a29dbf3e158d93a72026e70b60` |
| 17 | `instance` | [endIsFreeOfConnectedFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/endisfreeofconnectedfree--378e45dff590bb71991d284a.md) | 293 | `declaration-track:378e45dff590bb71991d284ae788de6f401d74e4e90bdff2ebdc7024d9711d33` |
| 18 | `instance` | [subgroupIsFreeOfIsFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/declarations/subgroupisfreeofisfree--3d60019088e6de331ff883d0.md) | 301 | `declaration-track:3d60019088e6de331ff883d011183d07e7f4aadf91eea4f5d724d76f8b0fd903` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
