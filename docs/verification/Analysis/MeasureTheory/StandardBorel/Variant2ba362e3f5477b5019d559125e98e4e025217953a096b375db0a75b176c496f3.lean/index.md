# Verification target: GRWTSK.Analysis.MeasureTheory.StandardBorel.Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b52361ba85600d66244b4c96c55f6dd9ae3c9955",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b52361ba85600d66244b4c96c55f6dd9ae3c9955`.

Source path: `GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean.json)

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
| 1 | `lemma` | [isRatCondKernelCDFAux_density_Iic](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/isratcondkernelcdfaux-density-iic--4757a676730f494393798dfc.md) | 83 | `result-track:4757a676730f494393798dfcc6165d9e5fa4546580ad1503e2c99c57e05649ac` |
| 2 | `lemma` | [isRatCondKernelCDF_density_Iic](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/isratcondkernelcdf-density-iic--b0cdb70783b7d00a93dbfef9.md) | 120 | `result-track:b0cdb70783b7d00a93dbfef9aa6bbfffb583a526b751783596e1ff83acf7847a` |
| 3 | `def` | [condKernelCDF](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/condkernelcdf--95e58cb4cafc322c09b378a8.md) | 127 | `declaration-track:95e58cb4cafc322c09b378a8b7907d4594059a266402ad737323e0775fc15626` |
| 4 | `lemma` | [isCondKernelCDF_condKernelCDF](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/iscondkernelcdf-condkernelcdf--1d4051fed730f059a7dd63cf.md) | 131 | `result-track:1d4051fed730f059a7dd63cf70111a2a88f774a45b7120f3e915b1e448e95ac4` |
| 5 | `def` | [condKernelReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/condkernelreal--7655dc29b63fa365ebd684d9.md) | 138 | `declaration-track:7655dc29b63fa365ebd684d9be38f6167f702a5a378261472e1c6eb71fbfd479` |
| 6 | `instance` | [instIsMarkovKernelCondKernelReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/instismarkovkernelcondkernelreal--1345b225694b98c246ec33c5.md) | 141 | `declaration-track:1345b225694b98c246ec33c50ed9ba6c03f0e2fcf5300b54fc3268fd48e39c17` |
| 7 | `lemma` | [compProd_fst_condKernelReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/compprod-fst-condkernelreal--5f97b996e3e8b75844a871fb.md) | 146 | `result-track:5f97b996e3e8b75844a871fbcd2eab8f3b31ca294a87a6226b019cf698ecfec4` |
| 8 | `def` | [condKernelUnitReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/condkernelunitreal--f4b75c8af651a61dd56bcb46.md) | 154 | `declaration-track:f4b75c8af651a61dd56bcb4691d85f96435ad21966029d52de93979d54e64a56` |
| 9 | `instance` | [instIsMarkovKernelCondKernelUnitReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/instismarkovkernelcondkernelunitreal--d53981fbfce8a06fe8cd3a8d.md) | 157 | `declaration-track:d53981fbfce8a06fe8cd3a8d9ad2f329106f2f13a13a4d0e612c725447135edd` |
| 10 | `instance` | [condKernelUnitReal.instIsCondKernel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/condkernelunitreal-instiscondkernel--6e1c32ff5cb50f95e5d232ee.md) | 162 | `declaration-track:6e1c32ff5cb50f95e5d232eeeceb007b29834b2a56bd56e8e4698c30a11dcfcd` |
| 11 | `def` | [borelMarkovFromReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/borelmarkovfromreal--c5677afa8e18bff32b2dfdff.md) | 187 | `declaration-track:c5677afa8e18bff32b2dfdff035ddf1236c69a9195278d214cf620ff617ea588` |
| 12 | `lemma` | [borelMarkovFromReal_apply](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/borelmarkovfromreal-apply--cca27ed2ca33a2ce16ebeb3a.md) | 197 | `result-track:cca27ed2ca33a2ce16ebeb3a9c8c86b0a66e8055605609e7d38752d7ab036b8e` |
| 13 | `lemma` | [borelMarkovFromReal_apply'](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/borelmarkovfromreal-apply--c7823f924d0ef7128409ae3e.md) | 207 | `result-track:c7823f924d0ef7128409ae3e7c229cea5b37e5b2df1937ee56df2b9c3334be2b` |
| 14 | `instance` | [instIsSFiniteKernelBorelMarkovFromReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/instissfinitekernelborelmarkovfromreal--c5fc7b8fd144aa1c872af93e.md) | 219 | `declaration-track:c5fc7b8fd144aa1c872af93e6426a78b473b3d12d36c4af00f26ce78a5d1fa02` |
| 15 | `instance` | [instIsFiniteKernelBorelMarkovFromReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/instisfinitekernelborelmarkovfromreal--5051953a356d9febbcf1d4a5.md) | 224 | `declaration-track:5051953a356d9febbcf1d4a5c594e507c0a18e28c3bd514317bec33f9dd53462` |
| 16 | `instance` | [instIsMarkovKernelBorelMarkovFromReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/instismarkovkernelborelmarkovfromreal--918dc933abd5a59601fa51b0.md) | 229 | `declaration-track:918dc933abd5a59601fa51b0e12c1b150b888fe5f197815fb7cd92e6d0ed0d3d` |
| 17 | `lemma` | [compProd_fst_borelMarkovFromReal_eq_comapRight_compProd](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/compprod-fst-borelmarkovfromreal-eq-comapright-compprod--fa3f8d1bd70e49e937b9d2c8.md) | 241 | `result-track:fa3f8d1bd70e49e937b9d2c8779f063b1b1cfa3cd2913aec89b6059402890610` |
| 18 | `lemma` | [compProd_fst_borelMarkovFromReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/compprod-fst-borelmarkovfromreal--36318c4deeb583b291e75b03.md) | 290 | `result-track:36318c4deeb583b291e75b0388d59d96199c07a3e6c0f9a5ea7f57d86eb583e5` |
| 19 | `def` | [condKernelBorel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/condkernelborel--1138d1cd31bfb95e5ba2afa1.md) | 318 | `declaration-track:1138d1cd31bfb95e5ba2afa1194de7ca324c41c636d5549d327e5445e39327cd` |
| 20 | `instance` | [instIsMarkovKernelCondKernelBorel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/instismarkovkernelcondkernelborel--385c9cfd2a550d132179dc59.md) | 322 | `declaration-track:385c9cfd2a550d132179dc595e2ada8115c72a59ea04e680f7b91db3d518da87` |
| 21 | `instance` | [condKernelBorel.instIsCondKernel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/condkernelborel-instiscondkernel--8bb70e397a0f3c502291c296.md) | 327 | `declaration-track:8bb70e397a0f3c502291c296b03bc0a60df5cf9b42fc06bd762b89a2146ece2e` |
| 22 | `def` | [condKernelUnitBorel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/condkernelunitborel--e91eaa6d171fa89ec5fdd33e.md) | 341 | `declaration-track:e91eaa6d171fa89ec5fdd33e3d1ba4bea428ede65c3efd1e20b3153598137083` |
| 23 | `instance` | [instIsMarkovKernelCondKernelUnitBorel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/instismarkovkernelcondkernelunitborel--898d0ca689740b7d6d5ed241.md) | 345 | `declaration-track:898d0ca689740b7d6d5ed24122606c818192f26bbeb35c1b2c27db65bd278368` |
| 24 | `instance` | [condKernelUnitBorel.instIsCondKernel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/condkernelunitborel-instiscondkernel--326fb0e6f0eb026d17bd0ba7.md) | 349 | `declaration-track:326fb0e6f0eb026d17bd0ba73b83bbd2266f8288b20af1cb9eb3cccf19de6c09` |
| 25 | `lemma` | [_root_.MeasureTheory.Measure.condKernel_apply](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/root-measuretheory-measure-condkernel-apply--74ca6383f7249e3205a23ee8.md) | 366 | `result-track:74ca6383f7249e3205a23ee8ec27affb4bb266cc45fe05a7f9928ffaab3787d9` |
| 26 | `instance` | [_root_.MeasureTheory.Measure.condKernel.instIsCondKernel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/root-measuretheory-measure-condkernel-instiscondkernel--d5dd9b324c142120d4c0b7ae.md) | 371 | `declaration-track:d5dd9b324c142120d4c0b7aed780ef025e446101ccc4afeb4c12016f145ce9ab` |
| 27 | `instance` | [_root_.MeasureTheory.Measure.instIsMarkovKernelCondKernel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/root-measuretheory-measure-instismarkovkernelcondkernel--5463a0033016e2fa0cd6643e.md) | 383 | `declaration-track:5463a0033016e2fa0cd6643e2bc6c169f02105273b42ad4af205c5f5c4b663f7` |
| 28 | `lemma` | [_root_.MeasureTheory.Measure.condKernel_apply_of_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/root-measuretheory-measure-condkernel-apply-of-ne-zero--e7eae5b4e88c10d93fa03c1e.md) | 390 | `result-track:e7eae5b4e88c10d93fa03c1e57d270d93b5a074823bb40e9d672a61a4b15e8ce` |
| 29 | `instance` | [instIsMarkovKernelCondKernel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/instismarkovkernelcondkernel--9a1f5d5cf248abd890af3d93.md) | 413 | `declaration-track:9a1f5d5cf248abd890af3d932a03dd24407700c5f69a57b13fdaffdf34b78808` |
| 30 | `instance` | [condKernel.instIsCondKernel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/declarations/condkernel-instiscondkernel--249b353871f1d2ca59798820.md) | 417 | `declaration-track:249b353871f1d2ca59798820bf42ec867c355c0ee0ce83f217c11ea370c36c88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
