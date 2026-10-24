# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Division.Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db531071db2672896be741ab35c308b29d8b724a",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db531071db2672896be741ab35c308b29d8b724a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Division` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/divmonomial--d44459cba7ed5be90746e31f.md) | 52 | `declaration-track:d44459cba7ed5be90746e31fd788a510e5e638e0eb89eeccfc7df65c4e925b71` |
| 2 | `theorem` | [coeff_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/coeff-divmonomial--62ec7268d82ec4b47b524e4b.md) | 59 | `result-track:62ec7268d82ec4b47b524e4beddd01c029d2cf4eefd38e9abd5fc1dea39c9e36` |
| 3 | `theorem` | [support_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/support-divmonomial--a317482b9c1de9df84d53a64.md) | 65 | `result-track:a317482b9c1de9df84d53a645c5962c4d9008f18f65953e7ae57c186167d7759` |
| 4 | `theorem` | [zero_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/zero-divmonomial--f941d18d69364256a8753414.md) | 71 | `result-track:f941d18d69364256a875341463219c3857034dc7e390d49fea3c387ba7e76284` |
| 5 | `theorem` | [divMonomial_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/divmonomial-zero--3951181d3ed87a4c8ded9750.md) | 75 | `result-track:3951181d3ed87a4c8ded975055d3bcf0241b37985eac39525b009e99db14bc0d` |
| 6 | `theorem` | [add_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/add-divmonomial--ce3cffd6642f7dbeba293382.md) | 79 | `result-track:ce3cffd6642f7dbeba2933822f92083118e8dadfb36d4a8175ae8607e9a7f037` |
| 7 | `theorem` | [divMonomial_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/divmonomial-add--66cd234092c1ce39b8244846.md) | 84 | `result-track:66cd234092c1ce39b8244846b2e88330ac42dd5e29225f6b756a82e99c4a7988` |
| 8 | `theorem` | [divMonomial_monomial_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/divmonomial-monomial-mul--0d606ef8e113aa336568e2b8.md) | 90 | `result-track:0d606ef8e113aa336568e2b858bfe1faeb89449b543f47c4f8627315ad7b6863` |
| 9 | `theorem` | [divMonomial_mul_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/divmonomial-mul-monomial--d115ae6af0580e68b0ae2ec0.md) | 96 | `result-track:d115ae6af0580e68b0ae2ec0d01c155780d499c6469634a0dda12544a4808c7e` |
| 10 | `theorem` | [divMonomial_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/divmonomial-monomial--a8a68c37da24688295a05728.md) | 102 | `result-track:a8a68c37da24688295a0572841ad7031009b8d624b2ed22ce12bbf0970602067` |
| 11 | `def` | [modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/modmonomial--7bce319400f4dfa83cbebeb5.md) | 107 | `declaration-track:7bce319400f4dfa83cbebeb5f9c8281d51266244a576df1becdaed3feda51722` |
| 12 | `theorem` | [coeff_modMonomial_of_not_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/coeff-modmonomial-of-not-le--72dfdb022d75eedb89c5e99d.md) | 114 | `result-track:72dfdb022d75eedb89c5e99d31267b632843b1a4ecf78af839b98adc20395f0a` |
| 13 | `theorem` | [coeff_modMonomial_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/coeff-modmonomial-of-le--537f176931f677dc97df007d.md) | 123 | `result-track:537f176931f677dc97df007d4dfaab91bd443ea394938c0ad5da91b6203ca775` |
| 14 | `theorem` | [monomial_mul_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/monomial-mul-modmonomial--b351926eb2d312f8bd18bb51.md) | 129 | `result-track:b351926eb2d312f8bd18bb51e1ba2459a2f30b902151388b1d5ac07d5853e50f` |
| 15 | `theorem` | [mul_monomial_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/mul-monomial-modmonomial--3061eba746a53d12093dfdbb.md) | 135 | `result-track:3061eba746a53d12093dfdbb5eadefcb2524a84f892b71a7966e0e0437461c09` |
| 16 | `theorem` | [monomial_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/monomial-modmonomial--e1264fa15a9c4d41f4b2a085.md) | 141 | `result-track:e1264fa15a9c4d41f4b2a085d2716e3cb34e97e98ae7fb1b9386569b4f46d48a` |
| 17 | `theorem` | [divMonomial_add_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/divmonomial-add-modmonomial--c8c7d78712efb448fdc78f9b.md) | 145 | `result-track:c8c7d78712efb448fdc78f9b240567477e45d33138d48fc5438833b7cfecb75a` |
| 18 | `theorem` | [modMonomial_add_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/modmonomial-add-divmonomial--029966c998d24e3826dcb553.md) | 150 | `result-track:029966c998d24e3826dcb5536996661f2f0cd7c20e95fd158fdc9f85ced89c18` |
| 19 | `theorem` | [monomial_one_dvd_iff_modMonomial_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/monomial-one-dvd-iff-modmonomial-eq-zero--43fb64c80eddf3f6995151d8.md) | 155 | `result-track:43fb64c80eddf3f6995151d8d390d110d2e1dec28dd5cb69b01fd418e4787e0a` |
| 20 | `theorem` | [X_mul_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/x-mul-divmonomial--933cfe6610b6da6267e8d86e.md) | 169 | `result-track:933cfe6610b6da6267e8d86ed2bc11fa79dce95f64f74d7faa5cea1b9526c437` |
| 21 | `theorem` | [X_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/x-divmonomial--b690c399ea0f623f0a2f243c.md) | 176 | `result-track:b690c399ea0f623f0a2f243c69cbeef62e520af85b96fd7c93629fcde2bb32fd` |
| 22 | `theorem` | [mul_X_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/mul-x-divmonomial--b8a25bcf15699892303695a5.md) | 182 | `result-track:b8a25bcf15699892303695a5baf684b80e93e4c3ca5b940952ed36a2940a90e0` |
| 23 | `theorem` | [X_mul_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/x-mul-modmonomial--be6e3239b5638cae1870c488.md) | 189 | `result-track:be6e3239b5638cae1870c48818fca4df44441e0412eec574c3a851c01504d09f` |
| 24 | `theorem` | [mul_X_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/mul-x-modmonomial--0b60877281aaa880ca454685.md) | 196 | `result-track:0b60877281aaa880ca4546851bc032f05200b21989c50411fafcfdccd5d9bdf1` |
| 25 | `theorem` | [modMonomial_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/modmonomial-x--0310774546b9445dfee78f9e.md) | 203 | `result-track:0310774546b9445dfee78f9e43bdf9700a40de0516432b8576d119ea0edc066d` |
| 26 | `theorem` | [divMonomial_add_modMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/divmonomial-add-modmonomial-single--78e1dc061e9402348f4971b9.md) | 208 | `result-track:78e1dc061e9402348f4971b946b065207fe997d512cfc2543ca7e349575ed401` |
| 27 | `theorem` | [modMonomial_add_divMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/modmonomial-add-divmonomial-single--9c050051348793ae8df75855.md) | 213 | `result-track:9c050051348793ae8df7585594fe3c0c04b7664190d9fca2118c6ad03f709c4e` |
| 28 | `theorem` | [X_dvd_iff_modMonomial_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/x-dvd-iff-modmonomial-eq-zero--0cf5779bc453088c08d3ad14.md) | 218 | `result-track:0cf5779bc453088c08d3ad143002714ec8c051c89d1db81c05cca150d9d74b68` |
| 29 | `theorem` | [monomial_dvd_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/monomial-dvd-monomial--b22ebb2f3c5b53962ded7ff7.md) | 229 | `result-track:b22ebb2f3c5b53962ded7ff772a635b81e752178d01aa9d129c2daf0bd83eda7` |
| 30 | `theorem` | [monomial_one_dvd_monomial_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/monomial-one-dvd-monomial-one--17bf9dd4f9795d6166634302.md) | 252 | `result-track:17bf9dd4f9795d6166634302491cd9b5c8e949a5e45cc2c462b3f066aa7a3e07` |
| 31 | `theorem` | [X_dvd_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/x-dvd-x--749d19af3ab5b480c1454aa7.md) | 259 | `result-track:749d19af3ab5b480c1454aa720983c5823afda4c91f36332cb99b3c9b8d35a14` |
| 32 | `theorem` | [X_dvd_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean/declarations/x-dvd-monomial--ecfdb471d3811dd6eed52986.md) | 268 | `result-track:ecfdb471d3811dd6eed529865325b94f3e6b0d35ee7c1d691a2833f9b55d0555` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
