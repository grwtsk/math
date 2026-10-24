# GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleContourCoverage

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fc8951cc96ae40d777e4cd3c5b5bca1c1e8fe2f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [square](declarations/square--5bc114267542e95414b608f8.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [poleEdge](declarations/poleedge--0d90b42d02c5f226596caaed.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [squareData](declarations/squaredata--009e76a2138d418f40f43f2f.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [constantImage](declarations/constantimage--79f201a6c563da9abffdc492.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [square_checked](declarations/square-checked--67448a542019b059f8e418b8.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [image_checked](declarations/image-checked--a301b38e33542aeea098b862.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [square_enclosures](declarations/square-enclosures--97de5d2f71a7543c086b0a31.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [whole_square_nonzero](declarations/whole-square-nonzero--030deae000b8d7a8d34d0731.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [whole_square_no_target](declarations/whole-square-no-target--b182e289dbbc56d8a13197b5.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [whole_square_deformation](declarations/whole-square-deformation--0a715632ee35ba426e9771fe.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [computed_image_radius](declarations/computed-image-radius--350ffa72acbdb89747806194.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [malformed_lengths_rejected](declarations/malformed-lengths-rejected--18e223f34bec0c1789429236.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [last_edge_cannot_be_skipped](declarations/last-edge-cannot-be-skipped--a4d8f87db875d1a736240824.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [changed_external_vertex_rejected](declarations/changed-external-vertex-rejected--143de6c0041c5eda0d2d3502.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [domain_and_image_closure_required](declarations/domain-and-image-closure-required--6b83ea7703bfefda0c8b3193.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [imaginary_image_escape_rejected](declarations/imaginary-image-escape-rejected--89dcf16b23afe393359d0744.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [equality_margin_rejected](declarations/equality-margin-rejected--3742358710e4db7cdafdb267.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [fictitiousData](declarations/fictitiousdata--7426b45b07cba69d4d3deed9.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fictitious_data_pass](declarations/fictitious-data-pass--66ed10302427a3e5b954d4ae.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [fictitious_data_have_no_enclosures](declarations/fictitious-data-have-no-enclosures--043f375dbec0b3341c43069a.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [degenerate_and_reversed_chains_allowed](declarations/degenerate-and-reversed-chains-allowed--15361b897db9d2946faf8b58.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [endpoints_do_not_cover_edge](declarations/endpoints-do-not-cover-edge--de29dda1e21fb2c8ec70a005.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mismatched_image_seam](declarations/mismatched-image-seam--e0565f214603652054b52105.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [unitSquare](declarations/unitsquare--f0bf2ce73baa369eee855aec.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [unit_square_boundary_nonzero](declarations/unit-square-boundary-nonzero--affceae21b0098bc8b244055.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [boundary_nonzero_does_not_exclude_interior](declarations/boundary-nonzero-does-not-exclude-interior--597f00ea8bbbb3f0f437b573.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [counting_rectangle_geometry](declarations/counting-rectangle-geometry--6333a95b6d1f2fbe8932a7f5.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [reflected_cutoff_control](declarations/reflected-cutoff-control--48d42d3f9da41ca0b3c55a33.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [pole_on_counting_bottom](declarations/pole-on-counting-bottom--0cbb5e02c651bd0824aec4ff.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
