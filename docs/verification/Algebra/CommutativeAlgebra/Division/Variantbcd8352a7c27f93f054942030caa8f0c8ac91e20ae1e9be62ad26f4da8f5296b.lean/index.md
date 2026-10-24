# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Division.Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8eb17cf0841add35a9e08be32685213a7c09d44f",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8eb17cf0841add35a9e08be32685213a7c09d44f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Division` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/divmonomial--c4c37e548b19c560391f52d9.md) | 50 | `declaration-track:c4c37e548b19c560391f52d999f8b2f19e8a335e8db8c01e8617e568e1a31cb1` |
| 2 | `theorem` | [coeff_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/coeff-divmonomial--8c7bda5161b0272e3285e6e2.md) | 56 | `result-track:8c7bda5161b0272e3285e6e2543e973c17d0b29a03581fab872f30099463e494` |
| 3 | `theorem` | [support_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/support-divmonomial--77af2509d824ccdd44fda618.md) | 61 | `result-track:77af2509d824ccdd44fda618cd7d406e24947a1da061bf7e8e9a83ee6bd3a7fe` |
| 4 | `theorem` | [zero_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/zero-divmonomial--57422017019cc2eb7f135926.md) | 66 | `result-track:57422017019cc2eb7f135926b0fbda60d72e92486c97561c09991c82f2282fd9` |
| 5 | `theorem` | [divMonomial_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/divmonomial-zero--846363bd50f07cfd54625ae4.md) | 69 | `result-track:846363bd50f07cfd54625ae460e92ea70460f51479583ea0b2c99187fd43b60c` |
| 6 | `theorem` | [add_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/add-divmonomial--d8b0a6e4c13310b27be32719.md) | 72 | `result-track:d8b0a6e4c13310b27be3271944625288b788e7d755d6bbcb9a8cf6953223118c` |
| 7 | `theorem` | [divMonomial_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/divmonomial-add--0a3ee8747b3ccb2522a2be0c.md) | 76 | `result-track:0a3ee8747b3ccb2522a2be0c31445b556acc4895150b705bf55dee3e96a74acd` |
| 8 | `theorem` | [divMonomial_monomial_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/divmonomial-monomial-mul--560b6d5c6599a36ffee25af2.md) | 81 | `result-track:560b6d5c6599a36ffee25af27d78cafa2c9b08d6d80a1509b365db7703ea952c` |
| 9 | `theorem` | [divMonomial_mul_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/divmonomial-mul-monomial--bfa042edac68a5a8ad0e0463.md) | 86 | `result-track:bfa042edac68a5a8ad0e0463239b874a4d5804c215f53a9c9dae117f77692eea` |
| 10 | `theorem` | [divMonomial_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/divmonomial-monomial--b40728bf9bcc30b728511ea4.md) | 91 | `result-track:b40728bf9bcc30b728511ea46cc37e17c32a5268a2c56fb3f9c5dcafa8fdf9d6` |
| 11 | `def` | [modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/modmonomial--d97b0f9f6405f61e18cc1693.md) | 95 | `declaration-track:d97b0f9f6405f61e18cc1693de677b818b7da263687036fc1ef799dc2b171efb` |
| 12 | `theorem` | [coeff_modMonomial_of_not_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/coeff-modmonomial-of-not-le--4c7209d6c82248b1d34a960e.md) | 101 | `result-track:4c7209d6c82248b1d34a960ef4b3617454fc02e3ff2e5b4ef2377a017eec3683` |
| 13 | `theorem` | [coeff_modMonomial_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/coeff-modmonomial-of-le--7e7d64f5d2e835e99227d4cb.md) | 109 | `result-track:7e7d64f5d2e835e99227d4cba4dc3971ffd8041557c92219663978eaadc5d546` |
| 14 | `theorem` | [monomial_mul_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/monomial-mul-modmonomial--1fb53042a70e4cf9445ebc5e.md) | 114 | `result-track:1fb53042a70e4cf9445ebc5e5a90b220894b8d602adc0ab206869a0f9e385d7f` |
| 15 | `theorem` | [mul_monomial_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/mul-monomial-modmonomial--f29ce8141b00c1036b0e47fa.md) | 119 | `result-track:f29ce8141b00c1036b0e47fa944a2a670b2414698d5837996fbdb61308547f6c` |
| 16 | `theorem` | [monomial_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/monomial-modmonomial--5568edfdb00573aa120b83cd.md) | 124 | `result-track:5568edfdb00573aa120b83cddb86f0ec3ced8976bfbe9f2952a97a8a85bb723b` |
| 17 | `theorem` | [divMonomial_add_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/divmonomial-add-modmonomial--e680eaf0293bbc814a5366b1.md) | 127 | `result-track:e680eaf0293bbc814a5366b160c24c0bdf68ffd4441d6d8cb7c7043365ae8742` |
| 18 | `theorem` | [modMonomial_add_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/modmonomial-add-divmonomial--075385db077381b75421fde7.md) | 131 | `result-track:075385db077381b75421fde797cd4efa5933141d10e79b12211a6fd5d4121381` |
| 19 | `theorem` | [monomial_one_dvd_iff_modMonomial_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/monomial-one-dvd-iff-modmonomial-eq-zero--2285f43d10e49394f7112768.md) | 135 | `result-track:2285f43d10e49394f71127687b5c77b9373b7db9794cc8389c6332b57a960564` |
| 20 | `theorem` | [X_mul_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/x-mul-divmonomial--b661be5de3b3e713f529c655.md) | 148 | `result-track:b661be5de3b3e713f529c655240563c5537f5708a34b7e4217eb2b66ba6d2c7b` |
| 21 | `theorem` | [X_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/x-divmonomial--c859a95405c6d633da7fe9f6.md) | 153 | `result-track:c859a95405c6d633da7fe9f6dda5355e2ae451424acf6efe7895481c698b7e48` |
| 22 | `theorem` | [mul_X_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/mul-x-divmonomial--49dc96b03b6600e80e149cbf.md) | 157 | `result-track:49dc96b03b6600e80e149cbf0f6a35b866a4c2afb5b5a4614bfaafd409ed9c00` |
| 23 | `theorem` | [X_mul_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/x-mul-modmonomial--5c195e4243af48f3b24f0533.md) | 162 | `result-track:5c195e4243af48f3b24f0533c6f99945dbbb2aff77921e35eb27d8244dd6fb2a` |
| 24 | `theorem` | [mul_X_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/mul-x-modmonomial--70b580a845f22dcc9e074438.md) | 167 | `result-track:70b580a845f22dcc9e074438b7f93c462b98e764dd6df6e0947d5460532ebc70` |
| 25 | `theorem` | [modMonomial_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/modmonomial-x--b08e5a94d80f9319395ac8b9.md) | 172 | `result-track:b08e5a94d80f9319395ac8b9a7150b4fd9a93b8f9fafc830859506667ecaf03a` |
| 26 | `theorem` | [divMonomial_add_modMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/divmonomial-add-modmonomial-single--ece8afb1abcf900077187da9.md) | 175 | `result-track:ece8afb1abcf900077187da9224e19ea4d1009e03515fbde8b6eb4ffcf8daf8b` |
| 27 | `theorem` | [modMonomial_add_divMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/modmonomial-add-divmonomial-single--7a77d620b2e06ebe4e3b47a2.md) | 179 | `result-track:7a77d620b2e06ebe4e3b47a2fb608a7b532f2fdb6484959a4370a4e1c4f2df92` |
| 28 | `theorem` | [X_dvd_iff_modMonomial_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/x-dvd-iff-modmonomial-eq-zero--8b9e4d77dd87a47195f5f24f.md) | 183 | `result-track:8b9e4d77dd87a47195f5f24f0f89da1b34ac61558ab21a1b3831765e84032667` |
| 29 | `theorem` | [monomial_dvd_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/monomial-dvd-monomial--c83d9ffa0000cbb6a066a8c1.md) | 192 | `result-track:c83d9ffa0000cbb6a066a8c16851c38ae51aa53951116ffbc4df77b28ba859fe` |
| 30 | `theorem` | [monomial_one_dvd_monomial_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/monomial-one-dvd-monomial-one--6b9cbda8c272a5fa95352dc2.md) | 214 | `result-track:6b9cbda8c272a5fa95352dc284878f5b5e17161ff592930be69d5e9cfab608a2` |
| 31 | `theorem` | [X_dvd_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/x-dvd-x--fa03be3b04ed80469cf5e92e.md) | 220 | `result-track:fa03be3b04ed80469cf5e92e3bb0b2cee6f7b39ad80606e4787106fcf1d3e64f` |
| 32 | `theorem` | [X_dvd_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variantbcd8352a7c27f93f054942030caa8f0c8ac91e20ae1e9be62ad26f4da8f5296b.lean/declarations/x-dvd-monomial--5329d74bed734e5d614ac6a5.md) | 227 | `result-track:5329d74bed734e5d614ac6a5667d3e309d3b10e5a1a4decba56de9dbea3d1ac1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
