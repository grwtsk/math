# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Division.Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38688ca6e2144ab3f4b45754706d594a03e089ed",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38688ca6e2144ab3f4b45754706d594a03e089ed`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean.json)

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
| 1 | `def` | [divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/divmonomial--cab42b31ce75fbca4a1eeeb3.md) | 55 | `declaration-track:cab42b31ce75fbca4a1eeeb329a5eeb9a3e20fb1e4da5aebe705aceedf7a6893` |
| 2 | `theorem` | [coeff_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/coeff-divmonomial--a682db01215f923986495dd1.md) | 61 | `result-track:a682db01215f923986495dd1eb4e3258e5218bf54ecf1d820025a7a41aadeaef` |
| 3 | `theorem` | [support_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/support-divmonomial--a57f41a41e0d3dadb361357f.md) | 66 | `result-track:a57f41a41e0d3dadb361357f636416d1eecab4fc7c7cb08cb55da80ab5ab0065` |
| 4 | `theorem` | [zero_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/zero-divmonomial--eb8d669f28f30804e247a903.md) | 71 | `result-track:eb8d669f28f30804e247a903de2f0ebd521da5b0ca3861fa1c063c46f4358d8d` |
| 5 | `theorem` | [divMonomial_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/divmonomial-zero--611dba5e91986c388aff37ba.md) | 74 | `result-track:611dba5e91986c388aff37ba62fc5dd1bebf711b22c4888e0c63a9dc96e7d724` |
| 6 | `theorem` | [add_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/add-divmonomial--8a905fea618c63307a7ed0b2.md) | 77 | `result-track:8a905fea618c63307a7ed0b2ac7b96d2226dd8da936d1858822b6c04ec17db8a` |
| 7 | `theorem` | [divMonomial_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/divmonomial-add--028be9b16106743e8e1a97fd.md) | 81 | `result-track:028be9b16106743e8e1a97fd8cf42837bad722021a9d676ff53d84a17ba98a0c` |
| 8 | `theorem` | [divMonomial_monomial_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/divmonomial-monomial-mul--74c9341392b5b169c5db1b6d.md) | 86 | `result-track:74c9341392b5b169c5db1b6df1df6b2984361c3fd15d6f4aab059c462a9914db` |
| 9 | `theorem` | [divMonomial_mul_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/divmonomial-mul-monomial--e7cfd2cd3f8d738c620f548e.md) | 91 | `result-track:e7cfd2cd3f8d738c620f548eace4e1eede258713035468b4d58803cf84872a29` |
| 10 | `theorem` | [divMonomial_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/divmonomial-monomial--e9014f71253998f26e549249.md) | 96 | `result-track:e9014f71253998f26e5492493cc742d60b32f6c3287d8a18b3ed0bcfd758a087` |
| 11 | `def` | [modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/modmonomial--0b0b31ef549c68b2e02230e3.md) | 100 | `declaration-track:0b0b31ef549c68b2e02230e33545728bdc9268b7623ca61d0ac0bb146d326fc6` |
| 12 | `theorem` | [coeff_modMonomial_of_not_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/coeff-modmonomial-of-not-le--08b410a7ea17454f51da8c49.md) | 106 | `result-track:08b410a7ea17454f51da8c492d373d808eb9c6f105fee3f3d250bbc525de6493` |
| 13 | `theorem` | [coeff_modMonomial_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/coeff-modmonomial-of-le--ef61d71aa85b0b6aa4355495.md) | 111 | `result-track:ef61d71aa85b0b6aa43554958b2a9524431378c63081a7b94315096de8d7e1b7` |
| 14 | `theorem` | [monomial_mul_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/monomial-mul-modmonomial--d17ac0a5d5fe75ce9bd688a2.md) | 116 | `result-track:d17ac0a5d5fe75ce9bd688a25440b1d9c45420227a668f4316c41b5e93e14a6b` |
| 15 | `theorem` | [mul_monomial_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/mul-monomial-modmonomial--93a3d279f52d699b190f8744.md) | 121 | `result-track:93a3d279f52d699b190f8744573072c78badb444b22e7c0a84c53940e8afe79d` |
| 16 | `theorem` | [monomial_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/monomial-modmonomial--578adad6ca2c5a8629826c1a.md) | 126 | `result-track:578adad6ca2c5a8629826c1ae0810ac8c1d200fe47760c06459cfaa8b3f8d8e0` |
| 17 | `theorem` | [divMonomial_add_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/divmonomial-add-modmonomial--9d1ab1014b8063faad9cea7b.md) | 129 | `result-track:9d1ab1014b8063faad9cea7bed71b51d554902bd4354cac79ddab0c6df647f17` |
| 18 | `theorem` | [modMonomial_add_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/modmonomial-add-divmonomial--d6dc3a51300233f38c2e588d.md) | 133 | `result-track:d6dc3a51300233f38c2e588db4ae9e27e34bd1e934a3271cd80f123fb0fa1c81` |
| 19 | `theorem` | [monomial_one_dvd_iff_modMonomial_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/monomial-one-dvd-iff-modmonomial-eq-zero--5bafc507fc1915b60e825039.md) | 137 | `result-track:5bafc507fc1915b60e825039de13445313f7dff4f3e117840c8f7d0df2f156c1` |
| 20 | `theorem` | [X_mul_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/x-mul-divmonomial--b6612ecea093409d217333af.md) | 150 | `result-track:b6612ecea093409d217333af380e033dd0f2822a6e32f4acd1610826f0506c2d` |
| 21 | `theorem` | [X_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/x-divmonomial--37131635fb8cb2ae88d647cd.md) | 155 | `result-track:37131635fb8cb2ae88d647cdec095c95a6022ce5180377e01c169efebed95207` |
| 22 | `theorem` | [mul_X_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/mul-x-divmonomial--701ba00c6694cf0a63a2bf77.md) | 159 | `result-track:701ba00c6694cf0a63a2bf77d2f02d2427709b11e70b18bd0809839c8e7159b6` |
| 23 | `theorem` | [X_mul_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/x-mul-modmonomial--21fe8732980a134d398cdb75.md) | 164 | `result-track:21fe8732980a134d398cdb750e07b21ca1c1bcf07766e48f095b53b4b22277b7` |
| 24 | `theorem` | [mul_X_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/mul-x-modmonomial--86d4e6baa68345b09880fe63.md) | 169 | `result-track:86d4e6baa68345b09880fe63eef05599670c44db459cfd69207b65200a7c22b2` |
| 25 | `theorem` | [modMonomial_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/modmonomial-x--acff3999667633b2180ae63e.md) | 174 | `result-track:acff3999667633b2180ae63e13244b2d059fb4aadf866fb621ba11f9951fc240` |
| 26 | `theorem` | [divMonomial_add_modMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/divmonomial-add-modmonomial-single--c58312752eb502b5087e29f4.md) | 177 | `result-track:c58312752eb502b5087e29f4620c3fd369374a0687b415f7873bb4e45aab54d1` |
| 27 | `theorem` | [modMonomial_add_divMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/modmonomial-add-divmonomial-single--c360ffd2fa41f2ed4fb4c84b.md) | 181 | `result-track:c360ffd2fa41f2ed4fb4c84bd9339979752bf80226bf867615a7ddd778f0813c` |
| 28 | `theorem` | [X_dvd_iff_modMonomial_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/x-dvd-iff-modmonomial-eq-zero--7de0d01f5786facb9748e671.md) | 185 | `result-track:7de0d01f5786facb9748e671ffb4f66343baa24fc91bcac1453e4893002f1da5` |
| 29 | `theorem` | [monomial_dvd_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/monomial-dvd-monomial--126f1222610c7dca94c39f1c.md) | 194 | `result-track:126f1222610c7dca94c39f1cfe3cb5822029c0d21bd70e7c558d600ed634ed52` |
| 30 | `theorem` | [monomial_one_dvd_monomial_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/monomial-one-dvd-monomial-one--a465898d808946af70dc25fd.md) | 213 | `result-track:a465898d808946af70dc25fd979f4f50d92ed4274296ba927f6dfcb96980a0a3` |
| 31 | `theorem` | [X_dvd_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/x-dvd-x--02d55b1de3584f95a19eb5a1.md) | 219 | `result-track:02d55b1de3584f95a19eb5a18369f88e5f3e33353c23426460bf74a664224140` |
| 32 | `theorem` | [X_dvd_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/x-dvd-monomial--465da710721a4e573ab9725d.md) | 226 | `result-track:465da710721a4e573ab9725d128d1c861e0e91a6ddf4d1a203d7a202c98ade18` |
| 33 | `theorem` | [eq_divMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/eq-divmonomial-single--5927daf56a95d77f16cad396.md) | 231 | `result-track:5927daf56a95d77f16cad39654702e08d4e4bf371a116fa4c22fa04adc32ff1c` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/instance--422a04f927d87e05c30acb4f.md) | 241 | `declaration-track:422a04f927d87e05c30acb4f474ca348642cd143eeb5f7c80f5c185563d4fc46` |
| 35 | `theorem` | [eq_modMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/eq-modmonomial-single--be046e0be11b00e89a42e265.md) | 249 | `result-track:be046e0be11b00e89a42e265186c7b724b638d7201eaa86ccbd66192b24abc64` |
| 36 | `theorem` | [eq_modMonomial_single_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/eq-modmonomial-single-iff--042037a096599cebffe9d87d.md) | 261 | `result-track:042037a096599cebffe9d87d10f5f99b597f6fe6c48fbaf5f826628c20cebd88` |
| 37 | `theorem` | [X_dvd_mul_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/x-dvd-mul-iff--d8668d9947d69925b7f83ad8.md) | 274 | `result-track:d8668d9947d69925b7f83ad87f6ccea55ae110969a78ed995c93446003dc2a19` |
| 38 | `theorem` | [X_prime](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/x-prime--0ed9a9c16989b09884a719e4.md) | 310 | `result-track:0ed9a9c16989b09884a719e40200dcba37b6fc8d352e9552aa08d9fbdbfcfd8f` |
| 39 | `theorem` | [dvd_X_mul_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/dvd-x-mul-iff--c51a1c20670f34b325aee42b.md) | 318 | `result-track:c51a1c20670f34b325aee42be2d3a3d821e259d577fa4ffe1fac84c2203a1e47` |
| 40 | `theorem` | [dvd_monomial_mul_iff_exists](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/declarations/dvd-monomial-mul-iff-exists--72f067957be3e8a5436b42d2.md) | 342 | `result-track:72f067957be3e8a5436b42d2741427ebe5ecdaba9d9c842a15799904221576ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
