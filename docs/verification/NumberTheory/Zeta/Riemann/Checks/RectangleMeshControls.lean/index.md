# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.RectangleMeshControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcbe78df33edcfc72958eadfbe4c91667f63da51",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcbe78df33edcfc72958eadfbe4c91667f63da51`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalRectangleCount`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleContourCoverage`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [marks](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/marks--1a116b93cbad657e612f6c17.md) | 26 | `declaration-track:1a116b93cbad657e612f6c17fe2afa55b68a1f99c27d35a42d6396bc3a3bea0e` |
| 2 | `def` | [lower](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/lower--15e5f05e2bd6e9a54dc0575b.md) | 27 | `declaration-track:15e5f05e2bd6e9a54dc0575b77315f392f6dccc4216ac71b56686e0df4416a46` |
| 3 | `def` | [upper](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/upper--abbe27c5f97c2ed16f2a648c.md) | 28 | `declaration-track:abbe27c5f97c2ed16f2a648ce7ab6ee30a0132ec602cf55cc112d996e2281df6` |
| 4 | `def` | [data](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/data--5f3a70b7b8d71febc1f58ca3.md) | 29 | `declaration-track:5f3a70b7b8d71febc1f58ca339b70e1199aa41f2fa4e41b715a578fc604121fc` |
| 5 | `def` | [image](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/image--c634ed93404afb8e3391ee85.md) | 30 | `declaration-track:c634ed93404afb8e3391ee858a41c4b92ff71527466b89ec6437812741951fd7` |
| 6 | `theorem` | [marks_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/marks-checked--9450c862cafb7c05b5029356.md) | 32 | `result-track:9450c862cafb7c05b5029356358c6dd4f99798a751fd9333defc1e00738593e4` |
| 7 | `theorem` | [small_box_evaluates](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/small-box-evaluates--e50948404fcc818dcda7ded5.md) | 34 | `result-track:e50948404fcc818dcda7ded5b23d84693ef8b41487d8608e94cd421aa03ff457` |
| 8 | `theorem` | [small_tube_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/small-tube-checked--1d29a5c29db110e6dacf548b.md) | 37 | `result-track:1d29a5c29db110e6dacf548b849778ed646d5b1179fa94bf800a9cfc73c54e10` |
| 9 | `theorem` | [source_enclosures](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/source-enclosures--671cc95ba9e99724cd960d8e.md) | 41 | `result-track:671cc95ba9e99724cd960d8e995f179efdf164b59b1e5b745c27365d78b944b5` |
| 10 | `theorem` | [small_boundary_nonzero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/small-boundary-nonzero--333d61c9256d5ff6575260b5.md) | 48 | `result-track:333d61c9256d5ff6575260b5a1de980fbbf15568244daa60068090b28c0d9a45` |
| 11 | `theorem` | [records_and_final_edge_required](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/records-and-final-edge-required--fabeab307b92710dd2d1bf31.md) | 55 | `result-track:fabeab307b92710dd2d1bf317792240712c3f1f68c1c9c4638ee34d51a5cfb42` |
| 12 | `theorem` | [mesh_length_and_zero_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/mesh-length-and-zero-rejected--31028019df4a8991f9715b94.md) | 60 | `result-track:31028019df4a8991f9715b94816bf3d612c4079e2912ade26b85e22793fa12a7` |
| 13 | `theorem` | [wrong_endpoint_and_reversal_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/wrong-endpoint-and-reversal-rejected--1b7c7ecbe9826a524d8fd471.md) | 65 | `result-track:1b7c7ecbe9826a524d8fd47157634d63ac91a3dc17dd69658712c048148c0b73` |
| 14 | `theorem` | [double_traversal_and_backtracking_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/double-traversal-and-backtracking-rejected--38b69cb6bdb3d579d4c86a3f.md) | 70 | `result-track:38b69cb6bdb3d579d4c86a3f412ee2ec650ad009a86476be92b7a2e898b29324` |
| 15 | `theorem` | [corner_skip_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/corner-skip-rejected--1b3336bc0f6e56431db77a2e.md) | 76 | `result-track:1b3336bc0f6e56431db77a2ef1cb9304f6cb13f96a5e88687985d4f90ace9745` |
| 16 | `theorem` | [degenerate_and_changed_geometry_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/degenerate-and-changed-geometry-rejected--a42f71d5e6af98657c952499.md) | 79 | `result-track:a42f71d5e6af98657c9524995cbf0417765601ce16496c2879e8fb6837bdb629` |
| 17 | `theorem` | [target_geometry](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/target-geometry--00bc59778d36ec28e3ab0a60.md) | 85 | `result-track:00bc59778d36ec28e3ab0a6080c4353a60e7f49c46c8cda0f7e7de69080e1d1d` |
| 18 | `def` | [unitBox](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/unitbox--298896333ccab63e049d54ca.md) | 91 | `declaration-track:298896333ccab63e049d54ca10945c61a002f631ecf5857c2ae8e258a9d59cfd` |
| 19 | `theorem` | [coordinate_homotopy_not_chord](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/coordinate-homotopy-not-chord--820266800c8bc70ca59625bc.md) | 95 | `result-track:820266800c8bc70ca59625bcf256bf2feb1d55e9e01b9270126590da6065c3a5` |
| 20 | `theorem` | [synthetic_boundary_not_interior_exclusion](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/declarations/synthetic-boundary-not-interior-exclusion--33f55e8a86433c6489622033.md) | 103 | `result-track:33f55e8a86433c6489622033f3d573e7677a2e054bed60d2f207751a1c5c9b84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
