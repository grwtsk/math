# Verification target: GRWTSK.NumberTheory.Chebyshev.TentHorizontalRays

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fec3e90d5f628c4bf80a8607ea223f751e834f43",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/TentHorizontalRays.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalRays.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalRays.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fec3e90d5f628c4bf80a8607ea223f751e834f43`.

Source path: `GRWTSK/NumberTheory/Chebyshev/TentHorizontalRays.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/TentHorizontalRays.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.HorizontalLogDerivative`](../../../../mathematics/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.TentHorizontalRayMajorant`](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentLeftDecay`](../../../../mathematics/NumberTheory/Chebyshev/TentLeftDecay.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic.LinearCombination` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [horizontalRay](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalRays.lean/declarations/horizontalray--091ae5d30bdb684bbadad188.md) | 42 | `declaration-track:091ae5d30bdb684bbadad188284cb3f89b87922d5472fb6d8b428f9c954435ed` |
| 2 | `theorem` | [continuous_horizontal_integrand](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalRays.lean/declarations/continuous-horizontal-integrand--5b7a2b2e6cf94f7a14201729.md) | 45 | `result-track:5b7a2b2e6cf94f7a14201729acd4d2bfadcc333ff49c9ad458e85bd684f10da6` |
| 3 | `theorem` | [norm_horizontal_integrand_le](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalRays.lean/declarations/norm-horizontal-integrand-le--6408170cf51a3143ea7cf1b4.md) | 52 | `result-track:6408170cf51a3143ea7cf1b4327405cedb7274babe2236c8a418c2fe0e3cdc10` |
| 4 | `theorem` | [integrable_horizontal_ray](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalRays.lean/declarations/integrable-horizontal-ray--6c6f7b8d8efd71588df6c555.md) | 71 | `result-track:6c6f7b8d8efd71588df6c555759ea1ee94610c6f035d1a608e60d77dca4405e3` |
| 5 | `theorem` | [integral_norm_horizontal_ray_le](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalRays.lean/declarations/integral-norm-horizontal-ray-le--8d783c7744184306922ad157.md) | 82 | `result-track:8d783c7744184306922ad15708ebb842b7550e8dc8bdbd9a9d52cdc29a5be770` |
| 6 | `theorem` | [norm_horizontalRay_le](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalRays.lean/declarations/norm-horizontalray-le--309c45f7e2d6a4b1189bd91b.md) | 94 | `result-track:309c45f7e2d6a4b1189bd91b38fc81d036b4bd241de6bdf9e7103990588d7499` |
| 7 | `theorem` | [leftEdge_tendsto_atBot](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalRays.lean/declarations/leftedge-tendsto-atbot--54e4dd4d4c97fc8544c298b2.md) | 103 | `result-track:54e4dd4d4c97fc8544c298b2d7cbce52cdecc987c8787abd0656c0b8cf3e7c9c` |
| 8 | `theorem` | [horizontal_tendsto_ray](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalRays.lean/declarations/horizontal-tendsto-ray--1076d7930c080f7d99b578c8.md) | 113 | `result-track:1076d7930c080f7d99b578c8a9a1e99d7a4695fac209e95bcc89439b174c8247` |
| 9 | `theorem` | [right_eq_residues_add_horizontalRays](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalRays.lean/declarations/right-eq-residues-add-horizontalrays--26a452545e80e444a8060573.md) | 121 | `result-track:26a452545e80e444a8060573997c5d1a9a43a4946cc1892ac41b512b689b906b` |
| 10 | `theorem` | [norm_combined_horizontalRays_le](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalRays.lean/declarations/norm-combined-horizontalrays-le--c9a457fbe11c9fb14279d97c.md) | 138 | `result-track:c9a457fbe11c9fb14279d97c07cce71eb10f9b05fbe4be3fe1929cfa233e4618` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
