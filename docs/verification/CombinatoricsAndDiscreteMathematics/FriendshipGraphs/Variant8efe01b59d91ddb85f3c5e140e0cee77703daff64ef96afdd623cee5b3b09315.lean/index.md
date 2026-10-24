# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FriendshipGraphs.Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e80331205a7d1a5b9ba1ca5d3ddbc77084cae45",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e80331205a7d1a5b9ba1ca5d3ddbc77084cae45`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.AdjMatrix` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.FiniteField` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Friendship](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/friendship--6533fc326504fae2087f00c9.md) | 57 | `declaration-track:6533fc326504fae2087f00c9156ad315a21de4cb7e2e488ed1ad91828c2dddc3` |
| 2 | `def` | [ExistsPolitician](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/existspolitician--6bfde1a73c714f11867a10b8.md) | 62 | `declaration-track:6bfde1a73c714f11867a10b8c718e634266e477c81bb083e7e70c9259bfe364c` |
| 3 | `theorem` | [adjMatrix_sq_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/adjmatrix-sq-of-ne--f4a599f1fe0ac8cbeab851a3.md) | 78 | `result-track:f4a599f1fe0ac8cbeab851a3fc5b2e45566b5fc89e15a40bcc2e0a7004cd2fbb` |
| 4 | `theorem` | [adjMatrix_pow_three_of_not_adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/adjmatrix-pow-three-of-not-adj--e3a03588ce8180e4e737e679.md) | 90 | `result-track:e3a03588ce8180e4e737e679e333ce6a5b9ce544d4188142052423f38fea3647` |
| 5 | `theorem` | [degree_eq_of_not_adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/degree-eq-of-not-adj--5efb6c6d4ef6df31a6f61a02.md) | 109 | `result-track:5efb6c6d4ef6df31a6f61a02deb0d3ff94eb07c63b65b1755a937f817b85916f` |
| 6 | `theorem` | [adjMatrix_sq_of_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/adjmatrix-sq-of-regular--e7b8cfe4c1abb64f32bd2562.md) | 123 | `result-track:e7b8cfe4c1abb64f32bd25627d853d3efa529e54c612c1c2e84343b20f805cc2` |
| 7 | `theorem` | [adjMatrix_sq_mod_p_of_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/adjmatrix-sq-mod-p-of-regular--20f96165180614d34a8fac30.md) | 131 | `result-track:20f96165180614d34a8fac30de12adb2ac3f41263aecd6abc92890ded2d01dc0` |
| 8 | `theorem` | [isRegularOf_not_existsPolitician](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/isregularof-not-existspolitician--ac6ab58feb8d4e6accdc19a4.md) | 145 | `result-track:ac6ab58feb8d4e6accdc19a40180b4a4f40226b5c9440bbce996d094a9bf9a44` |
| 9 | `theorem` | [card_of_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/card-of-regular--42baccd2ffc3c58d3d7fc64e.md) | 180 | `result-track:42baccd2ffc3c58d3d7fc64ee1db2881ca9386a6f7132bd5765eb98b31ade3cf` |
| 10 | `theorem` | [card_mod_p_of_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/card-mod-p-of-regular--1ab9eba780cc4d4dfc70a5c3.md) | 197 | `result-track:1ab9eba780cc4d4dfc70a5c3ce337fd4480593221282c0b274163afc91e749c7` |
| 11 | `theorem` | [adjMatrix_sq_mul_const_one_of_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/adjmatrix-sq-mul-const-one-of-regular--8eb7cdab88e60838181c42b8.md) | 208 | `result-track:8eb7cdab88e60838181c42b80e6d165b619c880427845d1ecc5b73ffcb624813` |
| 12 | `theorem` | [adjMatrix_mul_const_one_mod_p_of_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/adjmatrix-mul-const-one-mod-p-of-regular--cee3b6dd492734b46345d267.md) | 215 | `result-track:cee3b6dd492734b46345d2677fbc6f09e22b10f1a01e9b2f2c5948587aaca05a` |
| 13 | `theorem` | [adjMatrix_pow_mod_p_of_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/adjmatrix-pow-mod-p-of-regular--8cdff6d0df02441ad668aac1.md) | 224 | `result-track:8cdff6d0df02441ad668aac1e6ef3801e8333b8109a38937c46f7c2ad04b4665` |
| 14 | `theorem` | [false_of_three_le_degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/false-of-three-le-degree--88a144f0b231892402acc1e4.md) | 244 | `result-track:88a144f0b231892402acc1e42288d93a61e2354dd33f07d41b49d31c3b6d90ce` |
| 15 | `theorem` | [existsPolitician_of_degree_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/existspolitician-of-degree-le-one--d8584ed3f510e4d792768b86.md) | 275 | `result-track:d8584ed3f510e4d792768b8633d3be7c6c9fbafd9dae65e368f794610fa58388` |
| 16 | `theorem` | [neighborFinset_eq_of_degree_eq_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/neighborfinset-eq-of-degree-eq-two--16eca57ff7cda03a8090b73c.md) | 293 | `result-track:16eca57ff7cda03a8090b73c6cf704d2daacc1940bfa738ac0a68b1716b0da04` |
| 17 | `theorem` | [existsPolitician_of_degree_eq_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/existspolitician-of-degree-eq-two--333d128001d9a768ebfec500.md) | 310 | `result-track:333d128001d9a768ebfec50089dd3ac631197e689769b40f3627e031fbaf1e5a` |
| 18 | `theorem` | [existsPolitician_of_degree_le_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/existspolitician-of-degree-le-two--e8f3ac313054c6317147b37e.md) | 319 | `result-track:e8f3ac313054c6317147b37e737b83b6bf1c1900108b780c7fbe4133d8416717` |
| 19 | `theorem` | [friendship_theorem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/declarations/friendship-theorem--041c6f7b1ba8d4734934c17b.md) | 334 | `result-track:041c6f7b1ba8d4734934c17bab031af547f4309392dbd781c915be8c58b3f0fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
