# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenL2Comparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3c73351b6135aecb830edecd0f743a1771ac78b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenL2Comparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenL2Comparison.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenL2Comparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3c73351b6135aecb830edecd0f743a1771ac78b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenL2Comparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenL2Comparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFullResidualEnergy`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenCenteredMobiusLogComparisonEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenL2Comparison.lean/declarations/greencenteredmobiuslogcomparisonenergy--3f2fb94821c8f44f11fd85da.md) | 17 | `declaration-track:3f2fb94821c8f44f11fd85da5374b8d553048fc724d4b8c37f22cbb9da0c9a2b` |
| 2 | `theorem` | [sq_norm_green_plus_centered_eq_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenL2Comparison.lean/declarations/sq-norm-green-plus-centered-eq-residual--47fc0873124385c84de95f96.md) | 24 | `result-track:47fc0873124385c84de95f9657844a265bbbb25f30334d0db2bf23048ea29755` |
| 3 | `theorem` | [summable_greenCenteredMobiusLogComparisonEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenL2Comparison.lean/declarations/summable-greencenteredmobiuslogcomparisonenergy--110056bb21ce8f7f9f346797.md) | 32 | `result-track:110056bb21ce8f7f9f346797b6125c6aa5b2cf20240211829d573f63224b7d86` |
| 4 | `theorem` | [greenCenteredMobiusLogComparisonEnergy_eq_residualEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenL2Comparison.lean/declarations/greencenteredmobiuslogcomparisonenergy-eq-residualenergy--d05f25bc6e912c5d8f159e06.md) | 46 | `result-track:d05f25bc6e912c5d8f159e068ec181455db692205f6fc95e0e28691c5f9a8d73` |
| 5 | `theorem` | [greenCenteredMobiusLogComparisonEnergy_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenL2Comparison.lean/declarations/greencenteredmobiuslogcomparisonenergy-le--6fd25a44b54920c077a9ea12.md) | 61 | `result-track:6fd25a44b54920c077a9ea12613db689ec955d484272f5df14b30ad97087d366` |
| 6 | `theorem` | [greenCenteredMobiusLogComparisonEnergy_eventually_small](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenL2Comparison.lean/declarations/greencenteredmobiuslogcomparisonenergy-eventually-small--018eb88ed70fde5363f94b02.md) | 69 | `result-track:018eb88ed70fde5363f94b02014bd9669d22a86c1fd1cc6e190bae002e0797e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
