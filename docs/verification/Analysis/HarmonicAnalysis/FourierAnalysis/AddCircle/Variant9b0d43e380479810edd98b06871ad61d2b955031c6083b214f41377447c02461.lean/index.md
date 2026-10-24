# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.AddCircle.Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9e1b3177cb0fc23ad80e9ea4869b0116ea8b9cc",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9e1b3177cb0fc23ad80e9ea4869b0116ea8b9cc`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Circle` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.l2Space` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ContinuousMapDense` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.StoneWeierstrass` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [haarAddCircle](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/haaraddcircle--fd81de34988456771c2740c4.md) | 81 | `declaration-track:fd81de34988456771c2740c4cdce977c74e7dc66aa5393e5e9abdfb56262d208` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/instance--3cdff5f6ef32251a1ee26830.md) | 86 | `declaration-track:3cdff5f6ef32251a1ee268304625b1c5a52cefc6d7f1e81b5c581e8509dc063f` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/instance--b60dce3313650efe9e8a18a2.md) | 89 | `declaration-track:b60dce3313650efe9e8a18a2637f6bf33fe2f08adabc8dd4dc4939f6c77394c7` |
| 4 | `theorem` | [volume_eq_smul_haarAddCircle](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/volume-eq-smul-haaraddcircle--f6cc096f8cdec65f1b861fbe.md) | 92 | `result-track:f6cc096f8cdec65f1b861fbe2e45b9ac0d5d717797dea64641f861dca9da8934` |
| 5 | `def` | [fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourier--566237116de1026c42125003.md) | 104 | `declaration-track:566237116de1026c42125003fd7cc5856c42592013cd30409e8116dc9c904acf` |
| 6 | `theorem` | [fourier_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourier-apply--413bfee94a6cd98bbc4cceb7.md) | 109 | `result-track:413bfee94a6cd98bbc4cceb7b64d868adaca9f485584c1f8045ad957dc90c3ca` |
| 7 | `theorem` | [fourier_coe_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourier-coe-apply--92fe14eb0cdfa8a7b821025e.md) | 113 | `result-track:92fe14eb0cdfa8a7b821025e79d390b6eb4dd06b756b91c7086bdb4eb98cb658` |
| 8 | `theorem` | [fourier_coe_apply'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourier-coe-apply--9af984d0a44e6067b9f6acf8.md) | 122 | `result-track:9af984d0a44e6067b9f6acf8ee3de1dbeab116d0ce7841dd8ad80e107466f71f` |
| 9 | `theorem` | [fourier_zero](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourier-zero--567a645f2a157c6eac6d38af.md) | 127 | `result-track:567a645f2a157c6eac6d38afa035ceca3b911fe2cad0da34e9862f9385864dfe` |
| 10 | `theorem` | [fourier_zero'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourier-zero--9e687e29c6dd91b7cdfdaeb0.md) | 132 | `result-track:9e687e29c6dd91b7cdfdaeb021a3ec71e9b9dc829eddb1821fb202262319cc10` |
| 11 | `theorem` | [fourier_eval_zero](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourier-eval-zero--6cc1d0d2fcd383302d4f4316.md) | 137 | `result-track:6cc1d0d2fcd383302d4f43161b0b3527baf57320e68b809660547a7a54c01c4d` |
| 12 | `theorem` | [fourier_one](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourier-one--6418b40581971fc38b802f0f.md) | 141 | `result-track:6418b40581971fc38b802f0fbb46d6d5d60253b935ba6aa401bb1a0574425f2c` |
| 13 | `theorem` | [fourier_neg](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourier-neg--c002cd6b847e82f927a5b33b.md) | 144 | `result-track:c002cd6b847e82f927a5b33bf4302048a5fb336a02c3b270581f94a13cd8113a` |
| 14 | `theorem` | [fourier_neg'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourier-neg--ac18e73ee4726080de1d78f0.md) | 152 | `result-track:ac18e73ee4726080de1d78f0911af14e15d61787e126e10ab98e6295965677c7` |
| 15 | `theorem` | [fourier_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourier-add--e8df578084936563a4289d69.md) | 156 | `result-track:e8df578084936563a4289d69c04b59eccabd2de2f5eb7471933571aa97bd6f84` |
| 16 | `theorem` | [fourier_add'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourier-add--ed83087db1aaadd94d437202.md) | 160 | `result-track:ed83087db1aaadd94d437202384e151323616c78fec15c2264a0c70fb6ac9004` |
| 17 | `theorem` | [fourier_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourier-norm--830e424e963d87b72f97c2a7.md) | 164 | `result-track:830e424e963d87b72f97c2a79359302eadddb07d59e954e0e58365bc373153cd` |
| 18 | `theorem` | [fourier_add_half_inv_index](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourier-add-half-inv-index--399ed2b95f200dd669d70cea.md) | 171 | `result-track:399ed2b95f200dd669d70ceaadb92df84dbed024d03bc480eb4f666c63252056` |
| 19 | `def` | [fourierSubalgebra](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriersubalgebra--4b44cea19254e6ce125e6301.md) | 184 | `declaration-track:4b44cea19254e6ce125e63018d002f9e1ce57f416d30802289091b69af883812` |
| 20 | `theorem` | [fourierSubalgebra_coe](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriersubalgebra-coe--77a1e2f3f8e6fa7f9c2c0346.md) | 195 | `result-track:77a1e2f3f8e6fa7f9c2c034651c14d242a42a25158affb83c21f2c4146ba2e75` |
| 21 | `theorem` | [fourierSubalgebra_separatesPoints](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriersubalgebra-separatespoints--c58a1f180de969676dcbcd2a.md) | 214 | `result-track:c58a1f180de969676dcbcd2ab5a87ff2735f862d87edaa177acb26d79c4e90b4` |
| 22 | `theorem` | [fourierSubalgebra_closure_eq_top](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriersubalgebra-closure-eq-top--33f2632a3c489c8e85fc10d7.md) | 223 | `result-track:33f2632a3c489c8e85fc10d7983ac1ff56b2cbc6938063fd46f6eb231add236e` |
| 23 | `theorem` | [span_fourier_closure_eq_top](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/span-fourier-closure-eq-top--6689a370fd84c7403e0b1826.md) | 228 | `result-track:6689a370fd84c7403e0b1826ef879183f965a62aa0a0ca2025dc3575e2abceec` |
| 24 | `abbrev` | [fourierLp](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourierlp--f3c43045f8de6b78598af63a.md) | 235 | `declaration-track:f3c43045f8de6b78598af63af00a4d7621575015543e637442390b08cd2c14ce` |
| 25 | `theorem` | [coeFn_fourierLp](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/coefn-fourierlp--19f340153be0209a1ab64fbe.md) | 238 | `result-track:19f340153be0209a1ab64fbefbc598a33ab3554e04e4131548f152887b11a4f2` |
| 26 | `theorem` | [span_fourierLp_closure_eq_top](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/span-fourierlp-closure-eq-top--418713b8bf897ad302067ef2.md) | 244 | `result-track:418713b8bf897ad302067ef298247fc7b06c7fdb1a8a78072f9e33cad20706f4` |
| 27 | `theorem` | [orthonormal_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/orthonormal-fourier--1c28fbaf14aeef2e6a5dac81.md) | 255 | `result-track:1c28fbaf14aeef2e6a5dac812647322ad1819f28e56970ec047c562be525f7cc` |
| 28 | `def` | [fourierCoeff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriercoeff--dcdb3713600ec5509d1a7307.md) | 283 | `declaration-track:dcdb3713600ec5509d1a7307f259c8702f17a1062a245945adb9c901351e3417` |
| 29 | `theorem` | [fourierCoeff_eq_intervalIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriercoeff-eq-intervalintegral--93d63b2bf1014f53047a28d0.md) | 288 | `result-track:93d63b2bf1014f53047a28d046f9274008812df7b726b36e5b6b9896607f1952` |
| 30 | `theorem` | [fourierCoeff.const_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriercoeff-const-smul--a1604c4bdd52405ec602b5e2.md) | 298 | `result-track:a1604c4bdd52405ec602b5e2c304d4c151a681d71cc31befa79ced4a61ac1a6a` |
| 31 | `theorem` | [fourierCoeff.const_mul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriercoeff-const-mul--24b90177093d3a156b25fb59.md) | 303 | `result-track:24b90177093d3a156b25fb5990ba10ff8935d8b01f11bfa41dc61f569a636179` |
| 32 | `def` | [fourierCoeffOn](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriercoeffon--0b33550696c36e9d6381af43.md) | 309 | `declaration-track:0b33550696c36e9d6381af43d9716303a2df903064645191d2d21d1baaf81e20` |
| 33 | `theorem` | [fourierCoeffOn_eq_integral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriercoeffon-eq-integral--5ea5cb6d8c3a13065b89eb0c.md) | 313 | `result-track:5ea5cb6d8c3a13065b89eb0c17725bd9d40c7f434c347284d51ab46f9f545434` |
| 34 | `theorem` | [fourierCoeffOn.const_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriercoeffon-const-smul--73facf4c5a0f09d3eef24205.md) | 324 | `result-track:73facf4c5a0f09d3eef24205ca1accd6b07aef6159615f4c0a0e0e4a27e3584e` |
| 35 | `theorem` | [fourierCoeffOn.const_mul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriercoeffon-const-mul--533242a726a431611d12f97f.md) | 329 | `result-track:533242a726a431611d12f97f1eb059bf7b7042c3da5e3faa2388e42376784364` |
| 36 | `theorem` | [fourierCoeff_liftIoc_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriercoeff-liftioc-eq--d53bfa7005e5514463b1559b.md) | 333 | `result-track:d53bfa7005e5514463b1559bebe4a16ce420b7c82061d8af20ab4c2176e1102d` |
| 37 | `theorem` | [fourierCoeff_liftIco_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriercoeff-liftico-eq--01d2283d18d21c749ddf4a03.md) | 342 | `result-track:01d2283d18d21c749ddf4a03b85e7e3b82cc4b9c00968925deea7e709487d30a` |
| 38 | `def` | [fourierBasis](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourierbasis--117043ec4161ba6962235918.md) | 358 | `declaration-track:117043ec4161ba6962235918450f92f19c1e540346a72f850bec1d19d5793e10` |
| 39 | `theorem` | [coe_fourierBasis](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/coe-fourierbasis--adf39fbd7f12ccdd80a06dc2.md) | 364 | `result-track:adf39fbd7f12ccdd80a06dc2d0becb295ad452c0db7502f5f37e07b613e6017d` |
| 40 | `theorem` | [fourierBasis_repr](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fourierbasis-repr--02e821c614f1424f47898436.md) | 370 | `result-track:02e821c614f1424f4789843683fa4730f8108f9fbf944c611525456b2fcc7db8` |
| 41 | `theorem` | [hasSum_fourier_series_L2](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/hassum-fourier-series-l2--fc943773bbd81f94da47f748.md) | 380 | `result-track:fc943773bbd81f94da47f748e76869695db53bb9fdd8a68ce8c73f1519072c36` |
| 42 | `theorem` | [tsum_sq_fourierCoeff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/tsum-sq-fouriercoeff--28bd7d7aa48bdd45e8dae9f0.md) | 387 | `result-track:28bd7d7aa48bdd45e8dae9f0e27f14cbb7376889ddbd7b95e00d86656d669300` |
| 43 | `theorem` | [fourierCoeff_toLp](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriercoeff-tolp--780f7957b948cdf509c2332e.md) | 406 | `result-track:780f7957b948cdf509c2332e31a2994e65fe6c27d8409259604ca9f531e8207b` |
| 44 | `theorem` | [hasSum_fourier_series_of_summable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/hassum-fourier-series-of-summable--cd4a47d1ac2f070e8f038d90.md) | 415 | `result-track:cd4a47d1ac2f070e8f038d909517590a34de7a37757021527fb5a3ccae842e0b` |
| 45 | `theorem` | [has_pointwise_sum_fourier_series_of_summable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/has-pointwise-sum-fourier-series-of-summable--8a97eb81d73cf961bc34e397.md) | 425 | `result-track:8a97eb81d73cf961bc34e397211da9a2610c64b5a8bcf812cf033528c8e435a8` |
| 46 | `theorem` | [hasDerivAt_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/hasderivat-fourier--a7a2c98c72c9cc53b4354d05.md) | 441 | `result-track:a7a2c98c72c9cc53b4354d053253c01a50a2ca55bc8fbe27414396d95d983509` |
| 47 | `theorem` | [hasDerivAt_fourier_neg](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/hasderivat-fourier-neg--6a019657447672f2e71376f4.md) | 451 | `result-track:6a019657447672f2e71376f4efdaa266ee0da2fef02b0aa4f1fc4c8f2d02992d` |
| 48 | `theorem` | [has_antideriv_at_fourier_neg](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/has-antideriv-at-fourier-neg--2a41791e3b309cd3bb53c5dc.md) | 458 | `result-track:2a41791e3b309cd3bb53c5dc595ba4b7810010dfa254be8b678c374198dd0eda` |
| 49 | `theorem` | [fourierCoeffOn_of_hasDeriv_right](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriercoeffon-of-hasderiv-right--fed3c6fe1f641fde4d1e4d24.md) | 466 | `result-track:fed3c6fe1f641fde4d1e4d242c583cc92465721e0e035043a8e603335b0f28d8` |
| 50 | `theorem` | [fourierCoeffOn_of_hasDerivAt_Ioo](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriercoeffon-of-hasderivat-ioo--556509b9c892125b5062b136.md) | 494 | `result-track:556509b9c892125b5062b136551a1bf2c563332edef8c9409c23c126fcbcabdd` |
| 51 | `theorem` | [fourierCoeffOn_of_hasDerivAt](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant9b0d43e380479810edd98b06871ad61d2b955031c6083b214f41377447c02461.lean/declarations/fouriercoeffon-of-hasderivat--7f1ec50bc40af7bbf26b60fe.md) | 504 | `result-track:7f1ec50bc40af7bbf26b60fedb59b072a390405c07b43f8c133d982b4dfe28d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
