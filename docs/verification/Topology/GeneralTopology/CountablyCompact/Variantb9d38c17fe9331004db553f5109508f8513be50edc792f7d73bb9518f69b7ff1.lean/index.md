# Verification target: GRWTSK.Topology.GeneralTopology.CountablyCompact.Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f4cdc13a20ff46bf5d1b40f165842b5c73b398d",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f4cdc13a20ff46bf5d1b40f165842b5c73b398d`.

Source path: `GRWTSK/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Perfect` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCountablyCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact--57644db7c875c32cef8cfcf3.md) | 62 | `declaration-track:57644db7c875c32cef8cfcf3e5d24dcffa043250ef1c53775425c3a189df246c` |
| 2 | `class` | [CountablyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/countablycompactspace--0beb5c84ff0005068a97e163.md) | 67 | `declaration-track:0beb5c84ff0005068a97e1637f734d14c26c88bf607cb71a190d441dabd6820d` |
| 3 | `theorem` | [isCountablyCompact_empty](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-empty--1d8c40d29decadcdf6e4d408.md) | 71 | `result-track:1d8c40d29decadcdf6e4d4084a23670b54dec8520b5acb1aa23b40bec5319e03` |
| 4 | `theorem` | [isCountablyCompact_singleton](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-singleton--29d4b70795df9a1358cc5299.md) | 75 | `result-track:29d4b70795df9a1358cc5299abdd0117a14588eb79ea8829f5ce16bc03f46419` |
| 5 | `theorem` | [IsCountablyCompact.of_isClosed_subset](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-of-isclosed-subset--3e7221383b131977d1c53e6c.md) | 79 | `result-track:3e7221383b131977d1c53e6ccfdc546cf5a5c40c0c108b3ad032d551ae1dfe0a` |
| 6 | `theorem` | [IsClosed.isCountablyCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/isclosed-iscountablycompact--6892d715088364af36c81675.md) | 85 | `result-track:6892d715088364af36c816754f1950b1d2d8134b8785027506938b5a3e16b072` |
| 7 | `theorem` | [isCountablyCompact_iff_seq_clusterPt](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-iff-seq-clusterpt--156c330b09d520da2fdef002.md) | 91 | `result-track:156c330b09d520da2fdef0023ac17890df4414f250453a3c89b82ad38650cc1c` |
| 8 | `theorem` | [IsCountablyCompact.elim_directed_cover](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-elim-directed-cover--127496e38499e4af8fa45976.md) | 105 | `result-track:127496e38499e4af8fa459768f9fda2f88f25a9769e3dd090e62a535175372be` |
| 9 | `theorem` | [IsCountablyCompact.elim_finite_subcover](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-elim-finite-subcover--2efe8cc176db82c7a9d7d50c.md) | 122 | `result-track:2efe8cc176db82c7a9d7d50c5e0f5826021c99106eba0cd9a885fde20cac8451` |
| 10 | `theorem` | [isCountablyCompact_iff_countable_open_cover](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-iff-countable-open-cover--4cb59ad6eca0e71ff0a55185.md) | 130 | `result-track:4cb59ad6eca0e71ff0a551858bb9d36f98bfee2a279bc5d27a51a80fe5d4cb2d` |
| 11 | `theorem` | [IsCountablyCompact.elim_finite_subcover_image](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-elim-finite-subcover-image--e89d375fa03758c00a305d25.md) | 151 | `result-track:e89d375fa03758c00a305d2594796f9162083d268adad7c648b95b22d794bd04` |
| 12 | `theorem` | [isCountablyCompact_iff_countable_open_cover'](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-iff-countable-open-cover--42c02b7d72a8bb50cca7b815.md) | 164 | `result-track:42c02b7d72a8bb50cca7b81511d28228961838739cbf61d4c7165e790213a50d` |
| 13 | `theorem` | [IsCompact.isCountablyCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscompact-iscountablycompact--257732e7eb6bf9a80a0197aa.md) | 170 | `result-track:257732e7eb6bf9a80a0197aa060e1020e0edaa189d0acaf39c9eec5030625d0b` |
| 14 | `instance` | [instCompactSpaceCountablyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/instcompactspacecountablycompactspace--035dcfcc04acd5c58ecd2fd2.md) | 174 | `declaration-track:035dcfcc04acd5c58ecd2fd2b93ab4538616af76cb1ea82f18cc579f39d9f01b` |
| 15 | `theorem` | [IsSeqCompact.isCountablyCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/isseqcompact-iscountablycompact--765591f66a0bede1ed0940b2.md) | 179 | `result-track:765591f66a0bede1ed0940b2fad1f4f1cc852d7d3e8332b0441aadca05a4dcac` |
| 16 | `theorem` | [IsCountablyCompact.image](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-image--e4470db7d389f0355a49396d.md) | 185 | `result-track:e4470db7d389f0355a49396d0c479d4203c6234f46dafba0e7a0fb90b46445a9` |
| 17 | `theorem` | [Topology.IsInducing.isCountablyCompact_iff](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/topology-isinducing-iscountablycompact-iff--d7ed7055d0d911792c61d6ff.md) | 196 | `result-track:d7ed7055d0d911792c61d6ff55646fb18425bbb814e159e118e621b6d3498bae` |
| 18 | `theorem` | [Topology.IsEmbedding.isCountablyCompact_iff](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/topology-isembedding-iscountablycompact-iff--214313a7712c9f68d963b699.md) | 205 | `result-track:214313a7712c9f68d963b699e36512fc92ba05f6b282658a3a14bd06687a0e79` |
| 19 | `theorem` | [Subtype.isCountablyCompact_iff](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/subtype-iscountablycompact-iff--1dd3b41edbe7bbde668fa37d.md) | 209 | `result-track:1dd3b41edbe7bbde668fa37d1ce18471c38bd67fe475124e93116f16f6d181de` |
| 20 | `theorem` | [isCountablyCompact_iff_isCountablyCompact_univ](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-iff-iscountablycompact-univ--f03149744b441dacddd7a63e.md) | 213 | `result-track:f03149744b441dacddd7a63e6e1a9119fc9eed7a43a06f95965633065ab41ac1` |
| 21 | `theorem` | [isCountablyCompact_univ_iff](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-univ-iff--6bbc84bbc59085b672cd446a.md) | 217 | `result-track:6bbc84bbc59085b672cd446ac2bd97d36c8da500cfb7c2bbd44f4d04c416231b` |
| 22 | `theorem` | [isCountablyCompact_iff_countablyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-iff-countablycompactspace--3c9f4a04e069a8204c7c5b44.md) | 220 | `result-track:3c9f4a04e069a8204c7c5b4421c3a4a33c88046f039d5f459370d734392ea670` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/instance--97c1db1b06dc41cd9024a094.md) | 226 | `declaration-track:97c1db1b06dc41cd9024a094457f000178c1f055853e590abdb58dcf3c993d44` |
| 24 | `theorem` | [Topology.IsInducing.isSeqCompact_iff](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/topology-isinducing-isseqcompact-iff--db5702080a065339398c9f38.md) | 264 | `result-track:db5702080a065339398c9f3837c07cc1b53f8e4217186ddec6ec9e1ac26ec730` |
| 25 | `theorem` | [Subtype.isSeqCompact_iff](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/subtype-isseqcompact-iff--8d098a04c79ef7a90813a536.md) | 277 | `result-track:8d098a04c79ef7a90813a5364a5887616b7ba56b45c5e0be363e0c96bffd65f9` |
| 26 | `theorem` | [isSeqCompact_iff_isSeqCompact_univ](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/isseqcompact-iff-isseqcompact-univ--362dc4f66c07cf4223ed9a98.md) | 281 | `result-track:362dc4f66c07cf4223ed9a98276928d51ff9446a3fbe6710686a66259cc52a3b` |
| 27 | `theorem` | [isSeqCompact_univ_iff](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/isseqcompact-univ-iff--7c27280c34f83fa49ec3c77f.md) | 284 | `result-track:7c27280c34f83fa49ec3c77f3e8032fbadde312ceccf0f963f2f8bcddeaa1836` |
| 28 | `theorem` | [isSeqCompact_iff_seqCompactSpace](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/isseqcompact-iff-seqcompactspace--7a320db04d541ab37e4be828.md) | 287 | `result-track:7a320db04d541ab37e4be828651a4ec6e207da6c0938de24b4c2982263d010a5` |
| 29 | `instance` | [instSeqCompactSpaceCountablyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/instseqcompactspacecountablycompactspace--0eaa7832a29aed18e021184a.md) | 291 | `declaration-track:0eaa7832a29aed18e021184a1dfddcd52f10f016fa446148024cb5e41ebd1567` |
| 30 | `theorem` | [IsCountablyCompact.isSeqCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-isseqcompact--3d7f94e5b037f46628575b73.md) | 296 | `result-track:3d7f94e5b037f46628575b73f75b33695490796085cbff5f3922dd5428dd7acc` |
| 31 | `instance` | [instCountablyCompactSpaceSeqCompactSpace](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/instcountablycompactspaceseqcompactspace--56904509a184e9612c90f1b5.md) | 302 | `declaration-track:56904509a184e9612c90f1b5af97a64e1d749a85459dcc9411f20fa1bbc81211` |
| 32 | `theorem` | [isCountablyCompact_iff_isSeqCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-iff-isseqcompact--5a9feae3ddcacc28c2ea8fa6.md) | 307 | `result-track:5a9feae3ddcacc28c2ea8fa6d24f870b24530d7ed27b50b66250717938e9e7db` |
| 33 | `theorem` | [IsCountablyCompact.exists_accPt_of_infinite](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-exists-accpt-of-infinite--681034c36133b23986cc5835.md) | 312 | `result-track:681034c36133b23986cc583552ef247fb4a1a6d614cd7d3f1add8a33877839bb` |
| 34 | `theorem` | [isCountablyCompact_iff_infinite_subset_has_accPt](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-iff-infinite-subset-has-accpt--b6cc73948e701bc1b65a9558.md) | 327 | `result-track:b6cc73948e701bc1b65a9558f0ac8e830c51badbb081a32295ec3dc49a3034e3` |
| 35 | `theorem` | [IsLindelof.isCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/islindelof-iscompact--2aa8bf586a891bc3afbd4627.md) | 347 | `result-track:2aa8bf586a891bc3afbd4627158670b4b99e6d24bd1f69ab618d0706b10c102f` |
| 36 | `theorem` | [LindelofSpace.compactSpace](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/lindelofspace-compactspace--3e292fa6aed1e72fd79ceba4.md) | 359 | `result-track:3e292fa6aed1e72fd79ceba44c319cfc99db322d31bd3d5a234f9f186f179795` |
| 37 | `theorem` | [IsCountablyCompact.isCompact](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-iscompact--f663d5ceb3c195ded53d38c5.md) | 367 | `result-track:f663d5ceb3c195ded53d38c52237ecd4286ee26086d9ced4a772ca47dde38670` |
| 38 | `theorem` | [IsCountablyCompact.union](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-union--e8bdf2fc7f9f043bdcb8760a.md) | 372 | `result-track:e8bdf2fc7f9f043bdcb8760a6e0799a709b26d48a2b90397bff6355559a0cf6c` |
| 39 | `theorem` | [Finset.isCountablyCompact_biUnion](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/finset-iscountablycompact-biunion--1feecab1a1ae5cf576f2527e.md) | 384 | `result-track:1feecab1a1ae5cf576f2527e59774fcddb4696e7d9dce1ca5deb018ba735f133` |
| 40 | `theorem` | [Set.Finite.isCountablyCompact_biUnion](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/set-finite-iscountablycompact-biunion--3ce8199d4702bc02aee801e3.md) | 394 | `result-track:3ce8199d4702bc02aee801e3b9a3151fe6cf8a49df2dfdafb212df9a36b0f37a` |
| 41 | `theorem` | [Set.Finite.isCountablyCompact_sUnion](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/set-finite-iscountablycompact-sunion--95c31eac3c8a8b211fe7ed1d.md) | 401 | `result-track:95c31eac3c8a8b211fe7ed1dce991868e3069de1f448412501907ff3449232f9` |
| 42 | `theorem` | [isCountablyCompact_iUnion](../../../../../mathematics/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/declarations/iscountablycompact-iunion--4667e89b7e1f3d2c3c112e80.md) | 407 | `result-track:4667e89b7e1f3d2c3c112e80b5ad9faf297161533c0c39d7abb351d65a4996a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
