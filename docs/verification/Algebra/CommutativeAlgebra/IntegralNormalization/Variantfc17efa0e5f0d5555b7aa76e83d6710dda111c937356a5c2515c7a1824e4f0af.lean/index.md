# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IntegralNormalization.Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a925e5e159acb43ee2da9ca8b57482ec40d3ddb8",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a925e5e159acb43ee2da9ca8b57482ec40d3ddb8`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean.json)

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
| 1 | `def` | [integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization--d962d51173f2ad55f7ccfae4.md) | 47 | `declaration-track:d962d51173f2ad55f7ccfae4f4c824a6a63a6695295e0d553f8a68a2cdd6f2d3` |
| 2 | `theorem` | [integralNormalization_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-zero--db05f87661d6060f07f4ca2d.md) | 52 | `result-track:db05f87661d6060f07f4ca2de946612e79bb4cc4eee1ec1679e526d7a3793351` |
| 3 | `theorem` | [integralNormalization_C](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-c--3ff5e473d4855079baf29798.md) | 56 | `result-track:3ff5e473d4855079baf29798598fc7dcfe2dd466e9bf1f8e9c2394980fc9a566` |
| 4 | `theorem` | [integralNormalization_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-coeff--667189f9f4d62d64f707a808.md) | 61 | `result-track:667189f9f4d62d64f707a80848062bde30f240fee8ae2917c73392d720eecb80` |
| 5 | `theorem` | [support_integralNormalization_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/support-integralnormalization-subset--9cd93be0e4f1178d1216e2b5.md) | 68 | `result-track:9cd93be0e4f1178d1216e2b5fdb1bb3aa7a7e9c9d2e86194b33712bc37177e5b` |
| 6 | `theorem` | [integralNormalization_coeff_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-coeff-degree--4149f3599e8ee2842f2605c3.md) | 73 | `result-track:4149f3599e8ee2842f2605c335acd9e3bcf11dab55f30397d19b596b8ff66c06` |
| 7 | `theorem` | [integralNormalization_coeff_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-coeff-natdegree--7d819716218f3df9446a5c28.md) | 76 | `result-track:7d819716218f3df9446a5c286f691f3062456d1a310c0a4aec4305b919f1d2fa` |
| 8 | `theorem` | [integralNormalization_coeff_degree_ne](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-coeff-degree-ne--38c06d3676704f164753feee.md) | 80 | `result-track:38c06d3676704f164753feee978c6de8c6adf6f1ea1ad05dd1295a121d04d82c` |
| 9 | `theorem` | [integralNormalization_coeff_ne_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-coeff-ne-natdegree--28b02180c71056a11a32bdcf.md) | 84 | `result-track:28b02180c71056a11a32bdcf2aff8c0b93f62a0de593685a5466e5e3b470ba7e` |
| 10 | `lemma` | [degree_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/degree-integralnormalization--543c27255309652c4309173f.md) | 89 | `result-track:543c27255309652c4309173f90241f857ffbc1ad1fc277a05388705073af6190` |
| 11 | `lemma` | [natDegree_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/natdegree-integralnormalization--975a443eb11fb59c13fad17d.md) | 98 | `result-track:975a443eb11fb59c13fad17d3c19a17619a923ab1708721f32c336478a4e6991` |
| 12 | `theorem` | [monic_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/monic-integralnormalization--517eda8db5745813249ea76b.md) | 103 | `result-track:517eda8db5745813249ea76b05c0cb3de6ac249a8648514084583a6b609d3484` |
| 13 | `theorem` | [integralNormalization_coeff_mul_leadingCoeff_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-coeff-mul-leadingcoeff-pow--30c9fa02e815e0e90f2041a2.md) | 109 | `result-track:30c9fa02e815e0e90f2041a23270c66efb76d3c185375c90364eb8b11b134254` |
| 14 | `theorem` | [integralNormalization_mul_C_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-mul-c-leadingcoeff--d5f9ab7a3a53923a0671271e.md) | 123 | `result-track:d5f9ab7a3a53923a0671271e6a066ba2b0264ab0ca5235d833c31059bbec29b7` |
| 15 | `theorem` | [leadingCoeff_smul_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/leadingcoeff-smul-integralnormalization--644f52876e7f93662a79ab54.md) | 138 | `result-track:644f52876e7f93662a79ab54923ab1dc34806a4c7ed695f14e40de01ea95c800` |
| 16 | `theorem` | [integralNormalization_eval₂_leadingCoeff_mul_of_commute](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-eval-leadingcoeff-mul-of-commute--fb3a8237efcfdfb6ba8d5580.md) | 142 | `result-track:fb3a8237efcfdfb6ba8d55800fd14fbd6d35270f19539aeb95e0efd73bfbb3ef` |
| 17 | `theorem` | [integralNormalization_eval₂_leadingCoeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-eval-leadingcoeff-mul--392fd107e9f65353affb9d39.md) | 153 | `result-track:392fd107e9f65353affb9d394bcd980ad1260f4bc7c154c13681431660d01dbf` |
| 18 | `lemma` | [integralNormalization_aeval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-aeval-smul--d1e6532d73bfc45eded3435d.md) | 158 | `result-track:d1e6532d73bfc45eded3435dd4f9f6bb889d38274619491df8bb49b88986b9ae` |
| 19 | `theorem` | [integralNormalization_eval₂_eq_zero_of_commute](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-eval-eq-zero-of-commute--e937f87d86062dc4616c197a.md) | 165 | `result-track:e937f87d86062dc4616c197abfecac3ea9e25e01b1f79d2d604bdec6a922712d` |
| 20 | `theorem` | [integralNormalization_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-eval-eq-zero--e1bcf703054c543275865b4c.md) | 177 | `result-track:e1bcf703054c543275865b4ce45343cd788c1fba7617d907c04d791c821c8026` |
| 21 | `theorem` | [integralNormalization_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-aeval-eq-zero--a80444adbd191d7424a57390.md) | 182 | `result-track:a80444adbd191d7424a57390fd5a17383a0ee027ffc056a3af8f0a2d9bfcf958` |
| 22 | `lemma` | [integralNormalization_map](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/integralnormalization-map--94b238da42be1a45d47ac39d.md) | 188 | `result-track:94b238da42be1a45d47ac39dda58542de0e78b0e730fd21413ec86f78a9f7474` |
| 23 | `theorem` | [support_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/declarations/support-integralnormalization--c9afdcd4673f5c2ee642193e.md) | 201 | `result-track:c9afdcd4673f5c2ee642193e32cbe08a20b466530e14d9fe53b3e777a28b51af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
