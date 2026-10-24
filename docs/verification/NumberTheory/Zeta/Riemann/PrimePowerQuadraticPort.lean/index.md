# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23bbd85518d79b6de0b12e5f1f16385090112792",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimePowerQuadraticPort.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerQuadraticPort.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerQuadraticPort.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23bbd85518d79b6de0b12e5f1f16385090112792`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PrimePowerQuadraticPort.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PrimePowerQuadraticPort.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticTraceCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuarticExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerQuadraticPort.lean/declarations/quarticextraction--ba9ae06b7cc81f9ed6987234.md) | 35 | `declaration-track:ba9ae06b7cc81f9ed69872349c263f325aee0e879f778bf0b6c5d174b2ba51be` |
| 2 | `theorem` | [QuarticExtraction.source_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerQuadraticPort.lean/declarations/quarticextraction-source-nonneg--6fd1f1426efd144574176fd0.md) | 50 | `result-track:6fd1f1426efd144574176fd0a0dd3ce19d4b879adf073331600a36cc306a18d6` |
| 3 | `theorem` | [witnessTrace_nonneg_of_quarticExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerQuadraticPort.lean/declarations/witnesstrace-nonneg-of-quarticextraction--03e61a97bcc8b3825eccf8c8.md) | 57 | `result-track:03e61a97bcc8b3825eccf8c8758957a524bdef7c0dd50e60ca97522c3142dead` |
| 4 | `theorem` | [horizontal_displacement_eq_zero_of_quarticExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerQuadraticPort.lean/declarations/horizontal-displacement-eq-zero-of-quarticextraction--0212ea75356f4d0d1a1a30c7.md) | 76 | `result-track:0212ea75356f4d0d1a1a30c7aba217028a758900b94f4a227a57d416f45dcdbe` |
| 5 | `theorem` | [riemannHypothesis_of_primePowerGramExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerQuadraticPort.lean/declarations/riemannhypothesis-of-primepowergramextraction--587f1d2cd6dc9da103b45f3b.md) | 85 | `result-track:587f1d2cd6dc9da103b45f3b2c5a6a0b85df8943547e4bb86e862a54e2ceef10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
