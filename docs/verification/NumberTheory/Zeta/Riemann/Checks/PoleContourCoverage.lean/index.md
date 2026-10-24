# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleContourCoverage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fc8951cc96ae40d777e4cd3c5b5bca1c1e8fe2f",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fc8951cc96ae40d777e4cd3c5b5bca1c1e8fe2f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleContourTube`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.MirrorCountingRectangle`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [square](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/square--5bc114267542e95414b608f8.md) | 25 | `declaration-track:5bc114267542e95414b608f86658ea9404e7f5e6f1aaa620a0f6011428b73741` |
| 2 | `def` | [poleEdge](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/poleedge--0d90b42d02c5f226596caaed.md) | 29 | `declaration-track:0d90b42d02c5f226596caaedad923deb07a04f4c05995cfece2ace5e29846907` |
| 3 | `def` | [squareData](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/squaredata--009e76a2138d418f40f43f2f.md) | 30 | `declaration-track:009e76a2138d418f40f43f2f3729bfbacdac7831c596a8238602c1d3de749368` |
| 4 | `def` | [constantImage](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/constantimage--79f201a6c563da9abffdc492.md) | 31 | `declaration-track:79f201a6c563da9abffdc4926fab77a13cc2e8149ad62342ddfaa392950427bb` |
| 5 | `theorem` | [square_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/square-checked--67448a542019b059f8e418b8.md) | 33 | `result-track:67448a542019b059f8e418b821c93a9c3c11ebb7db49e870c55ac24c8c756df2` |
| 6 | `theorem` | [image_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/image-checked--a301b38e33542aeea098b862.md) | 35 | `result-track:a301b38e33542aeea098b86207cdb64265261fa99563e56a84a8d7d484c96503` |
| 7 | `theorem` | [square_enclosures](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/square-enclosures--97de5d2f71a7543c086b0a31.md) | 38 | `result-track:97de5d2f71a7543c086b0a31dcdf686f88dcd9aed0e351005cbb431bfd8a861b` |
| 8 | `theorem` | [whole_square_nonzero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/whole-square-nonzero--030deae000b8d7a8d34d0731.md) | 44 | `result-track:030deae000b8d7a8d34d0731f9a879291fa1e46ffa98ba9a29a2f9bd087feb70` |
| 9 | `theorem` | [whole_square_no_target](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/whole-square-no-target--b182e289dbbc56d8a13197b5.md) | 49 | `result-track:b182e289dbbc56d8a13197b55e513194d9fba2e5bae8b2603e4b78ff3ea3af79` |
| 10 | `theorem` | [whole_square_deformation](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/whole-square-deformation--0a715632ee35ba426e9771fe.md) | 54 | `result-track:0a715632ee35ba426e9771fec1d0c5ed3d48d02a8cf04f37aa4ccf5cb6d2b3bb` |
| 11 | `theorem` | [computed_image_radius](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/computed-image-radius--350ffa72acbdb89747806194.md) | 61 | `result-track:350ffa72acbdb8974780619456ae853de9280cfb4424e7d958e5666ecf84418c` |
| 12 | `theorem` | [malformed_lengths_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/malformed-lengths-rejected--18e223f34bec0c1789429236.md) | 63 | `result-track:18e223f34bec0c1789429236af9cb8cc664c8847a907b1d883934977c87230b5` |
| 13 | `theorem` | [last_edge_cannot_be_skipped](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/last-edge-cannot-be-skipped--a4d8f87db875d1a736240824.md) | 69 | `result-track:a4d8f87db875d1a73624082488faff0b84d5652640f0004193335d7347f15942` |
| 14 | `theorem` | [changed_external_vertex_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/changed-external-vertex-rejected--143de6c0041c5eda0d2d3502.md) | 73 | `result-track:143de6c0041c5eda0d2d35029dc7a66030bd0d8cf11d993c1845f51fde25b57f` |
| 15 | `theorem` | [domain_and_image_closure_required](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/domain-and-image-closure-required--6b83ea7703bfefda0c8b3193.md) | 78 | `result-track:6b83ea7703bfefda0c8b3193fe5bcb3f9aa8c986399d70ccc4124598a293010e` |
| 16 | `theorem` | [imaginary_image_escape_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/imaginary-image-escape-rejected--89dcf16b23afe393359d0744.md) | 84 | `result-track:89dcf16b23afe393359d0744267d5c79c6fd27ee08b9cb88731346c05ae97cf3` |
| 17 | `theorem` | [equality_margin_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/equality-margin-rejected--3742358710e4db7cdafdb267.md) | 87 | `result-track:3742358710e4db7cdafdb2677328bd8ad650c451307f7e740236515b4fe6c2ec` |
| 18 | `def` | [fictitiousData](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/fictitiousdata--7426b45b07cba69d4d3deed9.md) | 92 | `declaration-track:7426b45b07cba69d4d3deed9ca15d5e0f9fd8cf664399dd6c1692b9acc94ea37` |
| 19 | `theorem` | [fictitious_data_pass](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/fictitious-data-pass--66ed10302427a3e5b954d4ae.md) | 94 | `result-track:66ed10302427a3e5b954d4aeeb470226b994899dffd725b98ad910553fd766e2` |
| 20 | `theorem` | [fictitious_data_have_no_enclosures](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/fictitious-data-have-no-enclosures--043f375dbec0b3341c43069a.md) | 96 | `result-track:043f375dbec0b3341c43069a2f14ecb73f84e470427bfc3d153654f3ae8bfc66` |
| 21 | `theorem` | [degenerate_and_reversed_chains_allowed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/degenerate-and-reversed-chains-allowed--15361b897db9d2946faf8b58.md) | 102 | `result-track:15361b897db9d2946faf8b580dd1ef7c39a61593060cd8f8102fe9781e8aa628` |
| 22 | `theorem` | [endpoints_do_not_cover_edge](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/endpoints-do-not-cover-edge--de29dda1e21fb2c8ec70a005.md) | 107 | `result-track:de29dda1e21fb2c8ec70a00599c188101937bba957971cab8209a907ababc86c` |
| 23 | `theorem` | [mismatched_image_seam](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/mismatched-image-seam--e0565f214603652054b52105.md) | 113 | `result-track:e0565f214603652054b5210583d091fe38884d19a7ae1f44efedc25b2ccd4cdd` |
| 24 | `def` | [unitSquare](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/unitsquare--f0bf2ce73baa369eee855aec.md) | 118 | `declaration-track:f0bf2ce73baa369eee855aec2a290b71eba4963c6affa7afedce50fe1db47bf4` |
| 25 | `theorem` | [unit_square_boundary_nonzero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/unit-square-boundary-nonzero--affceae21b0098bc8b244055.md) | 120 | `result-track:affceae21b0098bc8b244055da5663ccb6a329d0c1dbb98b3162f34214f2272a` |
| 26 | `theorem` | [boundary_nonzero_does_not_exclude_interior](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/boundary-nonzero-does-not-exclude-interior--597f00ea8bbbb3f0f437b573.md) | 130 | `result-track:597f00ea8bbbb3f0f437b573ef412305c64eb9f66900be09637509e47629c267` |
| 27 | `theorem` | [counting_rectangle_geometry](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/counting-rectangle-geometry--6333a95b6d1f2fbe8932a7f5.md) | 135 | `result-track:6333a95b6d1f2fbe8932a7f5336b0a7bcd8c1d1d0ffa188b169efde61d0050a8` |
| 28 | `theorem` | [reflected_cutoff_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/reflected-cutoff-control--48d42d3f9da41ca0b3c55a33.md) | 142 | `result-track:48d42d3f9da41ca0b3c55a335bdc4d18e7afe873330651e1feab21201388a49d` |
| 29 | `theorem` | [pole_on_counting_bottom](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/declarations/pole-on-counting-bottom--0cbb5e02c651bd0824aec4ff.md) | 149 | `result-track:0cbb5e02c651bd0824aec4ffe95deffe9dee6c22e61989122b3d811bc92169ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
