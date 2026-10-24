# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ShiftedMatrixGuardAttempt04.Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "668dd7028e53ca81b0cff2b7cbec6da225d98663",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `668dd7028e53ca81b0cff2b7cbec6da225d98663`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean.json)

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
| 1 | `def` | [shifted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/shifted--7982e0cc9fee9e1e90c3f5a1.md) | 26 | `declaration-track:7982e0cc9fee9e1e90c3f5a17ddbae4da30a5d9e4bbe5f075f04b33e777aa7f5` |
| 2 | `def` | [bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/bottom--e54906e33a6ccdff8c4d63c9.md) | 29 | `declaration-track:e54906e33a6ccdff8c4d63c9ec87000b5ace4b4fd2c99e95bc4880ebdfc46986` |
| 3 | `theorem` | [bottom_le_eigenvalue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/bottom-le-eigenvalue--ecb18c2e82bf31bfc24ebcbb.md) | 32 | `result-track:ecb18c2e82bf31bfc24ebcbbe90cff1ba8869edb8ecd70877592165e2cf57c33` |
| 4 | `theorem` | [le_bottom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/le-bottom-iff--5a98eb4313de9d17532b41b5.md) | 36 | `result-track:5a98eb4313de9d17532b41b51e80a402f616b9e0f8debe9f4e2341ab1e28a29e` |
| 5 | `theorem` | [source_positive_iff_bottom_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/source-positive-iff-bottom-nonneg--9ddb38e8f8e4924be94b8c30.md) | 40 | `result-track:9ddb38e8f8e4924be94b8c30e33347c44039c1bc71723f736dce453cd67e1ae6` |
| 6 | `theorem` | [shifted_eq_spectral_conjugate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/shifted-eq-spectral-conjugate--61a02b5e553f7c667f1419e9.md) | 45 | `result-track:61a02b5e553f7c667f1419e9ecfffa36ef8c3b0a86f11590c14accf3c2040924` |
| 7 | `theorem` | [shifted_positive_of_le_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/shifted-positive-of-le-bottom--4b94e42ce5579798432cfd1a.md) | 58 | `result-track:4b94e42ce5579798432cfd1a22c9d102b591da586ec5d95fc79a11698bd30190` |
| 8 | `theorem` | [shifted_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/shifted-positive-of-lt-bottom--0c8620c14e99c2e84f5d82ee.md) | 67 | `result-track:0c8620c14e99c2e84f5d82eedb9db23cfa9c292fd3a33953798bed51a291b85e` |
| 9 | `theorem` | [shifted_strict_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/shifted-strict-positive-of-lt-bottom--d564b1e12c0fe73f7b554447.md) | 72 | `result-track:d564b1e12c0fe73f7b554447304d1a3fdc030e629815782beff29580649610aa` |
| 10 | `theorem` | [shifted_quadratic_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/shifted-quadratic-exact--ce7505b8a4166327ec005158.md) | 81 | `result-track:ce7505b8a4166327ec0051580ab96ed868a8bddd183d186d3799cac86894141c` |
| 11 | `theorem` | [source_positive_of_shift_positive_and_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/source-positive-of-shift-positive-and-nonnegative-shift--93bb5a0a4782aee5ff480217.md) | 86 | `result-track:93bb5a0a4782aee5ff480217760b9e28b4fcd9ae2d59eefa729d9214bcbaa988` |
| 12 | `theorem` | [negative_one_shifted_by_negative_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/negative-one-shifted-by-negative-two--01321984ec3e4a70f4f03fb1.md) | 95 | `result-track:01321984ec3e4a70f4f03fb1881d1403fa6ed8c037c7c1f8f6e8d90302a5e02f` |
| 13 | `theorem` | [negative_one_has_positive_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/negative-one-has-positive-shift--7368ef37116c0702c9795bdc.md) | 102 | `result-track:7368ef37116c0702c9795bdc5f7dfa6af16950ff8f1388113ce292819814825a` |
| 14 | `theorem` | [negative_one_source_not_positive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/negative-one-source-not-positive--e86aefe7cfb306b038a856ce.md) | 108 | `result-track:e86aefe7cfb306b038a856ce97e48f3d9c72b77d22b8db8f54efb2467bfbead0` |
| 15 | `theorem` | [no_unconditional_shift_descent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/no-unconditional-shift-descent--c8c2871c1c669cc90cecc7c6.md) | 114 | `result-track:c8c2871c1c669cc90cecc7c66f3fdf0094f7794be013b0b2610d0f4175433570` |
| 16 | `theorem` | [conditional_form_shift_coercive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/conditional-form-shift-coercive--5a7903e6d1d9e17fba358ed5.md) | 121 | `result-track:5a7903e6d1d9e17fba358ed5ef9e20a3b63b9dfdf3fbbfe4cac453a8f873632e` |
| 17 | `theorem` | [conditional_form_source_positive_of_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Varianta70065eafba094b75d2c19e96487c772c907d094ac86e7c7045b4cffbf47f851.lean/declarations/conditional-form-source-positive-of-nonnegative-shift--5c0c0fc77d67a6b768bf10d2.md) | 129 | `result-track:5c0c0fc77d67a6b768bf10d2c554f7187a6f4c3a50c1054ec40702d47961ded6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
