# Verification target: GRWTSK.Algebra.Ring.Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb238cd28c7e2fb9da13db4f0984b28af468d5d7",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb238cd28c7e2fb9da13db4f0984b28af468d5d7`.

Source path: `GRWTSK/Algebra/Ring/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/gnonunitalnonassocsemiring--cca78223387402a6f37ebbb2.md) | 98 | `declaration-track:cca78223387402a6f37ebbb274a51d6faec4771742e1a772b764cd40cb1b7d9e` |
| 2 | `class` | [GSemiring](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/gsemiring--212fdb442e953fb0fca03996.md) | 118 | `declaration-track:212fdb442e953fb0fca039964be8051e9ecd78e7e2cbb27926ba99e6d53f75fc` |
| 3 | `class` | [GCommSemiring](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/gcommsemiring--98bcff5c737ccffa531c772f.md) | 128 | `declaration-track:98bcff5c737ccffa531c772fdc33df604a344612850c2e433d0e7bd38fb27bf6` |
| 4 | `class` | [GRing](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/gring--84980566363f7652cfd84486.md) | 132 | `declaration-track:84980566363f7652cfd84486fd709f9ce60788ecbcc754b8441f3203615662cf` |
| 5 | `class` | [GCommRing](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/gcommring--8a386993ee76eb72bab24ed8.md) | 144 | `declaration-track:8a386993ee76eb72bab24ed83a377391f5e3a6e4d098183c07f676670c1a3dcd` |
| 6 | `theorem` | [of_eq_of_gradedMonoid_eq](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/of-eq-of-gradedmonoid-eq--ef31c827c4d287ed95ffba4e.md) | 148 | `result-track:ef31c827c4d287ed95ffba4ed20219b618d2dbefe313cc33ab5dcc020cee85a9` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/instance--c2b0157cc2992e5036b9c664.md) | 162 | `declaration-track:c2b0157cc2992e5036b9c664715124bb974da77de9fea11cfd0a142b2fb061d9` |
| 8 | `theorem` | [one_def](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/one-def--3e365e0ea6a515d00e6a12fa.md) | 164 | `result-track:3e365e0ea6a515d00e6a12fadecaebca3e6694047c0d38546d04600d4c492ed3` |
| 9 | `def` | [gMulHom](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/gmulhom--79c804dc3fb5fca6b6cae1f3.md) | 176 | `declaration-track:79c804dc3fb5fca6b6cae1f3c4ca3017a4f9c6d90cddb9035044513728b211cc` |
| 10 | `def` | [mulHom](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/mulhom--90eb633bb50d8f35e140698f.md) | 187 | `declaration-track:90eb633bb50d8f35e140698f78d0d29274e1efa698911037ecfef06ec7d0eb65` |
| 11 | `instance` | [instMul](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/instmul--2af4e12d69a4e0c25ec17366.md) | 193 | `declaration-track:2af4e12d69a4e0c25ec1736639cbaf2804e842562e6f8bac1d2cf9d689358041` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/instance--b88311610e83e83b806bdceb.md) | 196 | `declaration-track:b88311610e83e83b806bdcebffb5f54fa695f843747b1cb73fecf0d2143590ab` |
| 13 | `theorem` | [mulHom_apply](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/mulhom-apply--3891185932d6d3ea549380e7.md) | 205 | `result-track:3891185932d6d3ea549380e76df08335a0bfb34a8f19fd2d0c7cb60ad6a2e9ca` |
| 14 | `theorem` | [mulHom_of_of](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/mulhom-of-of--c4af0a5fe76316437995351d.md) | 207 | `result-track:c4af0a5fe76316437995351d747d67a22ab00c9bb2395febc787708f27244592` |
| 15 | `theorem` | [of_mul_of](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/of-mul-of--65435a6f07bc3eef95760a83.md) | 211 | `result-track:65435a6f07bc3eef95760a83ba93a9c64603780417b69d400fa8f880939b70ec` |
| 16 | `theorem` | [one_mul](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/one-mul--051db331852d5988ab7ea78d.md) | 223 | `result-track:051db331852d5988ab7ea78d0192903af0be47b865e1da38a0ee809059873e3f` |
| 17 | `theorem` | [mul_one](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/mul-one--eb3b3901d6b97631801e005d.md) | 230 | `result-track:eb3b3901d6b97631801e005dc4c20b7284a367575492e02ddbda4c263455fb2b` |
| 18 | `theorem` | [mul_assoc](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/mul-assoc--71a4234fe51dfb1858dd5545.md) | 238 | `result-track:71a4234fe51dfb1858dd55451226a2fd86054342cc770aa25b08c4946aa4da98` |
| 19 | `instance` | [instNatCast](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/instnatcast--7c145ad512c0fbdf4a87d5b8.md) | 249 | `declaration-track:7c145ad512c0fbdf4a87d5b879c3dec81a23aca30376840e2be2ae05b11c4fcf` |
| 20 | `instance` | [semiring](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/semiring--3cb09641887a528d77c48892.md) | 253 | `declaration-track:3cb09641887a528d77c4889293950c0586c0bc337eddc31e34d269ebe92cf9a3` |
| 21 | `theorem` | [ofPow](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/ofpow--45affe7e3a55d81bc73b8bb1.md) | 264 | `result-track:45affe7e3a55d81bc73b8bb1dc5e4a94e9130acafb6275ff1cc0045e1d72801e` |
| 22 | `theorem` | [ofList_dProd](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/oflist-dprod--67ccf2518606f1da7e5cd8ce.md) | 272 | `result-track:67ccf2518606f1da7e5cd8ce81faa478010bb3bd3d0eee70ddad3aa8863b8fbd` |
| 23 | `theorem` | [list_prod_ofFn_of_eq_dProd](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/list-prod-offn-of-eq-dprod--a9803f78925a15be22dfff47.md) | 282 | `result-track:a9803f78925a15be22dfff47bc2931f099801159a9cd1d6e3fd13fee4c350500` |
| 24 | `theorem` | [mul_eq_dfinsuppSum](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/mul-eq-dfinsuppsum--26df2286d6d778ccd5ece1ea.md) | 286 | `result-track:26df2286d6d778ccd5ece1ea95bd72416dfd7abc0107b7d7f49f372d7e4c17f1` |
| 25 | `theorem` | [mul_eq_sum_support_ghas_mul](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/mul-eq-sum-support-ghas-mul--ce4508541d55759d359c06aa.md) | 301 | `result-track:ce4508541d55759d359c06aa891feafc5795e6923d50a286cac0f570bad0cbdb` |
| 26 | `theorem` | [mul_comm](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/mul-comm--8476cde6f967619743f42b25.md) | 313 | `result-track:8476cde6f967619743f42b253842cb81db0b83eeb8a9003cfb508993c9985655` |
| 27 | `instance` | [commSemiring](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/commsemiring--1d3b440603d62f16470c54f9.md) | 321 | `declaration-track:1d3b440603d62f16470c54f987d119bf9e26755f3966796fbda2fc9bf3bf66f9` |
| 28 | `instance` | [nonAssocRing](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/nonassocring--dee6f4d6f165aa3ea7604a64.md) | 331 | `declaration-track:dee6f4d6f165aa3ea7604a6462e2a8a872f4fb7977223080547a39406a1fec02` |
| 29 | `instance` | [ring](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/ring--07729f0e084e9d08c0292180.md) | 341 | `declaration-track:07729f0e084e9d08c02921806d2ac5ae73848603c1c6994d2193517f905a0d45` |
| 30 | `instance` | [commRing](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/commring--90288d463931e3f753d7be47.md) | 354 | `declaration-track:90288d463931e3f753d7be47492c3a90bcc59b79451d8ee3134dc81bd8625fcf` |
| 31 | `theorem` | [of_zero_one](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/of-zero-one--eda0298ebdc848b635b7dc3c.md) | 378 | `result-track:eda0298ebdc848b635b7dc3cac44134bb7df4a7e4d2a02891a7ff51868c20bf8` |
| 32 | `theorem` | [of_zero_smul](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/of-zero-smul--76e746c9a8a188fbf79c1075.md) | 388 | `result-track:76e746c9a8a188fbf79c107582711a5ed5fa1a4f75a058d56146b01a5795a494` |
| 33 | `theorem` | [of_zero_mul](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/of-zero-mul--7d153bc842402b4d9461dc0b.md) | 392 | `result-track:7d153bc842402b4d9461dc0bd17df8ad9801c8d291bcf814fa20526f1c386945` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/instance--a2de1a72ad56d1d16cea52c9.md) | 397 | `declaration-track:a2de1a72ad56d1d16cea52c979a422ba7aa6267abb3e9f905c5e251a9e3ca50c` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/instance--a5593e434dbc6cb6c3c63d23.md) | 404 | `declaration-track:a5593e434dbc6cb6c3c63d23b1a4e2201023b1f2757b0f2d8799f709465a1ab5` |
| 36 | `theorem` | [of_zero_pow](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/of-zero-pow--e46300b04e4b53cebdb8cfd3.md) | 416 | `result-track:e46300b04e4b53cebdb8cfd3e126567ac8d2c2d8af21acf20ec85003fffc9620` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/instance--115609b9183a2b1c342a4a01.md) | 422 | `declaration-track:115609b9183a2b1c342a4a013e914fb6c99a9171c5c19e727e519e5c93c76d43` |
| 38 | `theorem` | [of_natCast](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/of-natcast--f288c11c3ec98eb65cc7e044.md) | 429 | `result-track:f288c11c3ec98eb65cc7e044b2c7d154934d902cd0fa094c82a2a0419be12df5` |
| 39 | `theorem` | [of_zero_ofNat](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/of-zero-ofnat--9c992041a378a176fda08326.md) | 433 | `result-track:9c992041a378a176fda08326a3c64c21d348a17248e0c009deede41a4610edb1` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/instance--7278f046362216bd3ca3e21a.md) | 437 | `declaration-track:7278f046362216bd3ca3e21a019d1dda6dcfef1979c6609d24f6a47eabc24631` |
| 41 | `def` | [ofZeroRingHom](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/ofzeroringhom--5670f81708d9e5783791d125.md) | 443 | `declaration-track:5670f81708d9e5783791d125cc2f236cc29ad62906da3fd763e738b0f1351e12` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/instance--6e52c16b257fe26b00435c8f.md) | 451 | `declaration-track:6e52c16b257fe26b00435c8f60191c43c4fbde4f042dc1ac382e3c6c8f9d0136` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/instance--7c5f026a3f020d6e3fe0466d.md) | 462 | `declaration-track:7c5f026a3f020d6e3fe0466d903d4a8f833304d7c4eaaf259d2f9974384aa93f` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/instance--ecc09cbde76c8a3226572eed.md) | 474 | `declaration-track:ecc09cbde76c8a3226572eed9f6bbc766a50ea78c11b8496c0102cb7aca7ec3d` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/instance--f7dfb0b24c9a8754249122c5.md) | 486 | `declaration-track:f7dfb0b24c9a8754249122c54ecb5d7803bad2dea1e4028ff1dd3b67de7df562` |
| 46 | `theorem` | [of_intCast](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/of-intcast--a5732a0fbeff1201c0f1ca40.md) | 490 | `result-track:a5732a0fbeff1201c0f1ca40c18e08b77b7afc371bbe6cc79d62b82fc385327f` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/instance--1afa42b716bc5cc742ef8833.md) | 494 | `declaration-track:1afa42b716bc5cc742ef8833a48b731c5ba0ecf09c0a66e445f17bdf7f5b579b` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/instance--907a813028cecc1b43277c3d.md) | 506 | `declaration-track:907a813028cecc1b43277c3d045547a9474dc76be5d88b43a3ca146e67cfe011` |
| 49 | `theorem` | [ringHom_ext'](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/ringhom-ext--18ea1b09dec064a6fcce83ea.md) | 525 | `result-track:18ea1b09dec064a6fcce83ead7a22c6d5654d519bf1a63781d16f534a46cf266` |
| 50 | `theorem` | [ringHom_ext](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/ringhom-ext--d70a5e7baa9924639ff5ee37.md) | 530 | `result-track:d70a5e7baa9924639ff5ee37ca5a0ccb4f19f754572b8f5d2e073c871ba8e6b6` |
| 51 | `def` | [toSemiring](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/tosemiring--70659b475be117561bac5ac0.md) | 541 | `declaration-track:70659b475be117561bac5ac040cfbd9a646a01cc763a7236ab214e7ddd3e0564` |
| 52 | `theorem` | [toSemiring_of](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/tosemiring-of--2c1fbb66d7fa5f8e6bc55070.md) | 560 | `result-track:2c1fbb66d7fa5f8e6bc55070d2c236fd396deb1f5121787b7c52483ad9f10380` |
| 53 | `theorem` | [toSemiring_coe_addMonoidHom](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/tosemiring-coe-addmonoidhom--f1223215d738fe0b578bc68d.md) | 565 | `result-track:f1223215d738fe0b578bc68dfbba277850a57539a1a683c044a7e0205c96c0f7` |
| 54 | `def` | [liftRingHom](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/liftringhom--7318aafa473d5df530ea2fdb.md) | 573 | `declaration-track:7318aafa473d5df530ea2fdb0aa204baa5988113285aa4c50e09e3547bc7f882` |
| 55 | `instance` | [NonUnitalNonAssocSemiring.directSumGNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/nonunitalnonassocsemiring-directsumgnonunitalnonassocsemiring--d5e28dfa9d1e0ca83b90b989.md) | 610 | `declaration-track:d5e28dfa9d1e0ca83b90b989b69f774a9c985aab4149e7eed59403d829cc087c` |
| 56 | `instance` | [Semiring.directSumGSemiring](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/semiring-directsumgsemiring--f69efac1ade286be6de7dd78.md) | 618 | `declaration-track:f69efac1ade286be6de7dd78dfb567331c570fd1f6af8a481e01b20ae5208510` |
| 57 | `instance` | [Ring.directSumGRing](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/ring-directsumgring--407c27cf181bcff33eaead64.md) | 625 | `declaration-track:407c27cf181bcff33eaead644059c18df92f59365f4d695a2e29a0f2e3a35e0c` |
| 58 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/example--2dabfcbce893723dbf2853ed.md) | 634 | `declaration-track:2dabfcbce893723dbf2853ed2923477f80850ad1eb9f231d41c3c85515d65804` |
| 59 | `instance` | [CommSemiring.directSumGCommSemiring](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/commsemiring-directsumgcommsemiring--88ee869e2c7a79b21d2943a4.md) | 639 | `declaration-track:88ee869e2c7a79b21d2943a4e84ee2b66143d75b1e4c5369fe5e0c51dfb68615` |
| 60 | `instance` | [CommRing.directSumGCommRing](../../../../mathematics/Algebra/RingTheory/Variant6177d25b8e7ae46f3cbf3e701730bab3791e1f3b87474f189a797775b2870f7c.lean/declarations/commring-directsumgcommring--132b26451089dcbec934a940.md) | 643 | `declaration-track:132b26451089dcbec934a940d642c2df97b461e3d2059c6ab740b7eee96f61f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
