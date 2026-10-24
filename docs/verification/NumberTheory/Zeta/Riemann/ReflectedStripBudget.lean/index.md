# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ReflectedStripBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cb28ea8264f8e9ad9dedd1be77c9b6b68e5b1f6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cb28ea8264f8e9ad9dedd1be77c9b6b68e5b1f6`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.GammaVerticalBound`](../../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.JensenCentralLogDerivative`](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.HorizontalLogDerivative`](../../../../../mathematics/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/declarations/centralbudget--befecbce52cecb201efa39d2.md) | 34 | `declaration-track:befecbce52cecb201efa39d286ee43263c6eb9046d81204c1e252393eb1db566` |
| 2 | `theorem` | [centralBudget_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/declarations/centralbudget-nonneg--5dcf5cf3a27aa7c4d7cb6b6a.md) | 37 | `result-track:5dcf5cf3a27aa7c4d7cb6b6acd83097f3f9c785f4b069b5b8a270b90987d0252` |
| 3 | `theorem` | [norm_reflected_logDeriv_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/declarations/norm-reflected-logderiv-le--e24a207c8120d9c4acc14c18.md) | 45 | `result-track:e24a207c8120d9c4acc14c18a2ff7a6975ed744aec6f0584098b1cbaea6b3bcb` |
| 4 | `def` | [stripBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/declarations/stripbudget--fb47b69dd7b4a5a41d71172c.md) | 66 | `declaration-track:fb47b69dd7b4a5a41d71172c9f8f35c7f06ec9f2612083c5a60cc3e3bcaf8743` |
| 5 | `theorem` | [centralBudget_le_stripBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/declarations/centralbudget-le-stripbudget--93bd063905e043b895f719ce.md) | 70 | `result-track:93bd063905e043b895f719ce56cea4151fbcd9e27c7e33a22fe4de4253e66d5b` |
| 6 | `theorem` | [stripBudget_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/declarations/stripbudget-nonneg--775ca4ea4f21c7e3f07c6ef9.md) | 77 | `result-track:775ca4ea4f21c7e3f07c6ef95fe55bef2680c41eed0712e9b0429cddab4608f0` |
| 7 | `theorem` | [norm_logDeriv_fixedStrip](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/declarations/norm-logderiv-fixedstrip--c138674609367d176f48d195.md) | 81 | `result-track:c138674609367d176f48d19508021e677fdad2442d1f25802f77a50625e88fd6` |
| 8 | `theorem` | [norm_logDeriv_horizontal_ray](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/declarations/norm-logderiv-horizontal-ray--0f2e0586ebff927030b121b2.md) | 134 | `result-track:0f2e0586ebff927030b121b203cc48ce62ada0a781e79be49dfb1b0f5b52a230` |
| 9 | `theorem` | [stripBudget_eq_affine_height](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/declarations/stripbudget-eq-affine-height--813909cfeb4546c7143e2a4e.md) | 146 | `result-track:813909cfeb4546c7143e2a4eabf400038fafe848c3008a921d8bf20508c3d92e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
