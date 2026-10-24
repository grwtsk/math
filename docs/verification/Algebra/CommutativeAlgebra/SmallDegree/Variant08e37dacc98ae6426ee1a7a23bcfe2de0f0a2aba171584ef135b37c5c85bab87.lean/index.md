# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SmallDegree.Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "485d4681b1bd57d32bd44255f3cce3c960220f8a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `485d4681b1bd57d32bd44255f3cce3c960220f8a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.WithBot` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_X_add_C_of_degree_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/eq-x-add-c-of-degree-le-one--184d0781aa9a9358b2f0821b.md) | 35 | `result-track:184d0781aa9a9358b2f0821bedb18763bab5d2fef4f1a4f12524b9ef2ed1fe73` |
| 2 | `theorem` | [eq_X_add_C_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/eq-x-add-c-of-degree-eq-one--896db242a1873500b4391336.md) | 45 | `result-track:896db242a1873500b439133629cba7d9d13f30df8408b13ac663b15cbecc4352` |
| 3 | `theorem` | [eq_X_add_C_of_natDegree_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/eq-x-add-c-of-natdegree-le-one--5d1f4881bffdb5489e1ea415.md) | 50 | `result-track:5d1f4881bffdb5489e1ea415a74e8d0236366084747db5fbd7136424850f9f78` |
| 4 | `theorem` | [Monic.eq_X_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/monic-eq-x-add-c--1a630acb91837647adb7441b.md) | 54 | `result-track:1a630acb91837647adb7441bbb6b7497b2725df4ad3aa32a761ed52fa5220b4e` |
| 5 | `theorem` | [exists_eq_X_add_C_of_natDegree_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/exists-eq-x-add-c-of-natdegree-le-one--bda8dc7e26931486bb0040f5.md) | 57 | `result-track:bda8dc7e26931486bb0040f5361e01f296ae245ab6fdd2865bc0a18d93a23da1` |
| 6 | `theorem` | [zero_le_degree_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/zero-le-degree-iff--a7d05a32aeebae6b262b8bc2.md) | 66 | `result-track:a7d05a32aeebae6b262b8bc23ddf162974d8856b4f405221bc08379b579790eb` |
| 7 | `theorem` | [ne_zero_of_coe_le_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/ne-zero-of-coe-le-degree--8dfb85f59b1cf1b2e9f75c2a.md) | 69 | `result-track:8dfb85f59b1cf1b2e9f75c2a37c710a8efabb7da76a2b3e976cb0a497b3ea4f7` |
| 8 | `theorem` | [le_natDegree_of_coe_le_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/le-natdegree-of-coe-le-degree--939973d071465c80c4fd429d.md) | 72 | `result-track:939973d071465c80c4fd429dc49de33b57f75767d13448f2016a027c06212a0e` |
| 9 | `theorem` | [degree_linear_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/degree-linear-le--b6fe52d9de2e9db38c727681.md) | 76 | `result-track:b6fe52d9de2e9db38c7276811ca833561e4725b90739c9a7f256afd10e452a3d` |
| 10 | `theorem` | [degree_linear_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/degree-linear-lt--9861ea4925bd9520c7e9b674.md) | 79 | `result-track:9861ea4925bd9520c7e9b674edac19c4cc2c2d99dad952fc574f643e6cdba350` |
| 11 | `theorem` | [degree_linear](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/degree-linear--4ee5db1fbbc6ce1df88f6c08.md) | 83 | `result-track:4ee5db1fbbc6ce1df88f6c0819a2c5c109481cfabf08093564875fa70028d948` |
| 12 | `theorem` | [natDegree_linear_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/natdegree-linear-le--a1ad2ee42e0321a475684c63.md) | 86 | `result-track:a1ad2ee42e0321a475684c632b885d384dff7be1330a33787e17e88fe4b54252` |
| 13 | `theorem` | [natDegree_linear](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/natdegree-linear--11d748e29d2959dc9d19c6ed.md) | 89 | `result-track:11d748e29d2959dc9d19c6ed68afc1ced87d77bbae7b2626edc477adebe4475f` |
| 14 | `theorem` | [leadingCoeff_linear](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/leadingcoeff-linear--58acb20337aa426e26cc8f3f.md) | 93 | `result-track:58acb20337aa426e26cc8f3f2cdd2cd293d48ec4d1da24c801233e3cff80e3e7` |
| 15 | `theorem` | [degree_quadratic_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/degree-quadratic-le--c6f0c11b562d09ee663e7c37.md) | 97 | `result-track:c6f0c11b562d09ee663e7c3733ff3de0e62a1c6c9a8fb0435b21cfdac3abd08c` |
| 16 | `theorem` | [degree_quadratic_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/degree-quadratic-lt--40fe1b87cb39cbce75e9744d.md) | 102 | `result-track:40fe1b87cb39cbce75e9744d866c7a8f50d48669f2bfa57028fca518f52dbdc3` |
| 17 | `theorem` | [degree_linear_lt_degree_C_mul_X_sq](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/degree-linear-lt-degree-c-mul-x-sq--5fc98b7cade1830c8878f08e.md) | 105 | `result-track:5fc98b7cade1830c8878f08eb94a1cf2008c6d31fcc4d496113bb662a4380847` |
| 18 | `theorem` | [degree_quadratic](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/degree-quadratic--fa2e6a8b880d9132c33d593a.md) | 110 | `result-track:fa2e6a8b880d9132c33d593addb0248fab546a8b1b11fe0f798091019fe1572c` |
| 19 | `theorem` | [natDegree_quadratic_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/natdegree-quadratic-le--4c31889217e7c1670d79ed1f.md) | 115 | `result-track:4c31889217e7c1670d79ed1f204fe156ba558e6c28bbd54a9f9f52fa4529df11` |
| 20 | `theorem` | [natDegree_quadratic](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/natdegree-quadratic--d154bb207753b1caf500ea39.md) | 118 | `result-track:d154bb207753b1caf500ea39426bd8fd9a9b73fe0413cc0f7d7d0b1bee9971cb` |
| 21 | `theorem` | [leadingCoeff_quadratic](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/leadingcoeff-quadratic--54449f21f1beab06e752e1e4.md) | 122 | `result-track:54449f21f1beab06e752e1e4b95998ca97e1cdaea09e254af88dbb175482ed64` |
| 22 | `theorem` | [degree_cubic_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/degree-cubic-le--d6da3b51e1b29ecd8a58c0bf.md) | 126 | `result-track:d6da3b51e1b29ecd8a58c0bf2bf586fcdb153d4d4593ccb227af855272de62ea` |
| 23 | `theorem` | [degree_cubic_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/degree-cubic-lt--05fad14c6c7e4f9acc457fe1.md) | 131 | `result-track:05fad14c6c7e4f9acc457fe1fa0d961c0f8626f4fca21d0385333de29dc8c24f` |
| 24 | `theorem` | [degree_quadratic_lt_degree_C_mul_X_cb](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/degree-quadratic-lt-degree-c-mul-x-cb--e644a21f8bcd340b9c7d31a8.md) | 134 | `result-track:e644a21f8bcd340b9c7d31a894d09c7d854536ecb32066efe77e162e6b0875f9` |
| 25 | `theorem` | [degree_cubic](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/degree-cubic--626023af472b8352bef2ff1e.md) | 139 | `result-track:626023af472b8352bef2ff1e79cfbe803ad646c6e6ad5fee5415113870418b6c` |
| 26 | `theorem` | [natDegree_cubic_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/natdegree-cubic-le--e394e91188326deb2f8bc440.md) | 145 | `result-track:e394e91188326deb2f8bc44035e73073d0537e69b8d9883ea6167a6b16ccab19` |
| 27 | `theorem` | [natDegree_cubic](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/natdegree-cubic--b218efe04be4823de0eda3fc.md) | 148 | `result-track:b218efe04be4823de0eda3fc710fbe9cd3ee4410d246bade41ac9f3e760d083e` |
| 28 | `theorem` | [leadingCoeff_cubic](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87.lean/declarations/leadingcoeff-cubic--f2ce37780346ebc9532dd473.md) | 152 | `result-track:f2ce37780346ebc9532dd47350d7bc1aa4803f130e79223d6d09ea1eaf155b98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
