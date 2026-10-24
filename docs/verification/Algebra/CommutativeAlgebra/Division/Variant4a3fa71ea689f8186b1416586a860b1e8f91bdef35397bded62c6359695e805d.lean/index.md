# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Division.Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7ddacdc2f8bdfc965950274e888cb3f0d0229fd",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7ddacdc2f8bdfc965950274e888cb3f0d0229fd`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Division` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/divmonomial--8305b01e3ed5d4815180dd42.md) | 44 | `declaration-track:8305b01e3ed5d4815180dd425e0f531760da3583c10f8e6162c1c1198cdba96f` |
| 2 | `theorem` | [coeff_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/coeff-divmonomial--7e60ba479fc62539a2fcd3fa.md) | 51 | `result-track:7e60ba479fc62539a2fcd3fa2c2bef99ed6fff01d9347101969c23300c8a914c` |
| 3 | `theorem` | [support_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/support-divmonomial--f4f9b3680f2713fb22ca2e40.md) | 57 | `result-track:f4f9b3680f2713fb22ca2e4045cf977fabf19fbc15f087570b906fbf471845a7` |
| 4 | `theorem` | [zero_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/zero-divmonomial--50aae1593c60987128e976c2.md) | 63 | `result-track:50aae1593c60987128e976c2a0fb1937972e2aa76873f8a65a3c14f27ead947b` |
| 5 | `theorem` | [divMonomial_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/divmonomial-zero--12ce3345dc46bde3f591042a.md) | 67 | `result-track:12ce3345dc46bde3f591042a21d1ce59151df6a59956585ef18a31744f4de4ef` |
| 6 | `theorem` | [add_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/add-divmonomial--b187b37ac7bca20582a25d74.md) | 71 | `result-track:b187b37ac7bca20582a25d74c2383e7149b19e86d3f8f7ead0d34dadab1dbdf1` |
| 7 | `theorem` | [divMonomial_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/divmonomial-add--d999be071838a0198ba944c2.md) | 76 | `result-track:d999be071838a0198ba944c2e6bb32b14f8305f0ee455666c6fb9dab60fb50ef` |
| 8 | `theorem` | [divMonomial_monomial_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/divmonomial-monomial-mul--f7d8b0931efe00eb8ac3e63d.md) | 82 | `result-track:f7d8b0931efe00eb8ac3e63d7762d97775808f8d09eda6d1eb2d5c14e87e34ff` |
| 9 | `theorem` | [divMonomial_mul_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/divmonomial-mul-monomial--67c0be1ec2befc9fc72aca06.md) | 88 | `result-track:67c0be1ec2befc9fc72aca066d86c77169a793ce89f051e8e7a588d9b0c76618` |
| 10 | `theorem` | [divMonomial_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/divmonomial-monomial--1182ae57c235e11e26e31f98.md) | 94 | `result-track:1182ae57c235e11e26e31f98ffea258eedab5d7aff22095beec0146dcc69e691` |
| 11 | `def` | [modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/modmonomial--2baa1e498a8e97fc300bb22c.md) | 99 | `declaration-track:2baa1e498a8e97fc300bb22cd79ffb6832e59c7a88d3bdf189d47e51cb378ab4` |
| 12 | `theorem` | [coeff_modMonomial_of_not_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/coeff-modmonomial-of-not-le--1fe3414d142519d9d66dc3ca.md) | 106 | `result-track:1fe3414d142519d9d66dc3ca1d5500d67674e64610e4270442c8ece4fa83f668` |
| 13 | `theorem` | [coeff_modMonomial_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/coeff-modmonomial-of-le--5d7fb9887da28c035a79ae1e.md) | 115 | `result-track:5d7fb9887da28c035a79ae1e8dd7eb812ada12489e97d7dcce06dea0a6e46327` |
| 14 | `theorem` | [monomial_mul_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/monomial-mul-modmonomial--4f8e2178ab87597e0d04a852.md) | 121 | `result-track:4f8e2178ab87597e0d04a852bfbaeb175e686ae0df1f385c3e6760d83df49832` |
| 15 | `theorem` | [mul_monomial_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/mul-monomial-modmonomial--26ae2cd0cb7d983727073bc0.md) | 127 | `result-track:26ae2cd0cb7d983727073bc01160cf48aeed94cf1e45b86d22d40f7d9fa31093` |
| 16 | `theorem` | [monomial_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/monomial-modmonomial--6a0093bbcb42f566d032bb0e.md) | 133 | `result-track:6a0093bbcb42f566d032bb0eff5389874218087de71df08c33a5586f34ee185c` |
| 17 | `theorem` | [divMonomial_add_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/divmonomial-add-modmonomial--cbdcf29d676aac25c7798ced.md) | 137 | `result-track:cbdcf29d676aac25c7798ced099a85c70aaa3a207397167ef6bd99892e11de0f` |
| 18 | `theorem` | [modMonomial_add_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/modmonomial-add-divmonomial--f303ed432ad66fd4423e1bc9.md) | 142 | `result-track:f303ed432ad66fd4423e1bc98b6850751258c884d0b96dec62fbe904dc975eaf` |
| 19 | `theorem` | [monomial_one_dvd_iff_modMonomial_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/monomial-one-dvd-iff-modmonomial-eq-zero--4bd34be72306a00dfed3f878.md) | 147 | `result-track:4bd34be72306a00dfed3f8784a1b24bea00d666863b6fd7b57f24882a6602085` |
| 20 | `theorem` | [X_mul_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/x-mul-divmonomial--b6036bab50e1ecb51de011c6.md) | 161 | `result-track:b6036bab50e1ecb51de011c65d93b3672bbb3f57262a8696741339e9af639cf7` |
| 21 | `theorem` | [X_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/x-divmonomial--581cd402126dbe71f1366aa5.md) | 168 | `result-track:581cd402126dbe71f1366aa59393b2a4031b6dee9ae89403129d27562d17e48f` |
| 22 | `theorem` | [mul_X_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/mul-x-divmonomial--1101d7bfa98f2b6c580dd2d0.md) | 174 | `result-track:1101d7bfa98f2b6c580dd2d00f20a745d7f0897ce016daa0ab2be1a9e5568a51` |
| 23 | `theorem` | [X_mul_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/x-mul-modmonomial--960ebff7b95053646903377f.md) | 181 | `result-track:960ebff7b95053646903377f2aaf71d9b23ac6a8a4138bbfc48733803b2fe083` |
| 24 | `theorem` | [mul_X_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/mul-x-modmonomial--ecb22d502b0db431e284731a.md) | 188 | `result-track:ecb22d502b0db431e284731a433a51d41aa3e8e4e7178a1bd62e7ee89586cb73` |
| 25 | `theorem` | [modMonomial_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/modmonomial-x--0d0425c8e12308b3258833d3.md) | 195 | `result-track:0d0425c8e12308b3258833d368123d03bbad7f0e7c6b13c7bce51311ded27768` |
| 26 | `theorem` | [divMonomial_add_modMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/divmonomial-add-modmonomial-single--bba54a9e79343240585e9b5a.md) | 200 | `result-track:bba54a9e79343240585e9b5a52b1dbdac90d1f6a67c172889c3222f928e65ec8` |
| 27 | `theorem` | [modMonomial_add_divMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/modmonomial-add-divmonomial-single--9e327a469f1d84f2e835c904.md) | 205 | `result-track:9e327a469f1d84f2e835c904982651538a518b2d3fa5d4aa211509bbb14e7fc2` |
| 28 | `theorem` | [X_dvd_iff_modMonomial_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/x-dvd-iff-modmonomial-eq-zero--493175bfde8ae36fa42a6a10.md) | 210 | `result-track:493175bfde8ae36fa42a6a1002e2e6e3d55cc44691119350883821aeedf1f030` |
| 29 | `theorem` | [monomial_dvd_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/monomial-dvd-monomial--ca455285a28662ee6e2a51da.md) | 221 | `result-track:ca455285a28662ee6e2a51da6763fe1e5658c4faedff1bdf872f76a4db71eabd` |
| 30 | `theorem` | [monomial_one_dvd_monomial_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/monomial-one-dvd-monomial-one--4541031273fb25d2732aa699.md) | 244 | `result-track:4541031273fb25d2732aa699245adf906d6e0c6c2b32f5bcc2ddb095972ae546` |
| 31 | `theorem` | [X_dvd_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/x-dvd-x--ddcc07b5c2a4eced85880555.md) | 251 | `result-track:ddcc07b5c2a4eced8588055582f42678fba5e59517534aae18c87475daa51d89` |
| 32 | `theorem` | [X_dvd_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant4a3fa71ea689f8186b1416586a860b1e8f91bdef35397bded62c6359695e805d.lean/declarations/x-dvd-monomial--50f26506ea85aa5d08a19a40.md) | 260 | `result-track:50f26506ea85aa5d08a19a402543701ae5f53bbaddd5b77a2a922220229c14e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
