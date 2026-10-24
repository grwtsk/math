# Verification target: GRWTSK.Algebra.GroupTheory.EpiMono.Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ff588149dbf2526849377dd3a4a7339913ae17b",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ff588149dbf2526849377dd3a4a7339913ae17b`.

Source path: `GRWTSK/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean.json)

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
| 1 | `theorem` | [ker_eq_bot_of_cancel](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/ker-eq-bot-of-cancel--4470a6f67a523d1f61beda9a.md) | 49 | `result-track:4470a6f67a523d1f61beda9a1fa0a03736462578118b6e0463c7a24da0f9ee5a` |
| 2 | `theorem` | [range_eq_top_of_cancel](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/range-eq-top-of-cancel--3aa24e6064749c06ee074a93.md) | 59 | `result-track:3aa24e6064749c06ee074a937c9d06b24b8bb89fe5c73a1dc374cd9c2261eec2` |
| 3 | `theorem` | [ker_eq_bot_of_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/ker-eq-bot-of-mono--34e941c94429371f4166a943.md) | 83 | `result-track:34e941c94429371f4166a9434314cbb363179e11a3d6751bcd643e7410037e3f` |
| 4 | `theorem` | [mono_iff_ker_eq_bot](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/mono-iff-ker-eq-bot--ceb8ccb6db2d6bb814aeba85.md) | 88 | `result-track:ceb8ccb6db2d6bb814aeba858be07cb778b233ff2f9e5d9b39b91050dea059fc` |
| 5 | `theorem` | [mono_iff_injective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/mono-iff-injective--e85dc40e50970ee1e8b314ab.md) | 93 | `result-track:e85dc40e50970ee1e8b314ab03a4aacca3fcc7ee574e36f2f06d88c3c91d4630` |
| 6 | `inductive` | [XWithInfinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/xwithinfinity--f99a2695b37ad51548a96f50.md) | 102 | `declaration-track:f99a2695b37ad51548a96f50f1781593321300b461281a4fa4a36a97cb7ee504` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/instance--5f344d7220dddd124826a73f.md) | 114 | `declaration-track:5f344d7220dddd124826a73f46722c0f5273a7f6c69cb7fb26957fbc45c2b570` |
| 8 | `theorem` | [mul_smul](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/mul-smul--c7c2e7f3cebc0a0a26757c75.md) | 123 | `result-track:c7c2e7f3cebc0a0a26757c750344e69e6a9d78e45961a04186b5f600f9ccbd0d` |
| 9 | `theorem` | [one_smul](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/one-smul--94a7b70979d37dbcd56e47c6.md) | 130 | `result-track:94a7b70979d37dbcd56e47c6f2a24fcc4096902f17e7ed1e4994a4fbfa56a9b2` |
| 10 | `theorem` | [fromCoset_eq_of_mem_range](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/fromcoset-eq-of-mem-range--b98aa49f34d09e0ba86ce1e6.md) | 137 | `result-track:b98aa49f34d09e0ba86ce1e6675089d7bd1618f579e83bd589c4fce833cfa6ff` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/example--81e6119f46543b1ca00019d7.md) | 144 | `declaration-track:81e6119f46543b1ca00019d7e672f16e47f5c219c4dc6fa816a26b3ccfa7bba4` |
| 12 | `theorem` | [fromCoset_ne_of_nin_range](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/fromcoset-ne-of-nin-range--1e4e9659cb4d1bb2b23c54bc.md) | 147 | `result-track:1e4e9659cb4d1bb2b23c54bcbe1ef193386d5c633b11b76915c2bdd6de2f64e7` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/instance--85d021a75b0fe58f84ef0c78.md) | 155 | `declaration-track:85d021a75b0fe58f84ef0c78b608e5bdfc6fef0f3e293a710c1fd58016f4fe40` |
| 14 | `def` | [tau](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/tau--7506ff27f89b96f05d72cb42.md) | 160 | `declaration-track:7506ff27f89b96f05d72cb42357ae808b7ae8ac31414405e2df41399cdddd5bd` |
| 15 | `theorem` | [τ_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/apply-infinity--4edf7c76fbd598e90501c9f7.md) | 165 | `result-track:4edf7c76fbd598e90501c9f78e800ea03c6b47572d9ddbebb9f535f56d79bb08` |
| 16 | `theorem` | [τ_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/apply-fromcoset--499f55fa6151043eea2d3663.md) | 168 | `result-track:499f55fa6151043eea2d3663a78d7456618d533ef5c68b5a6544fd2456e3c76c` |
| 17 | `theorem` | [τ_apply_fromCoset'](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/apply-fromcoset--e328d0140f06aacaa10c12c6.md) | 171 | `result-track:e328d0140f06aacaa10c12c6a8b1757fbb81905bffbef5902b57effef99bf145` |
| 18 | `theorem` | [τ_symm_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/symm-apply-fromcoset--e0b29a766158292d340e9a6d.md) | 175 | `result-track:e0b29a766158292d340e9a6def1813abf552e7afebd40c11f4d8e4712e6bbcf7` |
| 19 | `theorem` | [τ_symm_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/symm-apply-infinity--1da26f8260a37d5993b09b32.md) | 179 | `result-track:1da26f8260a37d5993b09b327b192a9d43c3bc5b563f11f0f191669dfc4e7866` |
| 20 | `def` | [g](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/g--d5486d4979ba945ba53e3180.md) | 186 | `declaration-track:d5486d4979ba945ba53e3180f61eba8ad9aa33e8b90901ea12ad6a1bbed706f0` |
| 21 | `def` | [h](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/h--09e920451e628da95b5d42ad.md) | 207 | `declaration-track:09e920451e628da95b5d42ad49b94834bafb6a05f379e12222c04ad3887b5c81` |
| 22 | `theorem` | [g_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/g-apply-fromcoset--aabee0e988f77bd17c4b0f57.md) | 227 | `result-track:aabee0e988f77bd17c4b0f57abc451c2b6419bb220dc575bce3041984a912950` |
| 23 | `theorem` | [g_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/g-apply-infinity--56acd436ca43757651cd8f6b.md) | 231 | `result-track:56acd436ca43757651cd8f6b06b959d7d5c944c8b38671688651a2bd17c00b3e` |
| 24 | `theorem` | [h_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/h-apply-infinity--f0e8e06f6ddc7d291d5ccedd.md) | 233 | `result-track:f0e8e06f6ddc7d291d5cceddaf316d53eb489d047c3932d77db25b1780abb998` |
| 25 | `theorem` | [h_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/h-apply-fromcoset--ebc1bfcd4450c8ad6d46a34b.md) | 239 | `result-track:ebc1bfcd4450c8ad6d46a34ba027c3daed12cd97bc77acd69edff3b5ea633de7` |
| 26 | `theorem` | [h_apply_fromCoset'](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/h-apply-fromcoset--205b9aa2ecec038ee882fe88.md) | 245 | `result-track:205b9aa2ecec038ee882fe88f6fdc51baf2e489494c5de04e18c6d573f07dc75` |
| 27 | `theorem` | [h_apply_fromCoset_nin_range](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/h-apply-fromcoset-nin-range--3f7a9d519887630b6311836c.md) | 249 | `result-track:3f7a9d519887630b6311836c74c8f2e87defe29eb58f4ad7645970352d4ba02b` |
| 28 | `theorem` | [agree](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/agree--373a01232668cd6aecd501ca.md) | 261 | `result-track:373a01232668cd6aecd501ca13948f93af303851d596c7ada1c7fb3778f81dc5` |
| 29 | `theorem` | [comp_eq](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/comp-eq--33e3be02be32dfac144eaf44.md) | 284 | `result-track:33e3be02be32dfac144eaf44a67f0324ee49206095d8e79ab64310f7417d58bc` |
| 30 | `theorem` | [g_ne_h](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/g-ne-h--77f98ba93c2b568fd10427a6.md) | 293 | `result-track:77f98ba93c2b568fd10427a6153cd86713deeb411cdc2630c3edc69c89f4c555` |
| 31 | `theorem` | [surjective_of_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/surjective-of-epi--535c6c99ef3e0aa8d9e1be5f.md) | 302 | `result-track:535c6c99ef3e0aa8d9e1be5fab7fdf5c7f74a4325a284e4b9cb11dbe29fd912e` |
| 32 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/epi-iff-surjective--580fd05799339a4a6976e520.md) | 309 | `result-track:580fd05799339a4a6976e520aee664b71db1130b853c96fd558d314a4fa96619` |
| 33 | `theorem` | [epi_iff_range_eq_top](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/epi-iff-range-eq-top--baa7ab80f570759171439649.md) | 312 | `result-track:baa7ab80f5707591714396498d076c15767930235c71088cca9ecd746932dbc1` |
| 34 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/epi-iff-surjective--965cb3ecd0103f74794f626b.md) | 322 | `result-track:965cb3ecd0103f74794f626bd5db882d972b1a5e6b7090bbf8d8f23b21d47c4c` |
| 35 | `theorem` | [epi_iff_range_eq_top](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/epi-iff-range-eq-top--1c664eae3a46ef53e33ef17d.md) | 328 | `result-track:1c664eae3a46ef53e33ef17dd4ebeb2364bd1a66cb4e7ed8378add570dfd66b8` |
| 36 | `instance` | [forget_grp_preserves_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/forget-grp-preserves-mono--4faffda6c7a2f24ffe9abafe.md) | 339 | `declaration-track:4faffda6c7a2f24ffe9abafee8ff154e9e2cca65c974cd98b78a787218a38ea9` |
| 37 | `instance` | [forget_grp_preserves_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/forget-grp-preserves-epi--a2afacce52715622a2f059ce.md) | 343 | `declaration-track:a2afacce52715622a2f059cecc8f4910b1d567bd0a027b8c1da09f6453399220` |
| 38 | `theorem` | [ker_eq_bot_of_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/ker-eq-bot-of-mono--a54feffbfd7f19c6b993e5fd.md) | 354 | `result-track:a54feffbfd7f19c6b993e5fd6928935fc57d1c6d3a9b5489a85dca1971efdb67` |
| 39 | `theorem` | [mono_iff_ker_eq_bot](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/mono-iff-ker-eq-bot--2c87497963339eb246273834.md) | 359 | `result-track:2c87497963339eb24627383401418a810798e6e7829de217ac85b8e6608c5fea` |
| 40 | `theorem` | [mono_iff_injective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/mono-iff-injective--665390935c34b1e448901016.md) | 364 | `result-track:665390935c34b1e4489010163b27fee2f6b7a92b56122d8b1e6e98b2c01bf48b` |
| 41 | `theorem` | [range_eq_top_of_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/range-eq-top-of-epi--6970e994dab493ee742609fe.md) | 368 | `result-track:6970e994dab493ee742609fe5344b115a3a675fa4478f6b5758bf54798ab1db3` |
| 42 | `theorem` | [epi_iff_range_eq_top](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/epi-iff-range-eq-top--52d0b9be4b975655d32d1fa1.md) | 373 | `result-track:52d0b9be4b975655d32d1fa1b2ebae4718ecec07db0e384006b04ea98cccce96` |
| 43 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/epi-iff-surjective--839d9abde7cd1f8e87c4a122.md) | 379 | `result-track:839d9abde7cd1f8e87c4a12232edb31e304e5ba88d230d80eb093195623cd116` |
| 44 | `instance` | [forget_commGrp_preserves_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/forget-commgrp-preserves-mono--2f17cf9fb04c9936f1e80b83.md) | 383 | `declaration-track:2f17cf9fb04c9936f1e80b8308039b1e9dfc39291b5bad994c3d12f9856dec42` |
| 45 | `instance` | [forget_commGrp_preserves_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant0f6b5440c54368689e1a4b8bee65cccbeafa0b63339a8bd3cf469e422e2f82a4.lean/declarations/forget-commgrp-preserves-epi--769a31b5395d92c9dea39dc2.md) | 387 | `declaration-track:769a31b5395d92c9dea39dc25482ac91f8f14798e34d1c86988c2971b3eafd7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
