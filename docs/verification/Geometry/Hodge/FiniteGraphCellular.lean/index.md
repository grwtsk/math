# Verification target: GRWTSK.Geometry.Hodge.FiniteGraphCellular

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8443dddddc00f3c8e5c79c110381c7fa2d58ad6e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/FiniteGraphCellular.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/index.md) · [Full source](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8443dddddc00f3c8e5c79c110381c7fa2d58ad6e`.

Source path: `GRWTSK/Geometry/Hodge/FiniteGraphCellular.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/FiniteGraphCellular.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrientedIncidence](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/orientedincidence--cd5b08c000daf9c2853e5d47.md) | 11 | `declaration-track:cd5b08c000daf9c2853e5d4727b647b11280485eb4f3d6af462656aefaf230f7` |
| 2 | `def` | [coboundary](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/coboundary--40e9e2d73402e3998ed31732.md) | 20 | `declaration-track:40e9e2d73402e3998ed31732ba1cd6270cbea35e44fa43e2bdf3b59f19c4a23b` |
| 3 | `theorem` | [coboundary_apply](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/coboundary-apply--07a4fcc54d458ab4ccfc3b67.md) | 34 | `result-track:07a4fcc54d458ab4ccfc3b6774e544192dcde2ca30e02c7a542e18c31ee1b411` |
| 4 | `def` | [hZero](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/hzero--18ae30bc537ef72f524f89d2.md) | 41 | `declaration-track:18ae30bc537ef72f524f89d2d23d6464fafd61329546deb80cc6a114aaebb929` |
| 5 | `def` | [energy](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/energy--6463c38be4b844b6f860ecab.md) | 47 | `declaration-track:6463c38be4b844b6f860ecab27da8781410f860d5e2a9709f1567883cf53b463` |
| 6 | `theorem` | [energy_nonneg](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/energy-nonneg--8099a550ced2915d14ee5f02.md) | 54 | `result-track:8099a550ced2915d14ee5f02b563e38567e683f6279e7de0a26486deb284e5ae` |
| 7 | `theorem` | [energy_eq_zero_iff_coboundary_eq_zero](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/energy-eq-zero-iff-coboundary-eq-zero--cf97a2a753cc455b188446a6.md) | 63 | `result-track:cf97a2a753cc455b188446a67642d350f388e2450f892ad9bb54e43b57dbbeed` |
| 8 | `theorem` | [coboundary_eq_zero_iff_edge_eq](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/coboundary-eq-zero-iff-edge-eq--4f59dd4d5e608fe29e16044c.md) | 85 | `result-track:4f59dd4d5e608fe29e16044cf9014c658cfe74bd563f2b931b6d4001a88ab41a` |
| 9 | `theorem` | [energy_eq_zero_iff_edge_eq](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/energy-eq-zero-iff-edge-eq--a373a0e34af7ba3124d59e45.md) | 101 | `result-track:a373a0e34af7ba3124d59e450342a72f9de7f390fec770cbba6d25a24417eda8` |
| 10 | `def` | [castCochain](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/castcochain--5a02920cbe007bc002588836.md) | 111 | `declaration-track:5a02920cbe007bc0025888364fc9b13faa32dc3f21458d6423f9b51fecb7bcf1` |
| 11 | `theorem` | [cast_coboundary](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/cast-coboundary--69027ddcfb164f6c166242d1.md) | 115 | `result-track:69027ddcfb164f6c166242d18babe25c5da36951e61d45e038c68e0096e53b22` |
| 12 | `theorem` | [cast_mem_hZero](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/cast-mem-hzero--1e457c7255dbe811e3274f14.md) | 124 | `result-track:1e457c7255dbe811e3274f14dcd1af2631c16139c0624c3c3c0cc8314598d3a9` |
| 13 | `abbrev` | [Edge](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/edge--41f6764ac9ff2ef89c520670.md) | 144 | `declaration-track:41f6764ac9ff2ef89c5206707ebebc01ec7a889cbc19e511057d481f11b5b0d1` |
| 14 | `def` | [incidence](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/incidence--ef9d00b5e770c2c9bd0f95db.md) | 147 | `declaration-track:ef9d00b5e770c2c9bd0f95db7eccaba9dcfda4c89e67eac5baa2399c98735018` |
| 15 | `def` | [energy](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/energy--1bc1e163029ab4cdb0306c83.md) | 152 | `declaration-track:1bc1e163029ab4cdb0306c83b949ea7b4aab515a6cbecd49a8ff6174a0f8c197` |
| 16 | `theorem` | [energy_nonneg](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/energy-nonneg--0f7abc09eab9795d94de462e.md) | 156 | `result-track:0f7abc09eab9795d94de462ed93477851a6c5fcbcc35a7b78d0f3bacf539505f` |
| 17 | `theorem` | [energy_eq_zero_iff](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/energy-eq-zero-iff--77712762e1f73779fde160f5.md) | 160 | `result-track:77712762e1f73779fde160f56992b0989c4733a4997fcba22996ff070471b30a` |
| 18 | `theorem` | [eq_vertex_zero_of_edge_eq](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/eq-vertex-zero-of-edge-eq--0072fa1d0b55a333b1249d07.md) | 165 | `result-track:0072fa1d0b55a333b1249d07a4bf005ba64cc82e943e4b41f35ccf6d0513a300` |
| 19 | `theorem` | [energy_eq_zero_iff_constant](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/energy-eq-zero-iff-constant--87e8c88717f3fedbbf47ac35.md) | 185 | `result-track:87e8c88717f3fedbbf47ac35de3c6ed92f6aaa97b176ec7e532605b184775447` |
| 20 | `theorem` | [cast_rational_cocycle](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/declarations/cast-rational-cocycle--8ed51edd354fbda52d6a9c05.md) | 199 | `result-track:8ed51edd354fbda52d6a9c05cbdd7132606b1c97907db4eb13dc8e09d9980a9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
