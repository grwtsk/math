# Verification target: GRWTSK.Analysis.CriticalTwoModeBasic.Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e80692e7c6eb5a01be13737be28ddb4bc57a1f9a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/index.md) · [Full source](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e80692e7c6eb5a01be13737be28ddb4bc57a1f9a`.

Source path: `GRWTSK/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Real.Irrational` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Compact` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [twoMode](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/declarations/twomode--05ace334f7c4646f870c7033.md) | 27 | `declaration-track:05ace334f7c4646f870c70334f34e396a9a7b386a3a036d763c119a0220bb343` |
| 2 | `theorem` | [literal_two_mode_abs_le_two](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/declarations/literal-two-mode-abs-le-two--8d83854356af5f617c2f0e17.md) | 29 | `result-track:8d83854356af5f617c2f0e17e15441114d7983a5040fc3da8540e4a98a0f1426` |
| 3 | `theorem` | [literal_two_mode_continuous](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/declarations/literal-two-mode-continuous--78a072daad08e37993e964eb.md) | 33 | `result-track:78a072daad08e37993e964eb35641a049dc92349535bae61f15ddb667630c893` |
| 4 | `theorem` | [literal_two_mode_smooth](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/declarations/literal-two-mode-smooth--db9c6dcc0d13b54567b0cf0e.md) | 37 | `result-track:db9c6dcc0d13b54567b0cf0ed9b05a3862b540a1a9c029c9d72cf0be5756d291` |
| 5 | `theorem` | [literal_two_mode_lt_two](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/declarations/literal-two-mode-lt-two--ee854af85beb0cca796eeaec.md) | 41 | `result-track:ee854af85beb0cca796eeaec6e7928f98e2ff078ffafc6ae396beb9944562e16` |
| 6 | `theorem` | [literal_two_mode_integer_period_value](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/declarations/literal-two-mode-integer-period-value--66e99859e4d8f03295d33785.md) | 65 | `result-track:66e99859e4d8f03295d3378500d217923be3c73a1790a7ad7de79091bf2b24b5` |
| 7 | `theorem` | [literal_compact_prefix_has_positive_deficit](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/declarations/literal-compact-prefix-has-positive-deficit--82e0a1fc0f3f1d773cf32bc9.md) | 71 | `result-track:82e0a1fc0f3f1d773cf32bc9b137b8f016bdf100dc4b2872d92e6f438f499cd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
