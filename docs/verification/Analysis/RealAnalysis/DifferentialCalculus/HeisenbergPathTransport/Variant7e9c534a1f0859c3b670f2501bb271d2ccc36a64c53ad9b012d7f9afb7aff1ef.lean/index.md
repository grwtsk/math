# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HeisenbergPathTransport.Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d15ef3ca28240d25847483c2b78d88a93691f3ca",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d15ef3ca28240d25847483c2b78d88a93691f3ca`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergCocycle` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.PathConnected` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/instance--8ed8b58077142f1ab513850d.md) | 26 | `declaration-track:8ed8b58077142f1ab513850d555c965196a3b1be7e001a17d2d6a421d90f30e0` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/instance--1a6ba0df36bb88e8493b8836.md) | 27 | `declaration-track:1a6ba0df36bb88e8493b88369b23f46b72ad63007d2e74e43b3c5a4b60cc00e2` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/instance--bf584dcc9cbcaa518015b83e.md) | 28 | `declaration-track:bf584dcc9cbcaa518015b83e3c700d9d6e4d732a07b90682d8a38f652852e3b6` |
| 4 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/instance--6d5367c251594aceefbccdec.md) | 29 | `declaration-track:6d5367c251594aceefbccdec15c27b7009647cb1cebadd627eb45c75c91b7eae` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/instance--4d520a86be33274a872cad28.md) | 30 | `declaration-track:4d520a86be33274a872cad289c940c896fba692bfcc230fa1259fe2bfd1cfbdd` |
| 6 | `def` | [connection](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/connection--b4ffb765f386372ee7aff8d3.md) | 35 | `declaration-track:b4ffb765f386372ee7aff8d3eff19b33b56ef8369469c349730d299c55d49624` |
| 7 | `def` | [edge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/edge--4866624323782185e137fef8.md) | 43 | `declaration-track:4866624323782185e137fef8272ecabaeeaeba43587d1235f07a0c18d474ec64` |
| 8 | `theorem` | [edge_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/edge-hasderivat--466f9fedb9b06bdb383072bc.md) | 45 | `result-track:466f9fedb9b06bdb383072bcc737af2fb46723ef2cfa70bb4d494310f4e3641e` |
| 9 | `theorem` | [connection_edge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/connection-edge--f27683f278295df20054982b.md) | 49 | `result-track:f27683f278295df20054982b7459d7a14cefb3c406fcc3bda48cacc32555008f` |
| 10 | `def` | [edgePhase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/edgephase--b9aa9b1b28b648b53e3513f1.md) | 56 | `declaration-track:b9aa9b1b28b648b53e3513f1c5ecb6076eb2a39fcfde26a63b28f9b39cd3b9bf` |
| 11 | `theorem` | [edgePhase_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/edgephase-eq--c848edc261bc4a70ce8a1f97.md) | 59 | `result-track:c848edc261bc4a70ce8a1f972b86890b6e52f97415d7b025506b32252f8a32f7` |
| 12 | `def` | [edgeCenter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/edgecenter--f9717b16958246203805244c.md) | 64 | `declaration-track:f9717b16958246203805244c61e3ab830ac451caafd0d97f87d8b1bf052ddceb` |
| 13 | `theorem` | [edgeCenter_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/edgecenter-hasderivat--fbe37982b591ddc00956d969.md) | 66 | `result-track:fbe37982b591ddc00956d96958fce38e6eb6aabffb040b1827262232178b476b` |
| 14 | `def` | [edgeTransport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/edgetransport--9cd452bfe27e9a0ddc5203a7.md) | 72 | `declaration-track:9cd452bfe27e9a0ddc5203a7f9c9437cff5c1ac71534f3ea3aea3807fb40eb3f` |
| 15 | `theorem` | [edgeTransport_eq_multiply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/edgetransport-eq-multiply--aa1cfc1765f6a12c7dbad959.md) | 75 | `result-track:aa1cfc1765f6a12c7dbad9591d2716a48701521cb6bf14fd4ec323c3d0242ff5` |
| 16 | `theorem` | [triangle_phase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/triangle-phase--a4ca7604a914b08963cbc89d.md) | 84 | `result-track:a4ca7604a914b08963cbc89db2afeefd95f83f3fb3afa79468bd49f15bdc1048` |
| 17 | `theorem` | [collinear_refinement](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/collinear-refinement--c65a843a38d3824959367c5b.md) | 89 | `result-track:c65a843a38d3824959367c5b935dd919d1f7d6b99786555ee900baa4bc67931e` |
| 18 | `theorem` | [reverse_phase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/reverse-phase--32e71d272d1def70a1b1ea8a.md) | 95 | `result-track:32e71d272d1def70a1b1ea8af2477c9b59b18a8fc650aa8b93066e7ccd1d47f8` |
| 19 | `theorem` | [scaled_phase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/scaled-phase--a409bd2acfc4bd645e404956.md) | 99 | `result-track:a409bd2acfc4bd645e4049568cfa333d4ce8e1d54d330994295981eb951206b3` |
| 20 | `def` | [squareLoop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/squareloop--ac8e8e34f715530e880b0b60.md) | 104 | `declaration-track:ac8e8e34f715530e880b0b60474eebdcad76bfbdc1dfee20482066e45d29f572` |
| 21 | `def` | [projectedContraction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/projectedcontraction--963997c5a418360f0defc711.md) | 110 | `declaration-track:963997c5a418360f0defc711ace0795e9024c738ec16ec30a2f56a448f10ed2c` |
| 22 | `def` | [squareContraction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/squarecontraction--447372690cc428132c082d34.md) | 120 | `declaration-track:447372690cc428132c082d347d6f81b3e21fc02e3398bb6c46246d8e422fe9e5` |
| 23 | `def` | [squarePhase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/squarephase--8fb8ddb1f86e9ee55d549e51.md) | 122 | `declaration-track:8fb8ddb1f86e9ee55d549e51d077e73c0e2e991059fc859063e2dbee09b34e93` |
| 24 | `theorem` | [squarePhase_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/squarephase-eq--2509ff96b2430ae54e61fbab.md) | 126 | `result-track:2509ff96b2430ae54e61fbab8fd307cea11b27c960c7809c4ba7d4f8d6515bc7` |
| 25 | `theorem` | [square_horizontal_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/square-horizontal-endpoint--71a01f9f923d247c50b07c92.md) | 131 | `result-track:71a01f9f923d247c50b07c923e81deddd69b284315951c41d4a2e50d83bf18c7` |
| 26 | `theorem` | [square_horizontal_endpoint_ne_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/square-horizontal-endpoint-ne-one--a5f6caa5ef45aa9a3bb8ee36.md) | 136 | `result-track:a5f6caa5ef45aa9a3bb8ee3613d4ac222811560d1dc652c2d521e4a2df6da5b4` |
| 27 | `theorem` | [ordinary_contraction_retains_phase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/ordinary-contraction-retains-phase--f6471737793a822bd9dd3759.md) | 144 | `result-track:f6471737793a822bd9dd3759078fc1433999886089ce7661199e3e33a9ad1774` |
| 28 | `theorem` | [square_matrix_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/declarations/square-matrix-endpoint--095d923fcf1d392f20f6206a.md) | 148 | `result-track:095d923fcf1d392f20f6206ab5fe9bf9a974c461ecaaaa5fb0a1163e14c4e41c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
