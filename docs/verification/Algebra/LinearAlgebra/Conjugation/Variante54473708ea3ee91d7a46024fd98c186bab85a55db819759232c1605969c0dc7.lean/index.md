# Verification target: GRWTSK.Algebra.LinearAlgebra.Conjugation.Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "662d9cf6712dc90dfe7ef2e6a6ba4c8e9755defc",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `662d9cf6712dc90dfe7ef2e6a6ba4c8e9755defc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Grading` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposites` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/involute--261eee68b07e0dfed097ace3.md) | 55 | `declaration-track:261eee68b07e0dfed097ace3fed567522ff210cbfa73138e6d21e373844bb0fc` |
| 2 | `theorem` | [involute_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/involute--4c1e6bb0ecb419dd1ee34d88.md) | 60 | `result-track:4c1e6bb0ecb419dd1ee34d88d4c1fa9c9bfe914b690c67007f256322146e1c2c` |
| 3 | `theorem` | [involute_comp_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/involute-comp-involute--4687d151cb966d1e64617600.md) | 65 | `result-track:4687d151cb966d1e64617600a9d66b749607a32e3af892265e051955b996fd9c` |
| 4 | `theorem` | [involute_involutive](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/involute-involutive--2499c2622d14404137b7be2f.md) | 69 | `result-track:2499c2622d14404137b7be2f3c8c770a177e3fedd9803ae55be68181f40bb8eb` |
| 5 | `theorem` | [involute_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/involute-involute--e3b6551693a9df7b98250e20.md) | 74 | `result-track:e3b6551693a9df7b98250e2015d3173ff66f8dcea191b07186823d5eb3e88883` |
| 6 | `def` | [involuteEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/involuteequiv--d91ba93b1d92db4819fb4a5b.md) | 80 | `declaration-track:d91ba93b1d92db4819fb4a5bb2cbe1021a7c20f87ee650cefe96523072288133` |
| 7 | `def` | [reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/reverse--5f2c1b3b138ff8c7bb8d3ea9.md) | 93 | `declaration-track:5f2c1b3b138ff8c7bb8d3ea9c2c8c45c427df975307ce4b863a600e554b69e9c` |
| 8 | `theorem` | [reverse_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/reverse--5e3373edc4b765f950e8ff0a.md) | 101 | `result-track:5e3373edc4b765f950e8ff0a09b34f327c8d9a38bef49f70e80bac3261883c6a` |
| 9 | `theorem` | [reverse.commutes](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/reverse-commutes--04e1ff749533e30c4f06f01a.md) | 105 | `result-track:04e1ff749533e30c4f06f01a5047cf61633534a990d1143a911b4c5fb632cd09` |
| 10 | `theorem` | [reverse.map_one](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/reverse-map-one--92d1e37091bc0b3d042a27a7.md) | 110 | `result-track:92d1e37091bc0b3d042a27a724a6db1a2e2d90feaa9bad11862b797a88576279` |
| 11 | `theorem` | [reverse.map_mul](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/reverse-map-mul--e81258786a92ecb343a155ef.md) | 115 | `result-track:e81258786a92ecb343a155efda7db961f25c10dd934665e4540823a692bd70d4` |
| 12 | `theorem` | [reverse_comp_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/reverse-comp-reverse--60eea4ea9ce5a198a74ad039.md) | 122 | `result-track:60eea4ea9ce5a198a74ad03911c4c0d9c26877ce8bd0b762fae44c2e9df32554` |
| 13 | `theorem` | [reverse_involutive](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/reverse-involutive--6619a23004ed337d16f0e852.md) | 135 | `result-track:6619a23004ed337d16f0e852e68166e37d9640ce6a654158f50dfa8a953e2388` |
| 14 | `theorem` | [reverse_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/reverse-reverse--dead36e0120755abd55acf41.md) | 140 | `result-track:dead36e0120755abd55acf41f5f0210e3dbb735565cda0ff5cef2c48fdf5df48` |
| 15 | `def` | [reverseEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/reverseequiv--3a5575c2a2537b1a4df4b623.md) | 146 | `declaration-track:3a5575c2a2537b1a4df4b6230293e5af0998d591ded4dfa39d3f592df7e6ba1e` |
| 16 | `theorem` | [reverse_comp_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/reverse-comp-involute--c655ee12786b37e9c46fa63c.md) | 150 | `result-track:c655ee12786b37e9c46fa63cf54bcc6a620d0a75ccd70604454f916d5f4c882e` |
| 17 | `theorem` | [reverse_involute_commute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/reverse-involute-commute--240401d7bfb307986898d8b8.md) | 164 | `result-track:240401d7bfb307986898d8b89672389087a2597591777a0884a746544ea88e81` |
| 18 | `theorem` | [reverse_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/reverse-involute--1977dafddd7f80abfd7d30b2.md) | 168 | `result-track:1977dafddd7f80abfd7d30b26a54d90e625efda2858a7f57d63587abb77f3a1d` |
| 19 | `theorem` | [reverse_prod_map_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/reverse-prod-map--c16069f53e7d9990c75da7ea.md) | 184 | `result-track:c16069f53e7d9990c75da7ea5e62c55e09b1ab7646291135a3c2fb21cfd2b712` |
| 20 | `theorem` | [involute_prod_map_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/involute-prod-map--051570930d7435ad7ba97c19.md) | 193 | `result-track:051570930d7435ad7ba97c19e09c29977d88a7a7e31262726dadccec11510ff9` |
| 21 | `theorem` | [submodule_map_involute_eq_comap](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/submodule-map-involute-eq-comap--fc92faf099f52e6ac8a2fd05.md) | 212 | `result-track:fc92faf099f52e6ac8a2fd058eebb169e377c0ddbf5d1d33cc73fbbe8de7fc67` |
| 22 | `theorem` | [ι_range_map_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/range-map-involute--f26ce881f365b7170b424ad1.md) | 219 | `result-track:f26ce881f365b7170b424ad1fa46365bd636df20c5e31e18834ac2c37fd29f57` |
| 23 | `theorem` | [ι_range_comap_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/range-comap-involute--8bd94239809f07f8e114829e.md) | 226 | `result-track:8bd94239809f07f8e114829ee46541bd65b54711608ece0ff000584ad263e1f0` |
| 24 | `theorem` | [evenOdd_map_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/evenodd-map-involute--9b3f7266c2a4fc2aa5f301c3.md) | 233 | `result-track:9b3f7266c2a4fc2aa5f301c3723f00feda7618fba5e650bf272826e18b782242` |
| 25 | `theorem` | [evenOdd_comap_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/evenodd-comap-involute--eabbd46986d1369ba33719d6.md) | 240 | `result-track:eabbd46986d1369ba33719d64b352d0385985e1dd1c6aeab3bff924677d17661` |
| 26 | `theorem` | [submodule_map_reverse_eq_comap](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/submodule-map-reverse-eq-comap--11e6b4d1d54d955f011791ca.md) | 250 | `result-track:11e6b4d1d54d955f011791ca627c8bb314eba7223ee9f7b0cb19efb112d08cf0` |
| 27 | `theorem` | [ι_range_map_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/range-map-reverse--70696d91ac0fe5d947fd94c5.md) | 257 | `result-track:70696d91ac0fe5d947fd94c54c29e746bfab277741af51a53837074a7d00870a` |
| 28 | `theorem` | [ι_range_comap_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/range-comap-reverse--9b6c1fe6c5235b3bc68e4916.md) | 265 | `result-track:9b6c1fe6c5235b3bc68e491652f8a0d2717166b9469a08dcd2a6ca07a8c616b1` |
| 29 | `theorem` | [submodule_map_mul_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/submodule-map-mul-reverse--bbf160eada31564bf0e3cb0b.md) | 272 | `result-track:bbf160eada31564bf0e3cb0bab0f0469689c4c2c5384cbc4f07d4f04352f2f6f` |
| 30 | `theorem` | [submodule_comap_mul_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/submodule-comap-mul-reverse--94bf1656d9cad7dbc6e64ecf.md) | 279 | `result-track:94bf1656d9cad7dbc6e64ecf2df33e3de60af7829dcfb71692b3f09be1646089` |
| 31 | `theorem` | [submodule_map_pow_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/submodule-map-pow-reverse--e76af07a65d0f7a04f075856.md) | 287 | `result-track:e76af07a65d0f7a04f07585676227407f46d2144c4f2d5c9786d66040d1ee7da` |
| 32 | `theorem` | [submodule_comap_pow_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/submodule-comap-pow-reverse--bc8305b2b12299eddd5aab81.md) | 293 | `result-track:bc8305b2b12299eddd5aab814ad0a9159a5d7599fa9034f3a5252c202cd117b4` |
| 33 | `theorem` | [evenOdd_map_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/evenodd-map-reverse--0c8e4e0f54d650fd8d3c1142.md) | 300 | `result-track:0c8e4e0f54d650fd8d3c11420f4783fbdef851c5b1c6c0f72bc64d103d7239cd` |
| 34 | `theorem` | [evenOdd_comap_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/evenodd-comap-reverse--862ea96392d4b6d9d2321647.md) | 306 | `result-track:862ea96392d4b6d9d232164784b9a57630055b5f869189f60b42d871a6caf2ef` |
| 35 | `theorem` | [involute_mem_evenOdd_iff](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/involute-mem-evenodd-iff--153888f79e8f880c580a8cfb.md) | 314 | `result-track:153888f79e8f880c580a8cfb5c6236e332485d82e9f40b865d51d7dc722737c7` |
| 36 | `theorem` | [reverse_mem_evenOdd_iff](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/reverse-mem-evenodd-iff--74c2d3b704dc382a7141642f.md) | 320 | `result-track:74c2d3b704dc382a7141642f7c4fbe2aeb6b1de6b43d3d17d700db60129f1e62` |
| 37 | `theorem` | [involute_eq_of_mem_even](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/involute-eq-of-mem-even--cd8eaa108e741ab5af1b699c.md) | 335 | `result-track:cd8eaa108e741ab5af1b699c44b9087c07a2fdfd0609cbdf9a458d2c9f9156c9` |
| 38 | `theorem` | [involute_eq_of_mem_odd](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/declarations/involute-eq-of-mem-odd--94d8a7989d4abc127361025f.md) | 343 | `result-track:94d8a7989d4abc127361025f52f8171941f9edc21706d952d184941b5abd8fbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
