# Verification target: GRWTSK.Topology.GeneralTopology.OmegaLimit.Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c8d6b8f9cb6a6c70ba903a83a59026bde01c19a",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c8d6b8f9cb6a6c70ba903a83a59026bde01c19a`.

Source path: `GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Flow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit--a69c0a9a84ab52b5a839262e.md) | 57 | `declaration-track:a69c0a9a84ab52b5a839262eaf3f70efd76b7d84c70b14a45feebea3c6421092` |
| 2 | `theorem` | [omegaLimit_def](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-def--1bcc6455dbc852f7c73534aa.md) | 79 | `result-track:1bcc6455dbc852f7c73534aab896a204601894e3941212aeb81cf7cc18f67778` |
| 3 | `theorem` | [omegaLimit_subset_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-subset-of-tendsto--af7444aee29c6f39b0e53a81.md) | 82 | `result-track:af7444aee29c6f39b0e53a81ac4cbb0c0c3c52bf5b5b4230a046796169f6b8cb` |
| 4 | `theorem` | [omegaLimit_mono_left](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-mono-left--57a78b00da97ccb7c8e31460.md) | 89 | `result-track:57a78b00da97ccb7c8e3146000035b19c249ec35136873055b0f95808bbc86c0` |
| 5 | `theorem` | [omegaLimit_mono_right](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-mono-right--54b66fb20ab9b17ac1f2311c.md) | 93 | `result-track:54b66fb20ab9b17ac1f2311cfcbf6cfdca2a5958d3c0632261be74e011639ca7` |
| 6 | `theorem` | [isClosed_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/isclosed-omegalimit--d4741d157fc0bcb3ed732e7b.md) | 97 | `result-track:d4741d157fc0bcb3ed732e7bd788159f18b550db4b3bdbf85a30ea616f0037d4` |
| 7 | `theorem` | [mapsTo_omegaLimit'](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/mapsto-omegalimit--4291ee0c3e70103c70d6e69a.md) | 101 | `result-track:4291ee0c3e70103c70d6e69af4233746bd2dd88b6555f268eff94a3f09bf4293` |
| 8 | `theorem` | [mapsTo_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/mapsto-omegalimit--28ca62d0ca9f4abe4c29d456.md) | 113 | `result-track:28ca62d0ca9f4abe4c29d456e97f7ea063fc87bd7569afeb8ff0cab2024925cb` |
| 9 | `theorem` | [omegaLimit_image_eq](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-image-eq--22982bfb1cb24682d0b1ab56.md) | 120 | `result-track:22982bfb1cb24682d0b1ab56e6d7c8852bd993ed174bfa4b7c8d1e4ac5dc75a6` |
| 10 | `theorem` | [omegaLimit_preimage_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-preimage-subset--63cd5803e3c28e0d5309c399.md) | 124 | `result-track:63cd5803e3c28e0d5309c39937d60cb54ebb45cbc55c96e77a0c2dc345543039` |
| 11 | `theorem` | [mem_omegaLimit_iff_frequently](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/mem-omegalimit-iff-frequently--71e324473f66cbc18090c2c3.md) | 140 | `result-track:71e324473f66cbc18090c2c378b65982a280b0dc10385d8e5138ae0c68f62537` |
| 12 | `theorem` | [mem_omegaLimit_iff_frequently₂](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/mem-omegalimit-iff-frequently--86688ff7a0dedc68f294457a.md) | 155 | `result-track:86688ff7a0dedc68f294457afe5bcf0b77bb580b22d777f4a3a41442f872c31e` |
| 13 | `theorem` | [mem_omegaLimit_singleton_iff_map_cluster_point](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/mem-omegalimit-singleton-iff-map-cluster-point--5fa77051f043ec36684876e4.md) | 163 | `result-track:5fa77051f043ec36684876e4ebd479ac1ab5f8d8b7293239d616c60397ed8f8f` |
| 14 | `theorem` | [omegaLimit_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-inter--5582c0bb695df1cb6971aabe.md) | 173 | `result-track:5582c0bb695df1cb6971aabef1fdec23dbebbb54f6a7073448eb51a312a642b6` |
| 15 | `theorem` | [omegaLimit_iInter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-iinter--25c52703f8511866c688d463.md) | 178 | `result-track:25c52703f8511866c688d4633b993da3d4237715090e2437b12623b872332444` |
| 16 | `theorem` | [omegaLimit_union](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-union--15fcb277085bc5930cdd9093.md) | 182 | `result-track:15fcb277085bc5930cdd9093cd4567bf6a6089a6f95e3ffd16f7b49c23e1157b` |
| 17 | `theorem` | [omegaLimit_iUnion](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-iunion--9f6cba78b2e5ca4fdd6fbe2e.md) | 197 | `result-track:9f6cba78b2e5ca4fdd6fbe2e635a995c78b451c1f74ebd368acc473719777141` |
| 18 | `theorem` | [omegaLimit_eq_iInter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-eq-iinter--63230b1b8b4013638a14c61d.md) | 209 | `result-track:63230b1b8b4013638a14c61dde8d7e2f2dbfebba7a54ed102448d82a32ab6da6` |
| 19 | `theorem` | [omegaLimit_eq_biInter_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-eq-biinter-inter--6fc752bfc67c1f5ea7bd0225.md) | 213 | `result-track:6fc752bfc67c1f5ea7bd02250c9dc17dc590abfdf926ba851177f3c1b926e0d0` |
| 20 | `theorem` | [omegaLimit_eq_iInter_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-eq-iinter-inter--1fb955518d12e2daec0eef53.md) | 219 | `result-track:1fb955518d12e2daec0eef538779990177a7c98453868ff1098ce8c4efdfc796` |
| 21 | `theorem` | [omegaLimit_subset_closure_fw_image](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-subset-closure-fw-image--ec40dfeaa309db3585555727.md) | 225 | `result-track:ec40dfeaa309db35855557276b03600e30f9ceaf1099f296534552bcd987b0d7` |
| 22 | `theorem` | [eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset'](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/eventually-closure-subset-of-iscompact-absorbing-of-isopen-of-omegalimit--a3a08b7139ebc3fe8d7073c6.md) | 242 | `result-track:a3a08b7139ebc3fe8d7073c6d7b73406e66dd1e5c1fcca1619fcf54d69c7f713` |
| 23 | `theorem` | [eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/eventually-closure-subset-of-iscompact-absorbing-of-isopen-of-omegalimit--a6dc39184b0ddc4af77ef6b4.md) | 281 | `result-track:a6dc39184b0ddc4af77ef6b4292074c0d08ae31b514ca13282324b8f7233fa2d` |
| 24 | `theorem` | [eventually_mapsTo_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/eventually-mapsto-of-iscompact-absorbing-of-isopen-of-omegalimit-subset--4fe471047f20d00362ef9e43.md) | 288 | `result-track:4fe471047f20d00362ef9e43d8f16270bb78ba10aac4f57a8f52b820e8b9758a` |
| 25 | `theorem` | [eventually_closure_subset_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/eventually-closure-subset-of-isopen-of-omegalimit-subset--7e85b5ed99deeb8da37e8952.md) | 298 | `result-track:7e85b5ed99deeb8da37e895206bdd1d308bb5593e22244cb1660e18c4015904c` |
| 26 | `theorem` | [eventually_mapsTo_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/eventually-mapsto-of-isopen-of-omegalimit-subset--d6faeec1bb2ddf3ba9b5fd71.md) | 304 | `result-track:d6faeec1bb2ddf3ba9b5fd71cef9b50d58dd1adbdcd74e62047a795fb015bc29` |
| 27 | `theorem` | [nonempty_omegaLimit_of_isCompact_absorbing](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/nonempty-omegalimit-of-iscompact-absorbing--ceb03503017eca0cc353bb93.md) | 312 | `result-track:ceb03503017eca0cc353bb930ff668139756cb6e38253c76a7c66e7a4dbb4ba0` |
| 28 | `theorem` | [nonempty_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/nonempty-omegalimit--9cdbc53f40a67d04e8c86a2e.md) | 333 | `result-track:9cdbc53f40a67d04e8c86a2eaf8b07cf2e393990fa09cb72790d9ba704488f88` |
| 29 | `theorem` | [isInvariant_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/isinvariant-omegalimit--b87ae86a0a56a7a07753d520.md) | 351 | `result-track:b87ae86a0a56a7a07753d5206e680ba726343c47ff77a32686c69c245d01c2b7` |
| 30 | `theorem` | [omegaLimit_image_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-image-subset--86f352fdeae2e360af595497.md) | 358 | `result-track:86f352fdeae2e360af595497cafe5d6313148bab6fab1c63148419a3eb07e97d` |
| 31 | `theorem` | [omegaLimit_image_eq](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-image-eq--138636f1e4ccd218487ee165.md) | 380 | `result-track:138636f1e4ccd218487ee1657ca658efd6fa6a3ee1aa89809f023143f5f5df5f` |
| 32 | `theorem` | [omegaLimit_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant2e2b86eeb437b1fb986da135e952cdb2b61af76a34aa1d3399cf111bbb1b089d.lean/declarations/omegalimit-omegalimit--42737efa75c8f536146f17ec.md) | 387 | `result-track:42737efa75c8f536146f17ec09dc408388e488a3f7942ee7e02cff65fdeeffdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
