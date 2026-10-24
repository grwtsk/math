# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IntegralNormalization.Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee4f04ec120b8a638f8e81d72189959fb30c5f4f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee4f04ec120b8a638f8e81d72189959fb30c5f4f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Monic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.ScaleRoots` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization--0fb33db7d45275fc4dbcede9.md) | 35 | `declaration-track:0fb33db7d45275fc4dbcede988c0d92f41782b31d3b286aca26d4b7e11a41783` |
| 2 | `theorem` | [integralNormalization_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-zero--adff9f758e5a34f5f95edad9.md) | 40 | `result-track:adff9f758e5a34f5f95edad96cd8f41402b122e4af9f040ecf92731e189b1788` |
| 3 | `theorem` | [integralNormalization_C](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-c--4bdb563e52609bddbde81280.md) | 44 | `result-track:4bdb563e52609bddbde812807c294be3a33353afbdd742a37c9f2f35efbc8eb2` |
| 4 | `theorem` | [integralNormalization_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-coeff--dea26b94a8cbad5a6c495bb5.md) | 49 | `result-track:dea26b94a8cbad5a6c495bb57ef027a2f58cb25481c5001bb553786169e455e0` |
| 5 | `theorem` | [support_integralNormalization_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/support-integralnormalization-subset--d05eb2ca78e73b0d58ca1850.md) | 56 | `result-track:d05eb2ca78e73b0d58ca185039d98d3755fa998eb11c20a1c2320308db97b000` |
| 6 | `theorem` | [integralNormalization_coeff_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-coeff-degree--162dbb6df3bdbf5a59942d84.md) | 64 | `result-track:162dbb6df3bdbf5a59942d847f5de58e90ba8e75d01036fd12dcf4882f6e3c04` |
| 7 | `theorem` | [integralNormalization_coeff_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-coeff-natdegree--09e0e73857aff1521b0c4099.md) | 67 | `result-track:09e0e73857aff1521b0c409972e9fd87168e3385361c1300b954a6573b0f05a7` |
| 8 | `theorem` | [integralNormalization_coeff_degree_ne](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-coeff-degree-ne--b679d7d28f04af414e13ecf8.md) | 71 | `result-track:b679d7d28f04af414e13ecf84b1b2a4fda72732bed03dae7ff826494c2ad5621` |
| 9 | `theorem` | [integralNormalization_coeff_ne_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-coeff-ne-natdegree--89d92233d1931094a7de946f.md) | 75 | `result-track:89d92233d1931094a7de946f78e755bd8c4346dfb90f955d42b6b16a1ffcc340` |
| 10 | `theorem` | [monic_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/monic-integralnormalization--794b7115155df05f6e1e7628.md) | 79 | `result-track:794b7115155df05f6e1e7628868119bac64c0b67daad75f836a5842dffee9161` |
| 11 | `theorem` | [integralNormalization_coeff_mul_leadingCoeff_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-coeff-mul-leadingcoeff-pow--d5e9d3e748e7e4de3469f8f4.md) | 85 | `result-track:d5e9d3e748e7e4de3469f8f4ab8d50045a35af2590786d222b3e446ff5f879db` |
| 12 | `theorem` | [integralNormalization_mul_C_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-mul-c-leadingcoeff--e51a08d5bb46f92cf9cdf590.md) | 99 | `result-track:e51a08d5bb46f92cf9cdf590894d8e8cd6171457e71ca794a8a75e26f47e22e2` |
| 13 | `theorem` | [integralNormalization_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-degree--698fc47ef699b64ab8b61e5f.md) | 112 | `result-track:698fc47ef699b64ab8b61e5f485e352dcef54d188283ab18fe8f09c3c83ae6c5` |
| 14 | `theorem` | [leadingCoeff_smul_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/leadingcoeff-smul-integralnormalization--742cab630e528219d30f2717.md) | 120 | `result-track:742cab630e528219d30f271785c5d8401bc62d88afec92a9dda8e107df0453c3` |
| 15 | `theorem` | [integralNormalization_eval₂_leadingCoeff_mul_of_commute](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-eval-leadingcoeff-mul-of-commute--b3c70e628a97d8e1347d41cf.md) | 124 | `result-track:b3c70e628a97d8e1347d41cf084e22aeb3bf7e2e92b36d4898ebe6f938fbbad1` |
| 16 | `theorem` | [integralNormalization_eval₂_leadingCoeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-eval-leadingcoeff-mul--b804ca18a5e0688f85dcf1c0.md) | 135 | `result-track:b804ca18a5e0688f85dcf1c0e9d9e98685b35470382582483644fc8e6b618baa` |
| 17 | `theorem` | [integralNormalization_eval₂_eq_zero_of_commute](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-eval-eq-zero-of-commute--7431abcebe76a1c289ea4db3.md) | 140 | `result-track:7431abcebe76a1c289ea4db35fd889f0e110b739827ffb9f1b6610cd870c920e` |
| 18 | `theorem` | [integralNormalization_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-eval-eq-zero--cbb47ae152d584eff0e93de2.md) | 152 | `result-track:cbb47ae152d584eff0e93de210833d70c950658ae6bd4a4f1c8fad906f956455` |
| 19 | `theorem` | [integralNormalization_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/integralnormalization-aeval-eq-zero--d0571d927861eab7fb9b86ee.md) | 157 | `result-track:d0571d927861eab7fb9b86eea22d562b62417453b7ca5d1b3f580d0f835ea719` |
| 20 | `theorem` | [support_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant3a9405cde093034190f93b135cbe2f139dd303d1ed491ed588856968d9acdb42.lean/declarations/support-integralnormalization--43bb9dfd1617ca79371b63e1.md) | 170 | `result-track:43bb9dfd1617ca79371b63e1303758ad28adf85d263378b09d1465ddea33a002` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
