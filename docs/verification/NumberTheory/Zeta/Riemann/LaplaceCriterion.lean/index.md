# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.LaplaceCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fcf951a309b6edf395116ea813083391ce846c0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fcf951a309b6edf395116ea813083391ce846c0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.LaplaceTransform`](../../../../../mathematics/NumberTheory/Moebius/LaplaceTransform.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Regularized`](../../../../../mathematics/NumberTheory/Zeta/Riemann/Regularized.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [regularized_laplace_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/declarations/regularized-laplace-identity--1611de961bf2bee77896ce69.md) | 30 | `result-track:1611de961bf2bee77896ce693a0f945cb3963889520fa8490328cb6314f73e49` |
| 2 | `theorem` | [regularized_initial_identity_of_inverse](../../../../../mathematics/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/declarations/regularized-initial-identity-of-inverse--5c57a44e82ed198e774ef325.md) | 63 | `result-track:5c57a44e82ed198e774ef3257dcb74ec5a7f5b6592b1801ffe1ee69db0501f7b` |
| 3 | `theorem` | [zeta_ne_zero_of_holomorphic_laplace](../../../../../mathematics/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/declarations/zeta-ne-zero-of-holomorphic-laplace--be0a3e6af4d5eca87f475cd3.md) | 90 | `result-track:be0a3e6af4d5eca87f475cd34445b46ca21e00afbe1591d32f331349b8ce0dc3` |
| 4 | `theorem` | [riemannHypothesis_of_holomorphic_laplace](../../../../../mathematics/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/declarations/riemannhypothesis-of-holomorphic-laplace--d6c4592407d3afd9634ba3f6.md) | 109 | `result-track:d6c4592407d3afd9634ba3f67bc7e79104708821cf9dfcfc2d436fedca5faa04` |
| 5 | `theorem` | [riemannHypothesis_of_holomorphic_signedPickupLaplace](../../../../../mathematics/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/declarations/riemannhypothesis-of-holomorphic-signedpickuplaplace--4fb4ff7ee7243affe90fc4d0.md) | 125 | `result-track:4fb4ff7ee7243affe90fc4d060a38377eecfe2e3af716db38b062f77dbc87e8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
