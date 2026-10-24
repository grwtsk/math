# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointCriticalLine

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20cf1206ff2f36d2a410ab587dd0ec160f06ad1b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20cf1206ff2f36d2a410ab587dd0ec160f06ad1b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.LocalZeroSymmetry`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointBernoulliSource`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [center_on_line](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean/declarations/center-on-line--4fe867d82fe40971455e2b6a.md) | 26 | `result-track:4fe867d82fe40971455e2b6a2f5d8e3c31860d27683b6c5d310dd66084f2587b` |
| 2 | `theorem` | [ordinate_error](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean/declarations/ordinate-error--1d8a37fda88b25ce1fc6ef4a.md) | 30 | `result-track:1d8a37fda88b25ce1fc6ef4ad718bed6f37a6f82cd43559998a48ef46126bbf6` |
| 3 | `theorem` | [positive_height](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean/declarations/positive-height--f87afa8d865bfccaf6d33d0c.md) | 34 | `result-track:f87afa8d865bfccaf6d33d0c02e91bc1eb23631cd1cfb4d4861724abb5744ae2` |
| 4 | `theorem` | [distance_eq_ordinate](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean/declarations/distance-eq-ordinate--f31db5ca8723fedbe22878e5.md) | 41 | `result-track:f31db5ca8723fedbe22878e5591df84dff82db5223d9a2527edbfe29da0e9567` |
| 5 | `theorem` | [unique_simple_critical_point](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean/declarations/unique-simple-critical-point--be3c7e29e574eadc429755fc.md) | 47 | `result-track:be3c7e29e574eadc429755fc317ffc6caad8d26fe4035f93148b6af908b3ebb7` |
| 6 | `theorem` | [exists_simple_critical_pair](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean/declarations/exists-simple-critical-pair--d07ae34da672496cf20a99be.md) | 57 | `result-track:d07ae34da672496cf20a99be1675ca533219e493a3525695c339873a54652dec` |
| 7 | `theorem` | [canonical_count_at_fifteen_lower](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean/declarations/canonical-count-at-fifteen-lower--b48e066bf1adde8f75ec1393.md) | 81 | `result-track:b48e066bf1adde8f75ec1393195fe34c65b9b691b2a33a30ae0b17cfc2304753` |
| 8 | `theorem` | [canonical_count_lower](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCriticalLine.lean/declarations/canonical-count-lower--ff041a5cea673cfb96ac3a85.md) | 93 | `result-track:ff041a5cea673cfb96ac3a85d01c0717825bf7c471b5a27a9bacc90a7dd683ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
