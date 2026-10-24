# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ImproperIntegrals.Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7134f3e5f1a386a2305d4c324913cf4bb3ed9186",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7134f3e5f1a386a2305d4c324913cf4bb3ed9186`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.JapaneseBracket` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrableOn_exp_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableon-exp-iic--c16009080e4521b5227707bd.md) | 33 | `result-track:c16009080e4521b5227707bd7b0fbba16fa9acdd0b40163d77c5743a2b0c1da9` |
| 2 | `theorem` | [integrableOn_exp_neg_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableon-exp-neg-ioi--7a106b80b1eadbb987ec4748.md) | 41 | `result-track:7a106b80b1eadbb987ec474894647a85743c2ed5a773f2311950cb33b7d9819d` |
| 3 | `theorem` | [integral_exp_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integral-exp-iic--c59543b89971ae94f515d042.md) | 44 | `result-track:c59543b89971ae94f515d0426dddec682d9a2ce950508cce5c156ab3bf66f162` |
| 4 | `theorem` | [integral_exp_Iic_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integral-exp-iic-zero--72a5adb62e5ae5f8b16b61b0.md) | 51 | `result-track:72a5adb62e5ae5f8b16b61b067f16cb35405682c5e9793ea9b2667572274187d` |
| 5 | `theorem` | [integral_exp_neg_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integral-exp-neg-ioi--9d02c16156f2254dd6d3bc77.md) | 54 | `result-track:9d02c16156f2254dd6d3bc77db9e86227db3784136c8197a168ba0d70b56a19f` |
| 6 | `theorem` | [integral_exp_neg_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integral-exp-neg-ioi-zero--769b9bf3b3c95f78c1e68b42.md) | 57 | `result-track:769b9bf3b3c95f78c1e68b4248e67616ec947512aabc68fbd13ceb8689d90693` |
| 7 | `theorem` | [integrableOn_exp_mul_complex_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableon-exp-mul-complex-ioi--7579136f19c380ea862d6568.md) | 60 | `result-track:7579136f19c380ea862d656871c6cb28c68dc27b171f93c731dcfa729a1b7be8` |
| 8 | `theorem` | [integrableOn_exp_mul_complex_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableon-exp-mul-complex-iic--1077aa3b278e73320ebcfb97.md) | 69 | `result-track:1077aa3b278e73320ebcfb977ba1ffac01db68bccee7f160001c1493748bbf10` |
| 9 | `theorem` | [integrableOn_exp_mul_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableon-exp-mul-ioi--0dbc93ed61817cf1f6635838.md) | 74 | `result-track:0dbc93ed61817cf1f6635838ad10969c64b5b986c119d7592f0fe6b1fe84f592` |
| 10 | `theorem` | [integrableOn_exp_mul_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableon-exp-mul-iic--2e6f09df4115b1f1e13e9e12.md) | 79 | `result-track:2e6f09df4115b1f1e13e9e12ca521655d84cd50ecbd8694627c91c458ca40c58` |
| 11 | `theorem` | [integral_exp_mul_complex_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integral-exp-mul-complex-ioi--f96076c1845acd9f1ac0ec06.md) | 84 | `result-track:f96076c1845acd9f1ac0ec0668e0e74696f80effc175a575a17ba6d8172e8067` |
| 12 | `theorem` | [integral_exp_mul_complex_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integral-exp-mul-complex-iic--e464a284d827f71bca782975.md) | 93 | `result-track:e464a284d827f71bca782975a4adefa642aa1878c1810efbdf0d0ca0b66c483c` |
| 13 | `theorem` | [integral_exp_mul_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integral-exp-mul-ioi--22a36261610f289a4aa83620.md) | 99 | `result-track:22a36261610f289a4aa8362004cf8386eb807700fcf497c6db4681c14223336f` |
| 14 | `theorem` | [integral_exp_mul_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integral-exp-mul-iic--eb9f441433630c326cdb5c74.md) | 106 | `result-track:eb9f441433630c326cdb5c74e4ee71b07ded4b50d69010f032c925659453ec6c` |
| 15 | `theorem` | [integrableOn_Ioi_rpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableon-ioi-rpow-of-lt--e91ad81e4a86a6441b8dec70.md) | 112 | `result-track:e91ad81e4a86a6441b8dec706117fb796127097e9fcdd0bc3da53418e53c9cee` |
| 16 | `theorem` | [integrableOn_Ioi_rpow_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableon-ioi-rpow-iff--e166cd9736376d1071620ac5.md) | 124 | `result-track:e166cd9736376d1071620ac51164c4cdb991dd1ad8bd5f9bfeaf1bfda1a7bd09` |
| 17 | `theorem` | [integrableAtFilter_rpow_atTop_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableatfilter-rpow-attop-iff--bbf7eabde8c63c8cf19d16c3.md) | 140 | `result-track:bbf7eabde8c63c8cf19d16c348aeee30ecd8e7cac9dfba0508c5dfddfdd57284` |
| 18 | `theorem` | [not_integrableOn_Ioi_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/not-integrableon-ioi-rpow--127bd182bd13f27e476a23ce.md) | 149 | `result-track:127bd182bd13f27e476a23cebfb0f8f9aa13f919522d5d8795b6465c1e1dbec0` |
| 19 | `theorem` | [setIntegral_Ioi_zero_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/setintegral-ioi-zero-rpow--4c811af269e45997d84d9dbf.md) | 159 | `result-track:4c811af269e45997d84d9dbf6b41b83ac8b82f2638e0183fa7fc4561c7022081` |
| 20 | `theorem` | [integral_Ioi_rpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integral-ioi-rpow-of-lt--2baea9ccfa72b9401b0f59f2.md) | 162 | `result-track:2baea9ccfa72b9401b0f59f2a3ab8cdf221fb4e6e263099a7a2f7f5e5abb48ab` |
| 21 | `theorem` | [integrableOn_Ioi_norm_cpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableon-ioi-norm-cpow-of-lt--4c65ebe717a17f230c9871b8.md) | 174 | `result-track:4c65ebe717a17f230c9871b8f2ff735175c863a4d8e5de16d375fac48ac47260` |
| 22 | `theorem` | [integrableOn_Ioi_cpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableon-ioi-cpow-of-lt--3a7728767a22a17d2d3338f4.md) | 179 | `result-track:3a7728767a22a17d2d3338f48bd734f391e8edb38cc76a3f07c6bfdfcb688d1a` |
| 23 | `theorem` | [integrableOn_Ioi_norm_cpow_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableon-ioi-norm-cpow-iff--8ce6b7a1bf082523e869797a.md) | 185 | `result-track:8ce6b7a1bf082523e869797acc69dfcf8c49b91d48b6ccf47bacd6833219e317` |
| 24 | `theorem` | [integrableOn_Ioi_cpow_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableon-ioi-cpow-iff--3ef7931398ca4ff605f37a23.md) | 191 | `result-track:3ef7931398ca4ff605f37a23c011aaf05027e5674b526153d44c5799dddb2d46` |
| 25 | `theorem` | [integrableOn_Ioi_deriv_ofReal_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableon-ioi-deriv-ofreal-cpow--c95972c42edcb49cf25e846f.md) | 195 | `result-track:c95972c42edcb49cf25e846f7e5ff6854dd17df1f3c7301fc34114e48142ff3f` |
| 26 | `theorem` | [integrableOn_Ioi_deriv_norm_ofReal_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrableon-ioi-deriv-norm-ofreal-cpow--2e3943b36496f2141e0ed34e.md) | 203 | `result-track:2e3943b36496f2141e0ed34e1d90490761433f35b0ced4fd3c35b1d18636f938` |
| 27 | `theorem` | [not_integrableOn_Ioi_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/not-integrableon-ioi-cpow--ab47ce08aba56788d5021a99.md) | 214 | `result-track:ab47ce08aba56788d5021a997cd4daf5deba384065ca8adc46a38e31f049d57a` |
| 28 | `theorem` | [setIntegral_Ioi_zero_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/setintegral-ioi-zero-cpow--d0ddb84c313ff357b8784e4f.md) | 227 | `result-track:d0ddb84c313ff357b8784e4fc1a90ed9225c06e25cac2e6fbfe653e2be142d2d` |
| 29 | `theorem` | [integral_Ioi_cpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integral-ioi-cpow-of-lt--8bb154b12ebfa20908743063.md) | 230 | `result-track:8bb154b12ebfa209087430639e48597d787f9e586e0d94f294d97a0f3a9f257f` |
| 30 | `theorem` | [integrable_inv_one_add_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integrable-inv-one-add-sq--fa2ed2ebf81833386c6795ec.md) | 253 | `result-track:fa2ed2ebf81833386c6795ecc51d85e356d9b67a43b2ab874e6558038bb07007` |
| 31 | `theorem` | [integral_Iic_inv_one_add_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integral-iic-inv-one-add-sq--3c8f99461eea39aa539fb45b.md) | 258 | `result-track:3c8f99461eea39aa539fb45b1c5884509358b3f80c1ab9e2ddadf39dbef917ea` |
| 32 | `theorem` | [integral_Ioi_inv_one_add_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integral-ioi-inv-one-add-sq--766c517e659a9e343ad2d381.md) | 265 | `result-track:766c517e659a9e343ad2d381a29500da3a31fb8c113a4b790177ad5ceb0c0e58` |
| 33 | `theorem` | [integral_univ_inv_one_add_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2edce025efeab5ef5b4aaa8fbfd8812a7c0f9a224a5ab079065174185868dd6e.lean/declarations/integral-univ-inv-one-add-sq--8b64ba650308381786668fcb.md) | 271 | `result-track:8b64ba650308381786668fcbd0238b233e268e29dc45613889dcab7b581c74ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
