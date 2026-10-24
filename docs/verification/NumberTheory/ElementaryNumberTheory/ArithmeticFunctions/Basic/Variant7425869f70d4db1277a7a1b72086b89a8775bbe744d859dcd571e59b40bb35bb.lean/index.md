# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Basic.Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e408084625d9421c64975c5dbad69589e44a11cd",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e408084625d9421c64975c5dbad69589e44a11cd`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.SelbergSieve` — import line 13; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.AuxResults` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [selbergTerms](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/selbergterms--ae7c9253492a11d6de367fb7.md) | 38 | `declaration-track:ae7c9253492a11d6de367fb78431fbb63de4670ecf1fd2f1fe32e087babdae1e` |
| 2 | `theorem` | [selbergTerms_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/selbergterms-apply--9320edd8135997d57a3bf47e.md) | 43 | `result-track:9320edd8135997d57a3bf47e054fe3344174e253ac6af8491e499eb20f94ca65` |
| 3 | `structure` | [UpperBoundSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/upperboundsieve--f705d403cb5982cda570cb52.md) | 52 | `declaration-track:f705d403cb5982cda570cb52cf7daeca7717a0fcb5875410914a7c72ba1f08e7` |
| 4 | `instance` | [ubToμPlus](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/ubto-plus--3815c9c13893ca8540a3180e.md) | 56 | `declaration-track:3815c9c13893ca8540a3180ed013fb2d2dfd62e1c7762bba395d566b90f789e7` |
| 5 | `def` | [IsLowerMoebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/islowermoebius--f483f27dadbc19f87b03fa05.md) | 58 | `declaration-track:f483f27dadbc19f87b03fa052be771e080e88e5caac904da6a95fb478d0bf0c7` |
| 6 | `structure` | [LowerBoundSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/lowerboundsieve--0f10015202e7f5a82dfc6afa.md) | 61 | `declaration-track:0f10015202e7f5a82dfc6afae4a99b3cd2add2cd1670fef3eed122fea690357a` |
| 7 | `instance` | [lbToμMinus](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/lbto-minus--50e3b33b231e2b21070c141e.md) | 65 | `declaration-track:50e3b33b231e2b21070c141e7ad0d2e23ffe9b9fd8f3a4ebb5be078975f1bad5` |
| 8 | `theorem` | [nu_ne_zero_of_mem_divisors_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/nu-ne-zero-of-mem-divisors-prodprimes--a88d9e08a8a0213e79e9390d.md) | 71 | `result-track:a88d9e08a8a0213e79e9390d99125c26300bf126cc4683c58834e15fe9179989` |
| 9 | `def` | [delta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/delta--8dc472562e88b1fbe48845d8.md) | 76 | `declaration-track:8dc472562e88b1fbe48845d875b158409f1ca0b8504f64a06afb0dd9a2a7c732` |
| 10 | `theorem` | [siftedSum_as_delta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/siftedsum-as-delta--fa40ad36242d1f7568268ed4.md) | 80 | `result-track:fa40ad36242d1f7568268ed480383436f82965d6044ca9c2eb710add1e943728` |
| 11 | `theorem` | [nu_lt_self_of_dvd_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/nu-lt-self-of-dvd-prodprimes--246feff1e8e86caa8be923b2.md) | 86 | `result-track:246feff1e8e86caa8be923b2cced4ba9f461fe3f90e9f4a9da4f38ce2836c675` |
| 12 | `theorem` | [selbergTerms_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/selbergterms-pos--bd25e9e2406eac6a36b5f9c8.md) | 91 | `result-track:bd25e9e2406eac6a36b5f9c87ced5f74ff6835a5d711bab2b1af88908f468c78` |
| 13 | `theorem` | [selbergTerms_mult](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/selbergterms-mult--9e893cf5d3318bd408755d82.md) | 102 | `result-track:9e893cf5d3318bd408755d82130c91208674fa313d753c845b513d4888208639` |
| 14 | `theorem` | [one_div_selbergTerms_eq_conv_moebius_nu](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/one-div-selbergterms-eq-conv-moebius-nu--9e288c67c8864da3027df413.md) | 106 | `result-track:9e288c67c8864da3027df4139ab2557b2e24065e8b491d35cd484b75b0f4e0ef` |
| 15 | `theorem` | [nu_eq_conv_one_div_selbergTerms](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/nu-eq-conv-one-div-selbergterms--ad6d21dd27d910191406ad67.md) | 123 | `result-track:ad6d21dd27d910191406ad676d7c16f091031298344e272560cf8fad55df6def` |
| 16 | `theorem` | [conv_selbergTerms_eq_selbergTerms_mul_nu](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/conv-selbergterms-eq-selbergterms-mul-nu--fd4add769d493a8b4a68b402.md) | 137 | `result-track:fd4add769d493a8b4a68b4029f2af6fd631db0d02150e1d78bded773b3e6157a` |
| 17 | `theorem` | [upper_bound_of_UpperBoundSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/upper-bound-of-upperboundsieve--4778c6bcc37226c86cb52a3e.md) | 154 | `result-track:4778c6bcc37226c86cb52a3e9cff1571721eaee2858239dfdfe53be7b15cd53a` |
| 18 | `theorem` | [siftedSum_le_mainSum_errSum_of_UpperBoundSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/siftedsum-le-mainsum-errsum-of-upperboundsieve--73b014602af2c9abf82cc185.md) | 158 | `result-track:73b014602af2c9abf82cc185f08a9784709852fb7a9a16e5bab2ca2ce5f99202` |
| 19 | `def` | [lambdaSquared](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/lambdasquared--fb1db63d21867a2afec600a5.md) | 167 | `declaration-track:fb1db63d21867a2afec600a59925cd139d81baa50095fddcd61990067586f8e8` |
| 20 | `theorem` | [lambdaSquared_eq_zero_of_support_wlog](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/lambdasquared-eq-zero-of-support-wlog--ec3ecf01e0f0703b5ebd30b2.md) | 171 | `result-track:ec3ecf01e0f0703b5ebd30b296d99aaf991d07737dda696d86851d9f641ed0fe` |
| 21 | `theorem` | [lambdaSquared_eq_zero_of_support](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/lambdasquared-eq-zero-of-support--fab1175028478789552fc190.md) | 184 | `result-track:fab1175028478789552fc1905a3ee294bb41a21de39b949dd623c42f0992f28e` |
| 22 | `theorem` | [upperMoebius_of_lambda_sq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/uppermoebius-of-lambda-sq--03a3ccaa0ae4b4b46bf4a7da.md) | 210 | `result-track:03a3ccaa0ae4b4b46bf4a7dad8fc551e8993b2d634642b3935bf3e14cfbfb7cf` |
| 23 | `theorem` | [lambdaSquared_mainSum_eq_quad_form](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/lambdasquared-mainsum-eq-quad-form--b05b235fb0103800a27c7e7c.md) | 241 | `result-track:b05b235fb0103800a27c7e7c89768a2bb228508d9ec11fa669dbea8d8829cafe` |
| 24 | `theorem` | [lambdaSquared_mainSum_eq_diag_quad_form](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant7425869f70d4db1277a7a1b72086b89a8775bbe744d859dcd571e59b40bb35bb.lean/declarations/lambdasquared-mainsum-eq-diag-quad-form--a6327e0ec715592b726b2f8a.md) | 268 | `result-track:a6327e0ec715592b726b2f8a56564808f029ae5e7640f4d2696dbdaf80dfce51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
