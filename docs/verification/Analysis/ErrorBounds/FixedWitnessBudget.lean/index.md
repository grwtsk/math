# Verification target: GRWTSK.Analysis.ErrorBounds.FixedWitnessBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1981c7df710af50f1d21fc63407391fbfca8dee6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/FixedWitnessBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/FixedWitnessBudget.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/FixedWitnessBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1981c7df710af50f1d21fc63407391fbfca8dee6`.

Source path: `GRWTSK/Analysis/ErrorBounds/FixedWitnessBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/FixedWitnessBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction`](../../../../mathematics/Analysis/ErrorBounds/ScrewSpectralReconstruction.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [witness_forces_budget](../../../../mathematics/Analysis/ErrorBounds/FixedWitnessBudget.lean/declarations/witness-forces-budget--93f6e2ec53bed700ed0c8841.md) | 31 | `result-track:93f6e2ec53bed700ed0c8841dc393f21c8bed46ae819c29e66cce2dcffaa8e45` |
| 2 | `theorem` | [positive_model_error_floor](../../../../mathematics/Analysis/ErrorBounds/FixedWitnessBudget.lean/declarations/positive-model-error-floor--4072b42750119eceb55ecdc1.md) | 40 | `result-track:4072b42750119eceb55ecdc1ce260f79a1d8fb9d852db9d6dbac3851cfca5c91` |
| 3 | `theorem` | [witness_forces_screw_budget](../../../../mathematics/Analysis/ErrorBounds/FixedWitnessBudget.lean/declarations/witness-forces-screw-budget--638f19b158401490faf2b76f.md) | 49 | `result-track:638f19b158401490faf2b76f9044b7e4fd562844d63521af8b58aaa14f95ac16` |
| 4 | `theorem` | [no_witness_below_budget](../../../../mathematics/Analysis/ErrorBounds/FixedWitnessBudget.lean/declarations/no-witness-below-budget--51ffaa9cd585f2ed8331f830.md) | 57 | `result-track:51ffaa9cd585f2ed8331f830b3040a139fc8acabe07801b1f9a4db77045d96f5` |
| 5 | `theorem` | [affine_budget_majorant](../../../../mathematics/Analysis/ErrorBounds/FixedWitnessBudget.lean/declarations/affine-budget-majorant--6e94bb569cfd156ec6daaab2.md) | 66 | `result-track:6e94bb569cfd156ec6daaab29e5af20458b60f4255c98be215260536d9296e7a` |
| 6 | `theorem` | [no_witness_at_affine_budget_stage](../../../../mathematics/Analysis/ErrorBounds/FixedWitnessBudget.lean/declarations/no-witness-at-affine-budget-stage--3c113a95fb60e7ef3b33df2c.md) | 84 | `result-track:3c113a95fb60e7ef3b33df2c2334c0bf644c25637bde5343f644688850f6d561` |
| 7 | `theorem` | [positive_model_without_small_error](../../../../mathematics/Analysis/ErrorBounds/FixedWitnessBudget.lean/declarations/positive-model-without-small-error--38079bd9f9418477cdcf7b17.md) | 96 | `result-track:38079bd9f9418477cdcf7b1746e32d27378274e70b48a15411dcb3ed7248d1d7` |
| 8 | `theorem` | [persistent_forcing_fixture](../../../../mathematics/Analysis/ErrorBounds/FixedWitnessBudget.lean/declarations/persistent-forcing-fixture--31d177c1e7ed60079f5eeecf.md) | 101 | `result-track:31d177c1e7ed60079f5eeecf434fb210da7292e9d42d2a63609ddb5121b88df4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
