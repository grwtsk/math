# Verification target: GRWTSK.Topology.GeneralTopology.LocallyClosed.Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7665035979a7f4e66214225fdaa18a651ddec13e",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7665035979a7f4e66214225fdaa18a651ddec13e`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean.json)

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
| 1 | `lemma` | [mem_coborder_iff_imp](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/mem-coborder-iff-imp--6be61f3dd6331fe013ba4530.md) | 53 | `result-track:6be61f3dd6331fe013ba453068480548c97e16a78ca9eb4d5fb48ddf37d42423` |
| 2 | `lemma` | [subset_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/subset-coborder--7fb3372eb72c455acff694b4.md) | 57 | `result-track:7fb3372eb72c455acff694b4ec430a028dbb8f74b8b9e27cf71920181c7e9449` |
| 3 | `lemma` | [coborder_inter_closure](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/coborder-inter-closure--2b9e85ce28a6cd3e7a66f4f0.md) | 62 | `result-track:2b9e85ce28a6cd3e7a66f4f0ab964c59df5465c15bc96a4a8949002af19b1ee7` |
| 4 | `lemma` | [closure_inter_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/closure-inter-coborder--e0c1f84c81a60a70f6f0ffb4.md) | 67 | `result-track:e0c1f84c81a60a70f6f0ffb439ff14458600194d9c3b16225e33def0e390dc7a` |
| 5 | `lemma` | [coborder_eq_union_frontier_compl](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/coborder-eq-union-frontier-compl--52e415ad32de0baa22116b09.md) | 71 | `result-track:52e415ad32de0baa22116b09f0bb6a3be218868239a7755c4df5b4e39f6cceea` |
| 6 | `lemma` | [coborder_eq_univ_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/coborder-eq-univ-iff--cc212b4eedd195743d5fae73.md) | 76 | `result-track:cc212b4eedd195743d5fae73e2947127f6c9bae21bce6e545cef37c294e49c38` |
| 7 | `lemma` | [coborder_eq_compl_frontier_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/coborder-eq-compl-frontier-iff--44e98975c04f45919ceb34f1.md) | 82 | `result-track:44e98975c04f45919ceb34f1abb2af60600b266fe28a7da9a846a9e49caf5a6f` |
| 8 | `theorem` | [coborder_eq_union_closure_compl](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/coborder-eq-union-closure-compl--b3427f50177b4e5290a77b09.md) | 87 | `result-track:b3427f50177b4e5290a77b099f081ea64e2e067b7eb0e1baa9eb0985a360e3b1` |
| 9 | `theorem` | [dense_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/dense-coborder--8113113a2733c55218381529.md) | 92 | `result-track:8113113a2733c55218381529ae3540e2795e240863d63e5849e11eea476de674` |
| 10 | `lemma` | [IsOpenMap.coborder_preimage_subset](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/isopenmap-coborder-preimage-subset--386aab654850fa073b3de6db.md) | 100 | `result-track:386aab654850fa073b3de6db784af43514484624f99073bcfdaf22fbb5b4e9f1` |
| 11 | `lemma` | [Continuous.preimage_coborder_subset](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/continuous-preimage-coborder-subset--3ad041cc6c5039b8681e78d4.md) | 106 | `result-track:3ad041cc6c5039b8681e78d4307f0850f202da443c93b2c70980d5c2f4886aad` |
| 12 | `lemma` | [coborder_preimage](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/coborder-preimage--e7f2d4edc7f1098e7f326604.md) | 112 | `result-track:e7f2d4edc7f1098e7f326604ab39127b0fd9e1ea8ddd975615d5947e296e081e` |
| 13 | `lemma` | [Topology.IsOpenEmbedding.coborder_preimage](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/topology-isopenembedding-coborder-preimage--246e7fd0178cad93ac4f19d3.md) | 117 | `result-track:246e7fd0178cad93ac4f19d38c54dcc4296ec2c0cd1bf3962d6e85fb41572c95` |
| 14 | `lemma` | [isClosed_preimage_val_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/isclosed-preimage-val-coborder--68d2cdacc3461ab8d37ed497.md) | 121 | `result-track:68d2cdacc3461ab8d37ed497dc3a60ad73af346189cdcf5bf922cf83ba7e70e3` |
| 15 | `lemma` | [IsLocallyClosedAt.of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-of-mem-nhds--13c72f80ece6ef0b64d5b346.md) | 129 | `result-track:13c72f80ece6ef0b64d5b3468f09d0e0d26cc7aa23516fc2c8d68ab1a0b7eec6` |
| 16 | `lemma` | [IsLocallyClosedAt.of_notMem_closure](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-of-notmem-closure--3fe0d8c5234647badf9def9d.md) | 133 | `result-track:3fe0d8c5234647badf9def9dcff614fd075638c60ee6fbd7566a724131d1066e` |
| 17 | `lemma` | [IsLocallyClosedAt.preimage](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-preimage--98484a918db126195a6895f5.md) | 138 | `result-track:98484a918db126195a6895f556246107ea82666d779f202c80e4963986ca9a15` |
| 18 | `lemma` | [isLocallyClosedAt_tfae](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-tfae--1aa23a31ab56fe1f59ee4aa1.md) | 160 | `result-track:1aa23a31ab56fe1f59ee4aa135a085613221a1abf78db95371dd815092797f26` |
| 19 | `lemma` | [isLocallyClosedAt_iff_exists_isClosed_preimage_val](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-iff-exists-isclosed-preimage-val--00290a5e4ee8885dc8124793.md) | 202 | `result-track:00290a5e4ee8885dc81247939cc098c99a5d29b8796f235bd519cad32126c27a` |
| 20 | `lemma` | [isLocallyClosedAt_iff_exists_inter_closure_subset](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-iff-exists-inter-closure-subset--51f0d6ff36bb9cf5aa03eca8.md) | 206 | `result-track:51f0d6ff36bb9cf5aa03eca8a19b1ec2a4cd830c6830b8f7158533c1ce1b089b` |
| 21 | `lemma` | [isLocallyClosedAt_iff_exists_eq_inter_closure](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-iff-exists-eq-inter-closure--0c9c6663bdb2e652c3ef7d3b.md) | 210 | `result-track:0c9c6663bdb2e652c3ef7d3bbd0795b68e9db1d786ad4f529c7b3a8970d39455` |
| 22 | `lemma` | [isLocallyClosedAt_iff_exists_isClosed_inter_eq_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-iff-exists-isclosed-inter-eq-of-hasbasis--784cc50ab5b793a0adfa4cbd.md) | 214 | `result-track:784cc50ab5b793a0adfa4cbd2e4e06e2f00a36c3b2cc1bf1144e506d5a150477` |
| 23 | `lemma` | [isLocallyClosedAt_iff_exists_isClosed_preimage_val_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-iff-exists-isclosed-preimage-val-of-hasbasis--e3aaaf7a1964632783ae7dda.md) | 222 | `result-track:e3aaaf7a1964632783ae7ddaa385aa1e0d9237f26b0c90268a81f0168f3a190f` |
| 24 | `lemma` | [isLocallyClosedAt_iff_exists_inter_closure_subset_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-iff-exists-inter-closure-subset-of-hasbasis--0ebf838119d64688f269e35f.md) | 229 | `result-track:0ebf838119d64688f269e35f63cf7e9cdedc9dec850cceb19ea4ef299498272b` |
| 25 | `lemma` | [isLocallyClosedAt_iff_exists_eq_inter_closure_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-iff-exists-eq-inter-closure-of-hasbasis--456274e344715c3af9bc2306.md) | 236 | `result-track:456274e344715c3af9bc2306556bfd3953c8e232096f931c4dab5d305c4ac6ef` |
| 26 | `lemma` | [isLocallyClosedAt_iff_exists_isClosed_eventuallyEqSet](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-iff-exists-isclosed-eventuallyeqset--183234ef11b00ca4a91cba0a.md) | 243 | `result-track:183234ef11b00ca4a91cba0ac28d7fe52f917c3898070d4b469f3723e10391f3` |
| 27 | `lemma` | [isLocallyClosedAt_iff_eventuallyEqSet_closure](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-iff-eventuallyeqset-closure--37cd9016e27bf915642664ad.md) | 251 | `result-track:37cd9016e27bf915642664ad1bd48329a9853538f887cb6bfa9dd108e16e438c` |
| 28 | `lemma` | [isLocallyClosedAt_iff_closure_eventuallySubset](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-iff-closure-eventuallysubset--b64db93095dab19de534ea73.md) | 259 | `result-track:b64db93095dab19de534ea73d59efd4ae2843349a2fab3abd946ec81cb4a0019` |
| 29 | `lemma` | [isLocallyClosedAt_iff_coborder_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-iff-coborder-mem-nhds--96c3a7a24011b8ee0c6e2c6d.md) | 267 | `result-track:96c3a7a24011b8ee0c6e2c6d7191dcb1cbc1fd5cde1fabe163b0fececfebe5e6` |
| 30 | `lemma` | [IsLocallyClosedAt.congr](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-congr--d1b8daecc758aef99777c6b6.md) | 270 | `result-track:d1b8daecc758aef99777c6b62c6a29902882019c7c7c8ae50b7cf4220691a8f1` |
| 31 | `lemma` | [isLocallyClosedAt_congr](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-congr--f85897a879cd8be468cdb564.md) | 275 | `result-track:f85897a879cd8be468cdb564779dc1bf4b0006bace172a6746b6725d76b55b96` |
| 32 | `lemma` | [interior_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/interior-coborder--04672a45800725d9af29cd33.md) | 279 | `result-track:04672a45800725d9af29cd33d494777efc64637b34da868993486214dee54498` |
| 33 | `lemma` | [IsLocallyClosedAt.inter](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-inter--0f9acf90da27197a67f2a028.md) | 283 | `result-track:0f9acf90da27197a67f2a0280d374a447c12551291f589c707c85b5190b09063` |
| 34 | `lemma` | [IsLocallyClosedAt.union](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosedat-union--3c8ae42ba019eb8be3bab0fe.md) | 290 | `result-track:3c8ae42ba019eb8be3bab0fe1da0c2e52f57909cd40c9f41c7aa6f3d9c688389` |
| 35 | `lemma` | [IsLocallyClosed.isLocallyClosedAt](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosed-islocallyclosedat--b04965d46cf0b2002a0a0a97.md) | 301 | `result-track:b04965d46cf0b2002a0a0a97eb35787d148db056d9a55cff16b57fed05b8f007` |
| 36 | `lemma` | [IsLocallyClosed.inter](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosed-inter--af39c2c2cad80a56e7df918b.md) | 306 | `result-track:af39c2c2cad80a56e7df918bd9d90c57f67a3d81f9ec2da11bc13e564487e6a3` |
| 37 | `lemma` | [IsLocallyClosed.preimage](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosed-preimage--509d4de21db6b9501f420583.md) | 312 | `result-track:509d4de21db6b9501f42058369c406116a6d8b7b5062fa6aea7c88e6fe912a66` |
| 38 | `lemma` | [Topology.IsInducing.isLocallyClosed_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/topology-isinducing-islocallyclosed-iff--d679c23c596216865fc0574d.md) | 318 | `result-track:d679c23c596216865fc0574df2d90df20ad150b22dbb6f576fa844c84fe58e54` |
| 39 | `lemma` | [Topology.IsEmbedding.isLocallyClosed_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/topology-isembedding-islocallyclosed-iff--c9210759afcf3bce165ce39a.md) | 328 | `result-track:c9210759afcf3bce165ce39a137737ee64c6f444f70cf3789740ec061600c322` |
| 40 | `lemma` | [IsLocallyClosed.image](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosed-image--24d2c6cd00ab32af1c035175.md) | 334 | `result-track:24d2c6cd00ab32af1c0351751cae51dff0b840642d649876dfb4724d02c1d0fb` |
| 41 | `lemma` | [isLocallyClosed_tfae](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosed-tfae--03940ae33aa9199a87dc41e6.md) | 350 | `result-track:03940ae33aa9199a87dc41e60cd85967b8ea14e4173242bc323bb35c722cea5b` |
| 42 | `lemma` | [isLocallyClosed_iff_isLocallyClosedAt](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosed-iff-islocallyclosedat--2648250fa6fb76acdff7a393.md) | 371 | `result-track:2648250fa6fb76acdff7a3939cf2d29de881d2df6f35da53553cce97db1cc98b` |
| 43 | `lemma` | [isLocallyClosed_iff_isOpen_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosed-iff-isopen-coborder--2e9f5964d97a56a57ce46c61.md) | 375 | `result-track:2e9f5964d97a56a57ce46c61d8e42025888e11c047f6ffbd2455ab0b8ea43794` |
| 44 | `lemma` | [isLocallyClosed_iff_isOpen_preimage_val_closure](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/declarations/islocallyclosed-iff-isopen-preimage-val-closure--c8799f1385a91b05dca102ff.md) | 380 | `result-track:c8799f1385a91b05dca102ff18fc4174d8eb47b3b95077eb2a1e7ccd9db62901` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
