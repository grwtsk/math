# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b6d4d5f1cdd0d20136ff282c90ad65f43d5f78e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b6d4d5f1cdd0d20136ff282c90ad65f43d5f78e`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commutator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Centralizer` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [commutatorElement_eq_one_iff_mul_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutatorelement-eq-one-iff-mul-comm--7fd191a401f878bf90e752da.md) | 35 | `result-track:7fd191a401f878bf90e752dabe7c1de22cee01000a10d7a19544b3729f9d3cea` |
| 2 | `theorem` | [commutatorElement_eq_one_iff_commute](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutatorelement-eq-one-iff-commute--c61cf1a2c5a261072bbb8849.md) | 38 | `result-track:c61cf1a2c5a261072bbb88492481c56aac7cef9d6df9bccf84e004563bd9ab93` |
| 3 | `theorem` | [Commute.commutator_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commute-commutator-eq--a20905e9be54fcd939657604.md) | 41 | `result-track:a20905e9be54fcd939657604d4415877f30c113bad6dc782b2010eef210fcc53` |
| 4 | `theorem` | [commutatorElement_one_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutatorelement-one-right--b0008545d1e8bd12c4e9c4cb.md) | 47 | `result-track:b0008545d1e8bd12c4e9c4cb15eda05f7a6e0103b0cb8adce993ae59369c9b14` |
| 5 | `theorem` | [commutatorElement_one_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutatorelement-one-left--e5c326dbd1b22053f1e1076b.md) | 51 | `result-track:e5c326dbd1b22053f1e1076bacacfef971e7ffbc19de0f4754731a2f689bdcbe` |
| 6 | `theorem` | [commutatorElement_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutatorelement-self--8fa71d8fc470436dcd54d3d5.md) | 55 | `result-track:8fa71d8fc470436dcd54d3d5c165e343684f1e5e5bceef6eb35be73926dd65af` |
| 7 | `theorem` | [commutatorElement_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutatorelement-inv--c4f15eb21049f8a2e24a14e4.md) | 59 | `result-track:c4f15eb21049f8a2e24a14e48a0ceda3e20c1ffd69c56f693762d6846d48ee14` |
| 8 | `theorem` | [map_commutatorElement](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/map-commutatorelement--8fb08cdb2382167ecad7083e.md) | 62 | `result-track:8fb08cdb2382167ecad7083e74e766cd9ad16ad2c96eec963d1953acc3a018bb` |
| 9 | `theorem` | [conjugate_commutatorElement](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/conjugate-commutatorelement--49c0f1a4abad194f162a9c57.md) | 65 | `result-track:49c0f1a4abad194f162a9c57c26b955a24da5e7578c22ee43203d80145a0f3cc` |
| 10 | `instance` | [commutator](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator--ef5e1c3cb69a768f339dd020.md) | 71 | `declaration-track:ef5e1c3cb69a768f339dd02049de6eb9c902385d36eed58144bf5dc17e601ba1` |
| 11 | `theorem` | [commutator_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-def--eba2119de9f1be9c91805794.md) | 74 | `result-track:eba2119de9f1be9c918057945cd313049db83658e35e62853d145d135dcde7ab` |
| 12 | `theorem` | [commutator_mem_commutator](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-mem-commutator--ca133f03d1410fa9ab315448.md) | 80 | `result-track:ca133f03d1410fa9ab3154485f62e758de840fa4ed00103ef59581b884fc0e79` |
| 13 | `theorem` | [commutator_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-le--8eced3d1fc517fe497fd5dcb.md) | 83 | `result-track:8eced3d1fc517fe497fd5dcbeed09f4a79aea8794c5de531652d2ff22b034a7a` |
| 14 | `theorem` | [commutator_mono](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-mono--22b76ef83a4f8bf0fafdda60.md) | 87 | `result-track:22b76ef83a4f8bf0fafdda6058ec64412a3c2b8bc7747f018a9e976d7316e45a` |
| 15 | `theorem` | [commutator_eq_bot_iff_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-eq-bot-iff-le-centralizer--75f091c97675a6787f18fd08.md) | 90 | `result-track:75f091c97675a6787f18fd08287b83da59eefd766599dfda06ed5b9eeab91807` |
| 16 | `theorem` | [commutator_commutator_eq_bot_of_rotate](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-commutator-eq-bot-of-rotate--b9ccf4dfd86c673e94c83c0c.md) | 97 | `result-track:b9ccf4dfd86c673e94c83c0ce8ea1e37e43b13e7af84d6e0b533f8aa69a2268c` |
| 17 | `theorem` | [commutator_comm_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-comm-le--08b4778317b33df073a3d5f8.md) | 111 | `result-track:08b4778317b33df073a3d5f8bf0751cf0002bc6d9edc69a9e158316c3b722ca9` |
| 18 | `theorem` | [commutator_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-comm--df7c06cb49e65fe0d8aeaf7d.md) | 115 | `result-track:df7c06cb49e65fe0d8aeaf7d4c15734faf9e7c730dd4bea7ced7f64de6ea5db8` |
| 19 | `instance` | [commutator_normal](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-normal--59d708a4b9cd5bf7b3bdb8db.md) | 120 | `declaration-track:59d708a4b9cd5bf7b3bdb8dbd3a0498b5fdfb1f418800cb257aefd2a6c5e80a5` |
| 20 | `theorem` | [commutator_def'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-def--92898ecb70c95d4ac691409e.md) | 131 | `result-track:92898ecb70c95d4ac691409e2735e674800ab8a3131e738d2dc23a8db3699e84` |
| 21 | `theorem` | [commutator_le_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-le-right--d120cefb08b92a1b1143a02b.md) | 135 | `result-track:d120cefb08b92a1b1143a02baf5d3702509997652647f36248a0ff0f7be33731` |
| 22 | `theorem` | [commutator_le_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-le-left--e3a9e9782d8f3e2ea61599e4.md) | 138 | `result-track:e3a9e9782d8f3e2ea61599e488f578af1ebad8c359be4624cb7b2b3bcba71991` |
| 23 | `theorem` | [commutator_bot_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-bot-left--0dae1b2e49eaae33c7f5e33a.md) | 142 | `result-track:0dae1b2e49eaae33c7f5e33a3ca8cddbbc899eeb332560e76042894f16f25660` |
| 24 | `theorem` | [commutator_bot_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-bot-right--e095a4ac2abc736a26796f21.md) | 146 | `result-track:e095a4ac2abc736a26796f21b5ede4413cc4fee93ca70f26f2e1fb46b0e1857f` |
| 25 | `theorem` | [commutator_le_inf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-le-inf--daf6a22795b192893bdb8a6e.md) | 149 | `result-track:daf6a22795b192893bdb8a6eafe134ebe91b17c13e2f7a738aba7b3cddac49bb` |
| 26 | `theorem` | [map_commutator](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/map-commutator--b0c192248e2e8ded81434182.md) | 154 | `result-track:b0c192248e2e8ded81434182ad23c472736239b2e49bf3bc6d38504618a55db9` |
| 27 | `theorem` | [commutator_le_map_commutator](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-le-map-commutator--ba5ec4595ad06b991b52bf7c.md) | 165 | `result-track:ba5ec4595ad06b991b52bf7cfafacf2bd8551ac8cbd60199fe4f8f496cc8d930` |
| 28 | `instance` | [commutator_characteristic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-characteristic--dd2125ff8be2372880ab7ae0.md) | 171 | `declaration-track:dd2125ff8be2372880ab7ae0cdeaf43d99f569318b1bb52edc42ade16181b01f` |
| 29 | `theorem` | [commutator_prod_prod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-prod-prod--cb098feb9fc7c424c0d6a852.md) | 177 | `result-track:cb098feb9fc7c424c0d6a8528793d3d89259186603bb77e110ba722fe9d9d73a` |
| 30 | `theorem` | [commutator_pi_pi_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-pi-pi-le--385af6cd8802f289377bd867.md) | 194 | `result-track:385af6cd8802f289377bd86755e1dbe027b97f90303803f3b121448bf38aef76` |
| 31 | `def` | [commutatorSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutatorset--a234eac1f2450608487724a2.md) | 204 | `declaration-track:a234eac1f2450608487724a2e14bf6861247d14d3fa597b980ec79a3ce6f737b` |
| 32 | `theorem` | [commutatorSet_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutatorset-def--80aa210c388b570fb7b27b0b.md) | 207 | `result-track:80aa210c388b570fb7b27b0b9f982c1911ea4ce8d6fa9affeaae02da12eb9d27` |
| 33 | `theorem` | [one_mem_commutatorSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/one-mem-commutatorset--5734466390c57630de946faa.md) | 210 | `result-track:5734466390c57630de946faa3c59b0f0c7a90a6621688986907cef481bf22fea` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/instance--c833e9ecb0ad54f6a6ad44ee.md) | 213 | `declaration-track:c833e9ecb0ad54f6a6ad44ee644c839c9dc110b690f0bdc365683f3ec879c492` |
| 35 | `theorem` | [mem_commutatorSet_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/mem-commutatorset-iff--29b3e375376321f778b78e37.md) | 218 | `result-track:29b3e375376321f778b78e371ef96e23bc05f7db8ecd15dc78d133315c2ca5ed` |
| 36 | `theorem` | [commutator_mem_commutatorSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/declarations/commutator-mem-commutatorset--929068da55505630a421a267.md) | 221 | `result-track:929068da55505630a421a26751af6d44c37c0bf2b078190ba8acfb44d2ec0915` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
