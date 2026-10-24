# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ShiftedMatrixGuardAttempt03.Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f8384e25ec8c413e2f76ad0e367f6a4e8c3709c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f8384e25ec8c413e2f76ad0e367f6a4e8c3709c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shifted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/shifted--cbb7ff4bff9d6cf4cd8ce229.md) | 18 | `declaration-track:cbb7ff4bff9d6cf4cd8ce229b70c8554bd8a16d95ad651400189ca498e4ee09a` |
| 2 | `def` | [bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/bottom--aa6d9365b8e54d1e3a685ceb.md) | 21 | `declaration-track:aa6d9365b8e54d1e3a685ceb7145b022fd9579e9b2e0e749ad49cf65e82ef73e` |
| 3 | `theorem` | [bottom_le_eigenvalue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/bottom-le-eigenvalue--d613fc271828e811871a6dc9.md) | 24 | `result-track:d613fc271828e811871a6dc9bd7c74fd6daeb4374802429e38d10c5be82b49e0` |
| 4 | `theorem` | [le_bottom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/le-bottom-iff--d56dd98bbacaed898e006f08.md) | 28 | `result-track:d56dd98bbacaed898e006f08c37b5ba0393f24cb9a2e6edeb14b714c9520171c` |
| 5 | `theorem` | [source_positive_iff_bottom_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/source-positive-iff-bottom-nonneg--aa93f959947c74095474a5de.md) | 32 | `result-track:aa93f959947c74095474a5de5daea9e877bc5604955b4ddec5b1896d7b61112c` |
| 6 | `theorem` | [shifted_eq_spectral_conjugate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/shifted-eq-spectral-conjugate--29700ce4b2173c2b5a4d6213.md) | 37 | `result-track:29700ce4b2173c2b5a4d62130ee1c95647bd3f4486f01572635d4450b74eeade` |
| 7 | `theorem` | [shifted_positive_of_le_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/shifted-positive-of-le-bottom--87c74c342333047e412cb23e.md) | 50 | `result-track:87c74c342333047e412cb23eeb1565977cb03c0afa2907fa9b8a90c2f361a0de` |
| 8 | `theorem` | [shifted_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/shifted-positive-of-lt-bottom--b32e8301a8df8675473a56ca.md) | 59 | `result-track:b32e8301a8df8675473a56ca0da93760382eafe67adb0ed8c788ede559867f86` |
| 9 | `theorem` | [shifted_strict_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/shifted-strict-positive-of-lt-bottom--77c8e99668cc3ccfb55d5c09.md) | 64 | `result-track:77c8e99668cc3ccfb55d5c09d452a8739b3877fa27272482e425dfc8b7ad2fad` |
| 10 | `theorem` | [shifted_quadratic_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/shifted-quadratic-exact--a26b13f8e0a5405bc5bd20d5.md) | 73 | `result-track:a26b13f8e0a5405bc5bd20d56286367d8079f8eaf635a126722e40520e459bff` |
| 11 | `theorem` | [source_positive_of_shift_positive_and_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/source-positive-of-shift-positive-and-nonnegative-shift--b6468bb4ecc4a4d73e5687e3.md) | 77 | `result-track:b6468bb4ecc4a4d73e5687e3229ef1858e0875c89f788f5f979065e1e29e51c8` |
| 12 | `theorem` | [negative_one_shifted_by_negative_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/negative-one-shifted-by-negative-two--ec573720aa107cadf83e7988.md) | 86 | `result-track:ec573720aa107cadf83e79885c010e9da6b4cdd5e7e835502dc601ccc1b9e2e2` |
| 13 | `theorem` | [negative_one_has_positive_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/negative-one-has-positive-shift--d4528b6b2544ad7e523983d4.md) | 93 | `result-track:d4528b6b2544ad7e523983d4d183de9a2d0c1438a6c7babe29cf562bf916bd86` |
| 14 | `theorem` | [negative_one_source_not_positive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/negative-one-source-not-positive--656f30c12374daf5c9082d2c.md) | 99 | `result-track:656f30c12374daf5c9082d2ce0dc4e3dd4ebb4477378957caefcc86b25337e32` |
| 15 | `theorem` | [no_unconditional_shift_descent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/no-unconditional-shift-descent--a6578aa6cc45e7181518fe80.md) | 105 | `result-track:a6578aa6cc45e7181518fe803d47db831ac5576cb56b3f1bf085c3666257fb2b` |
| 16 | `theorem` | [conditional_form_shift_coercive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/conditional-form-shift-coercive--3d22717d0cea573c43a1437c.md) | 112 | `result-track:3d22717d0cea573c43a1437ca86edbcf9fbcae0d978116c5c35a5e455d0a3aff` |
| 17 | `theorem` | [conditional_form_source_positive_of_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt03/Variantbc60bbca25bd0b1593b16b809f8369285e621e1d2ed8f2e8284d68ae8b71cde9.lean/declarations/conditional-form-source-positive-of-nonnegative-shift--a5604cc935cd8bd16df962a9.md) | 120 | `result-track:a5604cc935cd8bd16df962a9f9a3c5716b21aa1679ba4cd27e30200c9f3b4609` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
