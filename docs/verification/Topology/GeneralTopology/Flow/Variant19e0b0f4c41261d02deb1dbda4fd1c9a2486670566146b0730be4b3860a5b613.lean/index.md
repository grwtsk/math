# Verification target: GRWTSK.Topology.GeneralTopology.Flow.Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a49718b8b6db11be3100c9d984ae75659b732175",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a49718b8b6db11be3100c9d984ae75659b732175`.

Source path: `GRWTSK/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean.json)

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
| 1 | `def` | [IsInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/isinvariant--95036e6acad1a9e4e2aad93a.md) | 56 | `declaration-track:95036e6acad1a9e4e2aad93abed3ff5fcc1c394bf60311b33518d802fb3e4ffe` |
| 2 | `theorem` | [isInvariant_iff_image](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/isinvariant-iff-image--9bd39431867baa33e9278f0d.md) | 61 | `result-track:9bd39431867baa33e9278f0d4ca8e3e1fadaae4cef0f2b80ef6cbb10ab2e3208` |
| 3 | `def` | [IsForwardInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/isforwardinvariant--b34379523fb6c7e1f810ef73.md) | 65 | `declaration-track:b34379523fb6c7e1f810ef734bdd5e082a1772de70075012ba3bc663939a98ca` |
| 4 | `theorem` | [IsInvariant.isForwardInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/isinvariant-isforwardinvariant--35f22c68e954a9736c986a4e.md) | 68 | `result-track:35f22c68e954a9736c986a4e7f569cf57b099e08128b193e9283c79eb730c84d` |
| 5 | `theorem` | [IsForwardInvariant.isInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/isforwardinvariant-isinvariant--a715ed2d1494831841bbf396.md) | 73 | `result-track:a715ed2d1494831841bbf396988b052d9ae9caee86dbb30d587971963fc872d8` |
| 6 | `theorem` | [isForwardInvariant_iff_isInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/isforwardinvariant-iff-isinvariant--ee6c187fb10de5de45c8bdb2.md) | 79 | `result-track:ee6c187fb10de5de45c8bdb27f4f5837003df8b6c5b10f78a6158a689bcd4f46` |
| 7 | `structure` | [Flow](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/flow--eee1aa92493d1e459550e3c3.md) | 93 | `declaration-track:eee1aa92493d1e459550e3c3f5c1c6afcb5c63b5256a38dad8181fa0cb2fe140` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/instance--6bb6879374d5c6547ce8d4fd.md) | 108 | `declaration-track:6bb6879374d5c6547ce8d4fdbaee8b714b324f2c569dd88ccb44534394c44fa8` |
| 9 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/id--174b5f42077625a5eb32c747.md) | 112 | `declaration-track:174b5f42077625a5eb32c7478532510121dd36bd16cd0f1b3d1c258f6787c160` |
| 10 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/id-apply--ef0bcd9a0cba245318284b76.md) | 119 | `result-track:ef0bcd9a0cba245318284b766dd0b2884b288f3757189093c4d5695ecc498acb` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/instance--30072e84fc914ed6cdd5cea1.md) | 121 | `declaration-track:30072e84fc914ed6cdd5cea17a12d4963f4ec61b74c0e2fa0345356a22cd2d7a` |
| 12 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/ext--cd41d5266fa68a206c0aefcd.md) | 125 | `result-track:cd41d5266fa68a206c0aefcda601b49ee9ab08fe56682bda66429361eb9eb01e` |
| 13 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/continuous--bb7d160e8b79a6df57103203.md) | 132 | `result-track:bb7d160e8b79a6df57103203a097b02a4a2e371f2612dade16f280d93bf2cc4b` |
| 14 | `theorem` | [continuous_toFun](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/continuous-tofun--1739ecd3226b3d6f7736119e.md) | 139 | `result-track:1739ecd3226b3d6f7736119e84eab52fb633e18ea7966c37c5cbe3046b9101cc` |
| 15 | `theorem` | [map_add](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/map-add--48df3fb8b8f1d1f96413e791.md) | 142 | `result-track:48df3fb8b8f1d1f96413e791a0382870555b1c4d3a6f72a6004cfea0a1a70e8d` |
| 16 | `theorem` | [map_zero](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/map-zero--191993d6051689f929886274.md) | 145 | `result-track:191993d6051689f92988627442db83f8edae850c80785c47774d1ac4a26d0710` |
| 17 | `theorem` | [map_zero_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/map-zero-apply--95fea8e7c45ca2397c3a7cd5.md) | 147 | `result-track:95fea8e7c45ca2397c3a7cd5e9f97e2500a9e49e0326f81d7657ee81e42cb0bf` |
| 18 | `def` | [fromIter](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/fromiter--29dc15d033ab757b3ada225e.md) | 151 | `declaration-track:29dc15d033ab757b3ada225e559e162551be59036bde24e8aba0e0ab5eb22576` |
| 19 | `theorem` | [fromIter_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/fromiter-apply--0dfab3b12dfaa0af803ca955.md) | 158 | `result-track:0dfab3b12dfaa0af803ca955a08efeca3300acb1cbb7afe4efc7abfdb01ccc07` |
| 20 | `def` | [_root_.GRWTSK.Topology.GeneralTopology.Flow.Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.Homeomorph.flow](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/root-grwtsk-topology-generaltopology-flow-variant699d26276fb429c6159bb0c--86e6c4ee74e6bd5e9709224a.md) | 162 | `declaration-track:86e6c4ee74e6bd5e9709224a1231fdc628cda6987e707bfb8214d11751cbb93c` |
| 21 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Flow.Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.Homeomorph.flow_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/root-grwtsk-topology-generaltopology-flow-variant699d26276fb429c6159bb0c--4d863f91f25b640c0890d0f6.md) | 173 | `result-track:4d863f91f25b640c0890d0f6f8cda2309307610f3a71625cd2983cda206ae592` |
| 22 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Flow.Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.Homeomorph.one_flow](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/root-grwtsk-topology-generaltopology-flow-variant699d26276fb429c6159bb0c--7e955abcda543444cc05c5e1.md) | 178 | `result-track:7e955abcda543444cc05c5e153c84106308399e0658f69ba91faad2416649bbf` |
| 23 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Flow.Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.Homeomorph.inv_flow](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/root-grwtsk-topology-generaltopology-flow-variant699d26276fb429c6159bb0c--5ef1efe6d5c09f6e5cca43b3.md) | 182 | `result-track:5ef1efe6d5c09f6e5cca43b3bdeea05361286e1f76a0f6bb3ffdf6af2cde190f` |
| 24 | `def` | [restrict](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/restrict--73346c0218fbec8320829f48.md) | 186 | `declaration-track:73346c0218fbec8320829f483c5c74ef9a761ea2f7a95ac546e220437a4d0bea` |
| 25 | `theorem` | [coe_restrict_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/coe-restrict-apply--2cf64a85ee8fb7c6fbae3b7c.md) | 193 | `result-track:2cf64a85ee8fb7c6fbae3b7c20961a75a8ebd75f628a4bb7259ad465ea35e719` |
| 26 | `def` | [toAddAction](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/toaddaction--ccd0be8789e5438ef1d055ae.md) | 204 | `declaration-track:ccd0be8789e5438ef1d055ae63570ae452df5754c253a4826bb3b1fc3cdcb9eb` |
| 27 | `def` | [restrictAddSubmonoid](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/restrictaddsubmonoid--da754d86e4d263679f903a30.md) | 210 | `declaration-track:da754d86e4d263679f903a309ee186dced4297bfafef0637c1e3737e1f0b0e45` |
| 28 | `theorem` | [restrictAddSubmonoid_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/restrictaddsubmonoid-apply--e8fb6325230b363373595582.md) | 216 | `result-track:e8fb6325230b3633735955822e45989f5bc600d74a5a017dc53ee453ae30375f` |
| 29 | `def` | [orbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/orbit--b939b8dba37844228ba05e99.md) | 222 | `declaration-track:b939b8dba37844228ba05e99953350820f8196b825e0389a2c9bb62cb9aefd3c` |
| 30 | `theorem` | [orbit_eq_range](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/orbit-eq-range--afef2d9c1ef4b56379b96015.md) | 224 | `result-track:afef2d9c1ef4b56379b96015c1080f8b7b4bfd0b882b7261d48230b06bc5e8b6` |
| 31 | `theorem` | [mem_orbit_iff](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/mem-orbit-iff--847f3e4aa794108398488d64.md) | 226 | `result-track:847f3e4aa794108398488d6429240c1762d8f275e009933bb2b21960daf41bd4` |
| 32 | `theorem` | [mem_orbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/mem-orbit--bf3716df5b0b42143abcc96e.md) | 228 | `result-track:bf3716df5b0b42143abcc96e3200700a7babe822a822458f975d4658021cfd5c` |
| 33 | `theorem` | [mem_orbit_self](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/mem-orbit-self--b61ddb955a1be529428d8eff.md) | 231 | `result-track:b61ddb955a1be529428d8effb4a2eaa43ed63d7e48b078d269d26f9a5903de02` |
| 34 | `theorem` | [nonempty_orbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/nonempty-orbit--d1bfe2ec01e2408d35d65543.md) | 233 | `result-track:d1bfe2ec01e2408d35d655431dcbf39fc0df9bbd97a3f980aca4ef3c56d0cabb` |
| 35 | `theorem` | [mem_orbit_of_mem_orbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/mem-orbit-of-mem-orbit--75cf7ddcc66c7e43ec59418b.md) | 235 | `result-track:75cf7ddcc66c7e43ec59418bcc57d17884e5b66a1402aabe1f8be20b128ecfe7` |
| 36 | `theorem` | [isInvariant_orbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/isinvariant-orbit--019b234a61d5881a5aa153ae.md) | 239 | `result-track:019b234a61d5881a5aa153aee14b72c3101bbce353d637d12486953f115a6079` |
| 37 | `theorem` | [orbit_restrict](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/orbit-restrict--b68fd52d2c33ae6918455b60.md) | 242 | `result-track:b68fd52d2c33ae6918455b6033d14fec1620b6e7b0ca2db76b98196f281c1ab5` |
| 38 | `def` | [restrictNonneg](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/restrictnonneg--9fe4c850d2d5271a5d334fcb.md) | 249 | `declaration-track:9fe4c850d2d5271a5d334fcbbe265143f1b100a76ab88f05b8e2adcce8942fbe` |
| 39 | `def` | [forwardOrbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/forwardorbit--a1764c100f2544a072d26cfc.md) | 252 | `declaration-track:a1764c100f2544a072d26cfc06bc2f1dc477e85523637a68dc66371e57128a11` |
| 40 | `theorem` | [forwardOrbit_eq_range_nonneg](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/forwardorbit-eq-range-nonneg--1bcea655021da6d7283d9bee.md) | 254 | `result-track:1bcea655021da6d7283d9bee6ebbbadfa8fca1e28e4f5c1fbd0e7cda7a9aa59e` |
| 41 | `theorem` | [isForwardInvariant_forwardOrbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/isforwardinvariant-forwardorbit--50e15d5a5ada677fe235dab6.md) | 258 | `result-track:50e15d5a5ada677fe235dab6ac840d33a659bfe4ba7d62f2e64141e50217108f` |
| 42 | `theorem` | [forwardOrbit_subset_orbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/forwardorbit-subset-orbit--4d0726d6cc968fb5cd9c6727.md) | 262 | `result-track:4d0726d6cc968fb5cd9c672733047b42c302cf95f33cc027456501c21b7affe4` |
| 43 | `theorem` | [mem_orbit_of_mem_forwardOrbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/mem-orbit-of-mem-forwardorbit--ced393bd2cce129f96015c51.md) | 265 | `result-track:ced393bd2cce129f96015c51f5f24ac91920e65845aafe315eb9a51db83624e6` |
| 44 | `structure` | [IsSemiconjugacy](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/issemiconjugacy--8c2989faf0fde60de6fc9616.md) | 275 | `declaration-track:8c2989faf0fde60de6fc96166660b3e7e95c0c8e6afce029ec187b2ec633a8bb` |
| 45 | `theorem` | [IsSemiconjugacy.comp](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/issemiconjugacy-comp--e8efbdeab8ec1ec1dcc5bad8.md) | 281 | `result-track:e8efbdeab8ec1ec1dcc5bad852d48cd2d9cda198c1c5bb306f823bf92f2d43b7` |
| 46 | `theorem` | [isSemiconjugacy_id_iff_eq](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/issemiconjugacy-id-iff-eq--870795bd6d9c5d5830688555.md) | 286 | `result-track:870795bd6d9c5d583068855569e5678a1c3861eb20ff8b2d301f7cfa25c6c342` |
| 47 | `def` | [IsFactorOf](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/isfactorof--2b0071cd98dedc0bbe4e621b.md) | 290 | `declaration-track:2b0071cd98dedc0bbe4e621b4ef4e847e756ea479de3099ea9fd1f4431e99879` |
| 48 | `theorem` | [IsSemiconjugacy.isFactorOf](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/issemiconjugacy-isfactorof--3a13b57b2e89b3e7310b1367.md) | 292 | `result-track:3a13b57b2e89b3e7310b13679dbe054c775bbfc3a54da2dbeaee7476c6388e10` |
| 49 | `theorem` | [IsFactorOf.trans](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/isfactorof-trans--1e04cba4911556d86539688e.md) | 296 | `result-track:1e04cba4911556d86539688e10931f5862725277742577410d21110a29540ea6` |
| 50 | `theorem` | [IsFactorOf.self](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/isfactorof-self--c3bb8eda21d8d72bcb82822d.md) | 300 | `result-track:c3bb8eda21d8d72bcb82822db5f3768c14be17ae3fe6ddbbbd0ba597bc022056` |
| 51 | `def` | [toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/tohomeomorph--917c784350e08ac2fcbefbe6.md) | 309 | `declaration-track:917c784350e08ac2fcbefbe63d3e9685cb937c68bd100350d63cee2097347a0e` |
| 52 | `theorem` | [toHomeomorph_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/tohomeomorph-apply--eda6a0d886278250b8dca12f.md) | 316 | `result-track:eda6a0d886278250b8dca12f2d9842fa63d14101b7af281dc4151287132cd37b` |
| 53 | `theorem` | [toHomeomorph_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/tohomeomorph-symm-apply--1d8287d95e31b5c6e8b87cb3.md) | 319 | `result-track:1d8287d95e31b5c6e8b87cb365382dca9d7133b299599447ac6020c896b9f837` |
| 54 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Flow.Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.Homeomorph.toHomeomorph_flow_eq](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/root-grwtsk-topology-generaltopology-flow-variant699d26276fb429c6159bb0c--ec5d46bb77f44460b56d60e6.md) | 322 | `result-track:ec5d46bb77f44460b56d60e63d8de245f1dad8792989e7d5f24bc34764f6b540` |
| 55 | `theorem` | [isInvariant_iff_image_eq](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/isinvariant-iff-image-eq--7f695fdc834b7fd8fd0c3d49.md) | 326 | `result-track:7f695fdc834b7fd8fd0c3d49ec72d89c33a6f0886b49eab5e7ed491cb30c9a2a` |
| 56 | `theorem` | [image_eq_preimage_symm](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/image-eq-preimage-symm--4d075c050c5c180cf96146ce.md) | 332 | `result-track:4d075c050c5c180cf96146ce329fbaf8862af3a0a3135f5bc7089a2d7e60e425` |
| 57 | `def` | [reverse](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/reverse--d4bf764c1946fbddfea659eb.md) | 343 | `declaration-track:d4bf764c1946fbddfea659eb70424942d893146a9a30f04a6ae0ff6da9cffdd8` |
| 58 | `theorem` | [reverse_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant19e0b0f4c41261d02deb1dbda4fd1c9a2486670566146b0730be4b3860a5b613.lean/declarations/reverse-apply--3ae53a1a9c81250d733228c3.md) | 350 | `result-track:3ae53a1a9c81250d733228c3faabf4241918717f5f5868dd1e1bc4c40eccdab9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
