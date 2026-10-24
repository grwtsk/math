# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ShiftedMatrixGuardAttempt02.Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "261fe003f823aff3c01e126ce6c94a629c5532bc",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `261fe003f823aff3c01e126ce6c94a629c5532bc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean.json)

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
| 1 | `def` | [shifted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/shifted--c76fedf49ea4ab7fa4012d12.md) | 17 | `declaration-track:c76fedf49ea4ab7fa4012d12a81f39b395630478fa8da6ae491da366958ab88b` |
| 2 | `def` | [bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/bottom--e8452708fb40ccc6d25c3450.md) | 20 | `declaration-track:e8452708fb40ccc6d25c3450d8cf24341f3a924f03431c2b2c5c0b47fdf106f1` |
| 3 | `theorem` | [bottom_le_eigenvalue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/bottom-le-eigenvalue--c8ca87de19d47639bc839d5a.md) | 23 | `result-track:c8ca87de19d47639bc839d5adc2f9f5ec65c4f3e87269f938d31c78bdecc7dcc` |
| 4 | `theorem` | [le_bottom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/le-bottom-iff--0b08db2126f073ae87881a85.md) | 27 | `result-track:0b08db2126f073ae87881a8500b6cce98e6420af383b8dc7d02c900548442524` |
| 5 | `theorem` | [source_positive_iff_bottom_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/source-positive-iff-bottom-nonneg--7e82850d7ff028347d481731.md) | 31 | `result-track:7e82850d7ff028347d4817316a6e82f82990014d90894c00683c9c2dbaf1408b` |
| 6 | `theorem` | [shifted_eq_spectral_conjugate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/shifted-eq-spectral-conjugate--f368b459d732b37c75932e67.md) | 36 | `result-track:f368b459d732b37c75932e6726712bcbceec6e14bc5c9758870905218625dd4a` |
| 7 | `theorem` | [shifted_positive_of_le_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/shifted-positive-of-le-bottom--5030ec1ece8e2ddf13e42b9d.md) | 49 | `result-track:5030ec1ece8e2ddf13e42b9db6e043e098fecc082fcdd51c4c6ea4da4de1b7ba` |
| 8 | `theorem` | [shifted_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/shifted-positive-of-lt-bottom--452c3637b20f5800b0e49514.md) | 58 | `result-track:452c3637b20f5800b0e49514f450585400b6e6a426042450324597ae1144d7c9` |
| 9 | `theorem` | [shifted_strict_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/shifted-strict-positive-of-lt-bottom--50df56e65bbd76212f930f57.md) | 63 | `result-track:50df56e65bbd76212f930f57629df1c6971ed281831d1f15252dec0768a76d68` |
| 10 | `theorem` | [shifted_quadratic_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/shifted-quadratic-exact--e8567e2a68be4a668a8a796e.md) | 72 | `result-track:e8567e2a68be4a668a8a796ef2ce45cc4faad42c6e42ef9456ab223082f6231a` |
| 11 | `theorem` | [source_positive_of_shift_positive_and_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/source-positive-of-shift-positive-and-nonnegative-shift--e69466fd600b752266bfc756.md) | 76 | `result-track:e69466fd600b752266bfc756c22fb87d5ace2c37d2b615dba443a9f316070122` |
| 12 | `theorem` | [negative_one_shifted_by_negative_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/negative-one-shifted-by-negative-two--7d30889feede9f642a7dbcb0.md) | 85 | `result-track:7d30889feede9f642a7dbcb0b58d1f6ebc5fd556fb42b3609a1fb85d7cc12bb4` |
| 13 | `theorem` | [negative_one_has_positive_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/negative-one-has-positive-shift--c78425da22508ff30e639e9d.md) | 92 | `result-track:c78425da22508ff30e639e9db9d003f1eb2b647f3619af4219b96fb0d11693cb` |
| 14 | `theorem` | [negative_one_source_not_positive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/negative-one-source-not-positive--4136247bb17ab1c7ab971212.md) | 98 | `result-track:4136247bb17ab1c7ab9712128ca7570e06e3497f5ecb7cee8ccdbdb94615393f` |
| 15 | `theorem` | [no_unconditional_shift_descent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/no-unconditional-shift-descent--b744ee46fcb0c4e866dfe966.md) | 104 | `result-track:b744ee46fcb0c4e866dfe96629cabed060b101bc8600e94af8807106aa61061d` |
| 16 | `theorem` | [conditional_form_shift_coercive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/conditional-form-shift-coercive--c15f828c1fb5725fb6c6d2cc.md) | 111 | `result-track:c15f828c1fb5725fb6c6d2ccb435d2f721e874b5e7502127022d8b28072d36c2` |
| 17 | `theorem` | [conditional_form_source_positive_of_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/declarations/conditional-form-source-positive-of-nonnegative-shift--6d565a78781a5aa1e1fd2a82.md) | 119 | `result-track:6d565a78781a5aa1e1fd2a82d4140a43379d09bf2f8e4cf8f991fb95c9f0aab0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
