# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ShiftedMatrixGuardAttempt01.Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "381b89e06a2783002e707278206e30629ff8c013",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `381b89e06a2783002e707278206e30629ff8c013`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shifted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/shifted--8385879dc24c50f0c345856c.md) | 15 | `declaration-track:8385879dc24c50f0c345856c97476fae26dd99ca29f97754fd019db72d59aa08` |
| 2 | `def` | [bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/bottom--f706ac52ce73eb0f7d2ffa77.md) | 18 | `declaration-track:f706ac52ce73eb0f7d2ffa77c863c68bdd0f58c1eaa2d26b94dcbd1671e441dc` |
| 3 | `theorem` | [bottom_le_eigenvalue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/bottom-le-eigenvalue--d9fe633538a0d28fc00ff775.md) | 21 | `result-track:d9fe633538a0d28fc00ff77587f487ab041d950b3110372834e1ee0c0f9af6e2` |
| 4 | `theorem` | [le_bottom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/le-bottom-iff--dc11550bce88996d8b3518e0.md) | 25 | `result-track:dc11550bce88996d8b3518e06031b2f247cfd314f2a3979b1a90fd9bad3690be` |
| 5 | `theorem` | [source_positive_iff_bottom_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/source-positive-iff-bottom-nonneg--b08c89a8f56b05056492ac5a.md) | 29 | `result-track:b08c89a8f56b05056492ac5a217365f70f8246225ec05039fd31e9b5305392a2` |
| 6 | `theorem` | [shifted_eq_spectral_conjugate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/shifted-eq-spectral-conjugate--9077f37505d9d4160533b9cd.md) | 34 | `result-track:9077f37505d9d4160533b9cd7ab0157921e424a98c6da4cb869a6ba926509c0f` |
| 7 | `theorem` | [shifted_positive_of_le_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/shifted-positive-of-le-bottom--1b5d70c5ee9db18520a9c1ee.md) | 46 | `result-track:1b5d70c5ee9db18520a9c1ee6d421619a5cbc306d6d358d76ee4403b39740a56` |
| 8 | `theorem` | [shifted_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/shifted-positive-of-lt-bottom--b319128327733b0cc762aa09.md) | 54 | `result-track:b319128327733b0cc762aa098f4e90bdf78093b832ad932975a8d02239e539c2` |
| 9 | `theorem` | [shifted_strict_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/shifted-strict-positive-of-lt-bottom--1e0655586bcf2a662e4277d9.md) | 59 | `result-track:1e0655586bcf2a662e4277d9421d02eca499300f0dfed55941538541177b78cb` |
| 10 | `theorem` | [shifted_quadratic_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/shifted-quadratic-exact--e8f62cb5abc9bb224e95edb8.md) | 67 | `result-track:e8f62cb5abc9bb224e95edb86dac942eeb9284852744527814a2e6374a1facca` |
| 11 | `theorem` | [source_positive_of_shift_positive_and_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/source-positive-of-shift-positive-and-nonnegative-shift--8629d1927b6844857164fb6e.md) | 71 | `result-track:8629d1927b6844857164fb6ed437dd78051ccee6c044af0d581e4609f8a1a74d` |
| 12 | `theorem` | [negative_one_shifted_by_negative_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/negative-one-shifted-by-negative-two--132a3aee421f2fe59c2963d4.md) | 78 | `result-track:132a3aee421f2fe59c2963d40e5ffacc6982d52791b895a8a90d5de8302baced` |
| 13 | `theorem` | [negative_one_has_positive_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/negative-one-has-positive-shift--6a0e2dc53f1064ef9965b1fc.md) | 85 | `result-track:6a0e2dc53f1064ef9965b1fc924dc76fdfd753ae10fad77251c5c06d4edf24b3` |
| 14 | `theorem` | [negative_one_source_not_positive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/negative-one-source-not-positive--276af647059e82b3600ecf58.md) | 90 | `result-track:276af647059e82b3600ecf587e08c80b042d9776cad4294cf26cadd00536b9c0` |
| 15 | `theorem` | [no_unconditional_shift_descent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/no-unconditional-shift-descent--8efc79aca4331513b687a825.md) | 96 | `result-track:8efc79aca4331513b687a8254b2abfa893092c4cdcd9c2132d70b92bf4ac93d4` |
| 16 | `theorem` | [conditional_form_shift_coercive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/conditional-form-shift-coercive--f45a289cb148f7d9ab5e78d0.md) | 103 | `result-track:f45a289cb148f7d9ab5e78d0bd55d5aacb4bbc19e186fc5887d236fef5a807be` |
| 17 | `theorem` | [conditional_form_source_positive_of_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/declarations/conditional-form-source-positive-of-nonnegative-shift--9e6b2ecb61ac0e8e8df2806d.md) | 111 | `result-track:9e6b2ecb61ac0e8e8df2806db14ea7264051ab33f265c033482892343720bb70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
