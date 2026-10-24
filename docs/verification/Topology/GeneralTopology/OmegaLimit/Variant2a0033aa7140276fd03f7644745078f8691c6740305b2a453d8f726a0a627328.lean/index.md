# Verification target: GRWTSK.Topology.GeneralTopology.OmegaLimit.Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f67d0a98b6bf517e62ee2fb45e3e09258dcc7506",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f67d0a98b6bf517e62ee2fb45e3e09258dcc7506`.

Source path: `GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Flow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit--55dbc9830bec3022a4216af7.md) | 44 | `declaration-track:55dbc9830bec3022a4216af73e4e72033b95c6c2f1669e913232b8a5afabd72e` |
| 2 | `theorem` | [omegaLimit_def](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-def--7f257a7cd459b3e24428cbbd.md) | 64 | `result-track:7f257a7cd459b3e24428cbbdd98760a1ff551fb2c0cbe3b53986ca4d005ad0c2` |
| 3 | `theorem` | [omegaLimit_subset_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-subset-of-tendsto--98276b012d50139f25638dbd.md) | 66 | `result-track:98276b012d50139f25638dbd98685e3da3607698fac81712fa2fca805471eaa7` |
| 4 | `theorem` | [omegaLimit_mono_left](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-mono-left--bdaaf766e1147c88a83bff21.md) | 72 | `result-track:bdaaf766e1147c88a83bff21686fc87f94f637a4fc96b0b9b554587034e36902` |
| 5 | `theorem` | [omegaLimit_mono_right](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-mono-right--135e9554cccfa13df58f91be.md) | 75 | `result-track:135e9554cccfa13df58f91be3c678d04c12f88f92c4d4bda31bd6f3abc75fd3f` |
| 6 | `theorem` | [isClosed_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/isclosed-omegalimit--8b31339c8a76949bbee01c8a.md) | 78 | `result-track:8b31339c8a76949bbee01c8a29023c8142eec82a1bc78c91af6654a0769e96ee` |
| 7 | `theorem` | [mapsTo_omegaLimit'](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/mapsto-omegalimit--ebc93dd67b394f236dbfff98.md) | 81 | `result-track:ebc93dd67b394f236dbfff98cabc0c51ca9ccf7aed667749d36b2bc48a45ee07` |
| 8 | `theorem` | [mapsTo_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/mapsto-omegalimit--ca0325013ff246f3ba33d745.md) | 92 | `result-track:ca0325013ff246f3ba33d74544cc28329350d566aee907665d0e735919bf9126` |
| 9 | `theorem` | [omegaLimit_image_eq](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-image-eq--d5e5306e1988c9526e3270b6.md) | 98 | `result-track:d5e5306e1988c9526e3270b6270c44abb61eedd00dc58d459a020bfeb1bdcc70` |
| 10 | `theorem` | [omegaLimit_preimage_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-preimage-subset--4de2fd63552a08eb8919c11c.md) | 101 | `result-track:4de2fd63552a08eb8919c11caac212aaf0a971d3b5e9139e96a7314cdbcb7dc6` |
| 11 | `theorem` | [mem_omegaLimit_iff_frequently](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/mem-omegalimit-iff-frequently--83a59a95dad3311a81331936.md) | 115 | `result-track:83a59a95dad3311a81331936bd6e028752e7758c606a68d076bf3a78cf0df7cc` |
| 12 | `theorem` | [mem_omegaLimit_iff_frequently₂](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/mem-omegalimit-iff-frequently--f390a1f48de0470ef6325b82.md) | 129 | `result-track:f390a1f48de0470ef6325b827ff9b437d2822a9ae43f33f1fa541d66a4c1d93d` |
| 13 | `theorem` | [mem_omegaLimit_singleton_iff_map_cluster_point](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/mem-omegalimit-singleton-iff-map-cluster-point--18fa24e21ce15434822d0b43.md) | 136 | `result-track:18fa24e21ce15434822d0b43c8403f2d9f9f745b35d1afafcc73f9ee00ff4b54` |
| 14 | `theorem` | [omegaLimit_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-inter--d34f8d63de45f7b462f45a7f.md) | 145 | `result-track:d34f8d63de45f7b462f45a7fc29377762fd05519004b74f6190388e9cc047c9c` |
| 15 | `theorem` | [omegaLimit_iInter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-iinter--f35dd7e39427dd3c25bf78c6.md) | 149 | `result-track:f35dd7e39427dd3c25bf78c6d4d87ca4f5547ae209d87d3234a452b540c08c69` |
| 16 | `theorem` | [omegaLimit_union](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-union--c0ee3045fa5708e2c5754fa2.md) | 152 | `result-track:c0ee3045fa5708e2c5754fa2759ab0bb6c72410b901641454685672191ed7c69` |
| 17 | `theorem` | [omegaLimit_iUnion](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-iunion--42f0cc59278f4d892eba1af9.md) | 166 | `result-track:42f0cc59278f4d892eba1af9a5e30b74631eead8ffee0c442d2f38b91c47f790` |
| 18 | `theorem` | [omegaLimit_eq_iInter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-eq-iinter--03598448021a6358027dce8a.md) | 176 | `result-track:03598448021a6358027dce8ab8f3eafcc7726d68a800be2fd23f267caa7e90c4` |
| 19 | `theorem` | [omegaLimit_eq_biInter_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-eq-biinter-inter--a73f4823ccc853cf39aab9ff.md) | 179 | `result-track:a73f4823ccc853cf39aab9fffc446bb701f3d27dcf2e78264fd4cc47be5ca3f1` |
| 20 | `theorem` | [omegaLimit_eq_iInter_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-eq-iinter-inter--cd2553f8e5a154e155deed1f.md) | 184 | `result-track:cd2553f8e5a154e155deed1f6fd189638d0e6583839667ac00902f50e144734b` |
| 21 | `theorem` | [omegaLimit_subset_closure_fw_image](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-subset-closure-fw-image--d16f8be2c2dc7afeb8074f5e.md) | 189 | `result-track:d16f8be2c2dc7afeb8074f5e879c9570e5731d8216deb81382f8712deb544b9d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/instance--d0ffa041d1b091a2dd9282af.md) | 197 | `declaration-track:d0ffa041d1b091a2dd9282af75050001e800b1040e6fe8f851e1c9d0ad3e148c` |
| 23 | `theorem` | [eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset'](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/eventually-closure-subset-of-iscompact-absorbing-of-isopen-of-omegalimit--b9b07e6dfff5e380bfdfefac.md) | 207 | `result-track:b9b07e6dfff5e380bfdfefac2c14eb0d696e569bfc827d6feede4d33c783779d` |
| 24 | `theorem` | [eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/eventually-closure-subset-of-iscompact-absorbing-of-isopen-of-omegalimit--b0537b06e69ec9b1ff08a06a.md) | 246 | `result-track:b0537b06e69ec9b1ff08a06a0dac77483f61cf0fbd93a3d98b814e1b781a0608` |
| 25 | `theorem` | [eventually_mapsTo_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/eventually-mapsto-of-iscompact-absorbing-of-isopen-of-omegalimit-subset--6fac84c5297831faa4d22e4d.md) | 252 | `result-track:6fac84c5297831faa4d22e4dca930d03171cd4b6ef8335b423c39c5b7cfbf7f3` |
| 26 | `theorem` | [eventually_closure_subset_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/eventually-closure-subset-of-isopen-of-omegalimit-subset--3194d4621bfc328a1a3b2543.md) | 261 | `result-track:3194d4621bfc328a1a3b25439e351d920109146fd4f8993104ad2a24cf92132c` |
| 27 | `theorem` | [eventually_mapsTo_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/eventually-mapsto-of-isopen-of-omegalimit-subset--536355b89c6e06117fd2d410.md) | 266 | `result-track:536355b89c6e06117fd2d41037d798a474e369e325d24c3ba2c03d96bb287ad1` |
| 28 | `theorem` | [nonempty_omegaLimit_of_isCompact_absorbing](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/nonempty-omegalimit-of-iscompact-absorbing--5a663c1eb9d00aa73d23f213.md) | 273 | `result-track:5a663c1eb9d00aa73d23f21322ab29d66b60462e32013e8f8a077d98a6ddb482` |
| 29 | `theorem` | [nonempty_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/nonempty-omegalimit--54241b3c25568063c2642415.md) | 293 | `result-track:54241b3c25568063c26424150435d1e7ab1bc97dc6e356ebd74c6cf821007069` |
| 30 | `theorem` | [isInvariant_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/isinvariant-omegalimit--bb732792689e33015836bc35.md) | 308 | `result-track:bb732792689e33015836bc35b16380758627ae6e62e13dd9c334155d7fb81de9` |
| 31 | `theorem` | [omegaLimit_image_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-image-subset--1dffd3483c40e5b81506b22a.md) | 314 | `result-track:1dffd3483c40e5b81506b22aa76a3cf480bedd6d193d7545d91b32272a0a61c3` |
| 32 | `theorem` | [omegaLimit_image_eq](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-image-eq--2fe7460134ebae55e4059460.md) | 333 | `result-track:2fe7460134ebae55e405946022e048e0890f732613e13f103eaba71fd6dc45e2` |
| 33 | `theorem` | [omegaLimit_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/declarations/omegalimit-omegalimit--3d0e34d8774f68a5fb52eb49.md) | 339 | `result-track:3d0e34d8774f68a5fb52eb4910d4b13ac40b3a837a38dd8571a6b2df56c4c5f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
