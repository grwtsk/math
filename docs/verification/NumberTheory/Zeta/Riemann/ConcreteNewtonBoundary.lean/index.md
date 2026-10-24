# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "500481f020a298e3f0bc7812a4c4273d5dbfdc95",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `500481f020a298e3f0bc7812a4c4273d5dbfdc95`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonLocalization`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.ContractiveZeroSeparation`](../../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroSeparation.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [outer_center_enclosures_of_source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/declarations/outer-center-enclosures-of-source--5973e6bd9ee16c2b3b0e7bf9.md) | 40 | `result-track:5973e6bd9ee16c2b3b0e7bf99bcae7b62e8384e56a80373a834af53675601f5a` |
| 2 | `theorem` | [outer_analytic](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/declarations/outer-analytic--31948dc7ab49c087beb65afb.md) | 45 | `result-track:31948dc7ab49c087beb65afb6a7548efa09a2fd94ae2276e89382de8daca8e90` |
| 3 | `theorem` | [outer_derivative_defect](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/declarations/outer-derivative-defect--a481ce2130d174aa3e364d84.md) | 61 | `result-track:a481ce2130d174aa3e364d8458b8e27103ec14f6bfc5597ca90d1213ddaea51e` |
| 4 | `theorem` | [multiplier_norm_upper](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/declarations/multiplier-norm-upper--14ae1d87847ae6d3fa88dcd2.md) | 75 | `result-track:14ae1d87847ae6d3fa88dcd2ce1f082bbfca48b3eb4a7599e16ea6c21c40330d` |
| 5 | `theorem` | [outer_scaled_value_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/declarations/outer-scaled-value-lower--770e98b63a397337ca74c248.md) | 84 | `result-track:770e98b63a397337ca74c248015b81d64c032166dae8df8eec24bf73fefb19ca` |
| 6 | `theorem` | [outer_value_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/declarations/outer-value-lower--819781b6b1386cb24dabb199.md) | 109 | `result-track:819781b6b1386cb24dabb199c7061e1eccdb4c21361dc912c371217bf88787e5` |
| 7 | `theorem` | [boundary_scaled_value_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/declarations/boundary-scaled-value-lower--f3975d6c54de3166c413e59a.md) | 120 | `result-track:f3975d6c54de3166c413e59a9846515535a185b05ebbb87ede42b13169fa98f5` |
| 8 | `theorem` | [boundary_modulus_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/declarations/boundary-modulus-lower--4a02b0a7f3455b178418c2bc.md) | 133 | `result-track:4a02b0a7f3455b178418c2bc085ce450c200db67eadb88820eb1c8edb97a2b06` |
| 9 | `theorem` | [boundary_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/declarations/boundary-ne-zero--db137a7dd3e061aed99cf38a.md) | 143 | `result-track:db137a7dd3e061aed99cf38a5674772dbe0a35dbc2805af640b65ec80bd716fc` |
| 10 | `theorem` | [boundary_inverse_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/declarations/boundary-inverse-bound--1e48e6a414a0205a7195e68e.md) | 150 | `result-track:1e48e6a414a0205a7195e68ee2703a6c6fa6cf85feeea9a0e1666da70c8f3b8e` |
| 11 | `theorem` | [boundary_log_derivative_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/declarations/boundary-log-derivative-bound--73c1291e280d42c8ab33d570.md) | 161 | `result-track:73c1291e280d42c8ab33d5703c7c2ac5f823dc44cc87d63850026b7af31cb703` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
