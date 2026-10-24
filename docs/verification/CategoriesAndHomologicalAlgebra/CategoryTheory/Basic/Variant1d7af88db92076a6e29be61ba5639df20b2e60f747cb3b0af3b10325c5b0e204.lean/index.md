# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cf07cffde5f74544b468b85f58e2800fa1df28c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cf07cffde5f74544b468b85f58e2800fa1df28c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/sum--d1494ffc732e4334f47297d1.md) | 48 | `declaration-track:d1494ffc732e4334f47297d11e850c6702ba4a455d4c27c1d74b6aa564719a8d` |
| 2 | `theorem` | [sum_comp_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/sum-comp-inl--f3200798ba30d71ecc26490e.md) | 71 | `result-track:f3200798ba30d71ecc26490ed55ee82b1ba372d8ce59a75ebb5a3667db4af208` |
| 3 | `theorem` | [sum_comp_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/sum-comp-inr--631bad2c49495d1aeb02c8fc.md) | 79 | `result-track:631bad2c49495d1aeb02c8fcfcd72ea63c632d08dd4108875feea82252680d86` |
| 4 | `def` | [inl_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/inl--4e5356c6dca57a607baa42d8.md) | 94 | `declaration-track:4e5356c6dca57a607baa42d8f97bf5194a2e8da9e0d144111ed2a8278d46b688` |
| 5 | `def` | [inr_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/inr--2bf143afa01e637609b79287.md) | 101 | `declaration-track:2bf143afa01e637609b79287a61739452a190c2a9d86fa1ef8e552b3541a6dc7` |
| 6 | `def` | [swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/swap--8957c24c9502023f0a4fe329.md) | 110 | `declaration-track:8957c24c9502023f0a4fe329f4ff7768cbe684491b7deb593fd73df93a1531ed` |
| 7 | `theorem` | [swap_obj_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/swap-obj-inl--98ab9744a70b189f6ec8d655.md) | 126 | `result-track:98ab9744a70b189f6ec8d6557c5f71a07004fa80f02c33e5b4704b739ef2a4e2` |
| 8 | `theorem` | [swap_obj_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/swap-obj-inr--6e9e70077c0fd562f66be74a.md) | 131 | `result-track:6e9e70077c0fd562f66be74a401f34ac04a774df687744de8dae1e67993a4bba` |
| 9 | `theorem` | [swap_map_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/swap-map-inl--66a8ed48591aec31100b8e8b.md) | 136 | `result-track:66a8ed48591aec31100b8e8b9f2133f16dc8371fd598024b2dd64f600cb64225` |
| 10 | `theorem` | [swap_map_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/swap-map-inr--c4fc90486675245ced359883.md) | 141 | `result-track:c4fc90486675245ced359883bed12f675b297a1df530e327a16d012e72f68af5` |
| 11 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/equivalence--cf607e93b23b6c5e860d2810.md) | 150 | `declaration-track:cf607e93b23b6c5e860d2810d669bea08a1d8e54e9f3f46746a12485a8984750` |
| 12 | `instance` | [isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/isequivalence--ea4a560ffc899e84e83a1272.md) | 158 | `declaration-track:ea4a560ffc899e84e83a12727a73c4320d21a2b5681eb1adbc0b8e91ff03cc2a` |
| 13 | `def` | [symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/symmetry--239ed4792ec97512d657ea7c.md) | 163 | `declaration-track:239ed4792ec97512d657ea7c1aed6666ce2ffa01cb4278acb48ac1a9c8de90b3` |
| 14 | `def` | [sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/sum--4909bae2f7f84910031e77f1.md) | 177 | `declaration-track:4909bae2f7f84910031e77f1b953583cbff8e42716c9953083d6e9556525fde9` |
| 15 | `theorem` | [sum_obj_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/sum-obj-inl--451ba698980abf1f70a75bf0.md) | 201 | `result-track:451ba698980abf1f70a75bf070830c8d85bd64039b95a58ea5c55c735ca8ed4e` |
| 16 | `theorem` | [sum_obj_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/sum-obj-inr--780421bd71b0943348d388e6.md) | 206 | `result-track:780421bd71b0943348d388e6b8799cbdd1aa3c6c939c60e2e0eca3ef425d429b` |
| 17 | `theorem` | [sum_map_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/sum-map-inl--29852b78fed222cc9dfb497f.md) | 211 | `result-track:29852b78fed222cc9dfb497f88341c0ac7f195248ac3e45fa9834decb767e16f` |
| 18 | `theorem` | [sum_map_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/sum-map-inr--23393d1e0de30e4b2243bfd5.md) | 217 | `result-track:23393d1e0de30e4b2243bfd5a109ceaaf18983bc5212683306198aedbca2cde6` |
| 19 | `def` | [sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/sum--459ccf322df3b8234bf358a7.md) | 227 | `declaration-track:459ccf322df3b8234bf358a7130e1daf144173340dbc0e2e37f7979c26e62523` |
| 20 | `theorem` | [sum_app_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/sum-app-inl--02a1c41ede3804e6aee0df31.md) | 240 | `result-track:02a1c41ede3804e6aee0df31eb12a79951e40d182c5ffa7bdd4c1e9f68f9dfa6` |
| 21 | `theorem` | [sum_app_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d7af88db92076a6e29be61ba5639df20b2e60f747cb3b0af3b10325c5b0e204.lean/declarations/sum-app-inr--77d96c6156546762250efd28.md) | 246 | `result-track:77d96c6156546762250efd280a00ff37f4de09e3249b820238c1a1409d595089` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
