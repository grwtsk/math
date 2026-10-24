# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ShiftedMatrixGuard.Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6cce32a128eef928911e54d44a52e8cb95d10b8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6cce32a128eef928911e54d44a52e8cb95d10b8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean.json)

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
| 1 | `def` | [shifted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/shifted--758f749e70ea3e9ce95ac961.md) | 26 | `declaration-track:758f749e70ea3e9ce95ac961fe6a25f3bd5f6b6060a92df52229978d5d1d6acb` |
| 2 | `def` | [bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/bottom--e065915bf80cfff0aa0d4488.md) | 29 | `declaration-track:e065915bf80cfff0aa0d4488c4715fb060f9b9cec60c9ca9ba694329dc9f6e30` |
| 3 | `theorem` | [bottom_le_eigenvalue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/bottom-le-eigenvalue--9453a814d3354b6ec53fd8e1.md) | 32 | `result-track:9453a814d3354b6ec53fd8e1d47f01b3bebc5609ae4c45d59f1cdf07d425d853` |
| 4 | `theorem` | [le_bottom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/le-bottom-iff--1117aabc54cb3ca35b10399e.md) | 36 | `result-track:1117aabc54cb3ca35b10399e4216462217d599a00c53fab6eba8f8b26c430697` |
| 5 | `theorem` | [bottom_attained](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/bottom-attained--c74392fbe01ce37c001f8b6e.md) | 40 | `result-track:c74392fbe01ce37c001f8b6eeaf13cc97d7f3bb6dd11ee80e60149f2ff33a838` |
| 6 | `theorem` | [bottom_isLeast_real_spectrum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/bottom-isleast-real-spectrum--4fcb1592348a4eefc746147c.md) | 46 | `result-track:4fcb1592348a4eefc746147c59acf65254da75a4ce054ef3ad018d2bdcf35b15` |
| 7 | `theorem` | [source_positive_iff_bottom_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/source-positive-iff-bottom-nonneg--98e68c5aefaba2e9b9f084ce.md) | 55 | `result-track:98e68c5aefaba2e9b9f084cecf3ef69e4d6a7cef7d4cefd78347a61ff618ee82` |
| 8 | `theorem` | [shifted_eq_spectral_conjugate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/shifted-eq-spectral-conjugate--293f81dbb25dc67752916d6b.md) | 60 | `result-track:293f81dbb25dc67752916d6bd179488185ce16d1bb9848abeaf462e7122dc9d0` |
| 9 | `theorem` | [shifted_positive_of_le_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/shifted-positive-of-le-bottom--8be9d01d5f7458220e2cfb6d.md) | 73 | `result-track:8be9d01d5f7458220e2cfb6dda904d89ec780c495e36bf02f9b3fc1161996320` |
| 10 | `theorem` | [shifted_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/shifted-positive-of-lt-bottom--64a4f10d2d4ec319a42102f1.md) | 82 | `result-track:64a4f10d2d4ec319a42102f1beb4a62713095f3e687b92da32c428d9fb270615` |
| 11 | `theorem` | [shifted_strict_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/shifted-strict-positive-of-lt-bottom--ea9c0890e87ace9d00852c7b.md) | 87 | `result-track:ea9c0890e87ace9d00852c7b1111c46b1181926c465d4150400bd31b108fd3cc` |
| 12 | `theorem` | [shifted_quadratic_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/shifted-quadratic-exact--6139ca0163c9a8c738b0a741.md) | 96 | `result-track:6139ca0163c9a8c738b0a7414023e0f4ca255406d9afd370c67ed9226c91fcdd` |
| 13 | `theorem` | [source_positive_of_shift_positive_and_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/source-positive-of-shift-positive-and-nonnegative-shift--9e50942936b94b7e411b3d5d.md) | 101 | `result-track:9e50942936b94b7e411b3d5d5ce525fe4b4516caa9f19d6c9ef5b88ded16540a` |
| 14 | `theorem` | [negative_one_shifted_by_negative_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/negative-one-shifted-by-negative-two--9ba2f3133d8a22a791009963.md) | 110 | `result-track:9ba2f3133d8a22a7910099639eccee129e916f7bf6cca8d238c811555c8e0b10` |
| 15 | `theorem` | [negative_one_has_positive_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/negative-one-has-positive-shift--f9d12c00a26f09750e5aec4f.md) | 117 | `result-track:f9d12c00a26f09750e5aec4f39fc08d16f586b46169d6c1c98794145a2593cf6` |
| 16 | `theorem` | [negative_one_source_not_positive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/negative-one-source-not-positive--079da3fea56122f1b8b5f688.md) | 123 | `result-track:079da3fea56122f1b8b5f688cefda33c97dffb38af819e9213636a5455db9f61` |
| 17 | `theorem` | [no_unconditional_shift_descent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/no-unconditional-shift-descent--a7a6e2f871ce6333b3ccdeff.md) | 129 | `result-track:a7a6e2f871ce6333b3ccdeffbb13e4a6315d8c22c67f0b5836e9c29f45004e17` |
| 18 | `theorem` | [conditional_form_shift_coercive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/conditional-form-shift-coercive--9fe5a56d294fd18aff5d96dc.md) | 136 | `result-track:9fe5a56d294fd18aff5d96dca2b6d2655a3d6e523e7f4d89a3706683e5467e24` |
| 19 | `theorem` | [conditional_form_source_positive_of_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variantf733e6dddb17d8ecf18ac0d6c3b4bcb1740160a15df690ae26dc04b4765babe4.lean/declarations/conditional-form-source-positive-of-nonnegative-shift--10372a6eab14c1af5926ef09.md) | 144 | `result-track:10372a6eab14c1af5926ef090e7f04e2bc7a18a770b9f780c6a7e9a503b1038c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
