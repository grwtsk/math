# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96337d3377ca238edfedb7e53e5dc4ed42a5058d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96337d3377ca238edfedb7e53e5dc4ed42a5058d`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean.json)

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
| 1 | `structure` | [IsProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap--0e2989972c64bab61e648e12.md) | 86 | `declaration-track:0e2989972c64bab61e648e122bdee641e2814dd57f71bdf2213309499c035a11` |
| 2 | `lemma` | [IsProperMap.continuous](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-continuous--339ef68d6c34bb2c6019ce4a.md) | 98 | `result-track:339ef68d6c34bb2c6019ce4a86fbfcbf8a21b8430d32abeb287ba56e1faa06cc` |
| 3 | `lemma` | [IsProperMap.isClosedMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-isclosedmap--a5e0c6bd9355a2e586bf3484.md) | 101 | `result-track:a5e0c6bd9355a2e586bf3484e937d5607212ebe8487e260c1dd40a91b8ffd440` |
| 4 | `lemma` | [isProperMap_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-iff-ultrafilter--3ef492d3f8901bd48531a175.md) | 106 | `result-track:3ef492d3f8901bd48531a175b4261aef39839dd45f90214dc033f2f4080f9fb2` |
| 5 | `lemma` | [isProperMap_iff_ultrafilter_of_t2](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-iff-ultrafilter-of-t2--456fd99812861b223428e99a.md) | 121 | `result-track:456fd99812861b223428e99a473f5591fbde0d2647fccaf65a4bf6b396532ea9` |
| 6 | `lemma` | [IsProperMap.ultrafilter_le_nhds_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-ultrafilter-le-nhds-of-tendsto--e16a9a1593d927f44a42e14a.md) | 129 | `result-track:e16a9a1593d927f44a42e14ad95e0aa46eab72de38b4e023d8abc715a84993b6` |
| 7 | `lemma` | [IsProperMap.comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-comp--345d69ad6700d71eb0bf46a1.md) | 134 | `result-track:345d69ad6700d71eb0bf46a1fe2e05717441928c047635f085c8f111fe142798` |
| 8 | `lemma` | [isProperMap_of_comp_of_surj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-of-comp-of-surj--309e84c202336b9f5251fa48.md) | 144 | `result-track:309e84c202336b9f5251fa481419e8efe0136792d55201c700b372df148283d5` |
| 9 | `lemma` | [isProperMap_of_comp_of_inj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-of-comp-of-inj--1b567d220d0afcc6ce72a5f0.md) | 154 | `result-track:1b567d220d0afcc6ce72a5f02353c4cc90e0c4c841e4df25714d3985bccee566` |
| 10 | `lemma` | [isProperMap_of_comp_of_t2](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-of-comp-of-t2--0ba194051b2a60ef6697b856.md) | 162 | `result-track:0ba194051b2a60ef6697b8560c444fa410766b5dbc4b0b301c42aeb40261ee69` |
| 11 | `lemma` | [IsProperMap.prodMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-prodmap--b3859ef7823eb3a23f8a8340.md) | 171 | `result-track:b3859ef7823eb3a23f8a8340621aeffbffd99b1a4e4b294bd8eb93fddee6d719` |
| 12 | `lemma` | [IsProperMap.pi_map](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-pi-map--94ca195a71aadaa315771733.md) | 195 | `result-track:94ca195a71aadaa315771733a8fb0f75bd5b2563c1ccff09429cd83eb279a595` |
| 13 | `lemma` | [IsProperMap.isCompact_preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-iscompact-preimage--34c06e01ae0230ecc506028c.md) | 219 | `result-track:34c06e01ae0230ecc506028c185a91eba90d5e2cc60b16e889b6db8b277fc473` |
| 14 | `theorem` | [isProperMap_iff_isClosedMap_and_compact_fibers](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-iff-isclosedmap-and-compact-fibers--23ffccd3220c2df8ee6ad0b2.md) | 234 | `result-track:23ffccd3220c2df8ee6ad0b2b4fad6eece24c070973c36117c2497a726b0a80d` |
| 15 | `lemma` | [isProperMap_iff_isClosedMap_of_inj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-iff-isclosedmap-of-inj--b8e55d97e16030a957077f09.md) | 261 | `result-track:b8e55d97e16030a957077f09434413d6f101452f06be2bcd97a7537a49556d6a` |
| 16 | `lemma` | [isProperMap_of_isClosedMap_of_inj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-of-isclosedmap-of-inj--a1d2712cd54c84fb5879a336.md) | 268 | `result-track:a1d2712cd54c84fb5879a336711a8ee438c6e297ce766e32db6ad6799798a98d` |
| 17 | `lemma` | [Homeomorph.isProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/homeomorph-ispropermap--c32f0edc85caced2bfc6efad.md) | 273 | `result-track:c32f0edc85caced2bfc6efadff54def2d1f1892d2dd44b355962331d73145cea` |
| 18 | `lemma` | [IsHomeomorph.isProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ishomeomorph-ispropermap--99d3714f424f3b527e7fcb58.md) | 276 | `result-track:99d3714f424f3b527e7fcb58abcb1d844244b3e4d0c65189d3fa8f4c7de1701f` |
| 19 | `lemma` | [isProperMap_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-id--d36423b0e577408776260820.md) | 280 | `result-track:d36423b0e577408776260820d45ded93862b2fbd9708ee2e5b53a4f78d21aad5` |
| 20 | `lemma` | [Topology.IsClosedEmbedding.isProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/topology-isclosedembedding-ispropermap--e04ba3c1c248d73dc2d929e1.md) | 283 | `result-track:e04ba3c1c248d73dc2d929e1f65f29a0c2abf7b6fe37be58408c8ed924b5ae45` |
| 21 | `lemma` | [IsClosed.isProperMap_subtypeVal](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/isclosed-ispropermap-subtypeval--4c701e1ee0a3cb5b82c1e7fe.md) | 287 | `result-track:4c701e1ee0a3cb5b82c1e7feaeba03e0f2c0329f532082dbb20fe55e0f875467` |
| 22 | `lemma` | [IsProperMap.restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-restrict--d23b08a47bca04584f766fbb.md) | 291 | `result-track:d23b08a47bca04584f766fbb729d28df7f7ab99e5b8fa2eb32f838113a7a4ebe` |
| 23 | `lemma` | [IsProperMap.isClosed_range](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-isclosed-range--22079964f061dcc4ef5197ca.md) | 295 | `result-track:22079964f061dcc4ef5197ca5432e07338d524d600418b0d85bd988d88d176f1` |
| 24 | `lemma` | [isProperMap_iff_isClosedMap_and_tendsto_cofinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-iff-isclosedmap-and-tendsto-cofinite--424da9248b07ea87465c050e.md) | 300 | `result-track:424da9248b07ea87465c050e0a09b752b001c224de042bfd9bb647a55510387a` |
| 25 | `theorem` | [Continuous.isProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/continuous-ispropermap--f98cb420c2bd59f3982682bb.md) | 311 | `result-track:f98cb420c2bd59f3982682bb6d644612c0ed1bf5a407462a378d56d49a91616b` |
| 26 | `theorem` | [isProperMap_const_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-const-iff--f99c54763f4a77db1e062c1e.md) | 315 | `result-track:f99c54763f4a77db1e062c1eaf9def64c8ac1dc4950ac54928e18255ea73cd17` |
| 27 | `theorem` | [isProperMap_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-const--740f2d6d11a7a8ff852b7e1c.md) | 326 | `result-track:740f2d6d11a7a8ff852b7e1c9dbcef056282e4dddfba35107f638d133e66e50f` |
| 28 | `theorem` | [isProperMap_fst_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-fst-of-compactspace--936612fe5a3bc5d0a448db05.md) | 331 | `result-track:936612fe5a3bc5d0a448db0576c65d9fe24c7912b070c3c591c069ee293687d3` |
| 29 | `theorem` | [isProperMap_snd_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-snd-of-compactspace--b914e15875a8246f78c3b499.md) | 336 | `result-track:b914e15875a8246f78c3b4990d6d54e708a2e6932e7553fd636fc5846162d498` |
| 30 | `theorem` | [isClosedMap_fst_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/isclosedmap-fst-of-compactspace--e65a9eb948cbf045d88b1142.md) | 341 | `result-track:e65a9eb948cbf045d88b1142fd56a12b6bc9fab07490e1b021639357268d62e9` |
| 31 | `theorem` | [isClosedMap_snd_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/isclosedmap-snd-of-compactspace--7c8100d3f5e8dab293790672.md) | 346 | `result-track:7c8100d3f5e8dab293790672c71785b039752543a1b2add4c14020d1ae11ad50` |
| 32 | `theorem` | [IsProperMap.universally_closed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/ispropermap-universally-closed--14a5e3fc16f93d88a144364e.md) | 354 | `result-track:14a5e3fc16f93d88a144364e3b10dc74fa394e5784e561465efe6309e9bd388a` |
| 33 | `theorem` | [continuous_of_isClosed_graph](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/continuous-of-isclosed-graph--6720a6b2efa2da2c0acfed15.md) | 363 | `result-track:6720a6b2efa2da2c0acfed153fdbcf5dea9ac23dca04d87bd41dce4b2c07b55b` |
| 34 | `theorem` | [continuous_iff_isClosed_graph](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/declarations/continuous-iff-isclosed-graph--dca100a69c1203ea83360acf.md) | 371 | `result-track:dca100a69c1203ea83360acf464d4cfc8ef8b8f68c6e3188e8e87651e0780f21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
