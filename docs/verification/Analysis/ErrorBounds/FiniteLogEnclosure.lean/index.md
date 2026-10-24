# Verification target: GRWTSK.Analysis.ErrorBounds.FiniteLogEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb910954e6be9e2972e1182bfbbe6d6668a1e743",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/FiniteLogEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/FiniteLogEnclosure.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/FiniteLogEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb910954e6be9e2972e1182bfbbe6d6668a1e743`.

Source path: `GRWTSK/Analysis/ErrorBounds/FiniteLogEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/FiniteLogEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lowerSum](../../../../mathematics/Analysis/ErrorBounds/FiniteLogEnclosure.lean/declarations/lowersum--25b1c91fa6fe3c7d580327e8.md) | 26 | `declaration-track:25b1c91fa6fe3c7d580327e8c1fb2f7f67b77fb258175a4048b1acdd0c7adbaa` |
| 2 | `def` | [upperSum](../../../../mathematics/Analysis/ErrorBounds/FiniteLogEnclosure.lean/declarations/uppersum--7a758374ee74abc65f532622.md) | 30 | `declaration-track:7a758374ee74abc65f532622e5c7f74be4afbddd5d529bfe60880a9b7787dfed` |
| 3 | `theorem` | [log_step_bounds](../../../../mathematics/Analysis/ErrorBounds/FiniteLogEnclosure.lean/declarations/log-step-bounds--301d356c0a6f914199316eb6.md) | 34 | `result-track:301d356c0a6f914199316eb6d89e31b37dcbcc310ec45e8e7f7b0c5f85389394` |
| 4 | `theorem` | [chain_bounds](../../../../mathematics/Analysis/ErrorBounds/FiniteLogEnclosure.lean/declarations/chain-bounds--32c8711925b0a6c0abb3246e.md) | 49 | `result-track:32c8711925b0a6c0abb3246eb8d3640f6415d9e5dcd743465b3f13c0888fe512` |
| 5 | `theorem` | [lower_nonneg](../../../../mathematics/Analysis/ErrorBounds/FiniteLogEnclosure.lean/declarations/lower-nonneg--41a06ffa22086729e98e4714.md) | 59 | `result-track:41a06ffa22086729e98e47145cb6d74c5f3bb16740c99dcae54816485fc31657` |
| 6 | `theorem` | [midpoint_error](../../../../mathematics/Analysis/ErrorBounds/FiniteLogEnclosure.lean/declarations/midpoint-error--26fa553da1b2d298d423ea94.md) | 67 | `result-track:26fa553da1b2d298d423ea944f0b9492958ddfcaefbde0a502ed9d26499dbe1a` |
| 7 | `theorem` | [constant_step_gap](../../../../mathematics/Analysis/ErrorBounds/FiniteLogEnclosure.lean/declarations/constant-step-gap--e4dd28d6e9a0c228aea5d4f3.md) | 74 | `result-track:e4dd28d6e9a0c228aea5d4f3a41988b7b417e78c2c94ef767936e279e17e3bb4` |
| 8 | `theorem` | [empty_chain_is_not_log_two](../../../../mathematics/Analysis/ErrorBounds/FiniteLogEnclosure.lean/declarations/empty-chain-is-not-log-two--bc8f271970a4b123c0e4e3e2.md) | 87 | `result-track:bc8f271970a4b123c0e4e3e2e0636aac374571c053c4d004fb34ad4d6c30fb70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
