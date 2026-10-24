# Verification target: GRWTSK.Topology.GeneralTopology.DenseEmbedding.Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70612eb0eb555b17815e744a679f4741e07d9717",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70612eb0eb555b17815e744a679f4741e07d9717`.

Source path: `GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsDenseInducing](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/isdenseinducing--c63bcf3e3a8539d7061ae4f0.md) | 42 | `declaration-track:c63bcf3e3a8539d7061ae4f0987b2efc510399d705d178e3687cc3a3cc935250` |
| 2 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsDenseInducing.Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.Dense.isDenseInducing_val](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/root-grwtsk-topology-generaltopology-isdenseinducing-variant4b815f6cfc35--7738e1875e0895f788177799.md) | 51 | `result-track:7738e1875e0895f788177799422231271019fd18b4e6d7b93ce294646bde47c1` |
| 3 | `lemma` | [isInducing](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/isinducing--f6c2504daf0d578fc77a518e.md) | 56 | `result-track:f6c2504daf0d578fc77a518edef86d93d1ccc923f140045bca1ec9cc6b02fa7c` |
| 4 | `theorem` | [nhds_eq_comap](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/nhds-eq-comap--c49416f659ef62719a2d1b90.md) | 58 | `result-track:c49416f659ef62719a2d1b90a842e0dbd25b0a7d8cfe5be131e16b24f4e0e161` |
| 5 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/continuous--c35866e5dc7d249edbfca642.md) | 61 | `result-track:c35866e5dc7d249edbfca642cb10701d4705c86f704f6661ec7c5fd3d4a1a884` |
| 6 | `theorem` | [closure_range](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/closure-range--644417ec9b28312c151867af.md) | 64 | `result-track:644417ec9b28312c151867af2daa3e8b3b8caae7592a965cdb4a55db5731c2a5` |
| 7 | `theorem` | [preconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/preconnectedspace--bb7b38093ee0253f6b85797e.md) | 67 | `result-track:bb7b38093ee0253f6b85797e1e7656d9a9830223a21ecba10857582796901648` |
| 8 | `theorem` | [closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/closure-image-mem-nhds--e143f44a94f430dea4c7eecc.md) | 71 | `result-track:e143f44a94f430dea4c7eecc9e5ec6c2a6bfc3cf0355b9393f897e7bc5f249e9` |
| 9 | `theorem` | [dense_image](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/dense-image--ed694771526e83326ba8529f.md) | 80 | `result-track:ed694771526e83326ba8529f8604d2029838f15de9f1e86331f2ce7a91f5eaf6` |
| 10 | `theorem` | [interior_compact_eq_empty](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/interior-compact-eq-empty--a45c223eabd76afa8d537ef3.md) | 87 | `result-track:a45c223eabd76afa8d537ef34982c71d5d28a642ab450fe12a6cb97970aab787` |
| 11 | `theorem` | [prodMap](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/prodmap--a342418ae0d574d08a4b9ad6.md) | 97 | `result-track:a342418ae0d574d08a4b9ad6540d620f7397c9dc122830be351f57998cf6a1d1` |
| 12 | `theorem` | [separableSpace](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/separablespace--bcf4af4dd39da1373d1ee82d.md) | 106 | `result-track:bcf4af4dd39da1373d1ee82db2d43eceacab57dfa6b6db2ca2de046030ffe8d3` |
| 13 | `theorem` | [tendsto_comap_nhds_nhds](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/tendsto-comap-nhds-nhds--2aa886f3c0afca08a794e00a.md) | 118 | `result-track:2aa886f3c0afca08a794e00a6feb1936627735c508e6a6be2d2c090243460658` |
| 14 | `theorem` | [nhdsWithin_neBot](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/nhdswithin-nebot--84475184893f8f0af533bc7d.md) | 127 | `result-track:84475184893f8f0af533bc7ded5283bd1deb0cca1bcecc7bff26166fe628621d` |
| 15 | `theorem` | [comap_nhds_neBot](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/comap-nhds-nebot--99a46f95b775bc675c5585e5.md) | 130 | `result-track:99a46f95b775bc675c5585e5ece3cb4291952735a7501e4f771059ec3f93daf2` |
| 16 | `def` | [extend](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/extend--3bc1f67728ca977e19399cca.md) | 140 | `declaration-track:3bc1f67728ca977e19399cca3c4118f89fc5e49a16d2a46b1d67dfe4730eb332` |
| 17 | `theorem` | [extend_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/extend-eq-of-tendsto--aebdd801245cddcaaeb98f5d.md) | 143 | `result-track:aebdd801245cddcaaeb98f5d6d3020943857561e4f582c786a3460d5cc020cbf` |
| 18 | `theorem` | [extend_eq_at](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/extend-eq-at--9c88c3948c00a69433cdebe7.md) | 148 | `result-track:9c88c3948c00a69433cdebe7a0a9cc66e05332898aa1f979d962de643a4212bf` |
| 19 | `theorem` | [extend_eq_at'](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/extend-eq-at--97a15a15a7ca0c22023706bc.md) | 152 | `result-track:97a15a15a7ca0c22023706bc13ce17e97714c62828e9a91853de41831ab45abb` |
| 20 | `theorem` | [extend_eq](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/extend-eq--33c8e5bd2d40640a226fb4bc.md) | 156 | `result-track:33c8e5bd2d40640a226fb4bc09a7a62b7e858ab8854d094107f36a1c73fe6089` |
| 21 | `theorem` | [extend_eq'](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/extend-eq--da303c7595969f71c42cc90e.md) | 163 | `result-track:da303c7595969f71c42cc90e5e1b598df979670ab767c81659f20157bb5776db` |
| 22 | `theorem` | [extend_unique_at](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/extend-unique-at--a7f0d2118ebbac7eed0b5269.md) | 169 | `result-track:a7f0d2118ebbac7eed0b5269f6429c2cbfce5670c56711ded7f1ce571a01c299` |
| 23 | `theorem` | [extend_unique](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/extend-unique--89ee1da5f3b6535ed2482b08.md) | 179 | `result-track:89ee1da5f3b6535ed2482b08351bef747a84c4f5f17f285102bc65a027d540fc` |
| 24 | `theorem` | [continuousAt_extend](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/continuousat-extend--17a55384610d8eca2389b232.md) | 183 | `result-track:17a55384610d8eca2389b2321846c68ff47d5bce9e8e82eda7bffd5b58ce6984` |
| 25 | `theorem` | [continuous_extend](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/continuous-extend--9ff38806ffcfa4f159da8aa5.md) | 205 | `result-track:9ff38806ffcfa4f159da8aa5bcc6d1c7388c80cf927ee14d850b858d1d4e1677` |
| 26 | `theorem` | [mk'](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/mk--46d730b3fbc0ab3b6df6ba74.md) | 209 | `result-track:46d730b3fbc0ab3b6df6ba7476b2b4776da4ce150c70b0ad4806396027b73159` |
| 27 | `def` | [extend](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/extend--25625e3dd5b206907f7e3beb.md) | 225 | `declaration-track:25625e3dd5b206907f7e3bebc0344f628b68fa3dd0987bfcc0b3721001858424` |
| 28 | `theorem` | [extend_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/extend-eq-of-tendsto--688ac6c07cd8c30892a0c0c4.md) | 230 | `result-track:688ac6c07cd8c30892a0c0c406843b573f473d12166a5f9c9199395800a74e2d` |
| 29 | `theorem` | [extend_eq_at](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/extend-eq-at--b568b05c7f9fc28fa1c98bf5.md) | 234 | `result-track:b568b05c7f9fc28fa1c98bf5c99c2f2e2738aa19739b12cc08fdc1b3f6ec10bb` |
| 30 | `theorem` | [extend_eq](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/extend-eq--4c1c5a68c281d481fe81f034.md) | 238 | `result-track:4c1c5a68c281d481fe81f034381e81a316c570dbd34651dacb052fb51b8aa132` |
| 31 | `theorem` | [extend_unique_at](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/extend-unique-at--8181ae417b19b7d5f3174e49.md) | 242 | `result-track:8181ae417b19b7d5f3174e4928e13feb1ad11d75ede98dbfebd1ee0ad00f58d0` |
| 32 | `theorem` | [extend_unique](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/extend-unique--1fe931740db90db0e8875782.md) | 247 | `result-track:1fe931740db90db0e8875782961bdfcf4d3744b6836ffe8f1e07ec942d6ba177` |
| 33 | `theorem` | [continuousAt_extend](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/continuousat-extend--abf4c41b1405abc05b5f721b.md) | 251 | `result-track:abf4c41b1405abc05b5f721bdd5a09836385b68ff689bd6fd694d2f876cf39d7` |
| 34 | `theorem` | [continuous_extend](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/continuous-extend--7598216cd47707d6efd50bb2.md) | 256 | `result-track:7598216cd47707d6efd50bb20f3102c162ec6b911b7406d6b5e54e35a01efcb1` |
| 35 | `structure` | [IsDenseEmbedding](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/isdenseembedding--2a3c8bd6905919fef25af46c.md) | 263 | `declaration-track:2a3c8bd6905919fef25af46cdcbd133c6d29b8615658aaa7b84943721e5d782c` |
| 36 | `lemma` | [IsDenseEmbedding.mk'](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/isdenseembedding-mk--0b423c1592a6ba0d3ab5b673.md) | 268 | `result-track:0b423c1592a6ba0d3ab5b67382d25b3369758ec1a597702b6f39bb80ce93cfc3` |
| 37 | `lemma` | [isDenseInducing](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/isdenseinducing--20037568861d0f92db6dacd3.md) | 280 | `result-track:20037568861d0f92db6dacd35e1dad344e14e2c75a27b717600c65d10a41fb5e` |
| 38 | `theorem` | [inj_iff](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/inj-iff--744231bc30b021d1c3face0d.md) | 282 | `result-track:744231bc30b021d1c3face0d24532bd2d3c181dbd1ba3cd4b2343dd7e924030a` |
| 39 | `theorem` | [isEmbedding](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/isembedding--4cba347bcc612a27be8f6df5.md) | 285 | `result-track:4cba347bcc612a27be8f6df5c407b70c9898fad1ec0071b2139fd28a4d821e92` |
| 40 | `theorem` | [separableSpace](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/separablespace--7539c2e20b6e210e73ccc264.md) | 291 | `result-track:7539c2e20b6e210e73ccc2648e6fa9cf4396d57e0872342ceea515d7cff9efb1` |
| 41 | `theorem` | [prodMap](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/prodmap--da6a7be41c01aa58fdbce350.md) | 295 | `result-track:da6a7be41c01aa58fdbce350caa21b632cfa1df4c751e039e047e2479ae36fc7` |
| 42 | `def` | [subtypeEmb](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/subtypeemb--5d31d8be74405080bb7602b1.md) | 302 | `declaration-track:5d31d8be74405080bb7602b14766a12b29049800610dfa8f36394541b694d1bf` |
| 43 | `theorem` | [subtype](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/subtype--25d6b41a7ff54b4f82ba7212.md) | 306 | `result-track:25d6b41a7ff54b4f82ba72127ac402bc2e2907e6f42aff1f33cdf9bcb10c1af9` |
| 44 | `theorem` | [dense_image](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/dense-image--89b02e2a926b0bfabb68b05e.md) | 319 | `result-track:89b02e2a926b0bfabb68b05e5472042203a44644858daa14e56b68a371aa3cf4` |
| 45 | `lemma` | [id](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/id--621019c632d9af2d47e77965.md) | 322 | `result-track:621019c632d9af2d47e779652a99e77f26e03c14f495b80682f832007d6cad04` |
| 46 | `theorem` | [Dense.isDenseEmbedding_val](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/dense-isdenseembedding-val--528b0a963cb995e197876910.md) | 327 | `result-track:528b0a963cb995e197876910a8a2d1a6c338403a74cd1b6b7db09044a4325d6a` |
| 47 | `theorem` | [isClosed_property](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/isclosed-property--a7151163dd0a4711400d1192.md) | 331 | `result-track:a7151163dd0a4711400d1192a267e549146c7e66432a98423dbc98478b2a5350` |
| 48 | `theorem` | [isClosed_property2](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/isclosed-property2--8b4fb5e9391a42a583d4716d.md) | 340 | `result-track:8b4fb5e9391a42a583d4716d98bd8e298c0a0aa96635b9371b10fb8c7a8e24d7` |
| 49 | `theorem` | [isClosed_property3](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/isclosed-property3--61d187bba44318f7d112cab2.md) | 345 | `result-track:61d187bba44318f7d112cab2e2ecc17941f17c3dd189d3074d443f4354a34251` |
| 50 | `theorem` | [DenseRange.induction_on](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/denserange-induction-on--e729b5c4ee2627015086cfbf.md) | 353 | `result-track:e729b5c4ee2627015086cfbf4c40c889441f4731119a9121fe26b84f886d352f` |
| 51 | `theorem` | [DenseRange.induction_on₂](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/denserange-induction-on--0da464582e3349173eb49fd7.md) | 358 | `result-track:0da464582e3349173eb49fd76a74a2ced429419ecb52f8edd90fb8a064569dd7` |
| 52 | `theorem` | [DenseRange.induction_on₃](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/denserange-induction-on--391f55ee4e23da98b9020496.md) | 364 | `result-track:391f55ee4e23da98b902049649ebfda41df83024a2d628c8ec055ec34367f56b` |
| 53 | `theorem` | [DenseRange.equalizer](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/denserange-equalizer--1878e31f20d8786efc3e0206.md) | 375 | `result-track:1878e31f20d8786efc3e0206db775ba86ee5b4e8631e6998b54b03ef1692209d` |
| 54 | `theorem` | [Filter.HasBasis.hasBasis_of_isDenseInducing](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/declarations/filter-hasbasis-hasbasis-of-isdenseinducing--bccbed7ba7cc6c0c7a5d6d10.md) | 382 | `result-track:bccbed7ba7cc6c0c7a5d6d10ca0170a843c1eb3c1681a10f503f17550b49e74b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
