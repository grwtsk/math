# Verification target: GRWTSK.Algebra.CommutativeAlgebra.OfFn.Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7030f2c9038b1db21ee29d97438a6a537b50dd23",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7030f2c9038b1db21ee29d97438a6a537b50dd23`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.ToFinsupp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFn](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/tofn--8747f688876ee16a6547ca30.md) | 30 | `declaration-track:8747f688876ee16a6547ca30b0f66aa5f7d2ddc500be62476219ab402c5f8ab5` |
| 2 | `theorem` | [toFn_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/tofn-zero--210b9e8bea972b44601f02ad.md) | 32 | `result-track:210b9e8bea972b44601f02ad6f662a44ab76e931a831289a50d902537149f7f2` |
| 3 | `def` | [ofFn](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/offn--5c35427aefd298b24aaa8eb8.md) | 40 | `declaration-track:5c35427aefd298b24aaa8eb8be3c87c32ee4899773bf75c83c7138656e634198` |
| 4 | `theorem` | [ofFn_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/offn-zero--124afb26624c620e13fefcd8.md) | 53 | `result-track:124afb26624c620e13fefcd8ef844892e1a807d575e1a5f7ec38c418dcb8f9b9` |
| 5 | `theorem` | [ofFn_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/offn-zero--9638d32bdb4cb6950899c445.md) | 56 | `result-track:9638d32bdb4cb6950899c44565df8b23143d3cc72597d68215b46f29036f9344` |
| 6 | `lemma` | [ne_zero_of_ofFn_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/ne-zero-of-offn-ne-zero--2499685fbaf4a8bede337304.md) | 58 | `result-track:2499685fbaf4a8bede337304d98776771f7fa38c924f99d3871804ebcf6e05c1` |
| 7 | `theorem` | [ofFn_coeff_eq_val_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/offn-coeff-eq-val-of-lt--751dad81f5429400f3797c11.md) | 65 | `result-track:751dad81f5429400f3797c110896788a40f31c909f7705d23fd19ec45b67f3aa` |
| 8 | `theorem` | [ofFn_coeff_eq_zero_of_ge](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/offn-coeff-eq-zero-of-ge--aae54fb0197e3ea536a0cbd5.md) | 71 | `result-track:aae54fb0197e3ea536a0cbd5bd0a1c8068993772813d0ac77410f9a30013a8a7` |
| 9 | `theorem` | [ofFn_natDegree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/offn-natdegree-lt--6ae42b9292aa686e09496b72.md) | 75 | `result-track:6ae42b9292aa686e09496b72657515bbf85cbb6123022ce52cddc8ffa7479eac` |
| 10 | `theorem` | [ofFn_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/offn-degree-lt--e2bcda44d2e5480b774dbeb8.md) | 80 | `result-track:e2bcda44d2e5480b774dbeb8edac546c79d0436b37f67aabf0c6467065d241eb` |
| 11 | `theorem` | [ofFn_eq_sum_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/offn-eq-sum-monomial--db1b5997e4a791ffb4e80349.md) | 87 | `result-track:db1b5997e4a791ffb4e80349fe28fc0538805cdeff7d0ed707f8ab0b296bf382` |
| 12 | `theorem` | [toFn_comp_ofFn_eq_id](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/tofn-comp-offn-eq-id--a6d3eb759ebb9806136477f1.md) | 95 | `result-track:a6d3eb759ebb9806136477f1ec08d87fbe8b8e708f8538b4568ec4f713f1d984` |
| 13 | `theorem` | [injective_ofFn](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/injective-offn--f2a71c4a81dc8ee6965cda50.md) | 98 | `result-track:f2a71c4a81dc8ee6965cda500cec4f02e33eb7f7b8ee6bcaaa8ea739f639c258` |
| 14 | `theorem` | [surjective_toFn](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/surjective-tofn--741548eeba4ff5735fb3c328.md) | 102 | `result-track:741548eeba4ff5735fb3c32850d56f2cd55ed3bf3cc65e15d288cc8e645a43bb` |
| 15 | `theorem` | [ofFn_comp_toFn_eq_id_of_natDegree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant96e8704c1dd61321b7c832face4c7d47a43fb7c426d9a0be88e67c143fbb2994.lean/declarations/offn-comp-tofn-eq-id-of-natdegree-lt--4721faf0c6aed6f26449d32b.md) | 106 | `result-track:4721faf0c6aed6f26449d32b68a2784eeaf96b9caa9f227a88f214db3e8df19f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
