# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CubicReflectionSupplier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54f9656ab7ecebbffb124712068f55c8661ce3aa",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54f9656ab7ecebbffb124712068f55c8661ce3aa`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalReflectionContraction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaCircleBound`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Complex.Liouville` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [chartHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/chartheight--3fda17b30953e7738967d629.md) | 45 | `declaration-track:3fda17b30953e7738967d629e4d618d762736ab9476e9f6f4a3774c60d7f445c` |
| 2 | `def` | [chartOffset](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/chartoffset--6b580097f40ebf8667023ce9.md) | 49 | `declaration-track:6b580097f40ebf8667023ce993d96e02735291f21ff46f7cce5b728efefbd1a7` |
| 3 | `def` | [cubicCurvature](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/cubiccurvature--97e552dcf9518079fe6fc291.md) | 53 | `declaration-track:97e552dcf9518079fe6fc29188482b8c2c7e4fc57c500139070676f7a90e548e` |
| 4 | `def` | [accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/accepts--e16d1fb41a9087e1fe6cc362.md) | 58 | `declaration-track:e16d1fb41a9087e1fe6cc3627a82cebdfedf8887effb7cd41e1f9431eec7ec53` |
| 5 | `def` | [lineCenter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/linecenter--3c6ddc1e4d550d67f35b5367.md) | 66 | `declaration-track:3c6ddc1e4d550d67f35b5367adcb9be192ac7bb449379b7e2aaab1f11a802233` |
| 6 | `def` | [chartCenter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/chartcenter--fe66d35c0fc92a056ec70434.md) | 68 | `declaration-track:fe66d35c0fc92a056ec7043405f8750467e06db00f4aebcbe46fbda6705cc7c0` |
| 7 | `theorem` | [center_distance_le_offset](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/center-distance-le-offset--34a1826aefd54e8523f1fee7.md) | 72 | `result-track:34a1826aefd54e8523f1fee73bf0da3d8500090d8e7f041cb02f6bca9e9224c0` |
| 8 | `theorem` | [chart_modulus_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/chart-modulus-bound--427f7790d64705789f4a1228.md) | 83 | `result-track:427f7790d64705789f4a1228d2e7897a0bf35f40520a8a1425769e126ff3484e` |
| 9 | `theorem` | [chart_analytic](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/chart-analytic--cebcad452b20904e881edf91.md) | 90 | `result-track:cebcad452b20904e881edf9117f5e9d22bda3734d1590bc410a48585b36e07f9` |
| 10 | `theorem` | [buffered_disk_subset](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/buffered-disk-subset--c4cd19231a2e65571cb3289b.md) | 97 | `result-track:c4cd19231a2e65571cb3289b8d2992fb7e1dfe40b9edac391953faeffc3a25ad` |
| 11 | `theorem` | [line_disk_analytic](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/line-disk-analytic--87ab8ebfe7ae24d2d5c692db.md) | 115 | `result-track:87ab8ebfe7ae24d2d5c692db05de9af956b52862a49947cf0e54d8522c0f13db` |
| 12 | `theorem` | [zeta_second_derivative_le_cubic](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/zeta-second-derivative-le-cubic--afac344af01bd1ee92e7f9f7.md) | 125 | `result-track:afac344af01bd1ee92e7f9f7d4b796f9f0a6317b73b332528639693f330c3924` |
| 13 | `theorem` | [critical_line_of_cubic_slope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/critical-line-of-cubic-slope--22c92d284276f13eda87a32a.md) | 142 | `result-track:22c92d284276f13eda87a32a68bcf778452204ccedcbe20d39598fdec6e6bfdc` |
| 14 | `theorem` | [rhThrough_of_cubic_slope_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/rhthrough-of-cubic-slope-cover--56ab45304785315700d09b44.md) | 158 | `result-track:56ab45304785315700d09b441f6881947225839d128ae936deb6ae2439345e4a` |
| 15 | `theorem` | [half_buffer_curvature](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/half-buffer-curvature--caba1b4345706e31b61b2384.md) | 172 | `result-track:caba1b4345706e31b61b23846222b935a250c3edeb7521d20fed1277a90c0e44` |
| 16 | `theorem` | [positive_buffer_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/positive-buffer-fixture--08151e09a136f18ee46da0f0.md) | 178 | `result-track:08151e09a136f18ee46da0f0270d51b3924a4ae2e3ccda502de73a01d3aebf24` |
| 17 | `theorem` | [buffer_geometry_controls_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/buffer-geometry-controls-fixture--2f3d77d9c9789156f31ae0de.md) | 188 | `result-track:2f3d77d9c9789156f31ae0de9ce91bcfc2ceb5b7413790be9528b14d4a190a4f` |
| 18 | `theorem` | [zero_buffer_rejected](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/zero-buffer-rejected--6115a66a023f925d41270d21.md) | 197 | `result-track:6115a66a023f925d41270d218f81358b229385c14d70545a9bdf1dc271f4a9f4` |
| 19 | `theorem` | [low_chart_rejected](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/declarations/low-chart-rejected--88ff5f545574e6e4c6bb777a.md) | 202 | `result-track:88ff5f545574e6e4c6bb777a0c6a3e441fb0aa8864c903b34b529e33afa25fae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
