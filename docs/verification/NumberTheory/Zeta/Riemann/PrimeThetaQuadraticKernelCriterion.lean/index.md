# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaQuadraticKernelCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad7d7b67d02eea6513a45adf610333123db10ed0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad7d7b67d02eea6513a45adf610333123db10ed0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaRecurrenceSupplier`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPrimeWindow](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/declarations/thetaprimewindow--3de0fb5a64a2a606001d6b01.md) | 40 | `declaration-track:3de0fb5a64a2a606001d6b0145fb7199900cd1cba1bd43fbd7005778e02d932b` |
| 2 | `theorem` | [thetaPrimeWindow_mem_octave](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/declarations/thetaprimewindow-mem-octave--e71d4c507700a699908c7357.md) | 45 | `result-track:e71d4c507700a699908c7357082ee107f28a3c606ae75a568447f4b3845dd4e1` |
| 3 | `structure` | [PrimeThetaQuadraticKernelStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/declarations/primethetaquadratickernelstage--0f017b8ac6aedd7df8f35076.md) | 57 | `declaration-track:0f017b8ac6aedd7df8f35076f09e41d23c9df522b5576be8ff10ab90f790e3c3` |
| 4 | `def` | [kernelMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/declarations/kernelmass--692542074931e100478965f1.md) | 68 | `declaration-track:692542074931e100478965f1b56b14b314953a79a4f458e6db8baa67f222ec2c` |
| 5 | `def` | [response](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/declarations/response--086ecfd9315c5a4811ed6fc2.md) | 76 | `declaration-track:086ecfd9315c5a4811ed6fc2942331fe6ff14d71772d797dda080d65200e94e7` |
| 6 | `theorem` | [kernelMass_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/declarations/kernelmass-nonnegative--ce7a542cc66de3772d496504.md) | 85 | `result-track:ce7a542cc66de3772d4965045f6aa474930078ef324fabe3395022fd60bd410e` |
| 7 | `theorem` | [abs_response_le_kernelMass_mul_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/declarations/abs-response-le-kernelmass-mul-sq--5ca49fe0c58c2ed960a5a41d.md) | 95 | `result-track:5ca49fe0c58c2ed960a5a41d55a2358812adaad801f69699f82179b0cb72d1be` |
| 8 | `def` | [PrimeThetaQuadraticKernelCriterionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/declarations/primethetaquadratickernelcriterionat--e3f3a6415bc063c5be837aa8.md) | 164 | `declaration-track:e3f3a6415bc063c5be837aa803cb4b1f029efe16f62b6e7c74e8093aede1d7f7` |
| 9 | `theorem` | [primeThetaQuadraticKernelCriterion_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/declarations/primethetaquadratickernelcriterion-to-recurrence--0afb4e0a5630d3f9320db8b9.md) | 191 | `result-track:0afb4e0a5630d3f9320db8b9099ff5ce79d853ca0b83f27a9c875c6ecb426d25` |
| 10 | `theorem` | [primeThetaQuadraticKernelCriterion_to_descent](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/declarations/primethetaquadratickernelcriterion-to-descent--ea9dc243cadc7ae21ed7a100.md) | 221 | `result-track:ea9dc243cadc7ae21ed7a100bf1d13376b65281c5e0cabe3c2f6d8e47a751518` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
