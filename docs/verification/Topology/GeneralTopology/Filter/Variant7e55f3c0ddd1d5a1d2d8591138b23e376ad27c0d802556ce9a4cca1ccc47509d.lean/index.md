# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cdd957ccc15e090a37f4cdfe081ec9eadc8fe4f",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cdd957ccc15e090a37f4cdfe081ec9eadc8fe4f`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Lift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Monotone` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/instance--3c0c4f47a3c92f372bc3f1ac.md) | 46 | `declaration-track:3c0c4f47a3c92f372bc3f1acfb3f324ad8d39939787a6cef35c9d721d240b8ed` |
| 2 | `theorem` | [isOpen_Iic_principal](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/isopen-iic-principal--48bfee3ecddbb6313af4186d.md) | 49 | `result-track:48bfee3ecddbb6313af4186d47bfc14f57d0507d6b76d96e0f9d8a757aee1005` |
| 3 | `theorem` | [isOpen_setOf_mem](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/isopen-setof-mem--081ae1f01106babc8f060eca.md) | 52 | `result-track:081ae1f01106babc8f060ecae70eaddd1dbfd52308d1c7e5f7caf7bf968e8e2b` |
| 4 | `theorem` | [isTopologicalBasis_Iic_principal](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/istopologicalbasis-iic-principal--a9aeebdb6c48897c39beb554.md) | 55 | `result-track:a9aeebdb6c48897c39beb554929464410c6b8f90d517b78f802c88a372e94472` |
| 5 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/isopen-iff--57a46cab8a94a778c21dd23b.md) | 64 | `result-track:57a46cab8a94a778c21dd23becf72df76487913e3346757940a7cae49b92b59c` |
| 6 | `theorem` | [nhds_eq](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/nhds-eq--a17c05c1f6edf6f82643a2f0.md) | 68 | `result-track:a17c05c1f6edf6f82643a2f029c53502a94f9730b65951a006ed2a753bd427ec` |
| 7 | `theorem` | [nhds_eq'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/nhds-eq--16b4882e75245dff52001670.md) | 73 | `result-track:16b4882e75245dff52001670f23a285db2ce4d734ab6ffb11e39a6de126d5771` |
| 8 | `theorem` | [tendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/tendsto-nhds--f9ae8627e71077967455c469.md) | 76 | `result-track:f9ae8627e71077967455c469d2dfae878f94235adf56e1d3277cf0a7ac6fb1dd` |
| 9 | `theorem` | [HasBasis.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/hasbasis-nhds--1f34e7d74fcfcf15c0ba2294.md) | 80 | `result-track:1f34e7d74fcfcf15c0ba22947a3f0fd2635339f5199673f19d5ce2e9605ce805` |
| 10 | `theorem` | [tendsto_pure_self](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/tendsto-pure-self--fb86105282465220390963b0.md) | 85 | `result-track:fb86105282465220390963b0c439594bc52c29534d2934ced12897124716b49d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/instance--7ec1eef6a7a8be580d00db50.md) | 91 | `declaration-track:7ec1eef6a7a8be580d00db50fd06ea41cff258fd16eed5faf40762c8910be004` |
| 12 | `theorem` | [HasBasis.nhds'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/hasbasis-nhds--356479608e27e3206deb1cfa.md) | 95 | `result-track:356479608e27e3206deb1cfaf2322a14be13f1e8f2f0faf3f85eca6e5159f874` |
| 13 | `theorem` | [mem_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/mem-nhds-iff--2bd4b1e56d5382188fb42868.md) | 98 | `result-track:2bd4b1e56d5382188fb428684cd2cfadaca70ea18486ef80a0a6a071be853535` |
| 14 | `theorem` | [mem_nhds_iff'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/mem-nhds-iff--4526b75520554b4ffe1fa71a.md) | 102 | `result-track:4526b75520554b4ffe1fa71a3829760d25b14437d67db92957a7ce99a82ca668` |
| 15 | `theorem` | [nhds_bot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/nhds-bot--cef2d81667a041986e9d95da.md) | 107 | `result-track:cef2d81667a041986e9d95da5a4db3de8b472b8df029703061bd6ce041f51deb` |
| 16 | `theorem` | [nhds_top](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/nhds-top--b28f9740ced7d98556c49f7b.md) | 111 | `result-track:b28f9740ced7d98556c49f7b6dd930a94bdb317ebf88892313c8c87b326c280b` |
| 17 | `theorem` | [nhds_principal](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/nhds-principal--505770155c467527a4ece58e.md) | 114 | `result-track:505770155c467527a4ece58ec6546796b3a60a4bc13792c42fd97343aa1d012c` |
| 18 | `theorem` | [nhds_pure](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/nhds-pure--2543b774072717f927aa3abe.md) | 118 | `result-track:2543b774072717f927aa3abeb86a2a0c80321b5b07efd12ba1937c9471c16434` |
| 19 | `theorem` | [nhds_iInf](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/nhds-iinf--e96a1cfa69125970e638f83e.md) | 122 | `result-track:e96a1cfa69125970e638f83e8c759263a92ecef4c588a8fbafcc099d1373e01a` |
| 20 | `theorem` | [nhds_inf](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/nhds-inf--1119c11fcec351c98bf71adf.md) | 127 | `result-track:1119c11fcec351c98bf71adfd82ae2bb2870ff06b7ba908c6642b778e4ac037b` |
| 21 | `theorem` | [monotone_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/monotone-nhds--4736529c1c6f0fb81f2cabf5.md) | 130 | `result-track:4736529c1c6f0fb81f2cabf51dc6da16e953ed1ff98c5fed69f4259350372f60` |
| 22 | `theorem` | [sInter_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/sinter-nhds--41b0fdf1839ece19fb3002c1.md) | 133 | `result-track:41b0fdf1839ece19fb3002c1bdc60533bdb96cb7427aeed9f78032077d56c5e5` |
| 23 | `theorem` | [nhds_mono](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/nhds-mono--ebd274248cbeffb45512bf55.md) | 138 | `result-track:ebd274248cbeffb45512bf5592af033d8e59b1f905f152cf715925a24333b70f` |
| 24 | `theorem` | [mem_interior](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/mem-interior--66fbeaa421c86d651e093cc3.md) | 143 | `result-track:66fbeaa421c86d651e093cc34d0ca0c0b1dd4f5f53e677d2783ef3b64c9d80cb` |
| 25 | `theorem` | [mem_closure](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/mem-closure--95f18a750fffd9c4ba19e3db.md) | 147 | `result-track:95f18a750fffd9c4ba19e3dbda3b42f48bc997d300b6e0febcbede1271d782de` |
| 26 | `theorem` | [closure_singleton](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/closure-singleton--d74328c06f1c79e6a509c2af.md) | 154 | `result-track:d74328c06f1c79e6a509c2af83fb1d8223e03a4cba91a316a41507db2589267b` |
| 27 | `theorem` | [specializes_iff_le](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/specializes-iff-le--79846590fd4998248de86067.md) | 159 | `result-track:79846590fd4998248de8606760b49dc675efd36645f00ca05f924a06a4722f69` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/instance--9fbbe291e692a840911e8dce.md) | 162 | `declaration-track:9fbbe291e692a840911e8dce0c3e720b4a318e61403d8f51c26d4651440334b5` |
| 29 | `theorem` | [nhds_atTop](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/nhds-attop--cf3606de73c929a2689a36bf.md) | 166 | `result-track:cf3606de73c929a2689a36bfc7577fcb7bfd64ca7a79fe30268b18216962055c` |
| 30 | `theorem` | [tendsto_nhds_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/tendsto-nhds-attop-iff--a8f7f8a61499e53302728fe4.md) | 169 | `result-track:a8f7f8a61499e53302728fe41eff0b969f10c205e0c354315c3570e341f7b0b7` |
| 31 | `theorem` | [nhds_atBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/nhds-atbot--3c3d1f031380773e38b6fa89.md) | 173 | `result-track:3c3d1f031380773e38b6fa896fff4b031b6aa902b3b4adfc22610f30378d954a` |
| 32 | `theorem` | [tendsto_nhds_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/tendsto-nhds-atbot-iff--438f0429f7b29d19d96f1bc9.md) | 176 | `result-track:438f0429f7b29d19d96f1bc9c655d25d05ac6fd9a5be62cc2ca49919a723b0f3` |
| 33 | `theorem` | [nhds_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/nhds-nhds--65a127c8def146346eac72a8.md) | 182 | `result-track:65a127c8def146346eac72a8448128b89db8d08b1fe49e35fe45573cb7a39242` |
| 34 | `theorem` | [isInducing_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/isinducing-nhds--9289ba16b6881b785d88bfa3.md) | 186 | `result-track:9289ba16b6881b785d88bfa3c14ac81d7589ed1e8ec5bbf79b1ef93d7aec4a7f` |
| 35 | `theorem` | [continuous_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/continuous-nhds--836d7b6f331d268d815a0199.md) | 196 | `result-track:836d7b6f331d268d815a01990763a6f4ffca2171636fee4330e324aab3394f19` |
| 36 | `theorem` | [Tendsto.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/tendsto-nhds--284d75e3ead4e8f0d85fd932.md) | 199 | `result-track:284d75e3ead4e8f0d85fd932c56d4a2faa71fd9efbaa1765d4715c405c8f6071` |
| 37 | `theorem` | [ContinuousWithinAt.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/continuouswithinat-nhds--c56f107466528aa5ffa17aab.md) | 207 | `result-track:c56f107466528aa5ffa17aabab896570eca8140ec34f12f7493bf87916efbbb6` |
| 38 | `theorem` | [ContinuousAt.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/continuousat-nhds--3e2f4bde8568753721cb527a.md) | 211 | `result-track:3e2f4bde8568753721cb527aab4ebbdf1f380cd427a956ab422bcd744c9522b6` |
| 39 | `theorem` | [ContinuousOn.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/continuouson-nhds--6659ce7ebefe47801114fe3f.md) | 214 | `result-track:6659ce7ebefe47801114fe3f7c09f4bd504fae37622a519560792417c5eff833` |
| 40 | `theorem` | [Continuous.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant7e55f3c0ddd1d5a1d2d8591138b23e376ad27c0d802556ce9a4cca1ccc47509d.lean/declarations/continuous-nhds--f8da48202c1a79eaa2398038.md) | 217 | `result-track:f8da48202c1a79eaa239803885dd11797bd85b1adebaa5416bfd009ec4e443bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
