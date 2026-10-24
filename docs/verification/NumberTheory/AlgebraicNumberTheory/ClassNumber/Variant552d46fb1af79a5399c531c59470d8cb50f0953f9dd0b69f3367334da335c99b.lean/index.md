# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.ClassNumber.Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdd843116f899d2b1cb01d0360b78163f789f327",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdd843116f899d2b1cb01d0360b78163f789f327`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Discriminant.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.IsPrincipal` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.RamificationInertia.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instFintypeClassGroup](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/declarations/instfintypeclassgroup--15177726a45253a77bdefdb3.md) | 47 | `declaration-track:15177726a45253a77bdefdb36c4d64311cf4cfcdb92cdcb60384d9a69f00776a` |
| 2 | `def` | [classNumber](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/declarations/classnumber--6e3e08433527432a7ebf330a.md) | 53 | `declaration-track:6e3e08433527432a7ebf330ac0cf8a400546084cf7a6f57b8b24182668e3a441` |
| 3 | `theorem` | [classNumber_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/declarations/classnumber-ne-zero--709cd1f53f76e38651dc9df5.md) | 56 | `result-track:709cd1f53f76e38651dc9df5e3e01aabc240f6e65c74d16ddb2768d0e72ff96a` |
| 4 | `theorem` | [classNumber_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/declarations/classnumber-pos--1640e8cb76e31f8df6a42d53.md) | 58 | `result-track:1640e8cb76e31f8df6a42d539f73c26637b6565e8fbc1851464e6fe89ab2004e` |
| 5 | `theorem` | [classNumber_eq_one_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/declarations/classnumber-eq-one-iff--8efd68047ae84d80e50d67e6.md) | 63 | `result-track:8efd68047ae84d80e50d67e6bad2d41991e07f7f364c5eac695213d281e1bc24` |
| 6 | `theorem` | [exists_ideal_in_class_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/declarations/exists-ideal-in-class-of-norm-le--220c6c9c80fe780e427d20b6.md) | 66 | `result-track:220c6c9c80fe780e427d20b6663fa7e928596ec33a3c718daf49f89ed70423ad` |
| 7 | `theorem` | [isPrincipalIdealRing_of_isPrincipal_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/declarations/isprincipalidealring-of-isprincipal-of-norm-le--68c7eadd612586e301c56fcf.md) | 97 | `result-track:68c7eadd612586e301c56fcf0791c03b99653b6c0a0b3fa98f5db270d7f2480a` |
| 8 | `theorem` | [isPrincipalIdealRing_of_isPrincipal_of_norm_le_of_isPrime](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/declarations/isprincipalidealring-of-isprincipal-of-norm-le-of-isprime--e5d40f6d5cc8772d94c55dcb.md) | 105 | `result-track:e5d40f6d5cc8772d94c55dcbb7c638fa4051c97e0f98c961a070ee0590c2314b` |
| 9 | `theorem` | [isPrincipalIdealRing_of_isPrincipal_of_pow_inertiaDeg_le_of_mem_primesOver_of_mem_Icc](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/declarations/isprincipalidealring-of-isprincipal-of-pow-inertiadeg-le-of-mem-primesov--e327d5cd81397d2838a101fd.md) | 130 | `result-track:e327d5cd81397d2838a101fd77337a53be96fea099a742e5b49c4f4061598315` |
| 10 | `theorem` | [isPrincipalIdealRing_of_abs_discr_lt](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/declarations/isprincipalidealring-of-abs-discr-lt--afa2c52cecc0f3e62fca3a32.md) | 158 | `result-track:afa2c52cecc0f3e62fca3a324adbb985126c9da2d71938338c25b0ed99541f9e` |
| 11 | `theorem` | [classNumber_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/declarations/classnumber-eq--5adf5190f179d42a00202b43.md) | 176 | `result-track:5adf5190f179d42a00202b439f48cd5cf45cfa88a3c8a3ce8319bee12ea8e082` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
