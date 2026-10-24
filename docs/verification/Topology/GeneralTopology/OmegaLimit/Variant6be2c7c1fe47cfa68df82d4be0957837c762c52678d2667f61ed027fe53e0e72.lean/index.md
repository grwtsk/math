# Verification target: GRWTSK.Topology.GeneralTopology.OmegaLimit.Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45c8639944a420ef8209865a0063cbae1679adf6",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45c8639944a420ef8209865a0063cbae1679adf6`.

Source path: `GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean.json)

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
| 1 | `def` | [omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit--3d62ec3220fdfdc443183574.md) | 50 | `declaration-track:3d62ec3220fdfdc443183574a002f4fe6fe30d4b005ea63c80acbf9efedeb300` |
| 2 | `theorem` | [omegaLimit_def](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-def--24f44791c1b867b345100be0.md) | 70 | `result-track:24f44791c1b867b345100be05c19d21a1559d4e2e965982c8c49bb0e98b4ea63` |
| 3 | `theorem` | [omegaLimit_subset_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-subset-of-tendsto--c896a49788d424353205ea8b.md) | 72 | `result-track:c896a49788d424353205ea8b19b355e9ac4557bff6830c3dc99a5e08f3c2d30e` |
| 4 | `theorem` | [omegaLimit_mono_left](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-mono-left--04a1cf379b67a683faaedaca.md) | 78 | `result-track:04a1cf379b67a683faaedaca2616199fc79820c0ef29177d5dd2da7f84ca7b0f` |
| 5 | `theorem` | [omegaLimit_mono_right](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-mono-right--778f2bec4bb68bebe37928c8.md) | 81 | `result-track:778f2bec4bb68bebe37928c87ae017711e26b79a4f0ab29102731614e1dd49c3` |
| 6 | `theorem` | [isClosed_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/isclosed-omegalimit--5f887faa40a8bdc0a0c46fb5.md) | 84 | `result-track:5f887faa40a8bdc0a0c46fb5f32684db8ad170022c9700ece4b2cfa3ebe3a410` |
| 7 | `theorem` | [mapsTo_omegaLimit'](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/mapsto-omegalimit--b49178d4e198a4dc50a3ca2b.md) | 87 | `result-track:b49178d4e198a4dc50a3ca2b04c24b720624a25ede1453d00220320e53486fc1` |
| 8 | `theorem` | [mapsTo_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/mapsto-omegalimit--bd5fc05292a9ae9ab56e54eb.md) | 98 | `result-track:bd5fc05292a9ae9ab56e54eb7182b192804e432619dee7c4c0d0ac1371816599` |
| 9 | `theorem` | [omegaLimit_image_eq](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-image-eq--3d2662a0bb6f4f64540d38ff.md) | 104 | `result-track:3d2662a0bb6f4f64540d38ffb9893ce4fc1a6b2f77242da05ad04ba9c42f1728` |
| 10 | `theorem` | [omegaLimit_preimage_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-preimage-subset--519c57521a9a5fe62b29d360.md) | 107 | `result-track:519c57521a9a5fe62b29d36007139865f454d7bb325df70a2679636e5674df8a` |
| 11 | `theorem` | [mem_omegaLimit_iff_frequently](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/mem-omegalimit-iff-frequently--5f4b6e4472b4bf7d1f3ea361.md) | 120 | `result-track:5f4b6e4472b4bf7d1f3ea3617738555bdea4d57259ceb45ea1ff7f9c6a942a25` |
| 12 | `theorem` | [mem_omegaLimit_iff_frequently₂](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/mem-omegalimit-iff-frequently--e08c75e0cf8c7236530d729a.md) | 133 | `result-track:e08c75e0cf8c7236530d729aba54b20b59ff5b1b3f529666743211ee617812dc` |
| 13 | `theorem` | [mem_omegaLimit_singleton_iff_mapClusterPt](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/mem-omegalimit-singleton-iff-mapclusterpt--ecc258b09715f8b70a0c5565.md) | 139 | `result-track:ecc258b09715f8b70a0c556542c92a95bae45dd92392dbeebd777c26c8893664` |
| 14 | `theorem` | [omegaLimit_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-inter--2917b57807232353a73b29dd.md) | 151 | `result-track:2917b57807232353a73b29ddb2d9af64e39595e0c50a413fcaf5fec26ba10070` |
| 15 | `theorem` | [omegaLimit_iInter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-iinter--a3c95600c11b6db4ba7bf629.md) | 155 | `result-track:a3c95600c11b6db4ba7bf629b2de1c7dfa2b4d71b3e703d5805314ef56327bb3` |
| 16 | `theorem` | [omegaLimit_union](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-union--7018f35d9401a0255822206e.md) | 158 | `result-track:7018f35d9401a0255822206ea878e803870ad07ff0f17d76f121bfdf5e4af0fe` |
| 17 | `theorem` | [omegaLimit_iUnion](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-iunion--9d0a192a1d8694b457901f2d.md) | 172 | `result-track:9d0a192a1d8694b457901f2da5b027b7b1e515f3a121a1fc8aeb465a6ff2c5fc` |
| 18 | `theorem` | [omegaLimit_eq_iInter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-eq-iinter--712af2e010fb83da682c8380.md) | 182 | `result-track:712af2e010fb83da682c83803f38dd328bfbffe36ea14f76b9da9af1e3a2b03e` |
| 19 | `theorem` | [omegaLimit_eq_biInter_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-eq-biinter-inter--53c324605474a5f3d7fa66e3.md) | 185 | `result-track:53c324605474a5f3d7fa66e3166164006c0e6b6a4614687fc667f5cce60e99e8` |
| 20 | `theorem` | [omegaLimit_eq_iInter_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-eq-iinter-inter--508b96057d6386d34fa2af83.md) | 190 | `result-track:508b96057d6386d34fa2af834ffb5dce7352b99997384378215537dedf613141` |
| 21 | `theorem` | [omegaLimit_subset_closure_image2](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-subset-closure-image2--ee53996f762946de1fc02583.md) | 195 | `result-track:ee53996f762946de1fc02583b738e9c7acfb74df38fece846a237529fad4377c` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/instance--6af4641bdf1c89492727e33a.md) | 206 | `declaration-track:6af4641bdf1c89492727e33ad10c10104792909ad6921562c80e7026356e74c2` |
| 23 | `theorem` | [eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset'](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/eventually-closure-subset-of-iscompact-absorbing-of-isopen-of-omegalimit--01abb93a799ff1e0ab6d8b2c.md) | 216 | `result-track:01abb93a799ff1e0ab6d8b2c884e8d3ef3d26df6664ebe1d749c5bde6295b6d6` |
| 24 | `theorem` | [eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/eventually-closure-subset-of-iscompact-absorbing-of-isopen-of-omegalimit--672be87763bcd75402f1aa00.md) | 255 | `result-track:672be87763bcd75402f1aa0091d22c5ca72d88c8454ecaaa768113ff225cbdff` |
| 25 | `theorem` | [eventually_mapsTo_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/eventually-mapsto-of-iscompact-absorbing-of-isopen-of-omegalimit-subset--a04f83a0808a90e0c4d0b4f3.md) | 261 | `result-track:a04f83a0808a90e0c4d0b4f3af2295cfb561c751c39836d80de364255d94ce5b` |
| 26 | `theorem` | [eventually_closure_subset_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/eventually-closure-subset-of-isopen-of-omegalimit-subset--f127dc2c1e9554115070f359.md) | 270 | `result-track:f127dc2c1e9554115070f3599fd3dae8d8e2931570e2ce49d5f5407cc01d1c59` |
| 27 | `theorem` | [eventually_mapsTo_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/eventually-mapsto-of-isopen-of-omegalimit-subset--647053412391c89a395bbbca.md) | 275 | `result-track:647053412391c89a395bbbca549844b8fc2a1bcc963cd5f86aa1b9f5febdc3ee` |
| 28 | `theorem` | [nonempty_omegaLimit_of_isCompact_absorbing](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/nonempty-omegalimit-of-iscompact-absorbing--e1326325262b760e48fade57.md) | 282 | `result-track:e1326325262b760e48fade57addaf30d662c2ea7b042b5998c69e48d65bab086` |
| 29 | `theorem` | [nonempty_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/nonempty-omegalimit--00d13fc21ee2a246dce6e238.md) | 300 | `result-track:00d13fc21ee2a246dce6e238479c3d0eb2d4a7b2ffa725d05a9d38ff91ee9e24` |
| 30 | `theorem` | [isInvariant_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/isinvariant-omegalimit--f2f8d96a8e71224d3f729171.md) | 315 | `result-track:f2f8d96a8e71224d3f72917120566d7122a31be1300a1faf586a3d200f354ff8` |
| 31 | `theorem` | [omegaLimit_image_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-image-subset--2efa62b96e6c7f8790e7c5f5.md) | 321 | `result-track:2efa62b96e6c7f8790e7c5f5a33a1d66bc33d88c129390484cf331ddc1a4b848` |
| 32 | `theorem` | [omegaLimit_image_eq](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-image-eq--d76bd157747b43efe09f1acc.md) | 340 | `result-track:d76bd157747b43efe09f1acc092b15c6bafec6add5f5b437f5a4d64fcd736ce2` |
| 33 | `theorem` | [omegaLimit_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/declarations/omegalimit-omegalimit--65154a3e89456dceb9a5768f.md) | 346 | `result-track:65154a3e89456dceb9a5768f15b56d30607e6b4f5fc08c4bc7e9ce5e23077833` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
