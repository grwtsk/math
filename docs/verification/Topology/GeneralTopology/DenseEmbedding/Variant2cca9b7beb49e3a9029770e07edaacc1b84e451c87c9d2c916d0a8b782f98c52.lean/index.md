# Verification target: GRWTSK.Topology.GeneralTopology.DenseEmbedding.Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8379ad59570f5caa5b4910890bf7b10599da31f6",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8379ad59570f5caa5b4910890bf7b10599da31f6`.

Source path: `GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DenseInducing](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/denseinducing--9fc5c3ea9fdd973e17f50592.md) | 38 | `declaration-track:9fc5c3ea9fdd973e17f5059246f80de678f4ef511af740a92c417b7c8499e3cc` |
| 2 | `theorem` | [nhds_eq_comap](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/nhds-eq-comap--3fb9a5b7dd0f7fdf420c50a7.md) | 50 | `result-track:3fb9a5b7dd0f7fdf420c50a7a5aade100dc25bb7fc67e3404db47d0123a1a5ba` |
| 3 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/continuous--049d83b0692f610c7cfaab01.md) | 54 | `result-track:049d83b0692f610c7cfaab0135d08ef20aed3d1c198b4044775be88a2e3aadf0` |
| 4 | `theorem` | [closure_range](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/closure-range--cb7c5ce54ebe10ed21593dd2.md) | 58 | `result-track:cb7c5ce54ebe10ed21593dd2f466b1f181fd5ead13b822897adf2d4f329bd147` |
| 5 | `theorem` | [preconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/preconnectedspace--53920925e2a286fae29f73c7.md) | 62 | `result-track:53920925e2a286fae29f73c7582524c3a1fc791080e5800f749b24e0e2c65ac2` |
| 6 | `theorem` | [closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/closure-image-mem-nhds--3e37e8b1977fac20c060ed85.md) | 67 | `result-track:3e37e8b1977fac20c060ed85dd1ac9c2a0773b9cb88c464f6900edf8b7599cb5` |
| 7 | `theorem` | [dense_image](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/dense-image--4ab3e59f3c16a16b80676f99.md) | 77 | `result-track:4ab3e59f3c16a16b80676f99449ad95fa6b113f935d90a7ae7754cd8b6650e93` |
| 8 | `theorem` | [interior_compact_eq_empty](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/interior-compact-eq-empty--d2517a2adaa27e451e21be82.md) | 85 | `result-track:d2517a2adaa27e451e21be82ee9c73fe76bfd1508de1638155ab14af38d81a37` |
| 9 | `theorem` | [prod](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/prod--a1146425be65c65f1ab45b5d.md) | 96 | `result-track:a1146425be65c65f1ab45b5d6ee4a40c20777d8fde58ccd93d301cd715ebdb5f` |
| 10 | `theorem` | [separableSpace](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/separablespace--556e99db3ceee723880e8b93.md) | 106 | `result-track:556e99db3ceee723880e8b930737a0a52b45c8b305e29a350a9b034b5d6665c0` |
| 11 | `theorem` | [tendsto_comap_nhds_nhds](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/tendsto-comap-nhds-nhds--7a9bc2af7632c6dc9b041d26.md) | 118 | `result-track:7a9bc2af7632c6dc9b041d26583125be57ddc2cd177aab78c512a6865f746a6f` |
| 12 | `theorem` | [nhdsWithin_neBot](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/nhdswithin-nebot--5e941e8913633fcfe56ebf47.md) | 128 | `result-track:5e941e8913633fcfe56ebf470cbf54c5931cc76e316bc1853da34547ca977169` |
| 13 | `theorem` | [comap_nhds_neBot](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/comap-nhds-nebot--26f8b23da31e5f2079e7c565.md) | 132 | `result-track:26f8b23da31e5f2079e7c565478d4ee3ac61366305fdf4c7adeb9dff0a085c53` |
| 14 | `def` | [extend](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/extend--b5b4b09967eb3921948ba200.md) | 143 | `declaration-track:b5b4b09967eb3921948ba20023dcb5161d9fe51f787b2505e5d573c1b0a9e6f1` |
| 15 | `theorem` | [extend_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/extend-eq-of-tendsto--a7d946f94c3cdadd3df725ac.md) | 147 | `result-track:a7d946f94c3cdadd3df725acf4c2ed9bd67bcf19cadf4ea25823066496d13bcc` |
| 16 | `theorem` | [extend_eq_at](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/extend-eq-at--cd10384275b26f0f1d6e7d16.md) | 153 | `result-track:cd10384275b26f0f1d6e7d16c6beee5c08759463f3ad1973e03a2dd03be78793` |
| 17 | `theorem` | [extend_eq_at'](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/extend-eq-at--8f77afff4b8700d09bd7450c.md) | 158 | `result-track:8f77afff4b8700d09bd7450cb7a407a3b0e2cea288a3e80028044fc0f398171a` |
| 18 | `theorem` | [extend_eq](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/extend-eq--d666b0c55c102fd70fefa310.md) | 163 | `result-track:d666b0c55c102fd70fefa31034b42dfc3543b4eb036560ff5e88ad34258efd66` |
| 19 | `theorem` | [extend_eq'](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/extend-eq--b44b427311688a765426278f.md) | 170 | `result-track:b44b427311688a765426278f1a3f28303f3e534467a9ed2eb6f20d72d225a01c` |
| 20 | `theorem` | [extend_unique_at](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/extend-unique-at--de3b50ca6642c6f4c7d3178f.md) | 177 | `result-track:de3b50ca6642c6f4c7d3178fcb3702593091a53827e3f8ffd3fab8747814becc` |
| 21 | `theorem` | [extend_unique](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/extend-unique--e11c971eec0b160fa74d077e.md) | 188 | `result-track:e11c971eec0b160fa74d077edaa087e8720c102b4429766d9b940908e7a8b5e5` |
| 22 | `theorem` | [continuousAt_extend](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/continuousat-extend--37314f8c61760883b546a136.md) | 193 | `result-track:37314f8c61760883b546a13605e3a59595086bdc9d2322b7b50c362dbd04ca87` |
| 23 | `theorem` | [continuous_extend](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/continuous-extend--42563d7039e735fc18d434eb.md) | 216 | `result-track:42563d7039e735fc18d434ebabd24ac444b3c3d460a662e4a2791a932c606873` |
| 24 | `theorem` | [mk'](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/mk--94d50d8829c64893f79aa666.md) | 221 | `result-track:94d50d8829c64893f79aa666b2d4798b0ff6c8f370547b507d85fc68eb60f2eb` |
| 25 | `structure` | [DenseEmbedding](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/denseembedding--99f1544b15bf894d91e9813a.md) | 231 | `declaration-track:99f1544b15bf894d91e9813ab0f29b4daaadcae5081b9c1707fefd8a05cadb6a` |
| 26 | `theorem` | [DenseEmbedding.mk'](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/denseembedding-mk--5bf9a681f48eb366bb839eec.md) | 237 | `result-track:5bf9a681f48eb366bb839eeca4727020bf931558a4bde94b01c7f8001adc5d8c` |
| 27 | `theorem` | [inj_iff](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/inj-iff--12035a3057ffe4b2a9844c49.md) | 251 | `result-track:12035a3057ffe4b2a9844c49a9b7cb2a58b0fb61234e7de061efbbf12ed19cf0` |
| 28 | `theorem` | [to_embedding](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/to-embedding--324790562819cfb5e77499a5.md) | 255 | `result-track:324790562819cfb5e77499a57e39fdfda71c103c35f8186bf8c897449ffafec8` |
| 29 | `theorem` | [separableSpace](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/separablespace--263c354121ec4f13823028bb.md) | 261 | `result-track:263c354121ec4f13823028bb59690d641a0555ca05385481b980b51c13fb6333` |
| 30 | `theorem` | [prod](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/prod--5aa0201de2d3ae39e1870fdd.md) | 266 | `result-track:5aa0201de2d3ae39e1870fdd026da2568bd8925215235611e41e9c92af98a164` |
| 31 | `def` | [subtypeEmb](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/subtypeemb--c9f76b2511cdb404506744d1.md) | 274 | `declaration-track:c9f76b2511cdb404506744d161de421c1fc15184a25dae48681ef351cade5f2f` |
| 32 | `theorem` | [subtype](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/subtype--6314b0464281cd291076ba63.md) | 279 | `result-track:6314b0464281cd291076ba636538bb7f9a42e48ca47705c565859a7db1a84cc9` |
| 33 | `theorem` | [dense_image](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/dense-image--368f8c1daa8985dc13e5c4e9.md) | 292 | `result-track:368f8c1daa8985dc13e5c4e92e909458d789f4e4fde197e7cbc34d3cc60f0f97` |
| 34 | `theorem` | [denseEmbedding_id](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/denseembedding-id--084f0f12888eab11d5d05331.md) | 298 | `result-track:084f0f12888eab11d5d05331404be88bc80e4075c09786e9e098a1d770fc36eb` |
| 35 | `theorem` | [Dense.denseEmbedding_val](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/dense-denseembedding-val--e28a962876405dc2b8660599.md) | 302 | `result-track:e28a962876405dc2b8660599a68c84ec7533a74daef8a2b73f3700b14431f1ed` |
| 36 | `theorem` | [isClosed_property](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/isclosed-property--a5fd1a65f64c8b5e3e5cda1c.md) | 307 | `result-track:a5fd1a65f64c8b5e3e5cda1cb2d863adcae133fd5d0571218eaf92e469611b38` |
| 37 | `theorem` | [isClosed_property2](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/isclosed-property2--a5c51f641faee45eb0b32150.md) | 318 | `result-track:a5c51f641faee45eb0b32150122a8cbb82f701bed65fdaa9c53868d0587b3f00` |
| 38 | `theorem` | [isClosed_property3](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/isclosed-property3--950661909dab80b103b549fd.md) | 324 | `result-track:950661909dab80b103b549fd3d59a7a9bc1dad2c78ea97546fed7cf3130a587a` |
| 39 | `theorem` | [DenseRange.induction_on](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/denserange-induction-on--ed0a35578003de70b2ce0074.md) | 333 | `result-track:ed0a35578003de70b2ce00743f8229ad9d22dda672a4dc01cd9ff40bb1264335` |
| 40 | `theorem` | [DenseRange.induction_on₂](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/denserange-induction-on--ce209c5b47fe1540f4888e22.md) | 339 | `result-track:ce209c5b47fe1540f4888e224f0d08f073142ff3d282ba598c994c5d9b890950` |
| 41 | `theorem` | [DenseRange.induction_on₃](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/denserange-induction-on--57af7fac4342671673d2b1e6.md) | 346 | `result-track:57af7fac4342671673d2b1e6b7b9ba5c2e7a8684ec57708289b5f7c5dfd1e5c4` |
| 42 | `theorem` | [DenseRange.equalizer](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/denserange-equalizer--1550b8ee07337a5da5043565.md) | 359 | `result-track:1550b8ee07337a5da5043565431df1517f6a533c23bf42b3d1c47abfc301f87f` |
| 43 | `theorem` | [Filter.HasBasis.hasBasis_of_denseInducing](../../../../../mathematics/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/declarations/filter-hasbasis-hasbasis-of-denseinducing--b6adb6f9eac9ba62592c363c.md) | 367 | `result-track:b6adb6f9eac9ba62592c363c00b27a5a5b699fb1a57e77f6473b72232e9e1fe2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
