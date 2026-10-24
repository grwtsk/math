# Verification target: GRWTSK.Topology.GeneralTopology.OperationalTopology.Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bddad040d8697e3f3bcf8c400b2337d78a106b5d",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bddad040d8697e3f3bcf8c400b2337d78a106b5d`.

Source path: `GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.Probe` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OperationalRelation](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/operationalrelation--210b0b0aa118cf538d062267.md) | 15 | `declaration-track:210b0b0aa118cf538d062267665f38e9943b41d392f55b75f47840c9316839fc` |
| 2 | `def` | [closure](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/closure--0783e44d4250a621ea617679.md) | 25 | `declaration-track:0783e44d4250a621ea617679e75cb8fb999c8fbf55f675c7eed059423dccb0b0` |
| 3 | `theorem` | [mem_closure](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/mem-closure--27fb96b694a9d940d027fb8a.md) | 28 | `result-track:27fb96b694a9d940d027fb8ae8c235bfc5642b11c8e3693781213f0ae2b04220` |
| 4 | `theorem` | [closure_empty](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/closure-empty--900ed8579cf6a3e75ec61af6.md) | 31 | `result-track:900ed8579cf6a3e75ec61af607265c3ce650a0d999b7f7ca2cb1ff3922c6174e` |
| 5 | `theorem` | [subset_closure](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/subset-closure--962c4bbab2b39ae062cf2d8c.md) | 36 | `result-track:962c4bbab2b39ae062cf2d8c05c9abfe1d7cb5d9d695466279175b69cccf3c55` |
| 6 | `theorem` | [closure_union](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/closure-union--f3b8a82baa0d41a64fb09c8a.md) | 41 | `result-track:f3b8a82baa0d41a64fb09c8aaf8d5a48650d539d3b3cbbd15244c8161390664c` |
| 7 | `theorem` | [closure_idem](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/closure-idem--8048eee5435344a73f83603e.md) | 55 | `result-track:8048eee5435344a73f83603e1c71beea129be6758583ceee26f90a8463175436` |
| 8 | `structure` | [KuratowskiCertificate](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/kuratowskicertificate--430b202f063cd45c0d0bcd98.md) | 63 | `declaration-track:430b202f063cd45c0d0bcd98210d9e5d1881f55b72f0076182094f99d023c807` |
| 9 | `theorem` | [kuratowskiCertificate](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/kuratowskicertificate--1bd99dda29068df432d4b2a7.md) | 70 | `result-track:1bd99dda29068df432d4b2a7e5ecf6d8b9310433deb6bf0668027b669f813f09` |
| 10 | `def` | [operationalTopology](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/operationaltopology--b41180426e449970b08a29a8.md) | 77 | `declaration-track:b41180426e449970b08a29a88e7905e718f3ae32d0ebbe9a861f658cde89be11` |
| 11 | `theorem` | [isClosed_iff_upward](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/isclosed-iff-upward--b9fe5bc60d2b62dcd6c87f1a.md) | 91 | `result-track:b9fe5bc60d2b62dcd6c87f1a60dc111f267e13e1494fa9c5c4017bc023b656f4` |
| 12 | `theorem` | [isClosed_closure](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/isclosed-closure--3bc91e6889058000b8273aa3.md) | 108 | `result-track:3bc91e6889058000b8273aa3cc45a0644093d3522f5cdaad6fe22e1712985298` |
| 13 | `theorem` | [topological_closure_eq](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/topological-closure-eq--34ec4ddaff6de2559ab55646.md) | 116 | `result-track:34ec4ddaff6de2559ab55646e556ecd0687d27a4563bf71b37a36aca316b1244` |
| 14 | `def` | [interior](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/interior--49f250b988e980830c50aa39.md) | 133 | `declaration-track:49f250b988e980830c50aa395b2c6851b58f644998f6cbc9775ee0dd0dda93fc` |
| 15 | `def` | [boundary](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/boundary--15e073f403e2c33a1ab7c2a5.md) | 137 | `declaration-track:15e073f403e2c33a1ab7c2a5a647d56a7006f522fd277ef1d8875a50df833b86` |
| 16 | `def` | [exitBoundary](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/exitboundary--9cd30c66c84913be41e16083.md) | 141 | `declaration-track:9cd30c66c84913be41e16083e40ad4ab55560eb445529c0418a5a4ea8f85d596` |
| 17 | `def` | [entryBoundary](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/entryboundary--16ca172a7abfd9ab80b4fef4.md) | 145 | `declaration-track:16ca172a7abfd9ab80b4fef4b134b68169374570da45e124094e69782a2b5937` |
| 18 | `def` | [lowerSet](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/lowerset--f35beac71f4fcdb0752df9cd.md) | 149 | `declaration-track:f35beac71f4fcdb0752df9cd8c7e09fd503c373b9832090927c7817a7c09edf1` |
| 19 | `theorem` | [mem_lowerSet](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/mem-lowerset--88d7a180fad1f6be648d4454.md) | 151 | `result-track:88d7a180fad1f6be648d4454fd7bec3c537704d2ec8f10b5e32ecacf278a11c7` |
| 20 | `theorem` | [isOpen_lowerSet](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/isopen-lowerset--ec9c623b3b1634cfcf6a037b.md) | 153 | `result-track:ec9c623b3b1634cfcf6a037b4232cd89fc5a5b8219ee99a0f23bb423a30c43cb` |
| 21 | `theorem` | [isOpen_sInter](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/isopen-sinter--ba8a82cc441544f2c90a1a44.md) | 159 | `result-track:ba8a82cc441544f2c90a1a4446dc68cc91fd9b16ad0ea12474961365c5898e70` |
| 22 | `def` | [MonotoneTo](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/monotoneto--0924a46fbf3f1113bcfbe554.md) | 168 | `declaration-track:0924a46fbf3f1113bcfbe554d7e5a972b19eb3858b008ce59255f48dc13cf475` |
| 23 | `theorem` | [continuous_of_monotone](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/continuous-of-monotone--ed8250d64278801ff698cdbe.md) | 172 | `result-track:ed8250d64278801ff698cdbe5ddda7fb79cc0509f820924f4eea79c88704530f` |
| 24 | `theorem` | [monotone_of_continuous](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/monotone-of-continuous--3c4bd1d0ae23a1b869d26ec9.md) | 184 | `result-track:3c4bd1d0ae23a1b869d26ec94534404cdf4149bb3ec6dfc6de1e8161d3efeee5` |
| 25 | `theorem` | [continuous_iff_monotone](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/continuous-iff-monotone--3332f3c96aa069f99bf8fe35.md) | 200 | `result-track:3332f3c96aa069f99bf8fe35f3084a183ceee5eeccc01e381dd22ef6336a4379` |
| 26 | `def` | [Mutual](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/mutual--1e46ede1be877b50fb2e68a6.md) | 209 | `declaration-track:1e46ede1be877b50fb2e68a64ff8b85360ee692f5cd51158a7c5efe54b4b63bb` |
| 27 | `def` | [mutualSetoid](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/mutualsetoid--360d49bed02c2143af4f8463.md) | 212 | `declaration-track:360d49bed02c2143af4f8463a2cdec2145b0f2124fbbdf402464e01c00b70424` |
| 28 | `abbrev` | [T0Carrier](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/t0carrier--21b63aa79812dfc65ac14b77.md) | 221 | `declaration-track:21b63aa79812dfc65ac14b7706e32ee92826459a516046a7741bd0e002b8003e` |
| 29 | `inductive` | [OperationalDependencyKind](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/operationaldependencykind--3f4dcc08956647f8d19fd8be.md) | 225 | `declaration-track:3f4dcc08956647f8d19fd8be59ac7117bb8f31ddd962cd08991f925ed714aa59` |
| 30 | `structure` | [OperationalDependencyEdge](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/operationaldependencyedge--782246cfa1f9831c01494c1e.md) | 246 | `declaration-track:782246cfa1f9831c01494c1e2a0e382b178aae40a4833b06007eb3c5aeb7c1f8` |
| 31 | `structure` | [OperationalDependencyRelationRecord](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/operationaldependencyrelationrecord--9490da2a805f98a9c6e0227f.md) | 256 | `declaration-track:9490da2a805f98a9c6e0227f8a6fafbdd1e8fa01bcba89e7939e46c230628565` |
| 32 | `structure` | [OperationalClosureRecord](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/operationalclosurerecord--898ba24851c094676dd0477a.md) | 264 | `declaration-track:898ba24851c094676dd0477a6b06adab6129cf5ea769a1d5e08555fd654b51ce` |
| 33 | `inductive` | [SpecializationOrientation](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/specializationorientation--c70b546d0fe72cef90eab88d.md) | 272 | `declaration-track:c70b546d0fe72cef90eab88dd3817477cf944ac9ca348a5f4f89521995d4ee79` |
| 34 | `structure` | [TopologyResourceBounds](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/topologyresourcebounds--0b9bf004a85287e35899981a.md) | 277 | `declaration-track:0b9bf004a85287e35899981a4428412beaabc0f053749abec9d2acc598f4c6f6` |
| 35 | `structure` | [OperationalTopologyRecord](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/operationaltopologyrecord--88b9d22ce428df8c7680ba3b.md) | 282 | `declaration-track:88b9d22ce428df8c7680ba3b7c3c33bec9e229a06338b44bf99139559242d616` |
| 36 | `structure` | [ClassicalTopologyCertificate](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/classicaltopologycertificate--b9f833acacfb54c64577c146.md) | 292 | `declaration-track:b9f833acacfb54c64577c146155973371afbd1ac32597eaac4b37b471279644b` |
| 37 | `structure` | [OperationalBoundaryRecord](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/operationalboundaryrecord--43b9e2680c187b72d4cf71d3.md) | 308 | `declaration-track:43b9e2680c187b72d4cf71d33960124f6c76ebfda8a9481e52ec70622e7b7f0c` |
| 38 | `structure` | [DirectedBoundaryRecord](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/directedboundaryrecord--a076e7957d6cf5c64333f48e.md) | 316 | `declaration-track:a076e7957d6cf5c64333f48ed105a1ca7f75622da8a7217607403fbe30f3e290` |
| 39 | `inductive` | [ResidualBlockingReason](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/residualblockingreason--e5e2e7cae242975486b01971.md) | 323 | `declaration-track:e5e2e7cae242975486b019718294d31f06befbcc8255ff50c4d1d1b2b13fd486` |
| 40 | `structure` | [ResidualFrontierEdge](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/residualfrontieredge--5ae64cd1db19b4520925df31.md) | 336 | `declaration-track:5ae64cd1db19b4520925df314e24f1eda85bae7c52e42b32d8a1361d6e665cca` |
| 41 | `structure` | [ResidualFrontierRecord](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/residualfrontierrecord--efa27d8718f334d53bfa3111.md) | 342 | `declaration-track:efa27d8718f334d53bfa311110502056371880abff393f4f52b55ab07b275c35` |
| 42 | `inductive` | [TopologyConstructionKind](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/topologyconstructionkind--0be0f42a4092611bb714070f.md) | 347 | `declaration-track:0be0f42a4092611bb714070fc78ae6d6d6d1e69d4c187f81652a31ce3f297941` |
| 43 | `structure` | [OperationalTopologyConstruction](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/operationaltopologyconstruction--0804a8ff1356a42fda510cd9.md) | 355 | `declaration-track:0804a8ff1356a42fda510cd9f253cd331bc8b358f007ef52d52334b2fe958de6` |
| 44 | `inductive` | [HomeomorphismStatus](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/homeomorphismstatus--0ee8715a992f04c49f45776d.md) | 362 | `declaration-track:0ee8715a992f04c49f45776d7554d9acdf4ec3baf75b8852ff33043194dc534c` |
| 45 | `structure` | [OperationalContinuityCertificate](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/operationalcontinuitycertificate--360ddedce516896203f0c083.md) | 369 | `declaration-track:360ddedce516896203f0c0839ce0018afac994c384e045fdda0ecf62eacf746c` |
| 46 | `inductive` | [TheoremHypothesisStatus](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/theoremhypothesisstatus--ef9a98e35e7d5b58740d6b93.md) | 379 | `declaration-track:ef9a98e35e7d5b58740d6b939cde42c95e5129531681c241227bff2d8644415b` |
| 47 | `structure` | [TheoremHypothesisWitness](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/theoremhypothesiswitness--0dfd79da9143c33ea0129e6a.md) | 386 | `declaration-track:0dfd79da9143c33ea0129e6ae1888b1f532e6f509313dc2e616649a510d8bf2e` |
| 48 | `structure` | [TopologicalTheoremApplicabilityCertificate](../../../../../mathematics/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean/declarations/topologicaltheoremapplicabilitycertificate--98a9679f85e98bfe87001062.md) | 391 | `declaration-track:98a9679f85e98bfe87001062d1ca35f78679b795b64be46214ce689130932eb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
