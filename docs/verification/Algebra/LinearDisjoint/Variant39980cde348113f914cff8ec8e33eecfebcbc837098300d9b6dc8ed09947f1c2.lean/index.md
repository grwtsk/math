# Verification target: GRWTSK.Algebra.LinearDisjoint.Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "920e0027760d6d79581119139254f9c6a08848d2",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `920e0027760d6d79581119139254f9c6a08848d2`.

Source path: `GRWTSK/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.RankAndCardinality` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LinearDisjoint` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LinearDisjoint](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/lineardisjoint--484b2a65caf8699e4791191a.md) | 153 | `declaration-track:484b2a65caf8699e4791191ae720cac89b9ee61a1d2f6343dcb14835657d153e` |
| 2 | `theorem` | [linearDisjoint_iff](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/lineardisjoint-iff--dadc469aa62f5bd3d18adeaf.md) | 156 | `result-track:dadc469aa62f5bd3d18adeaf925cf9ad22d5edb5a39ee93b39f4ef8dad9479b0` |
| 3 | `theorem` | [linearDisjoint_iff'](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/lineardisjoint-iff--56d364da75f330fa5b6b35e8.md) | 164 | `result-track:56d364da75f330fa5b6b35e8461a29a168c25a3f82d08d2706d1628a3c73672d` |
| 4 | `theorem` | [LinearDisjoint.symm](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/lineardisjoint-symm--6a933191cdaf0b362fc06aed.md) | 171 | `result-track:6a933191cdaf0b362fc06aed9d545fffc06cfb49321bdd6df874aa047832dd69` |
| 5 | `theorem` | [linearDisjoint_comm](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/lineardisjoint-comm--2f6f05e8e55f8055a6d19443.md) | 175 | `result-track:2f6f05e8e55f8055a6d19443ea40b20a299ddf06272335ec8bd047ad6c68b1a3` |
| 6 | `theorem` | [LinearDisjoint.symm'](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/lineardisjoint-symm--7274fc1cbee6ac93389a5f61.md) | 183 | `result-track:7274fc1cbee6ac93389a5f613aa724a08529f039111caab477cd85375401bfca` |
| 7 | `theorem` | [linearDisjoint_comm'](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/lineardisjoint-comm--c2269b15a320d42be14f2221.md) | 188 | `result-track:c2269b15a320d42be14f2221d4a1f06b1fcd41f53dea1e4bae323722bcb49e0f` |
| 8 | `theorem` | [map](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/map--c6066c612eff2832b010d64b.md) | 198 | `result-track:c6066c612eff2832b010d64bc46e9c853ad9739fba2d75c392a1803d6c156959` |
| 9 | `theorem` | [map'](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/map--5cc8f901aaf5a44b0aaefc41.md) | 204 | `result-track:5cc8f901aaf5a44b0aaefc41e4d40e8cdf00438abf4ce9422f215a733e5029cb` |
| 10 | `theorem` | [map''](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/map--cc5131ed7a7dff2817eae44f.md) | 214 | `result-track:cc5131ed7a7dff2817eae44ff9b1dc2e30a826e7c40b7ed644e7ed3cb15d1b2e` |
| 11 | `theorem` | [self_right](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/self-right--52a71f47964ac3d88d123e3a.md) | 227 | `result-track:52a71f47964ac3d88d123e3a09bb02738b37a7321909134f7bc8bf79a1661a7f` |
| 12 | `theorem` | [bot_right](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/bot-right--f6de43338f380b7405dee30e.md) | 230 | `result-track:f6de43338f380b7405dee30ee73b0faf584bc9830d72407aeb51216965b5dda9` |
| 13 | `theorem` | [bot_left](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/bot-left--64dca5f9413b09ce1a3cea30.md) | 234 | `result-track:64dca5f9413b09ce1a3cea304a4ed00d97be7d7a58b8b796ad61a6e775295f6f` |
| 14 | `theorem` | [linearIndependent_left](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/linearindependent-left--bb864800a4cfc6311d727dc9.md) | 239 | `result-track:bb864800a4cfc6311d727dc9af1e38c7809902d184833e26f8fe84fb78b03f25` |
| 15 | `theorem` | [of_basis_left](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/of-basis-left--c356f745c1b35b0ab5a784cb.md) | 247 | `result-track:c356f745c1b35b0ab5a784cba51c9ed6cdadd76d850bb518e3a9a553950d12ff` |
| 16 | `theorem` | [linearIndependent_right](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/linearindependent-right--5b627de1bd68b3e1ef1111a9.md) | 255 | `result-track:5b627de1bd68b3e1ef1111a902809cc6da0f207795de759a4415c962b75c5cbb` |
| 17 | `theorem` | [of_basis_right](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/of-basis-right--d21aec6cf42a6b5479caa0f8.md) | 261 | `result-track:d21aec6cf42a6b5479caa0f81f09cbd62eccfd2cf0ecdcf85b4840c54cdee6f1` |
| 18 | `theorem` | [linearIndependent_right'](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/linearindependent-right--c293992bbd39e74b32e4f1f5.md) | 267 | `result-track:c293992bbd39e74b32e4f1f518947b3204ca301a93cc30b4819560b97c7f4cb4` |
| 19 | `theorem` | [of_basis_right'](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/of-basis-right--64735c78506d02eb5d16b708.md) | 274 | `result-track:64735c78506d02eb5d16b7085df0aa9258fc482ae9644eaad00a99388435d5a4` |
| 20 | `theorem` | [linearIndependent_mul](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/linearindependent-mul--d4630085622eddf1ab65f318.md) | 282 | `result-track:d4630085622eddf1ab65f3187fe1da7c37d86462b85925214bf17a056f0b604d` |
| 21 | `theorem` | [linearIndependent_mul'](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/linearindependent-mul--921544bc5cd4cd1102294b2a.md) | 290 | `result-track:921544bc5cd4cd1102294b2a7f77e36d5142da26196855ab8184e59481fef63d` |
| 22 | `theorem` | [of_basis_mul](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/of-basis-mul--19bc74c7e54ad0312f6e30e7.md) | 298 | `result-track:19bc74c7e54ad0312f6e30e720690e32098941ade216b90e44f3ace28b5c41b5` |
| 23 | `theorem` | [of_basis_mul'](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/of-basis-mul--fe9d4ec78cf56bdb54e6bfac.md) | 304 | `result-track:fe9d4ec78cf56bdb54e6bfac6b0d3a051fc3b7ae927e762e12e20166d911bea2` |
| 24 | `theorem` | [of_le_left](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/of-le-left--a3d366d06008eaa30c2743bc.md) | 310 | `result-track:a3d366d06008eaa30c2743bcc91f860cf05d91a6462fc92f519f9928b6feb384` |
| 25 | `theorem` | [of_le_right](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/of-le-right--c57462d0e04fcb86abceb0df.md) | 314 | `result-track:c57462d0e04fcb86abceb0dfcd50535b5e92b3062dff9d9bef2e4887335d6ea0` |
| 26 | `theorem` | [of_le_right'](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/of-le-right--61359e5f301300efd2a7f9cd.md) | 319 | `result-track:61359e5f301300efd2a7f9cdb3df679989cbee930143201fa3b9cf2360fb6eef` |
| 27 | `theorem` | [of_le](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/of-le--db4f7d12346f840f9fe758df.md) | 328 | `result-track:db4f7d12346f840f9fe758dfabffaab26fe07e5ca2d8188dca638f408ad5e709` |
| 28 | `theorem` | [of_le'](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/of-le--3fbf26214d55b338739c7bf8.md) | 333 | `result-track:3fbf26214d55b338739c7bf89ac75fb54bd9d58b35d3edf220b50c9caaf3ba8f` |
| 29 | `theorem` | [inf_eq_bot](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/inf-eq-bot--6cffb7fe379df68389998729.md) | 340 | `result-track:6cffb7fe379df68389998729941c2995c5356b09a4b0d4a520352a4b4be6f637` |
| 30 | `theorem` | [eq_bot_of_self](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/eq-bot-of-self--57579d556fe209a25cedc7e2.md) | 344 | `result-track:57579d556fe209a25cedc7e2ec515c26c3c8458fdb0b47f401301671a8027b49` |
| 31 | `theorem` | [rank_sup](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/rank-sup--8111eea23dc2be440050673d.md) | 349 | `result-track:8111eea23dc2be440050673d88cb58404b1f048b58ff4ebabdd43ca0d37e7bd3` |
| 32 | `theorem` | [finrank_sup](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/finrank-sup--9c0dd0c1b5d7685fe676b049.md) | 358 | `result-track:9c0dd0c1b5d7685fe676b0491d813600db740505edbee3584157a48a0a2c4744` |
| 33 | `theorem` | [of_finrank_sup](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/of-finrank-sup--483bf6116d683ad3b489a61a.md) | 364 | `result-track:483bf6116d683ad3b489a61aa21b1949a6bfa7547c1b36ae8997210bc355b4db` |
| 34 | `theorem` | [adjoin_rank_eq_rank_left_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/adjoin-rank-eq-rank-left-of-isalgebraic--91fb9f5d6d835092f8186078.md) | 370 | `result-track:91fb9f5d6d835092f8186078d02727b668afd2869245993a1173d474abd32f13` |
| 35 | `theorem` | [adjoin_rank_eq_rank_left_of_isAlgebraic_left](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/adjoin-rank-eq-rank-left-of-isalgebraic-left--8c56fe1de01c9e66ac80f0aa.md) | 390 | `result-track:8c56fe1de01c9e66ac80f0aa6681e0c64549320074dcfd1fb1f026b2a25718c3` |
| 36 | `theorem` | [adjoin_rank_eq_rank_left_of_isAlgebraic_right](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/adjoin-rank-eq-rank-left-of-isalgebraic-right--5f59990006f949baf73cfd63.md) | 394 | `result-track:5f59990006f949baf73cfd63eef7cae1d6dd97bad9d4764a3ae3c7192ac4ecdd` |
| 37 | `theorem` | [lift_adjoin_rank_eq_lift_rank_right_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/lift-adjoin-rank-eq-lift-rank-right-of-isalgebraic--c495843cc25141ebbdb99aae.md) | 401 | `result-track:c495843cc25141ebbdb99aaedca6e180104abdd5b258da236ae2d11beb6e9645` |
| 38 | `theorem` | [lift_adjoin_rank_eq_lift_rank_right_of_isAlgebraic_left](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/lift-adjoin-rank-eq-lift-rank-right-of-isalgebraic-left--a59be80e761f0b09f2ef5c76.md) | 422 | `result-track:a59be80e761f0b09f2ef5c76e97da0effd536e15544664f2f9a246bcaa54f17a` |
| 39 | `theorem` | [lift_adjoin_rank_eq_lift_rank_right_of_isAlgebraic_right](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/lift-adjoin-rank-eq-lift-rank-right-of-isalgebraic-right--2afdb2be1a1d9282a1dce971.md) | 429 | `result-track:2afdb2be1a1d9282a1dce97110fab7b18a7dd41270bb265e2ad71e647b4af21d` |
| 40 | `theorem` | [lift_rank_right_mul_lift_adjoin_rank_eq_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/lift-rank-right-mul-lift-adjoin-rank-eq-of-isalgebraic--690c5576648c3902be380427.md) | 439 | `result-track:690c5576648c3902be3804275290444b0bfad396fc1c48f7010e13ac2ae6bc52` |
| 41 | `theorem` | [lift_rank_right_mul_lift_adjoin_rank_eq_of_isAlgebraic_left](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/lift-rank-right-mul-lift-adjoin-rank-eq-of-isalgebraic-left--9f8fd0e98ab13a3c732ecab7.md) | 448 | `result-track:9f8fd0e98ab13a3c732ecab778b455cee467346c273101ab1185f90ed2f7f7b3` |
| 42 | `theorem` | [lift_rank_right_mul_lift_adjoin_rank_eq_of_isAlgebraic_right](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/lift-rank-right-mul-lift-adjoin-rank-eq-of-isalgebraic-right--00c7a8892fc15b8d1570747e.md) | 454 | `result-track:00c7a8892fc15b8d1570747eee8163f8ce6c62ff1d0b5db9cb02313b3d758f9f` |
| 43 | `theorem` | [adjoin_rank_eq_rank_right_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/adjoin-rank-eq-rank-right-of-isalgebraic--7ce84fe5892117a235f5a014.md) | 466 | `result-track:7ce84fe5892117a235f5a01482f804ae682ce513ff5bb819d9f325b438b9506e` |
| 44 | `theorem` | [adjoin_rank_eq_rank_right_of_isAlgebraic_left](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/adjoin-rank-eq-rank-right-of-isalgebraic-left--94202adc893900b7d31381dc.md) | 472 | `result-track:94202adc893900b7d31381dc1ff353d50276d3d6d766e5b3c68485e37a60a7c3` |
| 45 | `theorem` | [adjoin_rank_eq_rank_right_of_isAlgebraic_right](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/adjoin-rank-eq-rank-right-of-isalgebraic-right--eb70b2e97edac2e9699006d0.md) | 478 | `result-track:eb70b2e97edac2e9699006d05a74431c0665591966e98bbba8152512a473957c` |
| 46 | `theorem` | [rank_right_mul_adjoin_rank_eq_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/rank-right-mul-adjoin-rank-eq-of-isalgebraic--acccef72b46c2a693db589fa.md) | 486 | `result-track:acccef72b46c2a693db589faa50e830091917f1d604add7e411b9993f5bddd82` |
| 47 | `theorem` | [rank_right_mul_adjoin_rank_eq_of_isAlgebraic_left](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/rank-right-mul-adjoin-rank-eq-of-isalgebraic-left--26d9ff3440c8b5a7dd7f537a.md) | 491 | `result-track:26d9ff3440c8b5a7dd7f537af067b0932cda76ac9517acab21aea497317fc263` |
| 48 | `theorem` | [rank_right_mul_adjoin_rank_eq_of_isAlgebraic_right](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/rank-right-mul-adjoin-rank-eq-of-isalgebraic-right--0b68ef7d2228f4ff49896090.md) | 496 | `result-track:0b68ef7d2228f4ff49896090c1a385631d0a065b7e6bb006dbda70e0cd1d6633` |
| 49 | `theorem` | [of_finrank_coprime](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/of-finrank-coprime--da357a72739835cdad571570.md) | 504 | `result-track:da357a72739835cdad5715709708a2e15f555d02eb1a7be74fe9dbe1b4e21af5` |
| 50 | `theorem` | [isDomain](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/isdomain--5b73ff9d3f25ca252b3674b2.md) | 512 | `result-track:5b73ff9d3f25ca252b3674b287e7b77d383e6a7fb8e21eb1dba4a3449c798156` |
| 51 | `theorem` | [isDomain'](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/isdomain--7beb22d557be463cb33db2ec.md) | 519 | `result-track:7beb22d557be463cb33db2ece5a6c0d20b692e981e69671ebcd2ebce2e43f83a` |
| 52 | `theorem` | [of_isField](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/of-isfield--41e4a28d279d750f337b21c7.md) | 526 | `result-track:41e4a28d279d750f337b21c75ba82006fd8f58328105f82208c16e43ddbeb508` |
| 53 | `theorem` | [of_isField'](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/of-isfield--4417261ed982a8eb65384e21.md) | 540 | `result-track:4417261ed982a8eb65384e219ea0edbdac27be06f42433ecbbaa4b80af9f9f05` |
| 54 | `theorem` | [exists_field_of_isDomain](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/exists-field-of-isdomain--02647ec40a3dc5f439234275.md) | 552 | `result-track:02647ec40a3dc5f4392342751b739a4a0f880f15d97e88f502be0c76fa3b2ceb` |
| 55 | `theorem` | [isField_of_forall](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/isfield-of-forall--7c0bf07eff42c521a0b5b909.md) | 565 | `result-track:7c0bf07eff42c521a0b5b9093265cdae5297508c9f18c4f7f318fb954764fc96` |
| 56 | `theorem` | [_root_.Algebra.TensorProduct.isField_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/root-algebra-tensorproduct-isfield-of-isalgebraic--c6fb3e87e61e15d127934eaf.md) | 594 | `result-track:c6fb3e87e61e15d127934eaffcc1c52e470581c50eed1d8bc195b36253dc8d0a` |
| 57 | `theorem` | [isField_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/isfield-of-isalgebraic--5e4814810ac2ecd83ffdbc92.md) | 611 | `result-track:5e4814810ac2ecd83ffdbc92a6307dfbf8427fe9ce6b0ad3a1dd17e8fcb8744b` |
| 58 | `theorem` | [isField_of_isAlgebraic'](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/isfield-of-isalgebraic--830880d61b2b2c116c1b9440.md) | 619 | `result-track:830880d61b2b2c116c1b944036e45e83c948276b228ddce7436cf9730b772ef8` |
| 59 | `theorem` | [algEquiv_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/declarations/algequiv-of-isalgebraic--b49fba25705209abc2368e62.md) | 627 | `result-track:b49fba25705209abc2368e62124e1b71e44fc2bd42b98557c76d75d9ae33d083` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
