# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SmallDegree.Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "478c58f0d4a65a69456cfc5be216cdc66a7dcb62",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `478c58f0d4a65a69456cfc5be216cdc66a7dcb62`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.WithBot` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_X_add_C_of_degree_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/eq-x-add-c-of-degree-le-one--88d7b9e1b6645f92dd54393d.md) | 27 | `result-track:88d7b9e1b6645f92dd54393dc4ee3b06417e24d957da53f43571fef6233d41e8` |
| 2 | `theorem` | [eq_X_add_C_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/eq-x-add-c-of-degree-eq-one--d4e1ae807be8e32ec86d87a2.md) | 37 | `result-track:d4e1ae807be8e32ec86d87a295bdf72e65b38532be07686546546f1d44506ac2` |
| 3 | `theorem` | [eq_X_add_C_of_natDegree_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/eq-x-add-c-of-natdegree-le-one--890038a8e4913e4061885c1d.md) | 42 | `result-track:890038a8e4913e4061885c1ded84c7368558de157fb139112f28599adc950815` |
| 4 | `theorem` | [Monic.eq_X_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/monic-eq-x-add-c--f1d0445459cb982dbbe31f44.md) | 46 | `result-track:f1d0445459cb982dbbe31f44401a584645a91eb7da8e3efba9e4b42f8fee0ac8` |
| 5 | `theorem` | [exists_eq_X_add_C_of_natDegree_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/exists-eq-x-add-c-of-natdegree-le-one--73793443ee97d32622c0b5a1.md) | 49 | `result-track:73793443ee97d32622c0b5a13d917f34e8732c8adc4604bcc1e2ba12b1e76ef8` |
| 6 | `theorem` | [zero_le_degree_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/zero-le-degree-iff--d3f80982690395fcbb6e304e.md) | 58 | `result-track:d3f80982690395fcbb6e304e9b18998e989fb00eebc86c526ff78ed02d7bef1b` |
| 7 | `theorem` | [ne_zero_of_coe_le_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/ne-zero-of-coe-le-degree--339734ff91dfafa96b7fe6a7.md) | 61 | `result-track:339734ff91dfafa96b7fe6a7c06fe3a50d8b033c0c86461de3725bfe36109b8b` |
| 8 | `theorem` | [le_natDegree_of_coe_le_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/le-natdegree-of-coe-le-degree--df4155351d7b4014a476a697.md) | 64 | `result-track:df4155351d7b4014a476a6974c4871af603ffe587609c819447d6a032e43e80a` |
| 9 | `theorem` | [degree_linear_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/degree-linear-le--881b34ea0d506f4a5fa42e68.md) | 68 | `result-track:881b34ea0d506f4a5fa42e682ff9d4a79da65d611c0826a9c239ae1a1004d6ba` |
| 10 | `theorem` | [degree_linear_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/degree-linear-lt--1ef7c0a9c4c6fcda6e3531d5.md) | 71 | `result-track:1ef7c0a9c4c6fcda6e3531d58f88aaf8dc08e92dec9a4560fbfbaae35714d7f8` |
| 11 | `theorem` | [degree_linear](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/degree-linear--d29970358af6951389cb695f.md) | 75 | `result-track:d29970358af6951389cb695ff24428bdad6af0b104b0cbc05ae82fb303af492c` |
| 12 | `theorem` | [natDegree_linear_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/natdegree-linear-le--f430f00c13da235dc879e5df.md) | 78 | `result-track:f430f00c13da235dc879e5df1806a1bf0795af6f8543ffefa53f26b2af595797` |
| 13 | `theorem` | [natDegree_linear](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/natdegree-linear--07bf52a8a870ec8cdb0fb507.md) | 81 | `result-track:07bf52a8a870ec8cdb0fb50731c8af1ab581776ea585f9e7a94ecc79d958ce2c` |
| 14 | `theorem` | [leadingCoeff_linear](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/leadingcoeff-linear--551bc8a4028e81b0ebc1dd4f.md) | 85 | `result-track:551bc8a4028e81b0ebc1dd4fd13f1893b09e517dd6cf65d13f7cbb21e6e72281` |
| 15 | `theorem` | [degree_quadratic_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/degree-quadratic-le--d81cb7979b759ff52bbf4be3.md) | 89 | `result-track:d81cb7979b759ff52bbf4be306ece6f7dd7a41a631a85f6b69f79418f27266ad` |
| 16 | `theorem` | [degree_quadratic_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/degree-quadratic-lt--6a590e8880c1db89506d9e57.md) | 94 | `result-track:6a590e8880c1db89506d9e575703913f16f476a360342d157e004f8e48245e84` |
| 17 | `theorem` | [degree_linear_lt_degree_C_mul_X_sq](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/degree-linear-lt-degree-c-mul-x-sq--02da0ab4fb350e6aa3b8cec7.md) | 97 | `result-track:02da0ab4fb350e6aa3b8cec7b511760c506a260c15f8cbeb53138b8aa838ba26` |
| 18 | `theorem` | [degree_quadratic](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/degree-quadratic--ab510fecaa6e9ed020a5f6fd.md) | 102 | `result-track:ab510fecaa6e9ed020a5f6fda93092002678e7fb858b64784e427b32f20e7465` |
| 19 | `theorem` | [natDegree_quadratic_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/natdegree-quadratic-le--497688f38aaa2097d6faa589.md) | 107 | `result-track:497688f38aaa2097d6faa58969ddd9895ce451300ce06499a2aeda00b66ffbfa` |
| 20 | `theorem` | [natDegree_quadratic](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/natdegree-quadratic--d9a1ce67d7e2558bbfd8b5f6.md) | 110 | `result-track:d9a1ce67d7e2558bbfd8b5f6df1f560f4e0042b7e1729d7518884dd44ff4f7f3` |
| 21 | `theorem` | [leadingCoeff_quadratic](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/leadingcoeff-quadratic--ecba24de8540b6d54a3e1fe3.md) | 114 | `result-track:ecba24de8540b6d54a3e1fe3d31ef414d9e44ffb5546932c0d206330ff76f8aa` |
| 22 | `theorem` | [degree_cubic_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/degree-cubic-le--3209c94061e80980a78fa888.md) | 118 | `result-track:3209c94061e80980a78fa8883ea86aefcd81cf6a3beeace9f494f860d7692609` |
| 23 | `theorem` | [degree_cubic_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/degree-cubic-lt--2d3e78335385d2564fcb26a0.md) | 123 | `result-track:2d3e78335385d2564fcb26a0f7cfcb9a74a0ca348d8305996faa2fcf5986e543` |
| 24 | `theorem` | [degree_quadratic_lt_degree_C_mul_X_cb](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/degree-quadratic-lt-degree-c-mul-x-cb--a641fbc269e2fb9a62c778d7.md) | 126 | `result-track:a641fbc269e2fb9a62c778d7c1f7fc6afad23e40f83c7c293b09e5398d2f6d2e` |
| 25 | `theorem` | [degree_cubic](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/degree-cubic--ad465355c54637543ad44d4e.md) | 131 | `result-track:ad465355c54637543ad44d4ee6a387cfc982e93a292a7c96893bd2d6587be18d` |
| 26 | `theorem` | [natDegree_cubic_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/natdegree-cubic-le--e7c4fadc2ef97951a161b30d.md) | 137 | `result-track:e7c4fadc2ef97951a161b30d846d14518fc9065ac05b1079968e53cdad30777f` |
| 27 | `theorem` | [natDegree_cubic](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/natdegree-cubic--8bcb55a5c41bdf4f207e717f.md) | 140 | `result-track:8bcb55a5c41bdf4f207e717fb9865d5102151257fa38ff130e58d3146db26525` |
| 28 | `theorem` | [leadingCoeff_cubic](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/declarations/leadingcoeff-cubic--a5f18cbd7b6fdc416aed6cc2.md) | 144 | `result-track:a5f18cbd7b6fdc416aed6cc2ea03277b1264c9cfd3c8acea6cc701b1dd8876a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
