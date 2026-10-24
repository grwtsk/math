# Verification target: GRWTSK.Topology.GeneralTopology.MonotoneConvergence.Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a0e82ff7a97f4f23dcbd9b63dfc0a268924d85d",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a0e82ff7a97f4f23dcbd9b63dfc0a268924d85d`.

Source path: `GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean.json)

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
| 1 | `class` | [SupConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/supconvergenceclass--b0cf06b2faa00c3781654618.md) | 51 | `declaration-track:b0cf06b2faa00c3781654618d972746fcd6ce79fcc151111db33155c75554192` |
| 2 | `class` | [InfConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/infconvergenceclass--de20941b4099b336cdce5d79.md) | 62 | `declaration-track:de20941b4099b336cdce5d7955cac5ba61fe6bd8c8dfae179aaee6f1b0d6fdb8` |
| 3 | `instance` | [OrderDual.supConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/orderdual-supconvergenceclass--cac69383e6f890851e23f8e1.md) | 67 | `declaration-track:cac69383e6f890851e23f8e19766e10d689c390307d3abe1e360a6c01f0b5ed8` |
| 4 | `instance` | [OrderDual.infConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/orderdual-infconvergenceclass--1e559f64927e8bf9ffc897e2.md) | 71 | `declaration-track:1e559f64927e8bf9ffc897e2c02a8ac16f505cf4e8d8292037f00ecf80b51a64` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/instance--6fe99a8bcd82583115ecfdec.md) | 76 | `declaration-track:6fe99a8bcd82583115ecfdec309e60abea571e708f2b26eede08c0b31537bd47` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/instance--7378edb4e82aa3251436177f.md) | 85 | `declaration-track:7378edb4e82aa3251436177f2330f00f49c950737843385e62a9c48b9262179a` |
| 7 | `theorem` | [tendsto_atTop_isLUB](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-attop-islub--1103a64585636fc5957cb81e.md) | 97 | `result-track:1103a64585636fc5957cb81e28b0bb74e9651ce5f4b49abdcf5d947e871618b0` |
| 8 | `theorem` | [tendsto_atBot_isLUB](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-atbot-islub--b2c0d827f436a75d8be5278a.md) | 103 | `result-track:b2c0d827f436a75d8be5278add859fd71c0a7cf43d53f82ec5ccb6afa4836bd1` |
| 9 | `theorem` | [tendsto_atBot_isGLB](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-atbot-isglb--3d4cea53e44040720cb62dce.md) | 112 | `result-track:3d4cea53e44040720cb62dce3ab89d1b1f6a1a0c93147f53546f6410126eae04` |
| 10 | `theorem` | [tendsto_atTop_isGLB](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-attop-isglb--3589a3fbdd9e1793a977aae2.md) | 115 | `result-track:3589a3fbdd9e1793a977aae24923546f4a204ab5693694367ef1f6081f9e57eb` |
| 11 | `theorem` | [tendsto_atTop_ciSup](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-attop-cisup--e50242f7bf805288168cfab0.md) | 126 | `result-track:e50242f7bf805288168cfab0dfd4a76fac36c668a0f3167305ca9b9b03aa5180` |
| 12 | `theorem` | [tendsto_atBot_ciSup](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-atbot-cisup--49f418b709ac6e0da714b39a.md) | 134 | `result-track:49f418b709ac6e0da714b39af0686a5c629052f47308e16928173a8722a744b8` |
| 13 | `theorem` | [tendsto_finsetSup_ciSup](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-finsetsup-cisup--d0a4950c3e2ddf340b26210b.md) | 141 | `result-track:d0a4950c3e2ddf340b26210b32029c558ac5602a2b20e63079eb63b2119ab40f` |
| 14 | `theorem` | [tendsto_atBot_ciInf](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-atbot-ciinf--78555ceb4e360c0fe95161d7.md) | 157 | `result-track:78555ceb4e360c0fe95161d7b8a823b43436c707d186dc56f2b77e95ab0f66ac` |
| 15 | `theorem` | [tendsto_atTop_ciInf](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-attop-ciinf--d77d1849b321628ddcd2f6d0.md) | 160 | `result-track:d77d1849b321628ddcd2f6d06cb4c9e7f7a7f8384060c82fcde47844fca3a0ca` |
| 16 | `theorem` | [tendsto_finsetInf_ciInf](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-finsetinf-ciinf--c9fd5ad57cc89b73501cf832.md) | 167 | `result-track:c9fd5ad57cc89b73501cf8327d5ed3e56673546cbf1b61107d96732cf64b1293` |
| 17 | `theorem` | [tendsto_atTop_iSup](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-attop-isup--db3270330a766849678a03f0.md) | 180 | `result-track:db3270330a766849678a03f03ec0228a4b02c220e57e814227e3eaa7410277a7` |
| 18 | `theorem` | [tendsto_finsetSup_iSup](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-finsetsup-isup--f902ee3960544912718acfa3.md) | 183 | `result-track:f902ee3960544912718acfa3d4becd1db15da5d112a89c603548c26a93ebf496` |
| 19 | `theorem` | [tendsto_atBot_iSup](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-atbot-isup--d849449ff5956fada5da0840.md) | 188 | `result-track:d849449ff5956fada5da084037d201ba76bcf93985790b8a3170fbd6dfc91498` |
| 20 | `theorem` | [tendsto_atBot_iInf](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-atbot-iinf--78d2044a8b491efd43888084.md) | 197 | `result-track:78d2044a8b491efd438880848f317d03933fab7da4934787f1c68142f42027fc` |
| 21 | `theorem` | [tendsto_finsetInf_iInf](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-finsetinf-iinf--48f549279c58f5f445dd25ca.md) | 200 | `result-track:48f549279c58f5f445dd25cab00a994fb75e1ee762127a58baa4220f5749c260` |
| 22 | `theorem` | [tendsto_atTop_iInf](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-attop-iinf--cebad0de9f7343c52771c80b.md) | 204 | `result-track:cebad0de9f7343c52771c80b71b7dc162d5adb40554c69698c0c6813f6dff7b0` |
| 23 | `instance` | [Prod.supConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/prod-supconvergenceclass--30229784a53ad06f7fc56f19.md) | 211 | `declaration-track:30229784a53ad06f7fc56f1955b6b45c86ab7e6318caf2532c728c4f6a802d0c` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/instance--6aa56ee6471c84fc39c9c5c1.md) | 223 | `declaration-track:6aa56ee6471c84fc39c9c5c1fa7579201c20b5426f4cc848b68032d6f30b514c` |
| 25 | `instance` | [Pi.supConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/pi-supconvergenceclass--0fa449fc5ae530571f511f3e.md) | 227 | `declaration-track:0fa449fc5ae530571f511f3e82e7a0d143f6779d56818fdc4fa31e05546d078d` |
| 26 | `instance` | [Pi.infConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/pi-infconvergenceclass--b9c6c797d33efc0f213e9216.md) | 234 | `declaration-track:b9c6c797d33efc0f213e9216c37d04f8aa1819b21231f48eb2843464c4379d3e` |
| 27 | `instance` | [Pi.supConvergenceClass'](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/pi-supconvergenceclass--a30853d7832ad7d48edf0e6c.md) | 239 | `declaration-track:a30853d7832ad7d48edf0e6c2cbea35a5207aabe52c3bb700d58865d55bb298a` |
| 28 | `instance` | [Pi.infConvergenceClass'](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/pi-infconvergenceclass--6fd54c5a44ef7a5c14223540.md) | 243 | `declaration-track:6fd54c5a44ef7a5c14223540ca751f2d8a259abb0f5948f2282dc486d45b12b0` |
| 29 | `theorem` | [tendsto_atTop_of_monotone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-attop-of-monotone--4a656f4bba4b5f0d4ad40973.md) | 247 | `result-track:4a656f4bba4b5f0d4ad409734833faf9fbd64e32cdd958e89d63c913ae4fd1bd` |
| 30 | `theorem` | [tendsto_atTop_of_antitone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-attop-of-antitone--b5e6b67de14c9346ace32da5.md) | 254 | `result-track:b5e6b67de14c9346ace32da5f5f81c36e2ab15671697cf31859641d32ab445b5` |
| 31 | `theorem` | [tendsto_atBot_of_monotone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-atbot-of-monotone--91a7e08ed1f07ae7c3503366.md) | 259 | `result-track:91a7e08ed1f07ae7c35033663f1b799b20c2f869a44125dc16055e7a896744bb` |
| 32 | `theorem` | [tendsto_atBot_of_antitone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-atbot-of-antitone--4af5bc2be731837e4d52e042.md) | 264 | `result-track:4af5bc2be731837e4d52e042744ef1fd63e30df4c0f6dee0528fde7631a5172a` |
| 33 | `theorem` | [tendsto_iff_tendsto_subseq_of_monotone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-iff-tendsto-subseq-of-monotone--954829bd902e12d94b6386c2.md) | 269 | `result-track:954829bd902e12d94b6386c22534e08110c21f46b15fc70e48b2fe930d73f62f` |
| 34 | `theorem` | [tendsto_iff_tendsto_subseq_of_antitone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/tendsto-iff-tendsto-subseq-of-antitone--5ca32e2274ad7c23b4af98fd.md) | 279 | `result-track:5ca32e2274ad7c23b4af98fde6719ad8e1390d9ba597da6af308ad969c7818e1` |
| 35 | `theorem` | [Monotone.ge_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/monotone-ge-of-tendsto--0ea681c42194349ae9daea1a.md) | 293 | `result-track:0ea681c42194349ae9daea1a6df0d56582cb732a33d6b4aaa1803df86b8125b6` |
| 36 | `theorem` | [Monotone.le_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/monotone-le-of-tendsto--2eea9c455ac06680579bc388.md) | 300 | `result-track:2eea9c455ac06680579bc3882b0dbc02e6ee36393d452f1012654da3a7376166` |
| 37 | `theorem` | [Antitone.le_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/antitone-le-of-tendsto--5d7b4e5803d632476924b5f1.md) | 306 | `result-track:5d7b4e5803d632476924b5f1831144c6e098d7a42b2ca243114b45c10a3beef3` |
| 38 | `theorem` | [Antitone.ge_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/antitone-ge-of-tendsto--3a710f0e8aa39f5371c593c6.md) | 312 | `result-track:3a710f0e8aa39f5371c593c623ac55b276d011edac03e7b2c8bae63fc84f6130` |
| 39 | `theorem` | [isLUB_of_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/islub-of-tendsto-attop--97277f08d8442f569827b65f.md) | 318 | `result-track:97277f08d8442f569827b65ffad25741bea2cce9f9db7634452deb1f7b311d66` |
| 40 | `theorem` | [isGLB_of_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/isglb-of-tendsto-atbot--7e936490b7cf3eadf74b3e33.md) | 326 | `result-track:7e936490b7cf3eadf74b3e330c9f2a9380bc1be23d61ef26ff6de320ce1cc791` |
| 41 | `theorem` | [isLUB_of_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/islub-of-tendsto-atbot--2755fbd65ff586f4bee0b8e4.md) | 331 | `result-track:2755fbd65ff586f4bee0b8e4dfc58022c92a72c7f1b6d0d38c78672eae096306` |
| 42 | `theorem` | [isGLB_of_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/isglb-of-tendsto-attop--369fc56befef22114ee90c14.md) | 336 | `result-track:369fc56befef22114ee90c145b93585f5549506bb04b375a8b037e614a54c29e` |
| 43 | `theorem` | [iSup_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/isup-eq-of-tendsto--fc211dcecb24ce45bb93ce99.md) | 341 | `result-track:fc211dcecb24ce45bb93ce99e48c4a28839ea6b58ad085eb728ac362389587e4` |
| 44 | `theorem` | [iInf_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/iinf-eq-of-tendsto--bea84fdbd5c6229af92026f2.md) | 346 | `result-track:bea84fdbd5c6229af92026f247ba5610694d07f5a971638caf760165a933787a` |
| 45 | `theorem` | [iSup_eq_iSup_subseq_of_monotone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/isup-eq-isup-subseq-of-monotone--5b9746768c474cc68d095250.md) | 351 | `result-track:5b9746768c474cc68d0952502993850f34396396417c961055da7ab9aac2bd59` |
| 46 | `theorem` | [iSup_eq_iSup_subseq_of_antitone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/isup-eq-isup-subseq-of-antitone--d621145eeab1b517efdd23ba.md) | 359 | `result-track:d621145eeab1b517efdd23ba150f1516acfecf4384e888e40a67ff158f064213` |
| 47 | `theorem` | [iInf_eq_iInf_subseq_of_monotone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/iinf-eq-iinf-subseq-of-monotone--ea01329cfebb3270862315aa.md) | 367 | `result-track:ea01329cfebb3270862315aaff4ede0968261da824b52bb0ff08926b9250c5f4` |
| 48 | `theorem` | [iInf_eq_iInf_subseq_of_antitone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/declarations/iinf-eq-iinf-subseq-of-antitone--bfba331ad7b68cbdf38e2cb0.md) | 372 | `result-track:bfba331ad7b68cbdf38e2cb08971dc375ada0971024602fbe00a4082f0e671d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
