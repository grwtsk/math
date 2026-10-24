# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonRegularPart

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52a3c7faf015ce0085c70c6188fa42c470f0f5ca",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52a3c7faf015ce0085c70c6188fa42c470f0f5ca`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBoundary`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.ContractiveLogDerivativeRemainder`](../../../../../mathematics/Analysis/ComplexAnalysis/ContractiveLogDerivativeRemainder.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [outer_curvature](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/declarations/outer-curvature--92a93949065c614102bfe1bb.md) | 42 | `result-track:92a93949065c614102bfe1bbe9ebb9945cde8705ff31867e6f2338a8884e9a83` |
| 2 | `theorem` | [outer_pole_subtracted_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/declarations/outer-pole-subtracted-bound--2a698ffac9f4fe6fdd59fc5c.md) | 56 | `result-track:2a698ffac9f4fe6fdd59fc5c361280f744419839d2e459c5b260882c5c6af077` |
| 3 | `theorem` | [root_member_of_inner](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/declarations/root-member-of-inner--259f9b851510f7daa697853a.md) | 79 | `result-track:259f9b851510f7daa697853a5cbfe7e2c359ac9348c3452613f0037e581d576b` |
| 4 | `theorem` | [local_zero_with_regular_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/declarations/local-zero-with-regular-bound--eb4aaf579db6d4ab9ff2945a.md) | 89 | `result-track:eb4aaf579db6d4ab9ff2945aa59965f05fc2da38ef54196035d50c49650cff0e` |
| 5 | `theorem` | [boundary_root_distance](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/declarations/boundary-root-distance--8b3b81af08781fe95820a9d0.md) | 104 | `result-track:8b3b81af08781fe95820a9d0148201240d0a487cae07e10389d1f1c67bacff9c` |
| 6 | `theorem` | [boundary_pole_location_cost](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/declarations/boundary-pole-location-cost--c81240802e4cdcd397616389.md) | 120 | `result-track:c81240802e4cdcd3976163891d66ccea4c54d4030dad096dc21258562c4a8ce2` |
| 7 | `theorem` | [boundary_centered_quotient_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/declarations/boundary-centered-quotient-bound--51d89af536717f6d0dcec8f8.md) | 149 | `result-track:51d89af536717f6d0dcec8f8a9a43f2b2f73052ea7b08ad69985fd1eb525a8e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
