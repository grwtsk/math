# Verification target: GRWTSK.Analysis.CriticalTwoModeBasic.Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01069b2670dba6f99dacf1a33beb2e05c2fdfd27",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean/index.md) · [Full source](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01069b2670dba6f99dacf1a33beb2e05c2fdfd27`.

Source path: `GRWTSK/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean.json)

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
| 1 | `def` | [twoMode](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean/declarations/twomode--d4faa47c4d666d241f3fe149.md) | 23 | `declaration-track:d4faa47c4d666d241f3fe14967aaecae7e1a46f439bf81fb174c406c2f66140f` |
| 2 | `theorem` | [literal_two_mode_abs_le_two](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean/declarations/literal-two-mode-abs-le-two--c64024e72459144db0a255b7.md) | 25 | `result-track:c64024e72459144db0a255b70c2668ceee1a51ae96e8b7eb63b539be224674e1` |
| 3 | `theorem` | [literal_two_mode_continuous](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean/declarations/literal-two-mode-continuous--ac2925275255f76541bbe244.md) | 29 | `result-track:ac2925275255f76541bbe2443ca0f0a137b4233c1eae17cee87f720c53ff9103` |
| 4 | `theorem` | [literal_two_mode_smooth](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean/declarations/literal-two-mode-smooth--c54d22e540051096dc8d52c1.md) | 33 | `result-track:c54d22e540051096dc8d52c1278072f0aec6066f3f758e5831291170ffe141b9` |
| 5 | `theorem` | [literal_two_mode_lt_two](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean/declarations/literal-two-mode-lt-two--65a60c4f6abfa7734cf9ac31.md) | 37 | `result-track:65a60c4f6abfa7734cf9ac3102bc6d970f0bc5b807788544d092a47b5b82d669` |
| 6 | `theorem` | [literal_two_mode_integer_period_value](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean/declarations/literal-two-mode-integer-period-value--4750134a5f708c66ebaf48ce.md) | 61 | `result-track:4750134a5f708c66ebaf48ce8cd77cdfd91e0fbe49a0b5ddad5b2116d4b292ac` |
| 7 | `theorem` | [literal_compact_prefix_has_positive_deficit](../../../../mathematics/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean/declarations/literal-compact-prefix-has-positive-deficit--260167aed2ec469479d2ab3f.md) | 67 | `result-track:260167aed2ec469479d2ab3f50f127b3a1d3a84fb6ba46b813b6ad871c751df0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
