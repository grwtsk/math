# Verification target: GRWTSK.Topology.GeneralTopology.OmegaLimit.Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cab206f722db59a1d6fdee404ce3b4d80e6eec0e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cab206f722db59a1d6fdee404ce3b4d80e6eec0e`.

Source path: `GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean.json)

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
| 1 | `def` | [omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit--9e5978c7a816322d27142428.md) | 49 | `declaration-track:9e5978c7a816322d271424285a4d8186ad207c86bb7c65bdf54ef0b408256aef` |
| 2 | `theorem` | [omegaLimit_def](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-def--1435c98dcadbc038405717d5.md) | 71 | `result-track:1435c98dcadbc038405717d505c19482f6725d6cd53806c58560d2e94e2180eb` |
| 3 | `theorem` | [omegaLimit_subset_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-subset-of-tendsto--7c2634d5799b405f18668498.md) | 74 | `result-track:7c2634d5799b405f18668498a5e5e7ec04d36759876f90ecec4ef582ffff4458` |
| 4 | `theorem` | [omegaLimit_mono_left](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-mono-left--52a6e6ed0063cd67e6e399ca.md) | 81 | `result-track:52a6e6ed0063cd67e6e399cad9ba571bf29a9f0100c911432de14fc0bc3ed120` |
| 5 | `theorem` | [omegaLimit_mono_right](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-mono-right--6ae96aad092fa0614277918f.md) | 85 | `result-track:6ae96aad092fa0614277918fe3b46516ee723a803fd29cef0f9e8ca90f882e5d` |
| 6 | `theorem` | [isClosed_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/isclosed-omegalimit--4a87c8edba2dce28d3a4ca30.md) | 89 | `result-track:4a87c8edba2dce28d3a4ca30709f3e8e1de96508b30363b04fe131e57b6a0d1d` |
| 7 | `theorem` | [mapsTo_omegaLimit'](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/mapsto-omegalimit--8578e65a17c15722d35540e6.md) | 93 | `result-track:8578e65a17c15722d35540e620a322abe88e4b8ede76df8dada1e69933402445` |
| 8 | `theorem` | [mapsTo_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/mapsto-omegalimit--a2b8480a50ad98b0e2d2ee57.md) | 105 | `result-track:a2b8480a50ad98b0e2d2ee5791942b303ccc224e9229b45f9a593ff6066be333` |
| 9 | `theorem` | [omegaLimit_image_eq](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-image-eq--7f05a576357e763b509f4aa7.md) | 112 | `result-track:7f05a576357e763b509f4aa7627ed3941e1de06485a3912f32340ad1420297e5` |
| 10 | `theorem` | [omegaLimit_preimage_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-preimage-subset--1a3c0646623d798f49095e6b.md) | 116 | `result-track:1a3c0646623d798f49095e6b1b4e3673bc8d67ab5fc0654eaed0c4bf6ff65166` |
| 11 | `theorem` | [mem_omegaLimit_iff_frequently](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/mem-omegalimit-iff-frequently--c40483a790a5882c8ea6e6df.md) | 132 | `result-track:c40483a790a5882c8ea6e6df1cd9d7da88804fca62195ca571a1d2ed029b4e3c` |
| 12 | `theorem` | [mem_omegaLimit_iff_frequently₂](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/mem-omegalimit-iff-frequently--60055255a36dada1d7e42aec.md) | 147 | `result-track:60055255a36dada1d7e42aecec8a3ca544d6fb50ad742dbc28f53a38771c9340` |
| 13 | `theorem` | [mem_omegaLimit_singleton_iff_map_cluster_point](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/mem-omegalimit-singleton-iff-map-cluster-point--504040c625e6dfd0e48ec22d.md) | 155 | `result-track:504040c625e6dfd0e48ec22da86f37d87c0b401538d4f720dc3303baaf26a98f` |
| 14 | `theorem` | [omegaLimit_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-inter--d82e0e5508f8f9f1b7da0193.md) | 165 | `result-track:d82e0e5508f8f9f1b7da019351a889be9b2479cfda84a470db99853da1c3705e` |
| 15 | `theorem` | [omegaLimit_iInter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-iinter--0a606a32cdb56d1f9bfb9ea7.md) | 170 | `result-track:0a606a32cdb56d1f9bfb9ea770be07622527e642ad3aa8dea8459b9b6f5b0b69` |
| 16 | `theorem` | [omegaLimit_union](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-union--b0295cd5dd876ff72463001a.md) | 174 | `result-track:b0295cd5dd876ff72463001a3a47cb2881975b53b07926292337d8c8f13857a9` |
| 17 | `theorem` | [omegaLimit_iUnion](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-iunion--fd99709f20363458a9fed95f.md) | 189 | `result-track:fd99709f20363458a9fed95fd63c446f3d82b96d26533d8f388cf6b048765cff` |
| 18 | `theorem` | [omegaLimit_eq_iInter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-eq-iinter--0e6ac492a2094faf17f13f52.md) | 201 | `result-track:0e6ac492a2094faf17f13f5257d316059e908601491fd366854a562a0f004159` |
| 19 | `theorem` | [omegaLimit_eq_biInter_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-eq-biinter-inter--e6260fb49314b00ed211a65e.md) | 205 | `result-track:e6260fb49314b00ed211a65e0bbde45ef6ab8798371b2dc84a8b4c8482cbcb9a` |
| 20 | `theorem` | [omegaLimit_eq_iInter_inter](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-eq-iinter-inter--e7b0fd7f15b4371f0e7b2019.md) | 211 | `result-track:e7b0fd7f15b4371f0e7b201968fa4414b85c6ed5df50bb32a2a4b4f0573099de` |
| 21 | `theorem` | [omegaLimit_subset_closure_fw_image](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-subset-closure-fw-image--eaf169b234408a398a7cb914.md) | 217 | `result-track:eaf169b234408a398a7cb9143e570b767887d74a24069379d0d05903d9796c23` |
| 22 | `theorem` | [eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset'](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/eventually-closure-subset-of-iscompact-absorbing-of-isopen-of-omegalimit--ca01ead72b3b94f25958fdd8.md) | 234 | `result-track:ca01ead72b3b94f25958fdd8d516dfe2d6e5b8b95127384c429fcf9bee87c6df` |
| 23 | `theorem` | [eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/eventually-closure-subset-of-iscompact-absorbing-of-isopen-of-omegalimit--fbb0148ebb8a6b91721a5706.md) | 273 | `result-track:fbb0148ebb8a6b91721a5706c89c53f5d13b2648a1cb80d99d7f00d42216469b` |
| 24 | `theorem` | [eventually_mapsTo_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/eventually-mapsto-of-iscompact-absorbing-of-isopen-of-omegalimit-subset--c560bc5b517e0e7ed75bf2e7.md) | 280 | `result-track:c560bc5b517e0e7ed75bf2e7cc47f39393fa96f16cbdf05d58cb1812674a08a7` |
| 25 | `theorem` | [eventually_closure_subset_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/eventually-closure-subset-of-isopen-of-omegalimit-subset--1fde1e4d78f79c9dead3a6ff.md) | 290 | `result-track:1fde1e4d78f79c9dead3a6ff6fb599f666e023736991033859c7b3f5f977fc8b` |
| 26 | `theorem` | [eventually_mapsTo_of_isOpen_of_omegaLimit_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/eventually-mapsto-of-isopen-of-omegalimit-subset--c7d17ceaf924e416eca5bc48.md) | 296 | `result-track:c7d17ceaf924e416eca5bc48e4efe5307062ecccaec431f0dfe668d723c9758a` |
| 27 | `theorem` | [nonempty_omegaLimit_of_isCompact_absorbing](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/nonempty-omegalimit-of-iscompact-absorbing--9ea4a692f51f1d70df52950a.md) | 304 | `result-track:9ea4a692f51f1d70df52950a82b78413ab41779b2eb3be69a101d125539432b2` |
| 28 | `theorem` | [nonempty_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/nonempty-omegalimit--dac84da89b1bfcd7d5ce3ac4.md) | 325 | `result-track:dac84da89b1bfcd7d5ce3ac41378dceac23ece32136d8cbe490d6ee380d13312` |
| 29 | `theorem` | [isInvariant_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/isinvariant-omegalimit--c0317f4f00ad17d04e086092.md) | 343 | `result-track:c0317f4f00ad17d04e08609235e2c6df811e9ee5ea456ffd78df5dce022c1549` |
| 30 | `theorem` | [omegaLimit_image_subset](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-image-subset--29401cf112c93917420ba417.md) | 350 | `result-track:29401cf112c93917420ba417cfb85fa62d9e64dd0f3ac037d05cc59799ec0918` |
| 31 | `theorem` | [omegaLimit_image_eq](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-image-eq--6758f867c7f49168b5dcba78.md) | 372 | `result-track:6758f867c7f49168b5dcba78c27e98dcff37b5406f7b8e3487025d6b8ea489a3` |
| 32 | `theorem` | [omegaLimit_omegaLimit](../../../../../mathematics/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/declarations/omegalimit-omegalimit--0be3eb7c6724c5a401a9de1d.md) | 379 | `result-track:0be3eb7c6724c5a401a9de1d4d99eba307ec10cb2f55896b2d8c0675f4160357` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
