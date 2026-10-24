# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardCircleConeDisk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9675d15030fda9a01ab9fdd3d5970e8e0f006b0",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9675d15030fda9a01ab9fdd3d5970e8e0f006b0`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterConeCircleTransport`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Complex.Circle` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UnitDisc.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitAddCircleHomeomorphCircle](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/unitaddcirclehomeomorphcircle--6c722890e316fb6460d0e809.md) | 70 | `declaration-track:6c722890e316fb6460d0e8090041aa0757693c77431fbff3f065138062e8e181` |
| 2 | `theorem` | [unitAddCircleHomeomorphCircle_apply](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/unitaddcirclehomeomorphcircle-apply--129de8d9631068c4be849407.md) | 74 | `result-track:129de8d9631068c4be849407a427c8602a86dd24c87519773c956bc1592b6bac` |
| 3 | `def` | [standardCircleConePolarComplexSource](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolarcomplexsource--a70c1f5b0a516540b806c9e8.md) | 80 | `declaration-track:a70c1f5b0a516540b806c9e8e6a35e0e222e7b57fb14203d756781eb34dc169a` |
| 4 | `theorem` | [norm_standardCircleConePolarComplexSource](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/norm-standardcircleconepolarcomplexsource--82f2303f45f2de7ce9926818.md) | 87 | `result-track:82f2303f45f2de7ce99268181c968875da9ec37de335b14599ac00566f3c5af3` |
| 5 | `theorem` | [standardCircleConePolarComplexSource_eq_zero_iff](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolarcomplexsource-eq-zero-iff--3b2fd9e569457b8498581515.md) | 95 | `result-track:3b2fd9e569457b8498581515557abcc31f4eff0839bceac2e4a4f6fb4e8d0051` |
| 6 | `theorem` | [standardCircleConePolarComplexSource_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolarcomplexsource-continuous--c9dcb6c19ccf2b692dda5668.md) | 109 | `result-track:c9dcb6c19ccf2b692dda56686c9fee1f7fab6275773f664853833b885814a0ca` |
| 7 | `def` | [standardCircleConePolarDiskSource](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolardisksource--414ae2bdffd3c1041f8c6832.md) | 121 | `declaration-track:414ae2bdffd3c1041f8c6832391c29b05fce6c570ec0da3676d57b5746dbc396` |
| 8 | `theorem` | [standardCircleConePolarDiskSource_coe](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolardisksource-coe--0d99397bede87053438f04c4.md) | 129 | `result-track:0d99397bede87053438f04c408449dc3fb18bd54d10dae953501842c4219fc9f` |
| 9 | `theorem` | [standardCircleConePolarDiskSource_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolardisksource-continuous--59369de3a219a63c73ea97b8.md) | 135 | `result-track:59369de3a219a63c73ea97b8c7396c51a79eb72e1041e55c98ca74e809190ac6` |
| 10 | `theorem` | [standardCircleConePolarDiskSource_eq_iff](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolardisksource-eq-iff--158aa0712a0c59f35ba17eb8.md) | 143 | `result-track:158aa0712a0c59f35ba17eb836a8d4dee7fde0ab280b0cdb7f90154b578ed90c` |
| 11 | `theorem` | [standardCircleConeConnected_iff_polarDiskSource_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconeconnected-iff-polardisksource-eq--8851b1edec387b7f965f1a37.md) | 189 | `result-track:8851b1edec387b7f965f1a37cb9784a0c58f2c7a34efa891e2e73df320d9e6f9` |
| 12 | `theorem` | [standardCircleConeConnected_polarDiskSource_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconeconnected-polardisksource-eq--865d9b6f3680a63c20cc01e6.md) | 198 | `result-track:865d9b6f3680a63c20cc01e672c705d58f949f9b2762a57bf1c402f00f280d40` |
| 13 | `def` | [standardCircleConePolarMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolarmap--9639a1736dbdaaef496961a0.md) | 207 | `declaration-track:9639a1736dbdaaef496961a09fbcdde6e028a245a807ea17a1826b748b324fb7` |
| 14 | `theorem` | [standardCircleConePolarMap_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolarmap-projection--28ddbf433b6222c29b4e5517.md) | 213 | `result-track:28ddbf433b6222c29b4e5517ebbcfc271abcfa1b19d1a16f663bc3fc1415d092` |
| 15 | `theorem` | [standardCircleConePolarMap_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolarmap-continuous--87469ca11f05f9a2ae8fc8f0.md) | 219 | `result-track:87469ca11f05f9a2ae8fc8f0ff1a6cba38081f9d1f8caba0b6453f551ba7d8e4` |
| 16 | `theorem` | [norm_standardCircleConePolarMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/norm-standardcircleconepolarmap--fb13114014006ed0327759aa.md) | 228 | `result-track:fb13114014006ed0327759aa532b49dc3f25af5201ba09d354f5da3b9fa43293` |
| 17 | `theorem` | [standardCircleConePolarMap_apex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolarmap-apex--36f3089875a8b3f73d96d483.md) | 237 | `result-track:36f3089875a8b3f73d96d4830a3f863fe830fa490369f2b03e43656e2e8d7c52` |
| 18 | `theorem` | [standardCircleConePolarMap_boundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolarmap-boundary--f48006f7eee82365d1216fff.md) | 245 | `result-track:f48006f7eee82365d1216fffccbc85f04b9319e18defd7ac48e9cb47d86bc0fe` |
| 19 | `def` | [normalizedCircle](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/normalizedcircle--e74bd0fb9b7e79876be7e09b.md) | 255 | `declaration-track:e74bd0fb9b7e79876be7e09be3dc927109e8748581bdbab06e897e9872cdca1e` |
| 20 | `theorem` | [normalizedCircle_coe](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/normalizedcircle-coe--e6712f61e573ed95f6f5767c.md) | 261 | `result-track:e6712f61e573ed95f6f5767c610990c718cfb77d917c0f6236b80ecedfbab33a` |
| 21 | `theorem` | [norm_mul_normalizedCircle](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/norm-mul-normalizedcircle--27fe7d51454ceb943e740c74.md) | 268 | `result-track:27fe7d51454ceb943e740c74103a1651d7c7989598a475eed0f9fdad7d29bd94` |
| 22 | `def` | [closedDiskRadius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/closeddiskradius--7551c970348259ee40305b70.md) | 278 | `declaration-track:7551c970348259ee40305b709c4222cac6e7112801fda5e34c3536a0a639fe6c` |
| 23 | `theorem` | [closedDiskRadius_coe](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/closeddiskradius-coe--e56f1c1a8dda4267534759c4.md) | 283 | `result-track:e56f1c1a8dda4267534759c417dee2e649900f0764868d207b6d5a2c2182f794` |
| 24 | `def` | [closedDiskAngleOfNonzero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/closeddiskangleofnonzero--8a55754448bfb83daa59cf3e.md) | 289 | `declaration-track:8a55754448bfb83daa59cf3ef0197b52ea4c7a3ad814724748d45cfc931d29ac` |
| 25 | `theorem` | [unitCircle_of_closedDiskAngleOfNonzero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/unitcircle-of-closeddiskangleofnonzero--2c74e9ec971cbdddee2816c3.md) | 295 | `result-track:2c74e9ec971cbdddee2816c3015dd258393ce068fba494aacae0dd3b8160697b` |
| 26 | `theorem` | [standardCircleConePolarDiskSource_reconstruct_nonzero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolardisksource-reconstruct-nonzero--a8abb475d98264b1ccfd54ea.md) | 303 | `result-track:a8abb475d98264b1ccfd54ea8fc6a166247ee32df7617dbd8e7b1ce006d62b1a` |
| 27 | `theorem` | [standardCircleConePolarMap_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolarmap-surjective--d6408fd8a2f8cf3e853766d3.md) | 317 | `result-track:d6408fd8a2f8cf3e853766d3df6214368bc9ae90157a14161910e67175eafd40` |
| 28 | `theorem` | [standardCircleConePolarMap_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolarmap-injective--f170bb636a633d712591541e.md) | 334 | `result-track:f170bb636a633d712591541e141a240f1662ee76036a451c457aaf58ee29843a` |
| 29 | `theorem` | [standardCircleConePolarMap_bijective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconepolarmap-bijective--4df047fddf1839b08befab79.md) | 346 | `result-track:4df047fddf1839b08befab79efc062a788ab19914811ea6174af4b2bb568f1c7` |
| 30 | `def` | [standardCircleConeHomeomorphUnitClosedDisc](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconehomeomorphunitcloseddisc--85c8715652c428d603b45815.md) | 353 | `declaration-track:85c8715652c428d603b45815f0d7a396157ebc4c52ca75f4f986397000fd28d6` |
| 31 | `theorem` | [standardCircleConeHomeomorphUnitClosedDisc_apply](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconehomeomorphunitcloseddisc-apply--5e7fe3d9b6d17c272a9fdf6e.md) | 361 | `result-track:5e7fe3d9b6d17c272a9fdf6ec53a86d95079911019641ffc6abf44661d5b7f0a` |
| 32 | `theorem` | [standardCircleConeHomeomorphUnitClosedDisc_radius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconehomeomorphunitcloseddisc-radius--f02cf37d7a14bc3e6abaef05.md) | 367 | `result-track:f02cf37d7a14bc3e6abaef0576bff83c3f17b61185fd330481d1e634d20c1119` |
| 33 | `theorem` | [standardCircleConeHomeomorphUnitClosedDisc_apex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconehomeomorphunitcloseddisc-apex--e2557700d85716876205702e.md) | 374 | `result-track:e2557700d85716876205702eb3cfe9112dbb950d8088ed11267487922ef57539` |
| 34 | `theorem` | [standardCircleConeHomeomorphUnitClosedDisc_boundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/standardcircleconehomeomorphunitcloseddisc-boundary--af7b0c14376feff6077cef76.md) | 381 | `result-track:af7b0c14376feff6077cef76be7002d9db6aa42b2628c744fe65052f963eeed8` |
| 35 | `def` | [perimeterConeHomeomorphUnitClosedDisc](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/perimeterconehomeomorphunitcloseddisc--a06dc767bccfc4afd96b9428.md) | 390 | `declaration-track:a06dc767bccfc4afd96b9428d2d97b363217b23439edfb5e0a1d38f4a760697c` |
| 36 | `theorem` | [perimeterConeHomeomorphUnitClosedDisc_radius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/perimeterconehomeomorphunitcloseddisc-radius--865c50ec5cde8b62c2420407.md) | 396 | `result-track:865c50ec5cde8b62c2420407d824b6a5063efcaea57c5ede31a28ba9cdfb5ca4` |
| 37 | `theorem` | [perimeterConeHomeomorphUnitClosedDisc_apex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/perimeterconehomeomorphunitcloseddisc-apex--688b63b82c50270b046fc326.md) | 406 | `result-track:688b63b82c50270b046fc326e7e31e2476bda327e8e8f35a2154df7c208100a8` |
| 38 | `theorem` | [perimeterConeHomeomorphUnitClosedDisc_boundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/perimeterconehomeomorphunitcloseddisc-boundary--b3a70c96b7714248dfc91327.md) | 416 | `result-track:b3a70c96b7714248dfc913277f48c838663e0a90c4abc9beaf4fc6235a23791b` |
| 39 | `def` | [genusTwoPerimeterConeHomeomorphUnitClosedDisc](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/genustwoperimeterconehomeomorphunitcloseddisc--0afaa0a8c3aafd2b89cb74c4.md) | 428 | `declaration-track:0afaa0a8c3aafd2b89cb74c439730211186ed30a27cbb83b2f0cebf3189add03` |
| 40 | `def` | [genusThreePerimeterConeHomeomorphUnitClosedDisc](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/declarations/genusthreeperimeterconehomeomorphunitcloseddisc--aa1e07ee864d2930ceac98ae.md) | 434 | `declaration-track:aa1e07ee864d2930ceac98ae909564946f03c8541608f8e49ab85bb7a58c85e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
