# Verification target: GRWTSK.Analysis.ErrorBounds.AtanhLogEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd08a978a9614549cd68619711832e5d1e1bdeae",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/AtanhLogEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/AtanhLogEnclosure.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/AtanhLogEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd08a978a9614549cd68619711832e5d1e1bdeae`.

Source path: `GRWTSK/Analysis/ErrorBounds/AtanhLogEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/AtanhLogEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialSum](../../../../mathematics/Analysis/ErrorBounds/AtanhLogEnclosure.lean/declarations/partialsum--0c7ebf20d55aebf924807272.md) | 23 | `declaration-track:0c7ebf20d55aebf9248072722fb0043eae243940d8cb0ef86a6659c955928cab` |
| 2 | `def` | [tail](../../../../mathematics/Analysis/ErrorBounds/AtanhLogEnclosure.lean/declarations/tail--d1071f6cdbd35392b59e08b0.md) | 26 | `declaration-track:d1071f6cdbd35392b59e08b03260861bb260f2642d982f5e43c628952b745c7f` |
| 3 | `theorem` | [partial_nonneg](../../../../mathematics/Analysis/ErrorBounds/AtanhLogEnclosure.lean/declarations/partial-nonneg--2a6b48dc16db72b94136db8c.md) | 30 | `result-track:2a6b48dc16db72b94136db8cec576d0ca1312b70c85b7181c4d34b7e32be2f37` |
| 4 | `theorem` | [half_residual_bounds](../../../../mathematics/Analysis/ErrorBounds/AtanhLogEnclosure.lean/declarations/half-residual-bounds--d22548c2d57a9d1d5f61cd2d.md) | 35 | `result-track:d22548c2d57a9d1d5f61cd2dbe34ad640e45be82434856eaa5b3448f8b04ce99` |
| 5 | `theorem` | [log_ratio_bounds](../../../../mathematics/Analysis/ErrorBounds/AtanhLogEnclosure.lean/declarations/log-ratio-bounds--6eae7e6b09b8514f7f122ba4.md) | 80 | `result-track:6eae7e6b09b8514f7f122ba4bba2d4ef20eab708475082c8a975118a1f047621` |
| 6 | `theorem` | [reduced_bounds](../../../../mathematics/Analysis/ErrorBounds/AtanhLogEnclosure.lean/declarations/reduced-bounds--eaa419182ea1177b94605c47.md) | 92 | `result-track:eaa419182ea1177b94605c47a9f80bfce0d77c2517ddb85815f67fb853ad7e22` |
| 7 | `theorem` | [reduced_coordinate_le_third](../../../../mathematics/Analysis/ErrorBounds/AtanhLogEnclosure.lean/declarations/reduced-coordinate-le-third--2ef3b9a8bdacec66b159faf9.md) | 106 | `result-track:2ef3b9a8bdacec66b159faf9b6a4d70d4c3029518d86f8752bb3cfbdcf455c5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
