# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CDFToKernel.Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68df4de21d3c5a60e207acbee33b7fdff8eb3e7c",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68df4de21d3c5a60e207acbee33b7fdff8eb3e7c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.CompProd` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.MeasurableStieltjes` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsRatCondKernelCDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdf--7c2669b4cf1b3b503be5db77.md) | 74 | `declaration-track:7c2669b4cf1b3b503be5db7714c08c58fa0b306d2170eb1ea57fb543f0c0f51a` |
| 2 | `lemma` | [IsRatCondKernelCDF.mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdf-mono--42ebcc0bdf0d0ae15a70c773.md) | 82 | `result-track:42ebcc0bdf0d0ae15a70c773fde33693bdf5a67eb75fa66b67abe626fd267728` |
| 3 | `lemma` | [IsRatCondKernelCDF.tendsto_atTop_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdf-tendsto-attop-one--1c1b34205b328629f5d953b1.md) | 86 | `result-track:1c1b34205b328629f5d953b18a6c8feed4ae381bf9d19a421657afc0484f0fb5` |
| 4 | `lemma` | [IsRatCondKernelCDF.tendsto_atBot_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdf-tendsto-atbot-zero--f59491e056f488bb4f7b7238.md) | 90 | `result-track:f59491e056f488bb4f7b72389a6c7049e6be4817479ba01fafb592eabc98bae7` |
| 5 | `lemma` | [IsRatCondKernelCDF.iInf_rat_gt_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdf-iinf-rat-gt-eq--64a005968124d2da552fd290.md) | 94 | `result-track:64a005968124d2da552fd290121e43418d0f1c3329f8e604c5d8d6191f307eed` |
| 6 | `lemma` | [stieltjesOfMeasurableRat_ae_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/stieltjesofmeasurablerat-ae-eq--7ec0d883a674f3b7a2b3b2a7.md) | 98 | `result-track:7ec0d883a674f3b7a2b3b2a77ec7def5b863a9498d9bf6c41f91a6edc34f35de` |
| 7 | `lemma` | [setIntegral_stieltjesOfMeasurableRat_rat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/setintegral-stieltjesofmeasurablerat-rat--b113ef6a5a833bdae2ff0e9a.md) | 103 | `result-track:b113ef6a5a833bdae2ff0e9ad06aa1330c162b56e42e9e708bcf8d215926cdf5` |
| 8 | `lemma` | [setLIntegral_stieltjesOfMeasurableRat_rat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/setlintegral-stieltjesofmeasurablerat-rat--f4e58f4bbe92d13b00fef8e5.md) | 110 | `result-track:f4e58f4bbe92d13b00fef8e5794c41d51d324638ea2ae3ebe7b2d18d37b55157` |
| 9 | `lemma` | [setLIntegral_stieltjesOfMeasurableRat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/setlintegral-stieltjesofmeasurablerat--24fbd177f67945302a403b5b.md) | 121 | `result-track:24fbd177f67945302a403b5bf0e532e73d93485c2e4b00126ffbf7e5730a3a41` |
| 10 | `lemma` | [lintegral_stieltjesOfMeasurableRat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/lintegral-stieltjesofmeasurablerat--f101a4ca8bd4713a7828ca68.md) | 180 | `result-track:f101a4ca8bd4713a7828ca6823105a5de3e1910370ce13e9c9b9cb6a82524633` |
| 11 | `lemma` | [integrable_stieltjesOfMeasurableRat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/integrable-stieltjesofmeasurablerat--35036f2443f0a38ae296143d.md) | 186 | `result-track:35036f2443f0a38ae296143d114ce40311e54ceaa65e928fd5970dbe4009e675` |
| 12 | `lemma` | [setIntegral_stieltjesOfMeasurableRat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/setintegral-stieltjesofmeasurablerat--34c756e09317adff628f9a6b.md) | 201 | `result-track:34c756e09317adff628f9a6b03b7896f989976a5e5b62047a6f41f2d6a851339` |
| 13 | `lemma` | [integral_stieltjesOfMeasurableRat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/integral-stieltjesofmeasurablerat--8745c7fa11344884f910c86d.md) | 213 | `result-track:8745c7fa11344884f910c86d4d89d65c8520f125aa516cf359a5884d78ac17c5` |
| 14 | `structure` | [IsRatCondKernelCDFAux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux--6343331843d9eb6c532ba224.md) | 228 | `declaration-track:6343331843d9eb6c532ba22449fe04947d7da8d3049a2f77f7715670ee985300` |
| 15 | `lemma` | [IsRatCondKernelCDFAux.measurable_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux-measurable-right--0f0d518a11b322860475c673.md) | 250 | `result-track:0f0d518a11b322860475c673532c0ca7947678cb52712f7b879094a5b5fdf449` |
| 16 | `lemma` | [IsRatCondKernelCDFAux.mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux-mono--45959178cef084f4446cd886.md) | 256 | `result-track:45959178cef084f4446cd88654b7062d283ca46be26e97fe26ca8532cb02ba13` |
| 17 | `lemma` | [IsRatCondKernelCDFAux.nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux-nonneg--c31f90c67611c3e1343fcaa8.md) | 262 | `result-track:c31f90c67611c3e1343fcaa804358a3cd7ca4db01ac45accf0aec4516f218eec` |
| 18 | `lemma` | [IsRatCondKernelCDFAux.le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux-le-one--e58a0340ab28b7ce329d30d4.md) | 265 | `result-track:e58a0340ab28b7ce329d30d4b6b52be4c59d95d1a576afac69ba7a547dbeb8f9` |
| 19 | `lemma` | [IsRatCondKernelCDFAux.tendsto_zero_of_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux-tendsto-zero-of-antitone--c27dbe8df01641ed4056f3c7.md) | 268 | `result-track:c27dbe8df01641ed4056f3c72e6828dff72ae523fc517ddd23d4aacba1365531` |
| 20 | `lemma` | [IsRatCondKernelCDFAux.tendsto_one_of_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux-tendsto-one-of-monotone--8aa92a6d2f458d026d1089c0.md) | 279 | `result-track:8aa92a6d2f458d026d1089c07a3193fbb81e96273e3bb5e9ed1ba43ad2e60ad8` |
| 21 | `lemma` | [IsRatCondKernelCDFAux.tendsto_atTop_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux-tendsto-attop-one--8a6ddcf7a3791eb11d2ec78d.md) | 290 | `result-track:8a6ddcf7a3791eb11d2ec78dd3e690ca04f2bee1b24e5f0cde12c6af4bacaad7` |
| 22 | `lemma` | [IsRatCondKernelCDFAux.tendsto_atBot_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux-tendsto-atbot-zero--a8fea15a716e87f2275404a1.md) | 300 | `result-track:a8fea15a716e87f2275404a1807a80f49c6454ac05597507603549bda8029ed6` |
| 23 | `lemma` | [IsRatCondKernelCDFAux.bddBelow_range](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux-bddbelow-range--5bef57a11ad17411ed78c3a2.md) | 317 | `result-track:5bef57a11ad17411ed78c3a2b984bb23e8ed2767040595c8518faec336952014` |
| 24 | `lemma` | [IsRatCondKernelCDFAux.integrable_iInf_rat_gt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux-integrable-iinf-rat-gt--0a9b5c92961d911de5e08e30.md) | 323 | `result-track:0a9b5c92961d911de5e08e306026a624dc0b88d06a775d6294ccd2e27752a455` |
| 25 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.IsRatCondKernelCDF.Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.MeasureTheory.Measure.iInf_rat_gt_prod_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/root-grwtsk-analysis-realanalysis-integration-isratcondkernelcdf-variant--ce54fcdacfd7711a375a3a9b.md) | 339 | `result-track:ce54fcdacfd7711a375a3a9b36117dafbf6ebcf7e0dafa9c5fee3b89fc03a301` |
| 26 | `lemma` | [IsRatCondKernelCDFAux.setIntegral_iInf_rat_gt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux-setintegral-iinf-rat-gt--6e44ecf1e9e126fc84815710.md) | 354 | `result-track:6e44ecf1e9e126fc84815710ac90ab64ca26890e88de98ea6105b735cf654aaa` |
| 27 | `lemma` | [IsRatCondKernelCDFAux.iInf_rat_gt_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux-iinf-rat-gt-eq--1632c779ceb82a2f31458b45.md) | 377 | `result-track:1632c779ceb82a2f31458b45a3f58ec321e1710d8ae93e6eb44a38e0a8176b73` |
| 28 | `lemma` | [IsRatCondKernelCDFAux.isRatStieltjesPoint_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux-isratstieltjespoint-ae--c0767092d2e1c70a822d35ba.md) | 387 | `result-track:c0767092d2e1c70a822d35ba43f56e43b320fdf196a7bcd8b86927f3ea2674af` |
| 29 | `lemma` | [IsRatCondKernelCDFAux.isRatCondKernelCDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/isratcondkernelcdfaux-isratcondkernelcdf--01845c29d63eb0efebb43bfd.md) | 394 | `result-track:01845c29d63eb0efebb43bfd019095c7f93dc61b94e9e4e44e15c974e896ca58` |
| 30 | `structure` | [IsCondKernelCDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/iscondkernelcdf--ae00eb577c0b8a10696031db.md) | 412 | `declaration-track:ae00eb577c0b8a10696031db0248ad090bff232e05097e19ef074d78b4197c65` |
| 31 | `lemma` | [IsCondKernelCDF.nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/iscondkernelcdf-nonneg--31b04e27ffa9b2e2ffdb3266.md) | 421 | `result-track:31b04e27ffa9b2e2ffdb32667ee3990b8083a53fd7f8a3debbb8e9b4c034a3e7` |
| 32 | `lemma` | [IsCondKernelCDF.le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/iscondkernelcdf-le-one--cfa874431665439fe9ed748e.md) | 424 | `result-track:cfa874431665439fe9ed748ed482d64f05779e6aa1e69cebafb36b1782da8729` |
| 33 | `lemma` | [IsCondKernelCDF.integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/iscondkernelcdf-integral--dc3ac95ba385edf6ae47d541.md) | 427 | `result-track:dc3ac95ba385edf6ae47d5416baf128b3633ba0dc47fc28ad00e7d938e3ef0ad` |
| 34 | `lemma` | [IsCondKernelCDF.setLIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/iscondkernelcdf-setlintegral--731d7481debe1cf4e8603758.md) | 432 | `result-track:731d7481debe1cf4e86037586c1bff9e3aa5cdb87a4afcf1b396e19eb789d6c1` |
| 35 | `lemma` | [IsCondKernelCDF.lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/iscondkernelcdf-lintegral--e28fd8792009176a9a43d26d.md) | 439 | `result-track:e28fd8792009176a9a43d26d05b75681b53cf01d8c56bf0f162ec5dc6ece9481` |
| 36 | `lemma` | [isCondKernelCDF_stieltjesOfMeasurableRat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/iscondkernelcdf-stieltjesofmeasurablerat--85fce0231fd90da58da0761d.md) | 444 | `result-track:85fce0231fd90da58da0761dd59f83e004650715f2444ba47e374326605bc49b` |
| 37 | `def` | [IsCondKernelCDF.toKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/iscondkernelcdf-tokernel--34c208ab939033642f160a26.md) | 463 | `declaration-track:34c208ab939033642f160a26d273583d3e6e1d23141643327efd5db2c6f9c45d` |
| 38 | `lemma` | [IsCondKernelCDF.toKernel_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/iscondkernelcdf-tokernel-apply--8f21a9f5fc71043e25584054.md) | 469 | `result-track:8f21a9f5fc71043e2558405434569a8ca0922a1fcab7d730f4594cab419be4b9` |
| 39 | `instance` | [instIsMarkovKernel_toKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/instismarkovkernel-tokernel--a97f3b5877c5060cb35f59a6.md) | 472 | `declaration-track:a97f3b5877c5060cb35f59a6acf7d9ad2cd7401880b404720e3662e0eafd9d54` |
| 40 | `lemma` | [IsCondKernelCDF.toKernel_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/iscondkernelcdf-tokernel-iic--7a973bab18b5dcc74ce3aa91.md) | 476 | `result-track:7a973bab18b5dcc74ce3aa917717f787bb43009ffa46a5087b57c2922735f1a8` |
| 41 | `lemma` | [setLIntegral_toKernel_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/setlintegral-tokernel-iic--d7d52692e2d36227db2b56d0.md) | 487 | `result-track:d7d52692e2d36227db2b56d0786f1026d998ddef01673ac00e7eaeba8ad7556b` |
| 42 | `lemma` | [setLIntegral_toKernel_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/setlintegral-tokernel-univ--4d656c6387ad86ac7411665c.md) | 493 | `result-track:4d656c6387ad86ac7411665cf698cc1a3438813dce267b013ffcaa436057c12e` |
| 43 | `lemma` | [lintegral_toKernel_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/lintegral-tokernel-univ--59925f0f4c9a1925c5017204.md) | 512 | `result-track:59925f0f4c9a1925c50172040bb4cef332d709350c63bfb692c99480d0296494` |
| 44 | `lemma` | [setLIntegral_toKernel_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/setlintegral-tokernel-prod--1f106c47e3e398675cc3c1e7.md) | 516 | `result-track:1f106c47e3e398675cc3c1e721294b18a99da663d8847694c6940310cef57e77` |
| 45 | `lemma` | [lintegral_toKernel_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/lintegral-tokernel-mem--caef1ec12b6b0dd65da0daee.md) | 557 | `result-track:caef1ec12b6b0dd65da0daee347423e384f924c421f7d8e56047813715362e32` |
| 46 | `lemma` | [compProd_toKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/declarations/compprod-tokernel--9e592289ca8810a431b2fc34.md) | 628 | `result-track:9e592289ca8810a431b2fc34eb18532b572b3fecf992c3e80d94e566aa8d03f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
