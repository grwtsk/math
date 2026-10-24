# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.UnionProd.Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "befcd8a2916f87c43a0808772433669bb3e822aa",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `befcd8a2916f87c43a0808772433669bb3e822aa`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsIndex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/isindex--ade696e4e15cc04b6f16c27d.md) | 88 | `declaration-track:ade696e4e15cc04b6f16c27dc2ca20f7258c85b15a71b0899e7cf47186d5cc78` |
| 2 | `lemma` | [isIndex_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/isindex-zero--c70fcc0213bafeced102dcff.md) | 95 | `result-track:c70fcc0213bafeced102dcff9dd18343b93ca74dd83108d7d8234d729164d0d0` |
| 3 | `lemma` | [isIndex_succ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/isindex-succ--996d4bd69570f89053e74a00.md) | 97 | `result-track:996d4bd69570f89053e74a00bcbda27052ebe81e1c8dcf97f2001c2584304f9c` |
| 4 | `lemma` | [mem_range_left](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/mem-range-left--9fe222212c532afd5b002cc5.md) | 103 | `result-track:9fe222212c532afd5b002cc5105fcb504d3e996f972882a7472ac23d62068b96` |
| 5 | `lemma` | [mem_range_right](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/mem-range-right--dd9822936a94863bf4a61c35.md) | 110 | `result-track:dd9822936a94863bf4a61c35d3607b76adef610ff04f0f62497162d97a0c85b3` |
| 6 | `def` | [finset](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/finset--caab90d43633f8fefe520191.md) | 121 | `declaration-track:caab90d43633f8fefe520191c93cf4cafa071a701282b7f9c80864a7ac5854b1` |
| 7 | `lemma` | [mem_finset_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/mem-finset-iff--05dcbf7530006a2645799573.md) | 125 | `result-track:05dcbf7530006a2645799573b96df9a712010836d97c843a40b6ad82f96c60cd` |
| 8 | `lemma` | [nonempty_finset](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/nonempty-finset--bc922d3d45b882c8ffa51d3a.md) | 129 | `result-track:bc922d3d45b882c8ffa51d3adb76983beb99a9e1d9172be93602b18ae13554cd` |
| 9 | `def` | [min](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/min--dd69996dbc5c53e8a4e12c5b.md) | 136 | `declaration-track:dd69996dbc5c53e8a4e12c5b398af0cde89296302735a6d526e2aebae9db4bcb` |
| 10 | `lemma` | [simplex_fst_min](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/simplex-fst-min--13bf71e4d6b8f0f09f3ae266.md) | 138 | `result-track:13bf71e4d6b8f0f09f3ae26660013fde3a0ae0867e882d1f9e803b6409c5c0ba` |
| 11 | `lemma` | [simplex_fst_le_castSucc_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/simplex-fst-le-castsucc-iff--73e9ab2862669aa35908dc2e.md) | 142 | `result-track:73e9ab2862669aa35908dc2e572a107e893ec97208dc62807de3ea3a2637f49c` |
| 12 | `lemma` | [simplex_fst_castSucc](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/simplex-fst-castsucc--9ffb5e67e83870067b6f173a.md) | 167 | `result-track:9ffb5e67e83870067b6f173a7f9d4117df17b569e52aa476d5fff026efc7028e` |
| 13 | `lemma` | [simplex_fst_succ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/simplex-fst-succ--35582faa1eb44c50feb37a23.md) | 170 | `result-track:35582faa1eb44c50feb37a234cdc65084eb557f46b73bf3f8d0031442d325b9c` |
| 14 | `lemma` | [simplex_snd_succ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/simplex-snd-succ--4475a54ff3b060f9758a1210.md) | 173 | `result-track:4475a54ff3b060f9758a12101b0e4ca90072a5bb6e53104c0e3b0e673b16914b` |
| 15 | `lemma` | [succ_le_simplex_fst_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/succ-le-simplex-fst-iff--920db3967884b6544a62f921.md) | 176 | `result-track:920db3967884b6544a62f921174049a48d90226c4a3def98e97de668579ee800` |
| 16 | `lemma` | [simplex_fst_le_castSucc_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/simplex-fst-le-castsucc-iff--aca2a323dc61aa2266064870.md) | 188 | `result-track:aca2a323dc61aa226606487078d3a4a253cbf09f5a9de926a777f2d5efce1150` |
| 17 | `lemma` | [min_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/min-eq--4c7e7d79625fef28209e29e1.md) | 192 | `result-track:4c7e7d79625fef28209e29e14793ea1b80d5cb59080b779e520de701d791e283` |
| 18 | `lemma` | [unique](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/unique--1b44ce0588547155cd4cac5a.md) | 198 | `result-track:1b44ce0588547155cd4cac5a164c3bc98754d83d7568afdbaa00ad15cc0a1c23` |
| 19 | `abbrev` | [δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/anonymous--dd748c3485facfe9953eefc2.md) | 212 | `declaration-track:dd748c3485facfe9953eefc2f9f64591fb686554aea11b0b398c9c3991c1b788` |
| 20 | `structure` | [Type₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/type--4498057e299fdf1fe5887d25.md) | 243 | `declaration-track:4498057e299fdf1fe5887d2592910426522735bfb42e34e6a10ed3d24f329def` |
| 21 | `def` | [IsIndex.type₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/isindex-type--5d90ef87a696d0292f36b449.md) | 256 | `declaration-track:5d90ef87a696d0292f36b44943c58e3c1305b013985fb0ea1adad81faae6649b` |
| 22 | `lemma` | [ext_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/ext-iff--ffcfe23fd685251069341d25.md) | 266 | `result-track:ffcfe23fd685251069341d25a0388e76e8682a3e327105116f5501b9b6db3140` |
| 23 | `abbrev` | [δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/anonymous--f389d15d6b6f8869d29943eb.md) | 279 | `declaration-track:f389d15d6b6f8869d29943ebe6570fa5fb625e50d92c8ee46e1b8b4cf36ab342` |
| 24 | `def` | [IsType₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/istype--24ebfe7910e9360653f26694.md) | 289 | `declaration-track:24ebfe7910e9360653f2669498e33eeab5150381da01b0ae748013ece2136035` |
| 25 | `def` | [φ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/anonymous--e6f2679e07c1566e95b59381.md) | 298 | `declaration-track:e6f2679e07c1566e95b59381ec8b65de9e159130d8322b2704c8bb01901f75c6` |
| 26 | `lemma` | [φ_castSucc](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/castsucc--3b227ac48e584cb587302e51.md) | 304 | `result-track:3b227ac48e584cb587302e5159155c09325ed5dac0e99753a89f9e5b28528e1c` |
| 27 | `lemma` | [φ_succAbove](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/succabove--deb656f0313fa6bb858b0005.md) | 309 | `result-track:deb656f0313fa6bb858b00057fc52d4b3ae699cd8ff65dd5c329837df553af2b` |
| 28 | `lemma` | [φ_of_ne](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/of-ne--a4e3de8f4c0d768c7f023fd2.md) | 314 | `result-track:a4e3de8f4c0d768c7f023fd213ef929149b1fa4c1f14d951a2af5ed679b0bba9` |
| 29 | `lemma` | [φ_of_lt](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/of-lt--f9da5249c969c8f5fd83018f.md) | 318 | `result-track:f9da5249c969c8f5fd83018fae419233e7068f61ca509a9e23044b8140609291` |
| 30 | `lemma` | [φ_of_gt](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/of-gt--642ae83f192116b2f7249cb6.md) | 322 | `result-track:642ae83f192116b2f7249cb66e451524e7e3023e3c10fa9d78e050e9679c7558` |
| 31 | `lemma` | [φ_succ_snd](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/succ-snd--c590409835599ceb70dd4d12.md) | 328 | `result-track:c590409835599ceb70dd4d1225e35d9f424c95a458c8a2ee82dc4d01f7e1dbbf` |
| 32 | `lemma` | [φ_succ_fst](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/succ-fst--ee168d97b39d932324f3875f.md) | 334 | `result-track:ee168d97b39d932324f3875fbc13e858c40edb0dfcc0e49818c0b0b020fa1c13` |
| 33 | `lemma` | [strictMono_φ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/strictmono--4462d4e6b9919ad0b28b6463.md) | 342 | `result-track:4462d4e6b9919ad0b28b6463eec1fe430f4a6f97c3ed0b300dc8263558a298dc` |
| 34 | `abbrev` | [simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/simplex--77a4e254d539fbd7bf8e78da.md) | 377 | `declaration-track:77a4e254d539fbd7bf8e78dadcabd3474e31d03ef8a0b98f7fffd1e9ede23158` |
| 35 | `lemma` | [simplex_fst_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/simplex-fst-apply--f7e4d9231c505fe8d783754c.md) | 381 | `result-track:f7e4d9231c505fe8d783754c8cd8795a3a488e8d9099daa87951e2398cefa343` |
| 36 | `lemma` | [simplex_snd_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/simplex-snd-apply--80176b12d73eb7a6ba88443a.md) | 385 | `result-track:80176b12d73eb7a6ba88443a877aaf02df1e2d316bdf1bf535a5074b361f94d9` |
| 37 | `lemma` | [simplex_mem_nonDegenerate](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/simplex-mem-nondegenerate--13d8baa991f3cae64399b0c5.md) | 388 | `result-track:13d8baa991f3cae64399b0c5afcde78b014c504adfe9fd5c8ecd5f01e8585258` |
| 38 | `lemma` | [δ_simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/simplex--4e667e9066c6e555ded0e311.md) | 393 | `result-track:4e667e9066c6e555ded0e31145f0c9615ffdd07bdd180a909b57fe38af3ff82a` |
| 39 | `lemma` | [notMem_simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/notmem-simplex--7ec2a7d779973e984d5314e6.md) | 399 | `result-track:7ec2a7d779973e984d5314e6dc66fe30506f975b71d07fd761cabdf6149836af` |
| 40 | `def` | [type₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/type--b737c67757c58f1bed00fc02.md) | 408 | `declaration-track:b737c67757c58f1bed00fc026bfc66c0f0f26360170e9f6e855df8e1e0797738` |
| 41 | `lemma` | [min_δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/min--2a5c58112bdb3aa423358a9a.md) | 425 | `result-track:2a5c58112bdb3aa423358a9ac866488b74426eb3a0c5b2e8068473a92684e679` |
| 42 | `lemma` | [isType₂_δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/istype--82b4786db91384a24aaf49a7.md) | 439 | `result-track:82b4786db91384a24aaf49a75fc36b6bfe8fbf2b0f6dc8512146a84bf28f2390` |
| 43 | `lemma` | [eq_of_isType₂_δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/eq-of-istype--f3019a46290d7df3e5ca67e0.md) | 451 | `result-track:f3019a46290d7df3e5ca67e089277f956793b9539a51b67ec7daeb9a71e40a91` |
| 44 | `lemma` | [IsType₂.type₁_eq_of_δ_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/istype-type-eq-of-eq--d447c13c7395bb21a610590d.md) | 477 | `result-track:d447c13c7395bb21a610590d71ccffded0cb8f257d37d283760c026ae5c73328` |
| 45 | `lemma` | [Type₁.isType₂_δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/type-istype--cde50c2c71ea07f8b228ef68.md) | 507 | `result-track:cde50c2c71ea07f8b228ef68312257d4e764b0ddcf9d9493eaee5984f2b1d9cd` |
| 46 | `lemma` | [IsIndex.δ_injective](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/isindex-injective--43bf7c6a44ccfcc02bb13cff.md) | 511 | `result-track:43bf7c6a44ccfcc02bb13cffb30e41b99631c2df6f3d7048470ea7fbed1f207b` |
| 47 | `def` | [pairingCore](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/pairingcore--cd6e724d428d4d38196cea0b.md) | 529 | `declaration-track:cd6e724d428d4d38196cea0bf119852b0caa65bf8a36aea27a40196778a01314` |
| 48 | `lemma` | [type₁_pairingCore](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/type-pairingcore--1ea548a911d0f62590c61017.md) | 571 | `result-track:1ea548a911d0f62590c610176242f5ee5d5d6ab08788c433447bfe003b95a735` |
| 49 | `def` | [weakRankFunction](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/weakrankfunction--4883fe494d396ae7d7b15558.md) | 579 | `declaration-track:4883fe494d396ae7d7b1555870b942acca81c63ee9c79a94a26e3f9ff940ebc2` |
| 50 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/instance--d276ae42689556d7484300c4.md) | 633 | `declaration-track:d276ae42689556d7484300c405072a0eefd0103bf4eefc5e99b835e59f1bbea3` |
| 51 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/instance--2a7121c8f7d5cdcb3cce8ad4.md) | 637 | `declaration-track:2a7121c8f7d5cdcb3cce8ad44e9234baca54472b7ff02fd38d632a887c7753de` |
| 52 | `def` | [pairing](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/pairing--8a6e3b356f07cec25815fdd2.md) | 653 | `declaration-track:8a6e3b356f07cec25815fdd2a9a74e91cbd69b745ee84619cf6863427770339c` |
| 53 | `lemma` | [pairing_castSucc](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/pairing-castsucc--8408c215161cd37018f604d6.md) | 667 | `result-track:8408c215161cd37018f604d66854cbba56ebd6dd5d7538337fc2e4fabd168770` |
| 54 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/instance--111a53b8a283034f4e0ab2f1.md) | 672 | `declaration-track:111a53b8a283034f4e0ab2f16d3a2e80430878ad74a68570eabbb5e1367da5fd` |
| 55 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/declarations/instance--597a64669e3d5f9f9db63633.md) | 683 | `declaration-track:597a64669e3d5f9f9db6363385871fdefb99fefdc704944ad99828d6f2dcabba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
