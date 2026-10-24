# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaRecurrenceSupplier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b268ab0d5c87ab2dd308da2bbc174ac3fccefede",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b268ab0d5c87ab2dd308da2bbc174ac3fccefede`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThresholdDescentProgram`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QuadraticThetaSourceRecurrenceAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean/declarations/quadraticthetasourcerecurrenceat--6530b2a2c0241818eb18758e.md) | 44 | `declaration-track:6530b2a2c0241818eb18758eb8ae4e0bf27d274c1c28e521cdac0038368e3832` |
| 2 | `theorem` | [dyadicScale_succ_eq_two_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean/declarations/dyadicscale-succ-eq-two-mul--6d1b930a20a5cfa17caeb688.md) | 60 | `result-track:6d1b930a20a5cfa17caeb688b7c67daa8d324e577a2e59c9b5ae6ee5ef7bd5de` |
| 3 | `theorem` | [quadraticThetaSourceRecurrence_to_descent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean/declarations/quadraticthetasourcerecurrence-to-descent--4afc3ef879e5ce1b52306bb6.md) | 67 | `result-track:4afc3ef879e5ce1b52306bb6a3391f84354bd1e7376ac6595585e0dad4b4ace8` |
| 4 | `theorem` | [twoStepQuadraticRecurrence_to_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean/declarations/twostepquadraticrecurrence-to-rh--686682f151aec68a9f9c0d2f.md) | 160 | `result-track:686682f151aec68a9f9c0d2f558b00e19141016ffe874605e26d6850f32bb395` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
