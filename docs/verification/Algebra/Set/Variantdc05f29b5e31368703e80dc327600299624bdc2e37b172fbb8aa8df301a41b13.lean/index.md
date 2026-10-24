# Verification target: GRWTSK.Algebra.Set.Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "deae75f838515454503dc1aacbd73a4b8564e2cb",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/index.md) · [Full source](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `deae75f838515454503dc1aacbd73a4b8564e2cb`.

Source path: `GRWTSK/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Pointwise.Set.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_set_pi₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/smul-set-pi--c224e624d4f0abdc83a0efa2.md) | 32 | `result-track:c224e624d4f0abdc83a0efa280cb55307f26b227f8f0b01cee65c97aa326d03a` |
| 2 | `lemma` | [smul_set_pi₀'](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/smul-set-pi--91fabf1dbc84e4f9480b6a32.md) | 37 | `result-track:91fabf1dbc84e4f9480b6a324e11194d252a38c9712eefa2efd0307a2924279c` |
| 3 | `def` | [smulZeroClassSet](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/smulzeroclassset--6d7b667fb79369ded7096ff9.md) | 46 | `declaration-track:6d7b667fb79369ded7096ff924d88f3b52db38bf0195d5bd4bfe4ecc780d5fc5` |
| 4 | `lemma` | [smul_zero_subset](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/smul-zero-subset--d050e9898defe6db070b02d8.md) | 51 | `result-track:d050e9898defe6db070b02d82fdc190bf04cf90e6bc045c726bcb6623005bb63` |
| 5 | `lemma` | [Nonempty.smul_zero](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/nonempty-smul-zero--21cae1ed3723bb7ebae55c27.md) | 53 | `result-track:21cae1ed3723bb7ebae55c2708d00b081f02c1fd7a05514b56d8d5c3c3414e1d` |
| 6 | `lemma` | [zero_mem_smul_set](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/zero-mem-smul-set--4fa15718dc7740262eeba119.md) | 56 | `result-track:4fa15718dc7740262eeba119bb2b03db8c8ad5d4f657e4687332b83ca48fc6c2` |
| 7 | `lemma` | [zero_mem_smul_set_iff](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/zero-mem-smul-set-iff--78272f2f36c2192beec20414.md) | 60 | `result-track:78272f2f36c2192beec20414cd2cb1978e2f98f04451e03aca30b9d109b25e30` |
| 8 | `lemma` | [zero_smul_subset](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/zero-smul-subset--aa006e499414eb83f522909d.md) | 75 | `result-track:aa006e499414eb83f522909d47e9e4935885b6a327516a5c72d7213f8948eaa5` |
| 9 | `lemma` | [Nonempty.zero_smul](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/nonempty-zero-smul--918d6d4d2fe2bcb03dc1265f.md) | 77 | `result-track:918d6d4d2fe2bcb03dc1265fcfd72c86e225ce698dd600588c20af1072d8f407` |
| 10 | `lemma` | [zero_smul_set](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/zero-smul-set--58e98f741121ecf6dfd3e299.md) | 81 | `result-track:58e98f741121ecf6dfd3e299af044b41c8327d0726c4451d3660817e7cfad07e` |
| 11 | `lemma` | [zero_smul_set_subset](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/zero-smul-set-subset--00ec39b8454553383f4f2f07.md) | 84 | `result-track:00ec39b8454553383f4f2f075f15170d79883f980ae19100920e8a12939ac5b2` |
| 12 | `lemma` | [subsingleton_zero_smul_set](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/subsingleton-zero-smul-set--8876c3fc542a7c4c3ff74e16.md) | 87 | `result-track:8876c3fc542a7c4c3ff74e168d5f5f39a0773d52cad29aac000837bf1ba3888b` |
| 13 | `lemma` | [zero_mem_smul_iff](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/zero-mem-smul-iff--cdd1956d6ab73ac50dc65050.md) | 92 | `result-track:cdd1956d6ab73ac50dc65050fc581f527d0e40052342e8eb4ed180e2c27b4679` |
| 14 | `def` | [distribSMulSet](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/distribsmulset--6c34314242be5384d367cd06.md) | 107 | `declaration-track:6c34314242be5384d367cd062ac41646643c8159608324144bff76884a000b60` |
| 15 | `def` | [distribMulActionSet](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/distribmulactionset--889ec6dde49e636a04cdabc0.md) | 115 | `declaration-track:889ec6dde49e636a04cdabc0b46a794955a80a42893a56ab38b4d352663f799d` |
| 16 | `def` | [mulDistribMulActionSet](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/muldistribmulactionset--0fd739c896f0401c96593f3a.md) | 121 | `declaration-track:0fd739c896f0401c96593f3a64b5281201405077ab0acc3b6fccf5dd40a992bc` |
| 17 | `instance` | [instNoZeroSMulDivisors](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/instnozerosmuldivisors--bc52a5454612a72d048f5127.md) | 128 | `declaration-track:bc52a5454612a72d048f5127df7506dacb1da1fa4dc2219d83143f73150ab56c` |
| 18 | `instance` | [noZeroSMulDivisors_set](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/nozerosmuldivisors-set--0cace4e3a03a454b26a90f60.md) | 139 | `declaration-track:0cace4e3a03a454b26a90f6093fd85d1e8a34f5ef6b42fb431d2d2bc3bac4c69` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/instance--1cc16f0d35abe94010772cb7.md) | 148 | `declaration-track:1cc16f0d35abe94010772cb7bbb3889398ec3ca2b9d3ae5d5760b65bc0dd2994` |
| 20 | `lemma` | [smul_mem_smul_set_iff₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/smul-mem-smul-set-iff--f508658e6f848bbfe448220d.md) | 155 | `result-track:f508658e6f848bbfe448220d35d94e2a13b98c0866bc783053bc96f5a3a57460` |
| 21 | `lemma` | [mem_smul_set_iff_inv_smul_mem₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/mem-smul-set-iff-inv-smul-mem--25c1d69a3664b37fe840af92.md) | 158 | `result-track:25c1d69a3664b37fe840af920502d44f08e45d342cb2540e1b7e00e497cb00cd` |
| 22 | `lemma` | [mem_inv_smul_set_iff₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/mem-inv-smul-set-iff--205c51dca14a63ad04e0e7d9.md) | 161 | `result-track:205c51dca14a63ad04e0e7d9b6822c8603715154a533993bdadb1fb3c5ff7896` |
| 23 | `lemma` | [preimage_smul₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/preimage-smul--1b7342252573d8432df857ee.md) | 164 | `result-track:1b7342252573d8432df857eeef365f8403df3d101d119ce98490d7ae138e86e1` |
| 24 | `lemma` | [preimage_smul_inv₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/preimage-smul-inv--ab397840eaa83d7edfb73f75.md) | 167 | `result-track:ab397840eaa83d7edfb73f753e35873aa797eaeb902ae17cbc97ec7b8b38e3cb` |
| 25 | `lemma` | [smul_set_subset_smul_set_iff₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/smul-set-subset-smul-set-iff--9d9920c94ac1c26136384a13.md) | 171 | `result-track:9d9920c94ac1c26136384a130de788b6bd860b8f275aee8a943e642b136cb79f` |
| 26 | `lemma` | [smul_set_subset_iff₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/smul-set-subset-iff--1517a19196f2676854c1db08.md) | 177 | `result-track:1517a19196f2676854c1db082751a9736b0dd9c4ff8787364df09b80f6f33b60` |
| 27 | `lemma` | [subset_smul_set_iff₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/subset-smul-set-iff--6db23768b1de604e17f26669.md) | 182 | `result-track:6db23768b1de604e17f26669eae95072e5d242dc1157dfd517e7bb0abb1b52aa` |
| 28 | `lemma` | [smul_set_inter₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/smul-set-inter--bdcaedb9e3259b5d62dad3c9.md) | 187 | `result-track:bdcaedb9e3259b5d62dad3c91be7fda530c1b465d68cb53721308b2675109c0a` |
| 29 | `lemma` | [smul_set_sdiff₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/smul-set-sdiff--c428cdad1249e4615c17f283.md) | 190 | `result-track:c428cdad1249e4615c17f28310c397bb20c4a5f39e2168619659d3da2f26a72c` |
| 30 | `lemma` | [smul_set_symmDiff₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/smul-set-symmdiff--838ea49decdaedc00027d69f.md) | 194 | `result-track:838ea49decdaedc00027d69f91680039f443fba1d34c4a8dd269bbe9e49d4755` |
| 31 | `lemma` | [smul_set_univ₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/smul-set-univ--505ac4ed8dfef418e8442ff6.md) | 197 | `result-track:505ac4ed8dfef418e8442ff630fcb4fc7b381825fa3f0e64fec9d962e3869eb1` |
| 32 | `lemma` | [smul_univ₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/smul-univ--41ea3bc42d6ab7b983335ff6.md) | 200 | `result-track:41ea3bc42d6ab7b983335ff676860eef3a2a3a273050d35ba87063f6fcdebffe` |
| 33 | `lemma` | [smul_univ₀'](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/smul-univ--277ae0abd5696db1c6386ccd.md) | 204 | `result-track:277ae0abd5696db1c6386ccd093223fea36962b0a001e7ba0e14eec117bcde4b` |
| 34 | `lemma` | [inv_smul_set_distrib₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/inv-smul-set-distrib--4447334fcb5f6acd1f9f07ea.md) | 208 | `result-track:4447334fcb5f6acd1f9f07eae77e519eddff7305cdc94ba8d439eee649e559a3` |
| 35 | `lemma` | [inv_op_smul_set_distrib₀](../../../../mathematics/Algebra/Set/Variantdc05f29b5e31368703e80dc327600299624bdc2e37b172fbb8aa8df301a41b13.lean/declarations/inv-op-smul-set-distrib--b71945f8d26b86417e96fdd8.md) | 214 | `result-track:b71945f8d26b86417e96fdd83ed92034dcdc62fca9151e5cff2d55dfd20aac5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
