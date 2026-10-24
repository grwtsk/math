# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e0a0e5481439cecbe6fb56766ecca3f7a8f6b6f",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e0a0e5481439cecbe6fb56766ecca3f7a8f6b6f`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean.json)

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
| 1 | `structure` | [IsProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap--f429fe9c79c6723183a2c45f.md) | 78 | `declaration-track:f429fe9c79c6723183a2c45f6adadd05d73cb19f4289a81c8ab1e09cf6989783` |
| 2 | `lemma` | [IsProperMap.continuous](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-continuous--efc8868cc851aa4f8b40706c.md) | 90 | `result-track:efc8868cc851aa4f8b40706ccff60ef7f85b49f5efec49e653c4c4adf57739cd` |
| 3 | `lemma` | [IsProperMap.isClosedMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-isclosedmap--b4bde28c7ef375d814f2396a.md) | 93 | `result-track:b4bde28c7ef375d814f2396a8ff552e5837a47d7c87a521574a28558010a22c1` |
| 4 | `lemma` | [isProperMap_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-iff-ultrafilter--ea78c41886cf4a3331637c15.md) | 98 | `result-track:ea78c41886cf4a3331637c1538e825e053bc2d4965b4da30274b9d50c805d72e` |
| 5 | `lemma` | [isProperMap_iff_ultrafilter_of_t2](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-iff-ultrafilter-of-t2--0e46c32fe1d18b982754dd9f.md) | 113 | `result-track:0e46c32fe1d18b982754dd9fc407068038d926d7dd8d6c65de9da99e59fad99c` |
| 6 | `lemma` | [IsProperMap.ultrafilter_le_nhds_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-ultrafilter-le-nhds-of-tendsto--6d4106a3de5a60b3eea2be4d.md) | 121 | `result-track:6d4106a3de5a60b3eea2be4dcedbc1bcb176aef78092e4b54c340a5f2bf3c7ba` |
| 7 | `lemma` | [IsProperMap.comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-comp--578dc2f0552c5641fdf4962f.md) | 126 | `result-track:578dc2f0552c5641fdf4962fbf6ed8d93763e578881f2354c101d61c723c981b` |
| 8 | `lemma` | [isProperMap_of_comp_of_surj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-of-comp-of-surj--395f414d2636b9549af97dbc.md) | 136 | `result-track:395f414d2636b9549af97dbc811023bd0279899f6a08b34d0b39e8df7d6c0e19` |
| 9 | `lemma` | [isProperMap_of_comp_of_inj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-of-comp-of-inj--f0201a68bd0157c1c578bb86.md) | 146 | `result-track:f0201a68bd0157c1c578bb863c460aac58a72803c55e9c14e870e6f45fa9fb99` |
| 10 | `lemma` | [isProperMap_of_comp_of_t2](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-of-comp-of-t2--d94f2e105b81559f0d1d8e2c.md) | 154 | `result-track:d94f2e105b81559f0d1d8e2cb489c1cc1eb3f1ea4c476df01f64d8d5ef794376` |
| 11 | `lemma` | [IsProperMap.prodMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-prodmap--c3f517b38103e0231ff30071.md) | 163 | `result-track:c3f517b38103e0231ff30071a7a271bd5f9628aecfe88bd0fe8d1a8d15e80e83` |
| 12 | `lemma` | [IsProperMap.pi_map](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-pi-map--4f53317fbfb361d91bd18b65.md) | 187 | `result-track:4f53317fbfb361d91bd18b658a507bce873048d8d62a172f1be78056f672415a` |
| 13 | `lemma` | [IsProperMap.isCompact_preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-iscompact-preimage--9635c974e36ccc72837a60db.md) | 211 | `result-track:9635c974e36ccc72837a60dbedfa323bfd0f734d2c2846a078a1a5a8357ae3dd` |
| 14 | `theorem` | [isProperMap_iff_isClosedMap_and_compact_fibers](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-iff-isclosedmap-and-compact-fibers--eb191b3ae97e53bbb7043142.md) | 226 | `result-track:eb191b3ae97e53bbb7043142616d12affb31b72f733ea13fe2acd992909d644d` |
| 15 | `lemma` | [isProperMap_iff_isClosedMap_of_inj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-iff-isclosedmap-of-inj--ffae39d2016a81c8584b1412.md) | 253 | `result-track:ffae39d2016a81c8584b1412cb5604f8d8d77b351d409fc50139d6dee570b39e` |
| 16 | `lemma` | [isProperMap_of_isClosedMap_of_inj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-of-isclosedmap-of-inj--0c5bcd1175d9b33b31c5d619.md) | 260 | `result-track:0c5bcd1175d9b33b31c5d6196e621a7bc89945fdc34ff3620d46e440b681c1af` |
| 17 | `lemma` | [Homeomorph.isProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/homeomorph-ispropermap--1e9cc53cd39834d914e1722b.md) | 265 | `result-track:1e9cc53cd39834d914e1722b07e883be889e3d69159bfe0458cfaf662bd5a69a` |
| 18 | `lemma` | [IsHomeomorph.isProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ishomeomorph-ispropermap--546972a54b93ea5b4024984e.md) | 268 | `result-track:546972a54b93ea5b4024984ee320c181a2c8eb58dbbf0ae8acaccb6e11ee8e82` |
| 19 | `lemma` | [isProperMap_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-id--e105cc37fe48a096bbd5d917.md) | 272 | `result-track:e105cc37fe48a096bbd5d917a5cc1e126f7808c0997ce00b4ef5e2644c97dcde` |
| 20 | `lemma` | [Topology.IsClosedEmbedding.isProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/topology-isclosedembedding-ispropermap--6b978c3dc3cbbbc6c9f396d5.md) | 275 | `result-track:6b978c3dc3cbbbc6c9f396d57e70d3349daffdbdf34e1241df32040e284fa204` |
| 21 | `lemma` | [IsClosed.isProperMap_subtypeVal](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/isclosed-ispropermap-subtypeval--40ef3ff54c2eeca9fe7e25e3.md) | 279 | `result-track:40ef3ff54c2eeca9fe7e25e363fe74e503e55cc87ddef1dd5bcda3807dabf7e4` |
| 22 | `lemma` | [IsProperMap.restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-restrict--b5572488aa75ff771dd0dc8e.md) | 283 | `result-track:b5572488aa75ff771dd0dc8efa628c5ebbc9e4ef4ed4b8e3becaa7461632e37a` |
| 23 | `lemma` | [IsProperMap.isClosed_range](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-isclosed-range--16121bd910d290bd9445bba9.md) | 287 | `result-track:16121bd910d290bd9445bba911b5ed843d50757dfbb375e50acd85c18b01d331` |
| 24 | `lemma` | [isProperMap_iff_isClosedMap_and_tendsto_cofinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-iff-isclosedmap-and-tendsto-cofinite--e7291ca46a77ff1caf7eb912.md) | 292 | `result-track:e7291ca46a77ff1caf7eb9129757614fc08a2fa477663a4ba03b5ea91567f125` |
| 25 | `theorem` | [Continuous.isProperMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/continuous-ispropermap--f11507a54a93d413eb128314.md) | 303 | `result-track:f11507a54a93d413eb12831442bff141982ca604aba2c2a0550ce22edf4252ef` |
| 26 | `theorem` | [isProperMap_const_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-const-iff--921a295718f31fa16277bfef.md) | 307 | `result-track:921a295718f31fa16277bfef5fe615dd0896d651414be7b64e34e9d6223ffc8a` |
| 27 | `theorem` | [isProperMap_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-const--dc930158de9c91d5838ea07a.md) | 318 | `result-track:dc930158de9c91d5838ea07a72236a05bf114b66c7c35d84d4371e1f42b75304` |
| 28 | `theorem` | [isProperMap_fst_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-fst-of-compactspace--b7bbd9902ad0ab6b82d84c9a.md) | 323 | `result-track:b7bbd9902ad0ab6b82d84c9aee8383deeeae0ae20e4b5112ae7221da80c75613` |
| 29 | `theorem` | [isProperMap_snd_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-snd-of-compactspace--b854884b1466e466db207d6e.md) | 328 | `result-track:b854884b1466e466db207d6e55a6421301886b281d50eabdae24c32bdd0d08f7` |
| 30 | `theorem` | [isClosedMap_fst_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/isclosedmap-fst-of-compactspace--5032102106c6fb0a84997850.md) | 333 | `result-track:5032102106c6fb0a849978505a8825b24ffe64899ef2431efa374937321ab662` |
| 31 | `theorem` | [isClosedMap_snd_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/isclosedmap-snd-of-compactspace--2cb0172543e84d753a5a2b06.md) | 338 | `result-track:2cb0172543e84d753a5a2b0635de2eadb01502d56c1921bd9c99ee9fee4ff6d8` |
| 32 | `theorem` | [IsProperMap.universally_closed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/ispropermap-universally-closed--2f7c7e6367a73210540bf511.md) | 346 | `result-track:2f7c7e6367a73210540bf511e882cc87cc8463f3ec3057964634fb96944ebd57` |
| 33 | `theorem` | [continuous_of_isClosed_graph](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/continuous-of-isclosed-graph--8229c2fbe6cff3f512aa43c0.md) | 355 | `result-track:8229c2fbe6cff3f512aa43c0ffdf7ea71b6bfc6b21f47592b807a12632933524` |
| 34 | `theorem` | [continuous_iff_isClosed_graph](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/declarations/continuous-iff-isclosed-graph--e05a0d990f80091917e27b8d.md) | 363 | `result-track:e05a0d990f80091917e27b8d22346d1c6c55351e8dbea63326397064c110fdb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
