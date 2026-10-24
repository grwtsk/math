# Verification target: GRWTSK.Topology.GeneralTopology.CountablyCompact.Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48f56d45bd4d4af16630beb926970726b1002f46",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48f56d45bd4d4af16630beb926970726b1002f46`.

Source path: `GRWTSK/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Perfect` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCountablyCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact--e1c4241e4c26fa0ee9c3e85f.md) | 70 | `declaration-track:e1c4241e4c26fa0ee9c3e85fd87fa5463be9c49fdb7855954c17214fb8095d58` |
| 2 | `class` | [CountablyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/countablycompactspace--3671ff86d1b461fef7cfdd87.md) | 75 | `declaration-track:3671ff86d1b461fef7cfdd870d49e186b1c7997eba2a652ccd1e97e4300762e2` |
| 3 | `theorem` | [isCountablyCompact_empty](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-empty--1745e668ab07378a174d88d5.md) | 79 | `result-track:1745e668ab07378a174d88d516c1bea498937d6720217b336bc20c34caaee28e` |
| 4 | `theorem` | [isCountablyCompact_singleton](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-singleton--a6f1cda2f0ae8dffbc9660ab.md) | 83 | `result-track:a6f1cda2f0ae8dffbc9660ab40a455866c5a25de1d51584855fdd47e47a10223` |
| 5 | `theorem` | [IsCountablyCompact.of_isClosed_subset](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-of-isclosed-subset--a2131e072f44343b01d9ba21.md) | 87 | `result-track:a2131e072f44343b01d9ba2112fa01717b1acdcf983fe52f96529042e6bdf178` |
| 6 | `theorem` | [IsClosed.isCountablyCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/isclosed-iscountablycompact--d57c36404c2cd2ce3ec2676d.md) | 93 | `result-track:d57c36404c2cd2ce3ec2676d1c5f81663dd2f7491f4e5c351365d0980acf459c` |
| 7 | `theorem` | [isCountablyCompact_iff_seq_clusterPt](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-iff-seq-clusterpt--b70670f09f5eb65ab0cb6958.md) | 99 | `result-track:b70670f09f5eb65ab0cb69584c3d992cda3fddb96dee832dad9257450299837e` |
| 8 | `theorem` | [IsCountablyCompact.elim_directed_cover](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-elim-directed-cover--8a906b81753e3ca9ad771e1f.md) | 113 | `result-track:8a906b81753e3ca9ad771e1fdb979d30c42b769be194e6edac4e40973ec7774f` |
| 9 | `theorem` | [IsCountablyCompact.elim_finite_subcover](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-elim-finite-subcover--331ba13b88af032e502cafc4.md) | 130 | `result-track:331ba13b88af032e502cafc45a878c985247424a03b6a7732ade582c5e62c47a` |
| 10 | `theorem` | [isCountablyCompact_iff_countable_open_cover](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-iff-countable-open-cover--aecede2add9bde1d289451d1.md) | 138 | `result-track:aecede2add9bde1d289451d1e849f0894b8832c54c92d5f4d90852931a40aeda` |
| 11 | `theorem` | [IsCountablyCompact.elim_finite_subcover_image](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-elim-finite-subcover-image--483860c9d42e31ab1dd5d8cf.md) | 159 | `result-track:483860c9d42e31ab1dd5d8cf47ed01a8ed115a30f4839d90ce554be6c8859e97` |
| 12 | `theorem` | [isCountablyCompact_iff_countable_open_cover'](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-iff-countable-open-cover--b44a2a53409c8931624b2c8c.md) | 172 | `result-track:b44a2a53409c8931624b2c8c1ab13f2a0aabb028913fbc309d65e8d821131dfb` |
| 13 | `theorem` | [IsCompact.isCountablyCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscompact-iscountablycompact--8e0a1c2212c0ceb36c76eae2.md) | 178 | `result-track:8e0a1c2212c0ceb36c76eae29c4350c2478361f1c1e052c2c6ca757e5061d971` |
| 14 | `instance` | [instCompactSpaceCountablyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/instcompactspacecountablycompactspace--012253b1c6a6f156e13cc283.md) | 182 | `declaration-track:012253b1c6a6f156e13cc28324680596c85185620c6839735ac53fa22ca59346` |
| 15 | `theorem` | [IsSeqCompact.isCountablyCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/isseqcompact-iscountablycompact--38cc6074e5122b12a5341b6a.md) | 187 | `result-track:38cc6074e5122b12a5341b6afcd32ba1945efe95de1bce6d966b2b9d1dd494d1` |
| 16 | `theorem` | [IsCountablyCompact.image](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-image--31426df8244a9e7de6ab7a7b.md) | 193 | `result-track:31426df8244a9e7de6ab7a7b7ebc0d6fa84f15bdbb3c4911ab5645c22800a849` |
| 17 | `theorem` | [Topology.IsInducing.isCountablyCompact_iff](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/topology-isinducing-iscountablycompact-iff--a010d50a2f6de092277a1120.md) | 204 | `result-track:a010d50a2f6de092277a1120f850a76e5ede964f9fad348504cd7bf787389337` |
| 18 | `theorem` | [Topology.IsEmbedding.isCountablyCompact_iff](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/topology-isembedding-iscountablycompact-iff--47944a5ab85c8a28c86d0533.md) | 213 | `result-track:47944a5ab85c8a28c86d0533ed6adf778bf74ad4fe773611c199052e317354e5` |
| 19 | `theorem` | [Subtype.isCountablyCompact_iff](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/subtype-iscountablycompact-iff--e54b4ce8331c1088fce28ba4.md) | 217 | `result-track:e54b4ce8331c1088fce28ba45b2be750e1a77bf5cb16fd3f4cb92df654ad928a` |
| 20 | `theorem` | [isCountablyCompact_iff_isCountablyCompact_univ](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-iff-iscountablycompact-univ--2fc7b9839c2adb617554640a.md) | 221 | `result-track:2fc7b9839c2adb617554640aa6f819c12b8c3e44cb4662e00961b9a8ded1013e` |
| 21 | `theorem` | [isCountablyCompact_univ_iff](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-univ-iff--1f65b1da06e50c8182929a20.md) | 225 | `result-track:1f65b1da06e50c8182929a20938022d80fe606ba86d1b342853a363d8f15b5c4` |
| 22 | `theorem` | [isCountablyCompact_iff_countablyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-iff-countablycompactspace--96f3cdba35211f49d766efc9.md) | 228 | `result-track:96f3cdba35211f49d766efc9bfe9cc526b901bf121dae42c1b6b686bc60a5068` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/instance--5cd5580f3908f3e4b2c17770.md) | 234 | `declaration-track:5cd5580f3908f3e4b2c17770d0c3db25b524b9735f71c031d591fe1c09942b72` |
| 24 | `theorem` | [Topology.IsInducing.isSeqCompact_iff](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/topology-isinducing-isseqcompact-iff--fb3148e8f9738652f9356df1.md) | 272 | `result-track:fb3148e8f9738652f9356df147984b4fd1756ea0a88e33dcadd284b79eaa89ff` |
| 25 | `theorem` | [Subtype.isSeqCompact_iff](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/subtype-isseqcompact-iff--08ae54ddc89b4925e892f38e.md) | 285 | `result-track:08ae54ddc89b4925e892f38ef0edefa99b64da2a9beff5e3ad76c7b639ff95a8` |
| 26 | `theorem` | [isSeqCompact_iff_isSeqCompact_univ](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/isseqcompact-iff-isseqcompact-univ--e5fe957417ab3e8e3d026a49.md) | 289 | `result-track:e5fe957417ab3e8e3d026a4989daafef0643293f8ed7d8dac63281b4c235468a` |
| 27 | `theorem` | [isSeqCompact_univ_iff](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/isseqcompact-univ-iff--0bc4d6274be3ae558e2e920a.md) | 292 | `result-track:0bc4d6274be3ae558e2e920a70f6c93825e106013516ce9368fd0f360b01154f` |
| 28 | `theorem` | [isSeqCompact_iff_seqCompactSpace](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/isseqcompact-iff-seqcompactspace--5a90b914dc788c757d97c9cb.md) | 295 | `result-track:5a90b914dc788c757d97c9cb69833925821bd573843bdbe4e8adc91d4b4b880c` |
| 29 | `instance` | [instSeqCompactSpaceCountablyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/instseqcompactspacecountablycompactspace--75768d1ec4df12c857e2f5ed.md) | 299 | `declaration-track:75768d1ec4df12c857e2f5edea7263b899ea5361e7c8e28b452f0813bb361ca7` |
| 30 | `theorem` | [IsCountablyCompact.isSeqCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-isseqcompact--134fcad0d5138a48e8368946.md) | 304 | `result-track:134fcad0d5138a48e8368946cc96655d38f34f2bb2dc5978a9d2d085714562f4` |
| 31 | `instance` | [instCountablyCompactSpaceSeqCompactSpace](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/instcountablycompactspaceseqcompactspace--e5883f85c1e4f1ca47dcbe53.md) | 310 | `declaration-track:e5883f85c1e4f1ca47dcbe53f45e9b87c8dad2a22441b37757d4f03cda72b5bf` |
| 32 | `theorem` | [isCountablyCompact_iff_isSeqCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-iff-isseqcompact--340d6c5f82c07018495c9d35.md) | 315 | `result-track:340d6c5f82c07018495c9d35b3e3009256e47a05a2c8b794119b1b030f55c992` |
| 33 | `theorem` | [IsCountablyCompact.exists_accPt_of_infinite](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-exists-accpt-of-infinite--7a929a2f781ccba8010b4ca7.md) | 320 | `result-track:7a929a2f781ccba8010b4ca74f4bb7ed2958b2898a9c8c6eb3303120f6c8ec5c` |
| 34 | `theorem` | [isCountablyCompact_iff_infinite_subset_has_accPt](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-iff-infinite-subset-has-accpt--eb9a8e23dacb4e65147291e3.md) | 335 | `result-track:eb9a8e23dacb4e65147291e30f71eaa8ebd262d13c1798eccee25399fb5ae3d4` |
| 35 | `theorem` | [IsLindelof.isCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/islindelof-iscompact--8c7b327fccc5395c07699c8b.md) | 355 | `result-track:8c7b327fccc5395c07699c8b0a04cde021148fd9a6b8957ad4a29e08ffbfed96` |
| 36 | `theorem` | [LindelofSpace.compactSpace](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/lindelofspace-compactspace--25c6ca4a16c837cdf0081f7a.md) | 367 | `result-track:25c6ca4a16c837cdf0081f7a8a1ed375039469edfa7d5c8a0e1a203442846dec` |
| 37 | `theorem` | [IsCountablyCompact.isCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-iscompact--970a4b8424c3540f3e31a522.md) | 375 | `result-track:970a4b8424c3540f3e31a52218e5e3fa783f942328f1cd25628f3c8a2843c8e6` |
| 38 | `theorem` | [IsCountablyCompact.union](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-union--6c07adb08302c853501ad606.md) | 380 | `result-track:6c07adb08302c853501ad6063c6d8c808066a36edaf1da68355bbb46c88ffb5f` |
| 39 | `theorem` | [Finset.isCountablyCompact_biUnion](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/finset-iscountablycompact-biunion--80c874cda9715efd05ac4502.md) | 392 | `result-track:80c874cda9715efd05ac4502285bc4ad6c0f7bbf6557ac2d7cb9c84f2b7ad75a` |
| 40 | `theorem` | [Set.Finite.isCountablyCompact_biUnion](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/set-finite-iscountablycompact-biunion--1ba72870c201630d4ac2977c.md) | 402 | `result-track:1ba72870c201630d4ac2977c84251c2d354e24afd20d3d3efae0b381143e78fb` |
| 41 | `theorem` | [Set.Finite.isCountablyCompact_sUnion](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/set-finite-iscountablycompact-sunion--6e6996fd60fc497285001c4b.md) | 409 | `result-track:6e6996fd60fc497285001c4b25d92ddaada481b32fcd5612a58dc985638434cc` |
| 42 | `theorem` | [isCountablyCompact_iUnion](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/declarations/iscountablycompact-iunion--0b9bb88d9b3e4e606057992a.md) | 415 | `result-track:0b9bb88d9b3e4e606057992abf849b3c37c91ed770bec0e058bd3cf2c70e2312` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
