# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.FixedShiftUniformityObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c422a87588038f3824ad0152c177132b7e488fd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c422a87588038f3824ad0152c177132b7e488fd`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Nat` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareShiftSpike](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean/declarations/squareshiftspike--aa90b72f3e1633bf2a08a06f.md) | 46 | `declaration-track:aa90b72f3e1633bf2a08a06fcd603b625d00e3fb22c37746d949805335cab4f5` |
| 2 | `theorem` | [squareShiftSpike_zero_after_square](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean/declarations/squareshiftspike-zero-after-square--0727d2e407a1cca83af12556.md) | 50 | `result-track:0727d2e407a1cca83af12556fd9254304bb24c2694fcf9ea0d744b58b24feb81` |
| 3 | `theorem` | [squareShiftSpike_fixed_eventually_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean/declarations/squareshiftspike-fixed-eventually-zero--ca5cdb13eb8597ad3cc04133.md) | 57 | `result-track:ca5cdb13eb8597ad3cc04133c448dba3e35c189b2387e7e0319e2ec45c26a060` |
| 4 | `theorem` | [squareShiftSpike_diagonal_peak](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean/declarations/squareshiftspike-diagonal-peak--258f2ac508b0c58fad1eaa56.md) | 65 | `result-track:258f2ac508b0c58fad1eaa56e3141837b07827c018118b5abbbe19b05147dfaa` |
| 5 | `theorem` | [squareShiftSpike_fixed_power_envelope](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean/declarations/squareshiftspike-fixed-power-envelope--3b40807c655031e8e4521ec1.md) | 72 | `result-track:3b40807c655031e8e4521ec1da5890773001790caf09625c10d9767256333141` |
| 6 | `theorem` | [squareShiftSpike_growing_window_peak](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean/declarations/squareshiftspike-growing-window-peak--0ca60e1cd878fd703988d969.md) | 87 | `result-track:0ca60e1cd878fd703988d9692416c6094db390770ec2abc1b6dbfbd5e584616f` |
| 7 | `theorem` | [squareShiftSpike_sublinear_ratio](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean/declarations/squareshiftspike-sublinear-ratio--8309549d94015109035b78f4.md) | 94 | `result-track:8309549d94015109035b78f4681d10fabc320a2f979f82c052fa6291d65f6bb8` |
| 8 | `def` | [EventuallySmallOnSquareWindow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean/declarations/eventuallysmallonsquarewindow--45cb82fe28aa1bc87faa5d9d.md) | 103 | `declaration-track:45cb82fe28aa1bc87faa5d9d9cfac319f7b478531b72726d15b6b1771af4e98f` |
| 9 | `theorem` | [squareShiftSpike_not_uniform_on_sublinear_window](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean/declarations/squareshiftspike-not-uniform-on-sublinear-window--720e6d9ff63ee2a9a3699054.md) | 110 | `result-track:720e6d9ff63ee2a9a3699054195b383a54e32bc75f6d41994cc936be8c1e4207` |
| 10 | `theorem` | [fixed_power_saving_does_not_imply_sublinear_uniformity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean/declarations/fixed-power-saving-does-not-imply-sublinear-uniformity--8b052e60f97db0a8ff386a62.md) | 127 | `result-track:8b052e60f97db0a8ff386a62296632b89d18968a22dbc5ab53f184c712d5f74b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
