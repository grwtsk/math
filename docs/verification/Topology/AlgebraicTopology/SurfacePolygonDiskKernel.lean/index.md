# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9803601a0048b6c70d37aac3433d908f740013ef",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9803601a0048b6c70d37aac3433d908f740013ef`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskCharacteristic`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeKernel`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean/index.md) — import line 13; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diskBoundaryPoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskboundarypoint--a4c6abc97c1a2681af31a52e.md) | 56 | `declaration-track:a4c6abc97c1a2681af31a52ea937b5483998a3b68d36e67066778b3675f8303b` |
| 2 | `def` | [diskPerimeterBoundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskperimeterboundary--6d59c5336efa9c433d0a7b8d.md) | 62 | `declaration-track:6d59c5336efa9c433d0a7b8d9fa143d2d24415864b659877acdf88ac7fda14dc` |
| 3 | `theorem` | [diskPerimeterBoundary_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskperimeterboundary-continuous--a7f5d6dee501462af097acf9.md) | 67 | `result-track:a7f5d6dee501462af097acf9ba237fcd0446a2e022fb07f647f20f7157e0235e` |
| 4 | `theorem` | [diskPerimeterBoundary_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskperimeterboundary-projection--c9e31d853c23484c27d97d32.md) | 74 | `result-track:c9e31d853c23484c27d97d32ac00640475bbbc006b3af7f96721ae74d026d093` |
| 5 | `theorem` | [norm_diskBoundaryPoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/norm-diskboundarypoint--f72ab37b82cd16220c380f97.md) | 83 | `result-track:f72ab37b82cd16220c380f97fd9514ff793096f06fa05863f6a7bac8691e0200` |
| 6 | `theorem` | [diskCharacteristic_boundaryPoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskcharacteristic-boundarypoint--f61a8a548014ca34fca8d9de.md) | 92 | `result-track:f61a8a548014ca34fca8d9de9c241f2785ffcb08b59aa8c6b630dbb6c30b4d1f` |
| 7 | `inductive` | [DiskOuterPairStep](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterpairstep--f95a8d5dc431699293a3be2b.md) | 102 | `declaration-track:f95a8d5dc431699293a3be2b97a934bb30e1649581823fe18d7c57b37c90b6ac` |
| 8 | `def` | [DiskOuterConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterconnected--d382cdb0c804e3f4bd6f2898.md) | 115 | `declaration-track:d382cdb0c804e3f4bd6f2898d9c24279ee262b9ed661609613bd47ada355e1cf` |
| 9 | `def` | [diskOuterPairSetoid](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterpairsetoid--c1989c168ed4cce4d186f5d6.md) | 120 | `declaration-track:c1989c168ed4cce4d186f5d6225b7765f0709d4f2638d25e452e1567d57c154b` |
| 10 | `theorem` | [diskOuterStep_to_coneOuterConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterstep-to-coneouterconnected--a65f904a9864cc608d17c62e.md) | 127 | `result-track:a65f904a9864cc608d17c62eb4df50cea09cabc8f7be00a1fc5a868b17d09e5f` |
| 11 | `theorem` | [diskOuterConnected_to_coneOuterConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterconnected-to-coneouterconnected--91186184db2ffe6a40195cf1.md) | 145 | `result-track:91186184db2ffe6a40195cf1ffb48a70a6a71362e30b1446fa24e3290b8ea753` |
| 12 | `theorem` | [coneOuterStep_to_diskOuterConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/coneouterstep-to-diskouterconnected--15cff8dd7685f1a5c65068b0.md) | 163 | `result-track:15cff8dd7685f1a5c65068b0cb6e33ff11fb6db193a6269f8ba7ae478a74d50d` |
| 13 | `theorem` | [coneOuterConnected_to_diskOuterConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/coneouterconnected-to-diskouterconnected--586caf61a88c76c1aea6c116.md) | 181 | `result-track:586caf61a88c76c1aea6c116ff395c949b5561b836bffd0cd9295a88be45e506` |
| 14 | `theorem` | [diskOuterConnected_iff_coneOuterConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterconnected-iff-coneouterconnected--afc0ed26b927be1af9524f15.md) | 199 | `result-track:afc0ed26b927be1af9524f15c6d40c0235cf1887f9c97b25c859d9e75b5cae94` |
| 15 | `theorem` | [diskOuterStep_preserves_norm](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterstep-preserves-norm--0d2a9201fb22a8c9d924fc9d.md) | 213 | `result-track:0d2a9201fb22a8c9d924fc9d30ae6a50d5e0b3442fafbeac2d2e9cd83fcc5619` |
| 16 | `theorem` | [diskOuterConnected_preserves_norm](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterconnected-preserves-norm--4e06a2922f1f4b129ebd254b.md) | 220 | `result-track:4e06a2922f1f4b129ebd254b3550ef60f7344ea8e2a0c18f5f334454f4aec19f` |
| 17 | `theorem` | [diskCharacteristic_eq_iff_diskOuterConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskcharacteristic-eq-iff-diskouterconnected--ef07f8f8e4e5b541f018264b.md) | 233 | `result-track:ef07f8f8e4e5b541f018264b46c124f0efe899a2d59d4eccde83b5ee581fd657` |
| 18 | `theorem` | [diskCharacteristic_isQuotientMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskcharacteristic-isquotientmap--57f1ca38a1beaff4789cbce4.md) | 247 | `result-track:57f1ca38a1beaff4789cbce429afcba9ab2553e10b402ca11fa0b13b0e2e07ff` |
| 19 | `def` | [diskOuterPairedToFilled](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterpairedtofilled--ede7d301ecc6ea08c881aace.md) | 255 | `declaration-track:ede7d301ecc6ea08c881aace81ca0a7a037d8a8bbba09141e60dea361ba39c5b` |
| 20 | `theorem` | [diskOuterPairedToFilled_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterpairedtofilled-projection--1e190800b0666b88474d6055.md) | 261 | `result-track:1e190800b0666b88474d6055f23226dd076b743d4be16a50e335604ff7a43d08` |
| 21 | `theorem` | [diskOuterPairedToFilled_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterpairedtofilled-surjective--3d828d49398fa6183c085ff7.md) | 268 | `result-track:3d828d49398fa6183c085ff798d6b1895c14a19c7453f4c0916b756c63edf4ac` |
| 22 | `theorem` | [diskOuterPairedToFilled_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterpairedtofilled-injective--eea3f410cb62f0a33ac7e069.md) | 276 | `result-track:eea3f410cb62f0a33ac7e069857a7ab49f27ab13c9c055c655e115d6e6ccf1be` |
| 23 | `theorem` | [diskOuterPairedToFilled_bijective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterpairedtofilled-bijective--2c06182172e3585f20e1d17c.md) | 289 | `result-track:2c06182172e3585f20e1d17ca83105f0077be67c560f28a51975e202c7f142d4` |
| 24 | `theorem` | [diskOuterPairedToFilled_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterpairedtofilled-continuous--45f98433e2eee82f7e860590.md) | 296 | `result-track:45f98433e2eee82f7e860590d2f3c56e09307cc6fd40de85a19aa6e83fc76ce9` |
| 25 | `def` | [diskOuterPairedHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/diskouterpairedhomeomorph--ed9a2d3bb03ff8c343f9afde.md) | 304 | `declaration-track:ed9a2d3bb03ff8c343f9afde2f3df705eaaa7743549af17760046363fb8e0547` |
| 26 | `theorem` | [genusTwo_diskCharacteristic_eq_iff](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/genustwo-diskcharacteristic-eq-iff--472f43234f71587fae76c8fd.md) | 323 | `result-track:472f43234f71587fae76c8fdc4ddfc99a4b3ab7bb6c16b9188d62e89b678330c` |
| 27 | `def` | [genusThree_diskOuterPairedHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/declarations/genusthree-diskouterpairedhomeomorph--165b8ba0df8d6b6fc2ebffbb.md) | 331 | `declaration-track:165b8ba0df8d6b6fc2ebffbb5c4d6cb1af73f05b80a36da37fd75e6dffa1cafa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
