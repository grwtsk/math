# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerOctaveRestriction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee8777637ddb2f4cab922b524cf54fef592489dc",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOctaveRestriction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOctaveRestriction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOctaveRestriction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee8777637ddb2f4cab922b524cf54fef592489dc`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOctaveRestriction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOctaveRestriction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTwoBoundary`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonAliasingFejerSharpStepL1Error_eq_cyclicOctaveSubtypeSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOctaveRestriction.lean/declarations/nonaliasingfejersharpstepl1error-eq-cyclicoctavesubtypesum--2b1032117e6027c23a794454.md) | 14 | `result-track:2b1032117e6027c23a794454a9016aa4481c0ebb44707c42691b197c51af389e` |
| 2 | `theorem` | [octaveL1LeCyclicL1](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOctaveRestriction.lean/declarations/octavel1lecyclicl1--a9bbd4823a82e1abf859db4c.md) | 56 | `result-track:a9bbd4823a82e1abf859db4cff17e77a52837d1b47c763c7a8dbeeb2e2cc4a08` |
| 3 | `theorem` | [octaveL1LeCyclicL1_closed](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOctaveRestriction.lean/declarations/octavel1lecyclicl1-closed--982dcb636ea8a740a3a528b1.md) | 82 | `result-track:982dcb636ea8a740a3a528b1aeb5b6119b14d86c4109853fbb932467e17eb00e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
