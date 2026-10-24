# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.ClassNumber.Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f97a5744f9c449d617bbdd6a0cf09d83c275af9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f97a5744f9c449d617bbdd6a0cf09d83c275af9`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instFintypeClassGroup](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/declarations/instfintypeclassgroup--acad7cbc7721da3e3e097c64.md) | 66 | `declaration-track:acad7cbc7721da3e3e097c6468722e96ac67397f2728ef65ed80f808ddc65d2b` |
| 2 | `def` | [classNumber](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/declarations/classnumber--e9e2bd397ba907b28b76a143.md) | 72 | `declaration-track:e9e2bd397ba907b28b76a1438655fabb8b10621cc5e6e85808b7538edec70bd1` |
| 3 | `theorem` | [classNumber_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/declarations/classnumber-ne-zero--06bfc2fca62a8441b6825dde.md) | 75 | `result-track:06bfc2fca62a8441b6825dde54a5a1326b33284ee7df8959170d9937e8893f3f` |
| 4 | `theorem` | [classNumber_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/declarations/classnumber-pos--a5071909cfb2f5030f40cdc3.md) | 77 | `result-track:a5071909cfb2f5030f40cdc32619ab5a1ad01a7365d3a083267e370d32d3a794` |
| 5 | `theorem` | [classNumber_eq_one_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/declarations/classnumber-eq-one-iff--d862ec74684a88116ce14f69.md) | 82 | `result-track:d862ec74684a88116ce14f69c4beac4829edaf6e22576cd37e5c5c6c9d513d69` |
| 6 | `theorem` | [exists_ideal_in_class_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/declarations/exists-ideal-in-class-of-norm-le--7a7a14ad00036f62da2204f6.md) | 85 | `result-track:7a7a14ad00036f62da2204f69abc236f4d63864379e1ab34f0b8b8d8e1e6e2de` |
| 7 | `theorem` | [isPrincipalIdealRing_of_isPrincipal_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/declarations/isprincipalidealring-of-isprincipal-of-norm-le--bc99ecf3727dca4e14e9b4a7.md) | 116 | `result-track:bc99ecf3727dca4e14e9b4a70e4347ce84fd46ceee4fb5f9ac354c2054cb19c3` |
| 8 | `theorem` | [isPrincipalIdealRing_of_isPrincipal_of_norm_le_of_isPrime](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/declarations/isprincipalidealring-of-isprincipal-of-norm-le-of-isprime--01055b02ed6f850f6786161a.md) | 124 | `result-track:01055b02ed6f850f6786161a324eeaa93d1566fcfd1f1bacc7cddc16359f3130` |
| 9 | `theorem` | [isPrincipalIdealRing_of_isPrincipal_of_pow_le_of_mem_primesOver_of_mem_Icc](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/declarations/isprincipalidealring-of-isprincipal-of-pow-le-of-mem-primesover-of-mem-i--1701daa039a5af618b7bc917.md) | 152 | `result-track:1701daa039a5af618b7bc917486fb0ff7a9a27de029274d5b2f500cbbf5d0433` |
| 10 | `theorem` | [isPrincipalIdealRing_of_isPrincipal_of_lt_or_isPrincipal_of_mem_primesOver_of_mem_Icc](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/declarations/isprincipalidealring-of-isprincipal-of-lt-or-isprincipal-of-mem-primesov--45765b8f7deaeea36d46da21.md) | 191 | `result-track:45765b8f7deaeea36d46da21d4d10c4caa185f8db54d19969c8c6ea6ce82871b` |
| 11 | `theorem` | [isPrincipalIdealRing_of_abs_discr_lt](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/declarations/isprincipalidealring-of-abs-discr-lt--2fd8d586c8483e9701ff89d1.md) | 208 | `result-track:2fd8d586c8483e9701ff89d1f6d3b98e28a0dbafb6adcfca6bd118e536ecd6cb` |
| 12 | `theorem` | [classNumber_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/declarations/classnumber-eq--1352c8696dcde801a6d9ea84.md) | 226 | `result-track:1352c8696dcde801a6d9ea840831b535bdaf6e968dc637d331e10d3da34add4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
