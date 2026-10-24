# Verification target: GRWTSK.Topology.GeneralTopology.Hom.Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d75bde85366c00c365034557ee6a454faf6d196b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d75bde85366c00c365034557ee6a454faf6d196b`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bornology.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocallyBoundedMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/locallyboundedmap--14692dcd2ba6576b1b5b8da9.md) | 33 | `declaration-track:14692dcd2ba6576b1b5b8da916a0520efd5458f9a406a9f67a40081ac01722fe` |
| 2 | `class` | [LocallyBoundedMapClass](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/locallyboundedmapclass--c6255d151cc9b4ce6848a8e9.md) | 46 | `declaration-track:c6255d151cc9b4ce6848a8e957ef52351b5a3fe003a2707677525edb9b2b04e0` |
| 3 | `theorem` | [IsBounded.image](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/isbounded-image--e2754cd54d980e8e192f9e5f.md) | 57 | `result-track:e2754cd54d980e8e192f9e5fd7511215ec25de1ed5a28614c9bd6a2d8083c6d2` |
| 4 | `def` | [LocallyBoundedMapClass.toLocallyBoundedMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/locallyboundedmapclass-tolocallyboundedmap--3c22f186702fa0cff23c4721.md) | 66 | `declaration-track:3c22f186702fa0cff23c4721e9a68b8ee08e8fd6bbb07a790c92cee56a602e31` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/instance--f8641fe6b00ad0dfc8bb756a.md) | 71 | `declaration-track:f8641fe6b00ad0dfc8bb756ad5482c07ba72d696f0cc4df8670a506ee1451c94` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/instance--eba8a0e392d53a405dfdc52c.md) | 79 | `declaration-track:eba8a0e392d53a405dfdc52c212acff9f32322891daa007b7a0be3257b9d57f9` |
| 7 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/ext--b618994d5b5a17eb1d69a56e.md) | 97 | `result-track:b618994d5b5a17eb1d69a56efd3f74a99c40d41531fa47e21789c40d4e476d5d` |
| 8 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/copy--b4dd1858f0dd867aeab357af.md) | 103 | `declaration-track:b4dd1858f0dd867aeab357afeea71db4d39ca8e81449e88de32f2e36cd8b9049` |
| 9 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/coe-copy--4e03e62ae12186b64f8fea5e.md) | 108 | `result-track:4e03e62ae12186b64f8fea5e47c3a9767a87c0b19f8eb3404f6df0d59b0dd1a8` |
| 10 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/copy-eq--66affdad7db78197a12258d6.md) | 112 | `result-track:66affdad7db78197a12258d6aca02d6b98885a413999683c1946372e38ae3dad` |
| 11 | `def` | [ofMapBounded](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/ofmapbounded--fc5e0ed876c382c97289efa5.md) | 118 | `declaration-track:fc5e0ed876c382c97289efa57d72620def4d5aba8a9b6b358ba6c1409ff4fa4f` |
| 12 | `theorem` | [coe_ofMapBounded](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/coe-ofmapbounded--a37c18ce6468a7df23cb15b5.md) | 125 | `result-track:a37c18ce6468a7df23cb15b5df8ddc12250baac1c1c25980a7510b3f15306e5e` |
| 13 | `theorem` | [ofMapBounded_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/ofmapbounded-apply--d64b7336e23d7b5445844ad2.md) | 130 | `result-track:d64b7336e23d7b5445844ad28e06f095116987cafeb16c8d522c7c6b61e50d4a` |
| 14 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/id--9f42e404af075c555e573db1.md) | 137 | `declaration-track:9f42e404af075c555e573db163b85e91785aab30870c7fe817c1a6a043a324ea` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/instance--3f71ff8c1d5e7d7c762a26b3.md) | 141 | `declaration-track:3f71ff8c1d5e7d7c762a26b36eb4adc17ce707f2a6727ab1bc7ff54d69d51074` |
| 16 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/coe-id--9af53b95a69e08fce606e96a.md) | 145 | `result-track:9af53b95a69e08fce606e96ac3b0272f9074d062a4b3aa4360afc28b975cda64` |
| 17 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/id-apply--13eb0bb9fa1179310be72001.md) | 152 | `result-track:13eb0bb9fa1179310be720010ca57d54846997d6c92fe4f5f2173cc7acb1e27d` |
| 18 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/comp--95097662a27c4d6ed4b506ab.md) | 157 | `declaration-track:95097662a27c4d6ed4b506ab3fca6a8921fc52b11bbcb88772fc25c3a7136955` |
| 19 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/coe-comp--6dd8803e4595ccc25bee05af.md) | 165 | `result-track:6dd8803e4595ccc25bee05afa1b24f91f70f30e61c5d3dc4e2d26e9d47c2e99f` |
| 20 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/comp-apply--03e2a79bf1393ff141c2214f.md) | 170 | `result-track:03e2a79bf1393ff141c2214fd32f173ba5bb4141b1eefa99fbef196ce87edabf` |
| 21 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/comp-assoc--ee4d9ac91015994ea479bb2a.md) | 176 | `result-track:ee4d9ac91015994ea479bb2a264826c8b02e0bcce598f6b4a0c875d9818c0543` |
| 22 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/comp-id--51c5c24a86924db78a3fe256.md) | 182 | `result-track:51c5c24a86924db78a3fe25620d9dedf4b105d0dd7115108dc9ce8311e652b09` |
| 23 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/id-comp--0153346ead35c9c099dd6472.md) | 187 | `result-track:0153346ead35c9c099dd647270adf7b75b05e501e48466578271be24a8eb2f21` |
| 24 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/cancel-right--0b79241cdcf45602e3bcee5e.md) | 191 | `result-track:0b79241cdcf45602e3bcee5e3f7904b57db7f6388b54a1226c481fc88e7e7d5d` |
| 25 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantd37189ad8e17ea162f05df06532bc859634ae55d479da39909452ef371c5983b.lean/declarations/cancel-left--fde4353cfb9239173abb1532.md) | 197 | `result-track:fde4353cfb9239173abb1532a72573a9c0d2a1632f8d31fc0a732e47c60e0e63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
