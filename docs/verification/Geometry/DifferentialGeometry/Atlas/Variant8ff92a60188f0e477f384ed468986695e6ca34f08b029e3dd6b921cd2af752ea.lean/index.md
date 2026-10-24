# Verification target: GRWTSK.Geometry.DifferentialGeometry.Atlas.Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db13cd91aa118cb580a6c905936bd8f6791110e9",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db13cd91aa118cb580a6c905936bd8f6791110e9`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contMDiff_model](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiff-model--d3c897b1b1b64ff15d63fa61.md) | 33 | `result-track:d3c897b1b1b64ff15d63fa61caf262a0394c4fad47af4e736d23b30aa6367186` |
| 2 | `theorem` | [contMDiffOn_model_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffon-model-symm--b94323d75c767a003ea033ff.md) | 41 | `result-track:b94323d75c767a003ea033ff3974a1565db76ab5588e1ac0853a270d29461234` |
| 3 | `theorem` | [contMDiffOn_of_mem_maximalAtlas](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffon-of-mem-maximalatlas--76c1ef15ae79445ef2ba9b29.md) | 48 | `result-track:76c1ef15ae79445ef2ba9b29c250ffd2fa01db07fe6443f0536eb13e3b64c544` |
| 4 | `theorem` | [contMDiffOn_symm_of_mem_maximalAtlas](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffon-symm-of-mem-maximalatlas--c8f00cae2d3d8945fb360c5b.md) | 54 | `result-track:c8f00cae2d3d8945fb360c5bcb016d36c2fad87c0fe86c44957ed23f82775e52` |
| 5 | `theorem` | [contMDiffAt_of_mem_maximalAtlas](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffat-of-mem-maximalatlas--098b7092f62c81a1741afaf7.md) | 59 | `result-track:098b7092f62c81a1741afaf7b20a9d0f4658d9da66227ce2a44edc60df37ce6d` |
| 6 | `theorem` | [contMDiffAt_symm_of_mem_maximalAtlas](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffat-symm-of-mem-maximalatlas--d743813c19a0d31aad429274.md) | 63 | `result-track:d743813c19a0d31aad42927472b60aa317bbad5b055d93673f762f457f7de7e6` |
| 7 | `theorem` | [contMDiffOn_chart](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffon-chart--a72412918f81575c5ad34259.md) | 67 | `result-track:a72412918f81575c5ad34259bf46a0a64416491c74a6e536a5648f12f0dae873` |
| 8 | `theorem` | [contMDiffOn_chart_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffon-chart-symm--55659042a3abad0a6e08c474.md) | 70 | `result-track:55659042a3abad0a6e08c474b2bff01e64b1e039b1d5613f7070cfdbcdccec31` |
| 9 | `theorem` | [contMDiffAt_extend](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffat-extend--704d5c4f2c56c3b8c579eb3f.md) | 73 | `result-track:704d5c4f2c56c3b8c579eb3f842d746456c5b18ef0fd28ac8b901e367f00cfa1` |
| 10 | `theorem` | [contMDiffAt_extChartAt'](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffat-extchartat--59ebaaca09ca6b049a674921.md) | 77 | `result-track:59ebaaca09ca6b049a674921fc3fa4d6ad2ca7331fd0f776bd0d323c5f56a964` |
| 11 | `theorem` | [contMDiffAt_extChartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffat-extchartat--3a6a4072efadb60a32202824.md) | 82 | `result-track:3a6a4072efadb60a32202824142f010bd95696cd637f4dfeb96276f12c107786` |
| 12 | `theorem` | [contMDiffOn_extChartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffon-extchartat--8efa5e058f4fab501db3f1e8.md) | 88 | `result-track:8efa5e058f4fab501db3f1e8e8a07a6f1b4e2a17175f03c40705d9015a4c6dac` |
| 13 | `theorem` | [contMDiffOn_extend_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffon-extend-symm--905d37aaf7947a0ad4be5fd2.md) | 91 | `result-track:905d37aaf7947a0ad4be5fd2345de9894602fd0a1dadef6aaa74a6dbfb6b71b0` |
| 14 | `theorem` | [contMDiffOn_extChartAt_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffon-extchartat-symm--54154ba76a428d750b37e067.md) | 98 | `result-track:54154ba76a428d750b37e067a1eb50ce8cba8ce78eb4f630bf9d31dca91f215a` |
| 15 | `theorem` | [contMDiffWithinAt_extChartAt_symm_target](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffwithinat-extchartat-symm-target--9f1d85428300c385af049f85.md) | 105 | `result-track:9f1d85428300c385af049f85c2f8d531e9d6ab5068f9a1478950046e9ef63469` |
| 16 | `theorem` | [contMDiffWithinAt_extChartAt_symm_range](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffwithinat-extchartat-symm-range--2c7cd8d6e02bc4c3a11ebff6.md) | 110 | `result-track:2c7cd8d6e02bc4c3a11ebff60dfd315a7f7178c8000c6c4b308ab4901b9ad0cb` |
| 17 | `theorem` | [contMDiffWithinAt_extChartAt_symm_target_self](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffwithinat-extchartat-symm-target-self--199c194f43697389fa37de32.md) | 117 | `result-track:199c194f43697389fa37de3273c394815e48b78d4f01a32708fbe6786386bf75` |
| 18 | `theorem` | [contMDiffWithinAt_extChartAt_symm_range_self](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffwithinat-extchartat-symm-range-self--1100cb00edb794dfbee57e15.md) | 130 | `result-track:1100cb00edb794dfbee57e154786136afaef909b29cb3d635f6a93c9c91f7930` |
| 19 | `theorem` | [contMDiffOn_of_mem_contDiffGroupoid](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/contmdiffon-of-mem-contdiffgroupoid--ef57c4eb707c9c2fe2d3bbb7.md) | 136 | `result-track:ef57c4eb707c9c2fe2d3bbb72507adc604cdefa1b106790d54f18360457643d7` |
| 20 | `theorem` | [isLocalStructomorphOn_contDiffGroupoid_iff_aux](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/islocalstructomorphon-contdiffgroupoid-iff-aux--5d4127920ca5b55c32c83065.md) | 148 | `result-track:5d4127920ca5b55c32c83065232261cce84f37b4710148f81f0741e51463f796` |
| 21 | `theorem` | [isLocalStructomorphOn_contDiffGroupoid_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Atlas/Variant8ff92a60188f0e477f384ed468986695e6ca34f08b029e3dd6b921cd2af752ea.lean/declarations/islocalstructomorphon-contdiffgroupoid-iff--bcda78a4b509cdc748442eab.md) | 194 | `result-track:bcda78a4b509cdc748442eab30abf8d3e7dcaeb5c904e997bcd77a8154350a1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
