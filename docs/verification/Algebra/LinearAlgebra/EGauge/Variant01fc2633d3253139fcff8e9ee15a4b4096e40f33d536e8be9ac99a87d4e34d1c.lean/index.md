# Verification target: GRWTSK.Algebra.LinearAlgebra.EGauge.Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "854354f1971924c8feb2cf05c4434ced8d899263",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `854354f1971924c8feb2cf05c4434ced8d899263`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [egauge](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge--5589ccb80212e186eb7b3cd2.md) | 47 | `declaration-track:5589ccb80212e186eb7b3cd296d20b4b5007150231eca966f889b18a16b15386` |
| 2 | `lemma` | [Set.MapsTo.egauge_le](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/set-mapsto-egauge-le--0c3b2cc497d31c280927df1e.md) | 52 | `result-track:0c3b2cc497d31c280927df1eaf0581e62bfccf7c982629f799db096f4d55bb11` |
| 3 | `lemma` | [egauge_anti](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-anti--735e6f401aff503562352fe5.md) | 57 | `result-track:735e6f401aff503562352fe5d119cbe4bd474737c430f1f2bd9f8cf92962dbe9` |
| 4 | `lemma` | [egauge_empty](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-empty--66b5f58f59859486fb800535.md) | 60 | `result-track:66b5f58f59859486fb80053534a117b7539429782ca195317784f047a7ee30fb` |
| 5 | `lemma` | [egauge_le_of_mem_smul](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-le-of-mem-smul--ddc6765a43e813f7e918b081.md) | 64 | `result-track:ddc6765a43e813f7e918b081f4823cda9cedc8e2209b6c2b52b0e32459fd734b` |
| 6 | `lemma` | [le_egauge_iff](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/le-egauge-iff--ed0f70eaa6df22024914a898.md) | 66 | `result-track:ed0f70eaa6df22024914a8986864e7d1c86ddda0e1165c07abf1bd11b6055137` |
| 7 | `lemma` | [egauge_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-eq-top--f1fefa07cc4335f538d5f8ce.md) | 68 | `result-track:f1fefa07cc4335f538d5f8ceb769a3d0d849d1abd2f4bf1532936078f8c8445f` |
| 8 | `lemma` | [egauge_lt_iff](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-lt-iff--5fb03c391794c841076f6536.md) | 70 | `result-track:5fb03c391794c841076f65361e6f87784e1d3731d24539093678999a758039bd` |
| 9 | `lemma` | [egauge_union](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-union--7f075310f263ad59c4033c61.md) | 73 | `result-track:7f075310f263ad59c4033c61bcd005a143237379b4fc411c3f6381867d483c6a` |
| 10 | `lemma` | [le_egauge_inter](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/le-egauge-inter--abeaf4d92618ed4cc4b329f3.md) | 77 | `result-track:abeaf4d92618ed4cc4b329f393dd68b4ad29447cb14b36b3eeb16e4b2d12c4f1` |
| 11 | `lemma` | [le_egauge_pi](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/le-egauge-pi--9683618549c84872f9066c75.md) | 81 | `result-track:9683618549c84872f9066c752cfbec3a9acf58a13e9f30be93095464732006a3` |
| 12 | `lemma` | [le_egauge_prod](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/le-egauge-prod--90f2c605680b50534f01c316.md) | 88 | `result-track:90f2c605680b50534f01c3168d429782d2dfe753174d654e68e02d9b6e2594de` |
| 13 | `lemma` | [egauge_zero_left_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-zero-left-eq-top--e6e1f3b28cbf2a3ae2e1380b.md) | 99 | `result-track:e6e1f3b28cbf2a3ae2e1380b294b774e6ce5be6a2d1c7c8ea079c7a1cf4e87c2` |
| 14 | `lemma` | [egauge_le_of_smul_mem_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-le-of-smul-mem-of-ne--53f593dce4ca1610566ae2f6.md) | 114 | `result-track:53f593dce4ca1610566ae2f6d4f9f9a3dc71e50dd72f9fb7cd191f10935cd4af` |
| 15 | `lemma` | [egauge_le_of_smul_mem](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-le-of-smul-mem--4be578c3e03178ed9fcae53c.md) | 121 | `result-track:4be578c3e03178ed9fcae53c44538b9137f0957d55efb26ee7dc5a12a54864e0` |
| 16 | `lemma` | [mem_smul_of_egauge_lt](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/mem-smul-of-egauge-lt--d87d6dd1f242d61edfbfbd29.md) | 126 | `result-track:d87d6dd1f242d61edfbfbd29a2253af89a87e8398749f7cb0d7a937a94ea9f8a` |
| 17 | `lemma` | [mem_of_egauge_lt_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/mem-of-egauge-lt-one--abdb5fa1e05354df69462a91.md) | 130 | `result-track:abdb5fa1e05354df69462a917fcc4a9232ea4226e7daba4a4a8f8397107f6607` |
| 18 | `lemma` | [egauge_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-eq-zero-iff--c337430bd08b2cc7e2d6f0c8.md) | 133 | `result-track:c337430bd08b2cc7e2d6f0c881ef3575349af7cf660c41dfa7d540a80aba8be0` |
| 19 | `lemma` | [egauge_univ](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-univ--7b6f555ea82144a7613bbff6.md) | 139 | `result-track:7b6f555ea82144a7613bbff6298bedc2f4f934eb5e1916baa78b4bfc8f7cba2b` |
| 20 | `lemma` | [egauge_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-zero-right--55f1ad183aa617a1765ad92b.md) | 147 | `result-track:55f1ad183aa617a1765ad92bf375b5ee8ea0bba00d0c8cefff17be04cc2d05f5` |
| 21 | `lemma` | [egauge_zero_zero](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-zero-zero--084608774548f128629c3108.md) | 151 | `result-track:084608774548f128629c31088f91fac59ec08ee7850a0e1d3bf1fa2ea636fe54` |
| 22 | `lemma` | [egauge_le_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-le-one--d32bea0d065850bf4942105c.md) | 153 | `result-track:d32bea0d065850bf4942105c54f4f0fc5ce0bfe9470bffad22c26697914ab114` |
| 23 | `lemma` | [le_egauge_of_forall_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/le-egauge-of-forall-ne-zero--a147f326ac41a56c2735e7c6.md) | 159 | `result-track:a147f326ac41a56c2735e7c6bc2e516611089965e57e9b16647fcd4ca2db9a58` |
| 24 | `lemma` | [le_egauge_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/le-egauge-smul-left--d11c176abf910b23938e64a6.md) | 175 | `result-track:d11c176abf910b23938e64a6ed69bb73086e654808f977aed53e3d7cd7849001` |
| 25 | `lemma` | [egauge_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-smul-left--9f90f477e6c9b4421497a742.md) | 183 | `result-track:9f90f477e6c9b4421497a74270e126cf011fcf30a4adb1946aea30589fd0db51` |
| 26 | `lemma` | [le_egauge_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/le-egauge-smul-right--0ce201ddabdc537a2ad1461f.md) | 193 | `result-track:0ce201ddabdc537a2ad1461febc7627b74f764eb32ba79a92a16e85c3b3cd61b` |
| 27 | `lemma` | [egauge_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-smul-right--e94a4bbe7c38eb75445dad15.md) | 204 | `result-track:e94a4bbe7c38eb75445dad15ae06eb275c5f5b0f97cccf2703391192f6927925` |
| 28 | `theorem` | [egauge_prod_mk](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-prod-mk--fecdaa177af4ff6eef8c6334.md) | 218 | `result-track:fecdaa177af4ff6eef8c63346e06dabc8a2940941b5fdefec4db93e1a4ec93bb` |
| 29 | `theorem` | [egauge_add_add_le](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-add-add-le--2a5503dd4ab932cd03b65659.md) | 228 | `result-track:2a5503dd4ab932cd03b656594a370981f7ec903b2d8034dfc732c699466f5827` |
| 30 | `theorem` | [egauge_pi'](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-pi--332263b1f65fa421f0a88619.md) | 251 | `result-track:332263b1f65fa421f0a88619eb90360e005f4f4953abd0b7b28c45a082253749` |
| 31 | `theorem` | [egauge_univ_pi](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-univ-pi--47b3f68f0d0902b779580d8e.md) | 290 | `result-track:47b3f68f0d0902b779580d8ef0816fdf687a57218d04f4c3b0c6dba8b710efa4` |
| 32 | `theorem` | [egauge_pi](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-pi--121b3e3809bc5fb8e835a9df.md) | 304 | `result-track:121b3e3809bc5fb8e835a9dfbff12317f27da00a76939dbe78c072b69ad72629` |
| 33 | `lemma` | [div_le_egauge_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/div-le-egauge-closedball--8cbf9285452ecff2c66527e1.md) | 315 | `result-track:8cbf9285452ecff2c66527e18b885e01b6a23f3f3df49f0a462f88cb2e2c0d76` |
| 34 | `lemma` | [le_egauge_closedBall_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/le-egauge-closedball-one--8eb10773a625c74d35f9a88f.md) | 324 | `result-track:8eb10773a625c74d35f9a88f819f7b9a2d69b66bfb5a92920abcdb3ef4f7dc7b` |
| 35 | `lemma` | [div_le_egauge_ball](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/div-le-egauge-ball--d0a60f11b73ca3446b59e0a8.md) | 327 | `result-track:d0a60f11b73ca3446b59e0a83409484d1c27463f6d2bdca5c2800ad5ef0f9136` |
| 36 | `lemma` | [le_egauge_ball_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/le-egauge-ball-one--fd2f4c870c179e27a7e79307.md) | 330 | `result-track:fd2f4c870c179e27a7e7930769948ec8f1fbc2b8c4820896008d2f889c6957be` |
| 37 | `lemma` | [egauge_ball_le_of_one_lt_norm](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-ball-le-of-one-lt-norm--360fedf03098e837eb1136c4.md) | 336 | `result-track:360fedf03098e837eb1136c493318fc7ce1546691de477b5617c183fbbe77f57` |
| 38 | `lemma` | [egauge_ball_one_le_of_one_lt_norm](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/declarations/egauge-ball-one-le-of-one-lt-norm--5c9328c95e40e47716082089.md) | 356 | `result-track:5c9328c95e40e477160820894abb0bb71a4b24b03780d2d1ffbdd211e30a7bd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
