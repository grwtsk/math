# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Path.Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59bfcffeeb631660aacf760d34bdcf9e1f35b7ab",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59bfcffeeb631660aacf760d34bdcf9e1f35b7ab`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/path--74a73a95b413056612bf1a73.md) | 25 | `declaration-track:74a73a95b413056612bf1a73a6d964dc978f3dfa04d684d9a093a03732013029` |
| 2 | `def` | [Hom.toPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/hom-topath--81f1f315a273c6efe00b1f9e.md) | 34 | `declaration-track:81f1f315a273c6efe00b1f9e6d711ee7dde10765a1e6ea521377a188fe9fee6c` |
| 3 | `lemma` | [nil_ne_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/nil-ne-cons--6dbae09bb0ad3e0c6d265e2b.md) | 42 | `result-track:6dbae09bb0ad3e0c6d265e2b7e3f7c26b49bd58808b4e24aa140887078089c4e` |
| 4 | `lemma` | [cons_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/cons-ne-nil--bce34427988892bd4f2fb3d9.md) | 46 | `result-track:bce34427988892bd4f2fb3d92be868949e82c9ad54420d7341b420a9db723ccc` |
| 5 | `lemma` | [obj_eq_of_cons_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/obj-eq-of-cons-eq-cons--88e1e9516f43883728a83580.md) | 50 | `result-track:88e1e9516f43883728a835802471878b9e623d074631815552ed779aa8bf0977` |
| 6 | `lemma` | [heq_of_cons_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/heq-of-cons-eq-cons--8279a80af72e08ccc2e7f811.md) | 54 | `result-track:8279a80af72e08ccc2e7f811ed537458510b843a21a951660186a09901d82b85` |
| 7 | `lemma` | [hom_heq_of_cons_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/hom-heq-of-cons-eq-cons--e238acfc91d2e63697cf3ac9.md) | 58 | `result-track:e238acfc91d2e63697cf3ac9949d3a19fb73ae420e6789340c0bbafcb2fe260c` |
| 8 | `def` | [length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/length--584f6926bda79e96b3952ab0.md) | 63 | `declaration-track:584f6926bda79e96b3952ab03ad8792f739abf3425e30efa94adee098f808bd4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/instance--d34f1b6e01f5e2ab0de11714.md) | 68 | `declaration-track:d34f1b6e01f5e2ab0de1171496454e8b7c2b1f886b3c9be4ee81635b17f26f47` |
| 10 | `theorem` | [length_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/length-nil--8abbf45b0e86591574c7c913.md) | 72 | `result-track:8abbf45b0e86591574c7c9139953666b74817ed5aee0e4b34ff066de958e191e` |
| 11 | `theorem` | [length_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/length-cons--5f88083b6be214443dc0b4be.md) | 77 | `result-track:5f88083b6be214443dc0b4beaa13168aa1ecb4924ce8a1af2648af2a6195bd27` |
| 12 | `theorem` | [eq_of_length_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/eq-of-length-zero--09f65d98043c600a1f06b371.md) | 81 | `result-track:09f65d98043c600a1f06b371c46c8c84ea757d81ec943da42bbb60180c84a59c` |
| 13 | `def` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/comp--213c0fbb7f73ef1d67f92c0a.md) | 88 | `declaration-track:213c0fbb7f73ef1d67f92c0a4eb372b6950d7a4badd6e417c219e7262c6fb4e0` |
| 14 | `theorem` | [comp_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/comp-cons--8f30f5f53edaa26bf2e61eb8.md) | 94 | `result-track:8f30f5f53edaa26bf2e61eb841d054863eb00d5998ccc6d7975593220c66cddf` |
| 15 | `theorem` | [comp_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/comp-nil--7283b615072d0d76c42a6af0.md) | 100 | `result-track:7283b615072d0d76c42a6af0f4f426fea29d967dbc31a49f3796a2d1c0ec8553` |
| 16 | `theorem` | [nil_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/nil-comp--35819e6c36b688bd67e2c407.md) | 105 | `result-track:35819e6c36b688bd67e2c407ea501258300594e659926888fb5a7a31a23b1a2b` |
| 17 | `theorem` | [comp_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/comp-assoc--420edbc614d71d39cf6b8360.md) | 111 | `result-track:420edbc614d71d39cf6b8360a1676030796a45f41c2f289cb13217d90552e909` |
| 18 | `theorem` | [length_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/length-comp--d1c2b67257883271bf955cb1.md) | 118 | `result-track:d1c2b67257883271bf955cb1d2b7f57f1d7da85e143283270b3f64b1a81a1074` |
| 19 | `theorem` | [comp_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/comp-inj--8a113a6a37240d1216bbe5d3.md) | 123 | `result-track:8a113a6a37240d1216bbe5d30f1d01f32a6e76950c5d7d25759ffb5b567eaead` |
| 20 | `theorem` | [comp_inj'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/comp-inj--b5f6eec6a292bbda4f50f8d2.md) | 137 | `result-track:b5f6eec6a292bbda4f50f8d285247ddc9a58f8871a51a962cfeb42a6151b96b5` |
| 21 | `theorem` | [comp_injective_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/comp-injective-left--8d6889cb8e3661264c218f24.md) | 143 | `result-track:8d6889cb8e3661264c218f24be303f3b03f99878aeef7f799d61a6fc2d577a10` |
| 22 | `theorem` | [comp_injective_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/comp-injective-right--861645ab0a898bd1a7284ad0.md) | 147 | `result-track:861645ab0a898bd1a7284ad0da01c3d7b7c7356fa440492c14d770f2d3b4df56` |
| 23 | `theorem` | [comp_inj_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/comp-inj-left--49a6038f17641f77f639598b.md) | 152 | `result-track:49a6038f17641f77f639598b43646572fbf1022cb288bc4d4d9061daa5144632` |
| 24 | `theorem` | [comp_inj_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/comp-inj-right--a38b7df50485c16e4288ea14.md) | 157 | `result-track:a38b7df50485c16e4288ea148be7f147103879149210e47057ac0bff224507c3` |
| 25 | `def` | [toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/tolist--28254411fd052a534d1e4c21.md) | 163 | `declaration-track:28254411fd052a534d1e4c215cf4ffb05f52cfc82643129917934337d4d19a73` |
| 26 | `theorem` | [toList_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/tolist-comp--672ab7759281af268991db70.md) | 171 | `result-track:672ab7759281af268991db709676b43ac92ddd872eb5b15c79119ec63ea6af1f` |
| 27 | `theorem` | [toList_chain_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/tolist-chain-nonempty--1dce32efe4689a273d47db1c.md) | 176 | `result-track:1dce32efe4689a273d47db1c62586e1eabdf266c5c92831c25303db3a975f640` |
| 28 | `theorem` | [toList_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/tolist-injective--d48f1ac2c0bcaddcc5a3963e.md) | 184 | `result-track:d48f1ac2c0bcaddcc5a3963e387d0d3ac1d4336445ee7ab9dd0f43bf14f4cedb` |
| 29 | `theorem` | [toList_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/tolist-inj--2da74ff98f559eafa51c8e0a.md) | 195 | `result-track:2da74ff98f559eafa51c8e0aaadd3b7396299b6609e548c0a8836bafd2f04955` |
| 30 | `def` | [mapPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/mappath--5c870bc01bfc2d5f1c904e0f.md) | 210 | `declaration-track:5c870bc01bfc2d5f1c904e0f633996cd5bc216872444ae40cbf11a61b7cda85c` |
| 31 | `theorem` | [mapPath_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/mappath-nil--0478a96788b70660de218ab6.md) | 216 | `result-track:0478a96788b70660de218ab679c3f86f5f327584b258ce3191663cb7c368101c` |
| 32 | `theorem` | [mapPath_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/mappath-cons--aaeda5b15ea4232baf133d00.md) | 221 | `result-track:aaeda5b15ea4232baf133d001f492ce65cb270ea7d76f7429e252588d94d75e6` |
| 33 | `theorem` | [mapPath_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/mappath-comp--4310bfea6d0f1a0e26e36d4f.md) | 227 | `result-track:4310bfea6d0f1a0e26e36d4f1f629ae5ae0299cc921ced35e3233a451682055b` |
| 34 | `theorem` | [mapPath_toPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantb11c25c049a41bd0d2d69df5644baf902730d38c7b958cdd5767290a757d465f.lean/declarations/mappath-topath--eb3bfffd3d2a95ea66de7a89.md) | 234 | `result-track:eb3bfffd3d2a95ea66de7a895adab7568887c18751d9f5a8f7f709e64c5b7bb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
