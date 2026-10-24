# Verification target: GRWTSK.Topology.GeneralTopology.ClosedSubmodule.Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adf71f9f210d99829672a69b8fdea721a6185688",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adf71f9f210d99829672a69b8fdea721a6185688`.

Source path: `GRWTSK/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.LinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClosedSubmodule](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/closedsubmodule--96c44fac221e2d7d3a00993c.md) | 40 | `declaration-track:96c44fac221e2d7d3a00993c8d8ad1c2bba17b80399487c3974a5bedb146528d` |
| 2 | `lemma` | [toSubmodule_injective](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/tosubmodule-injective--6bf59c276eb783baab1ea0a0.md) | 53 | `result-track:6bf59c276eb783baab1ea0a00878c9d80e94b0f73c7e6fc802bc11e1aaf1f8f0` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/instance--7291c55b9c31f9f322c69bc5.md) | 56 | `declaration-track:7291c55b9c31f9f322c69bc5f862dfc7644ae12712410d63c80bdb75ed10096a` |
| 4 | `lemma` | [toCloseds_injective](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/tocloseds-injective--787364445bb652bab9516f0d.md) | 60 | `result-track:787364445bb652bab9516f0d26ff8032163a961904bcc5abd7492c2bae87d25a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/instance--360dbfba23997e18d48ab50c.md) | 63 | `declaration-track:360dbfba23997e18d48ab50c01e3112e671b6aeb97304c3fc86e7e9cc19ab6f7` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/instance--233c7cede9db4c004206f90f.md) | 67 | `declaration-track:233c7cede9db4c004206f90f2aad46459f0c6192f316152213b5c91f74cf0ccf` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/instance--5338784a1f5f3f88cbe30e51.md) | 70 | `declaration-track:5338784a1f5f3f88cbe30e517c4f35699b2ccbc2df0666a9c906ed35f924a27b` |
| 8 | `lemma` | [carrier_eq_coe](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/carrier-eq-coe--7003226aba2e24c95f93fc77.md) | 73 | `result-track:7003226aba2e24c95f93fc772b8d12af4383b302332406d842d037b495bbf7a6` |
| 9 | `lemma` | [mem_mk](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/mem-mk--9bc723075ab6a3a572161a20.md) | 75 | `result-track:9bc723075ab6a3a572161a200bcb0899a68f2ec0cb287c58f82d5bd8b0325d1a` |
| 10 | `lemma` | [coe_toSubmodule](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/coe-tosubmodule--3fc2b1f078d7add71327752c.md) | 78 | `result-track:3fc2b1f078d7add71327752cedeb58a54757418512ab94dfb904ca04b442b1fd` |
| 11 | `lemma` | [coe_toCloseds](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/coe-tocloseds--31a43ac08e2772147e8d155a.md) | 81 | `result-track:31a43ac08e2772147e8d155af48a6467ffe998be534a0a0e669b8fd402267c42` |
| 12 | `lemma` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/isclosed--b2371c15a952b2f3722376a3.md) | 83 | `result-track:b2371c15a952b2f3722376a3ae19dafb154e28a9d83ef25e9871f40219c26df9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/instance--c715e2021f661580b7fef6f5.md) | 87 | `declaration-track:c715e2021f661580b7fef6f558195a2d2cd0220421545fd2feae3a18851a8534` |
| 14 | `lemma` | [toSubmodule_le_toSubmodule](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/tosubmodule-le-tosubmodule--b5e46af3af93c293fb830c21.md) | 90 | `result-track:b5e46af3af93c293fb830c210c3693a545d287f53803fef51645b383b4ea9281` |
| 15 | `def` | [comap](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/comap--0617cc046e0fa3cc56ac31dc.md) | 95 | `declaration-track:0617cc046e0fa3cc56ac31dcdcf5f53b7277401f9b6ea3a26608e817f944c89c` |
| 16 | `lemma` | [mem_comap](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/mem-comap--ba01be5d1890b095862b4570.md) | 100 | `result-track:ba01be5d1890b095862b4570b99621487257918e59cc3e73b75117da38233718` |
| 17 | `lemma` | [toSubmodule_comap](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/tosubmodule-comap--2a97e40b7b9e3828bc6b2345.md) | 102 | `result-track:2a97e40b7b9e3828bc6b234507af3fa6ae9878fd2404173a4892eb10899d8aec` |
| 18 | `lemma` | [comap_id](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/comap-id--854632df640997a0713ba8f2.md) | 105 | `result-track:854632df640997a0713ba8f27dcb3e6555f5e1bc4e4df8021ef481c4193f29bc` |
| 19 | `lemma` | [comap_comap](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/comap-comap--0770436c7d1e51573e268599.md) | 107 | `result-track:0770436c7d1e51573e2685991aa33e0f4b70ed2e5a2c1016274a5bf5f1345500` |
| 20 | `instance` | [instInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/instinf--230e192c6ffe7c77abb2fa2d.md) | 110 | `declaration-track:230e192c6ffe7c77abb2fa2d0ff48bca3584146fdb0cd33e6270429b283dfe38` |
| 21 | `instance` | [instInfSet](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/instinfset--0bd44f0dd0ed5cb53774b86b.md) | 113 | `declaration-track:0bd44f0dd0ed5cb53774b86bee651fb5ed7ed3ff683ff066b5e0b8facb8a5675` |
| 22 | `lemma` | [toSubmodule_sInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/tosubmodule-sinf--de26740f952321a79768173a.md) | 117 | `result-track:de26740f952321a79768173adc16ee1b48539a0de2d1b9e23e039889afbd42de` |
| 23 | `lemma` | [toSubmodule_iInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/tosubmodule-iinf--5cd6368c0b591a9af966df56.md) | 121 | `result-track:5cd6368c0b591a9af966df56c09626fa952940818774082acca9d3e773407f4a` |
| 24 | `lemma` | [coe_sInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/coe-sinf--bf3b6c43a601c54289bd582a.md) | 125 | `result-track:bf3b6c43a601c54289bd582a863129511dd4a48349bae601a5fd4682d857166f` |
| 25 | `lemma` | [coe_iInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/coe-iinf--00db1051a6f90c94fc370c66.md) | 129 | `result-track:00db1051a6f90c94fc370c666b7c971327fef448c894c183abc6d9149d659546` |
| 26 | `lemma` | [mem_sInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/mem-sinf--3dc88cf20c25ec003c7fe380.md) | 132 | `result-track:3dc88cf20c25ec003c7fe380729716680a3288f269d2a9b5755624b3cba4fc13` |
| 27 | `lemma` | [mem_iInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/mem-iinf--8a7e096ced2891fbcbca3bb1.md) | 135 | `result-track:8a7e096ced2891fbcbca3bb1e432fe9a101f6742b6ea464bd62968701f5e727c` |
| 28 | `instance` | [instSemilatticeInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/instsemilatticeinf--59d7abea62f46c4bcdd3ffe5.md) | 138 | `declaration-track:59d7abea62f46c4bcdd3ffe5b17e8e23d644dbf969b7fdb45acaf541aa2bdece` |
| 29 | `lemma` | [toSubmodule_inf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/tosubmodule-inf--34a717cdbe110d44a52926d1.md) | 142 | `result-track:34a717cdbe110d44a52926d1fd782acf42a0cd6aac53feeffb896673142e5e41` |
| 30 | `lemma` | [coe_inf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/coe-inf--683517c2c833223081e43886.md) | 145 | `result-track:683517c2c833223081e438868de85109e8fd3f55deb9467053cbcb1ddbdd7310` |
| 31 | `lemma` | [mem_inf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/mem-inf--52f9b0ae8e2c2327569de2c7.md) | 147 | `result-track:52f9b0ae8e2c2327569de2c7f34518f30f1781a96d71f587b8fc4dd8c71706e1` |
| 32 | `instance` | [instTop](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/insttop--a599b72430be9bb79b0e88aa.md) | 149 | `declaration-track:a599b72430be9bb79b0e88aa9c2a2bf59864526c8e8d2dc5e9f15281133a194f` |
| 33 | `lemma` | [toSubmodule_top](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/tosubmodule-top--58f71af0282f0044f3cc3c1a.md) | 151 | `result-track:58f71af0282f0044f3cc3c1a2c14fd562f787f18b7a08c244e3dd39a405f0b7d` |
| 34 | `lemma` | [coe_top](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/coe-top--063ea6b19c31e5db4656d75c.md) | 153 | `result-track:063ea6b19c31e5db4656d75c270f7542f52160c3056d2c9294cfb2181299ba4c` |
| 35 | `lemma` | [mem_top](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/mem-top--097a389b9c24b73f13d42f77.md) | 155 | `result-track:097a389b9c24b73f13d42f77cfc612e191b9c41049d10d4d1e6f7cb8a1c76ed8` |
| 36 | `instance` | [instOrderBot](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/instorderbot--967e7cc112ddd543c2565aeb.md) | 160 | `declaration-track:967e7cc112ddd543c2565aebbd3d6653a905e42ddf4ca9a1a8e1585046b79256` |
| 37 | `lemma` | [toSubmodule_bot](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/tosubmodule-bot--c3ce08f24cbe895042f4e000.md) | 164 | `result-track:c3ce08f24cbe895042f4e000f85668aab348ec95c2781fb4d9344955af2e528f` |
| 38 | `lemma` | [coe_bot](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/coe-bot--42a8718a50d5bd56c202d7a3.md) | 166 | `result-track:42a8718a50d5bd56c202d7a3210598d4f6ecf21454e097a4741d8fe0f27f0186` |
| 39 | `lemma` | [mem_bot](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/mem-bot--31e45bc0c20b81c53af28a67.md) | 168 | `result-track:31e45bc0c20b81c53af28a679dce1a965505636609535a60cd001c7f0aff42db` |
| 40 | `def` | [closure](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/closure--6d27c3769a0c3c30817810db.md) | 178 | `declaration-track:6d27c3769a0c3c30817810db91c73f01be0cd95fce5208bdbac1d0a9994ea213` |
| 41 | `lemma` | [closure_le](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/closure-le--772e3a49e3b6ab5bd5e1cdd6.md) | 182 | `result-track:772e3a49e3b6ab5bd5e1cdd627185730c9c04152a5832153ecc04b2c3e1fc591` |
| 42 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/map--4b8c4c955ad7f67e5927834a.md) | 195 | `declaration-track:4b8c4c955ad7f67e5927834a82280b0868e8baebfd72ac401fe12777c3f81a79` |
| 43 | `lemma` | [map_id](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/map-id--a164d56259f7ee8798dfd173.md) | 199 | `result-track:a164d56259f7ee8798dfd17374411a765d55834e57de8ac4815335949a670aae` |
| 44 | `lemma` | [map_le_iff_le_comap](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/map-le-iff-le-comap--9d13da31b577a9b4684171a7.md) | 202 | `result-track:9d13da31b577a9b4684171a7652bc8372d4f6fc7775f23d10b22de5b0183399b` |
| 45 | `lemma` | [gc_map_comap](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05.lean/declarations/gc-map-comap--be2df97b65721554e05aeb64.md) | 206 | `result-track:be2df97b65721554e05aeb64ab322d928615e06bf20a1ae630205ffebafb508a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
