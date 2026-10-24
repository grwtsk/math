# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightUnboundedPrimeJumpControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f449fb388ea00d4889000462d8035270201b1fd3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightUnboundedPrimeJumpControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightUnboundedPrimeJumpControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightUnboundedPrimeJumpControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f449fb388ea00d4889000462d8035270201b1fd3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightUnboundedPrimeJumpControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightUnboundedPrimeJumpControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightUnboundedPrimeJump`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightPsiCapacityNoGoControls`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiCapacityNoGoControls.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [concrete_chebyshev_prime_jump](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightUnboundedPrimeJumpControls.lean/declarations/concrete-chebyshev-prime-jump--46d61806007e4c626bfb3a92.md) | 17 | `result-track:46d61806007e4c626bfb3a921c57ef52fed1d30e16ef1bffb08a20bb4271d3c1` |
| 2 | `theorem` | [concrete_psi_error_prime_jump](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightUnboundedPrimeJumpControls.lean/declarations/concrete-psi-error-prime-jump--14507b9c93c3432f33c79f70.md) | 25 | `result-track:14507b9c93c3432f33c79f707e8a7ecddb1c16a4b7bb4a8c196036054cefbfae` |
| 3 | `theorem` | [concrete_unbounded_adjacent_psi_jump](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightUnboundedPrimeJumpControls.lean/declarations/concrete-unbounded-adjacent-psi-jump--b2e3f260fadb6f323ff97097.md) | 34 | `result-track:b2e3f260fadb6f323ff9709764122296938d3b3990de49a43255e1fc12385b3d` |
| 4 | `theorem` | [fixed_integerPsiCapacity_rejected_given_PNT_and_recurrence](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightUnboundedPrimeJumpControls.lean/declarations/fixed-integerpsicapacity-rejected-given-pnt-and-recurrence--ce08d43f75a7cb853abacd17.md) | 41 | `result-track:ce08d43f75a7cb853abacd17f86f6d5e78bb813401acc5513f494b4f93f7c16d` |
| 5 | `theorem` | [integerPsiCapacity_rejected_given_PNT_and_recurrence](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightUnboundedPrimeJumpControls.lean/declarations/integerpsicapacity-rejected-given-pnt-and-recurrence--b99f55ffaadba815c9738507.md) | 52 | `result-track:b99f55ffaadba815c97385070c040719cbe73db3e46334b40ac1dc4e017cd6be` |
| 6 | `def` | [remainingNoGoSuppliers](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightUnboundedPrimeJumpControls.lean/declarations/remainingnogosuppliers--eb9e7017f06e5b06f2d8c682.md) | 62 | `declaration-track:eb9e7017f06e5b06f2d8c682ea3942170deccadffef74ab42bcee500a61a47bd` |
| 7 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightUnboundedPrimeJumpControls.lean/declarations/prohibitedpromotions--53f632cf52917b6788481a86.md) | 69 | `declaration-track:53f632cf52917b6788481a86463f94b835499c0f52573e041e03da925c12efd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
