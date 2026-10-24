# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ShiftedMatrixGuardAttempt03.Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1b183593082b3ecf4f8a4cf14ea828fc5f3cfd1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1b183593082b3ecf4f8a4cf14ea828fc5f3cfd1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shifted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/shifted--d3a9f04b75d5a00517b22daf.md) | 26 | `declaration-track:d3a9f04b75d5a00517b22daf2212ecb8db6e6dc40eff3ade91bb5d76ccdac8e1` |
| 2 | `def` | [bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/bottom--f5b80cbfe5e3ce2275a01cab.md) | 29 | `declaration-track:f5b80cbfe5e3ce2275a01cabd0a330ad21f56b27e8dc70321ac9bff7ae6a40c9` |
| 3 | `theorem` | [bottom_le_eigenvalue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/bottom-le-eigenvalue--7b286ee5052d364ca93908cf.md) | 32 | `result-track:7b286ee5052d364ca93908cf776aca022ae3ed077e8fd34e06de8b03f4e0f8a6` |
| 4 | `theorem` | [le_bottom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/le-bottom-iff--d064d8d9f38b6fd43e27df8e.md) | 36 | `result-track:d064d8d9f38b6fd43e27df8eed5d417f8ef5d8972976f03586ebd9de500e727e` |
| 5 | `theorem` | [source_positive_iff_bottom_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/source-positive-iff-bottom-nonneg--c3a889ec9f46168c137b7c36.md) | 40 | `result-track:c3a889ec9f46168c137b7c369d9fcb288a7292e56ce12142129fecd9362e387a` |
| 6 | `theorem` | [shifted_eq_spectral_conjugate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/shifted-eq-spectral-conjugate--a8793519ecf9209d847f5823.md) | 45 | `result-track:a8793519ecf9209d847f58234c4d8fade874373f77867ea26ab84b170c886469` |
| 7 | `theorem` | [shifted_positive_of_le_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/shifted-positive-of-le-bottom--aafd76612d9f3ea11112b7a8.md) | 58 | `result-track:aafd76612d9f3ea11112b7a8068a2fc27f563f0ebf4e87969039256252209e36` |
| 8 | `theorem` | [shifted_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/shifted-positive-of-lt-bottom--cf3a066d2ba9250adc8ffb99.md) | 67 | `result-track:cf3a066d2ba9250adc8ffb99f00e61f5ae2dbcfc072c80477aa7e429fc000eb8` |
| 9 | `theorem` | [shifted_strict_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/shifted-strict-positive-of-lt-bottom--208b97dd7c7518fc7aaabae4.md) | 72 | `result-track:208b97dd7c7518fc7aaabae4c8663323ea4a2471c009c00878684e8be85b716e` |
| 10 | `theorem` | [shifted_quadratic_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/shifted-quadratic-exact--c9bce1d80297bbf36ff58050.md) | 81 | `result-track:c9bce1d80297bbf36ff580509180969d829f586c95864c0a495222390abb5e38` |
| 11 | `theorem` | [source_positive_of_shift_positive_and_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/source-positive-of-shift-positive-and-nonnegative-shift--47270172fb76efc91aa6d95f.md) | 85 | `result-track:47270172fb76efc91aa6d95f61f969c80ed3cc3bb227b44f94d10471f218cb81` |
| 12 | `theorem` | [negative_one_shifted_by_negative_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/negative-one-shifted-by-negative-two--f9b3792b669a23b94d8c4399.md) | 94 | `result-track:f9b3792b669a23b94d8c4399a9be499262691ee43f43797088b28de1d5047bec` |
| 13 | `theorem` | [negative_one_has_positive_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/negative-one-has-positive-shift--16da9c6bd7685ca951858a4b.md) | 101 | `result-track:16da9c6bd7685ca951858a4bcf7e041cfdac5a9f47b190f6a710c79305c00b1a` |
| 14 | `theorem` | [negative_one_source_not_positive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/negative-one-source-not-positive--03c86b3a18dac76304a201e3.md) | 107 | `result-track:03c86b3a18dac76304a201e3722f1b53eee82eb6d035027d7707ba5de6db691a` |
| 15 | `theorem` | [no_unconditional_shift_descent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/no-unconditional-shift-descent--2d46c0c299e9abf83f47b93a.md) | 113 | `result-track:2d46c0c299e9abf83f47b93aa44dc76e3bd9672cc0562f1f8dbbd8cd2995c75a` |
| 16 | `theorem` | [conditional_form_shift_coercive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/conditional-form-shift-coercive--bfc0458aff01170678a4df7e.md) | 120 | `result-track:bfc0458aff01170678a4df7e86a0c5fd35f63459aa550109c68be8ba3acd531b` |
| 17 | `theorem` | [conditional_form_source_positive_of_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Varianta3477c23846ca189445b7940f5fd55c799e3454b6d1f1ef41224bb7f60bfef54.lean/declarations/conditional-form-source-positive-of-nonnegative-shift--e881ebc98a156b7d715d183f.md) | 128 | `result-track:e881ebc98a156b7d715d183f4e9037aa37966d8908318a22af2921add5e60e29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
