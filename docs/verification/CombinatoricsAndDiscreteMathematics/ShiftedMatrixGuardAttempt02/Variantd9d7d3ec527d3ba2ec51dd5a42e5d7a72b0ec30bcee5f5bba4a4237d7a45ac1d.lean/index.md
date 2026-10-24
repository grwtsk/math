# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ShiftedMatrixGuardAttempt02.Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c37145a941506bbff7fc5caa170e9fb5548a0712",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c37145a941506bbff7fc5caa170e9fb5548a0712`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shifted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/shifted--d05e931f92eb7149ae038094.md) | 25 | `declaration-track:d05e931f92eb7149ae0380946a877952df589da5282a11f88e21916903ef7f2e` |
| 2 | `def` | [bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/bottom--39bb89c54c55e9661fde3562.md) | 28 | `declaration-track:39bb89c54c55e9661fde35621159360c0416513547b159ceba2598f2f7a590ec` |
| 3 | `theorem` | [bottom_le_eigenvalue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/bottom-le-eigenvalue--6cf0409adfc91ee29c6d30d5.md) | 31 | `result-track:6cf0409adfc91ee29c6d30d5036e34bf9d38becf059039450898633654d6fa07` |
| 4 | `theorem` | [le_bottom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/le-bottom-iff--e633e6fd8a1ac2b4f7c3a570.md) | 35 | `result-track:e633e6fd8a1ac2b4f7c3a5708fd34ee70edab4b71db3cb31343de4111f0903eb` |
| 5 | `theorem` | [source_positive_iff_bottom_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/source-positive-iff-bottom-nonneg--917a8a545ceead1ba2206df6.md) | 39 | `result-track:917a8a545ceead1ba2206df6289a79ffd744b38d44e10d76b71f53f50691f643` |
| 6 | `theorem` | [shifted_eq_spectral_conjugate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/shifted-eq-spectral-conjugate--1c749787cda66bf58f50d3e0.md) | 44 | `result-track:1c749787cda66bf58f50d3e029268f568ed10cd959ef5b1acccab438a2660798` |
| 7 | `theorem` | [shifted_positive_of_le_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/shifted-positive-of-le-bottom--1bcba2fbb2c90bbb850aacec.md) | 57 | `result-track:1bcba2fbb2c90bbb850aacec62fefcd980fde6b991c363bc71c2b06dc70863f1` |
| 8 | `theorem` | [shifted_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/shifted-positive-of-lt-bottom--36aa56cccf38b0ee121bf6df.md) | 66 | `result-track:36aa56cccf38b0ee121bf6df64bf4a545fe17185e25e937860db4888fef22918` |
| 9 | `theorem` | [shifted_strict_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/shifted-strict-positive-of-lt-bottom--0455c3a554a1fae968b7158c.md) | 71 | `result-track:0455c3a554a1fae968b7158cf7636ae792cafed35b63d338a1d712c912509e9e` |
| 10 | `theorem` | [shifted_quadratic_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/shifted-quadratic-exact--be00c043833070b6f28e767e.md) | 80 | `result-track:be00c043833070b6f28e767e5e85d198f7ea5757e9a7bfe0fb656c2b1d207cdd` |
| 11 | `theorem` | [source_positive_of_shift_positive_and_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/source-positive-of-shift-positive-and-nonnegative-shift--59f6a3e15a3c18dbb79b4c4f.md) | 84 | `result-track:59f6a3e15a3c18dbb79b4c4f632d0f544a676992e3593238fa9a554e4fcda9e5` |
| 12 | `theorem` | [negative_one_shifted_by_negative_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/negative-one-shifted-by-negative-two--e758d139f65478a89aaaeac9.md) | 93 | `result-track:e758d139f65478a89aaaeac98458385c17df18306bbd5b407a4e622935a7c061` |
| 13 | `theorem` | [negative_one_has_positive_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/negative-one-has-positive-shift--bab8c219a225b88d8f74cbe1.md) | 100 | `result-track:bab8c219a225b88d8f74cbe12d464eb19b804f6e92d4e122b3b6e701cea1f1bc` |
| 14 | `theorem` | [negative_one_source_not_positive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/negative-one-source-not-positive--8d753e8d00cf65bb17cb8ea9.md) | 106 | `result-track:8d753e8d00cf65bb17cb8ea966e9514df7badac5c123a530b691b8ba2012056c` |
| 15 | `theorem` | [no_unconditional_shift_descent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/no-unconditional-shift-descent--2c91c1d7da496f3c74274392.md) | 112 | `result-track:2c91c1d7da496f3c742743923e09780a6b9f9b7912adaec2c3b516f7a0e8a2e8` |
| 16 | `theorem` | [conditional_form_shift_coercive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/conditional-form-shift-coercive--ca4af80769ae6d37b47ce1c2.md) | 119 | `result-track:ca4af80769ae6d37b47ce1c2bd8184529045256ee9774bdad3ce03583c11f1fc` |
| 17 | `theorem` | [conditional_form_source_positive_of_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Variantd9d7d3ec527d3ba2ec51dd5a42e5d7a72b0ec30bcee5f5bba4a4237d7a45ac1d.lean/declarations/conditional-form-source-positive-of-nonnegative-shift--3ff448ca6975730792ef06a7.md) | 127 | `result-track:3ff448ca6975730792ef06a72de18ce1b92ccf11931da3f2b2b1d4ef85aacf39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
