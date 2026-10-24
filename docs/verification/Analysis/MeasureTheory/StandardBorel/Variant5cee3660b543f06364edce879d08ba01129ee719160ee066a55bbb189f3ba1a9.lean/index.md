# Verification target: GRWTSK.Analysis.MeasureTheory.StandardBorel.Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "156e851c5f54e19386ae6486675ed4aeb73f549f",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `156e851c5f54e19386ae6486675ed4aeb73f549f`.

Source path: `GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.MeasureCompProd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.CondCDF` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.Density` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.CDFToKernel` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.EmbeddingReal` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isRatCondKernelCDFAux_density_Iic](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/isratcondkernelcdfaux-density-iic--73a4b60ccf27944fe98268c1.md) | 87 | `result-track:73a4b60ccf27944fe98268c1289886a770a36e3fec358d08a63fce1764bd5c49` |
| 2 | `lemma` | [isRatCondKernelCDF_density_Iic](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/isratcondkernelcdf-density-iic--29a13905540d71c88ac3f57a.md) | 124 | `result-track:29a13905540d71c88ac3f57a0039ffb5234b515ac0b2c0ea41a69ab1d9fc12a1` |
| 3 | `def` | [condKernelCDF](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/condkernelcdf--8c652f79b7f13e4878b30359.md) | 131 | `declaration-track:8c652f79b7f13e4878b30359a3017870087a1e74b9b6cd2fa80df78f5c3f2f5d` |
| 4 | `lemma` | [isCondKernelCDF_condKernelCDF](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/iscondkernelcdf-condkernelcdf--07e89ece97994b0161b347a8.md) | 135 | `result-track:07e89ece97994b0161b347a8bd3bcdb54ffb2b980f74e6182853509dfd48cc9c` |
| 5 | `def` | [condKernelReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/condkernelreal--cbdbea7f8340e5ee764ef9a2.md) | 142 | `declaration-track:cbdbea7f8340e5ee764ef9a2494f1e5ed119e2c562bb9bb09cb2bd8173c80b61` |
| 6 | `instance` | [instIsMarkovKernelCondKernelReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/instismarkovkernelcondkernelreal--d6d6d7cb24bc7d4f9a71c2de.md) | 145 | `declaration-track:d6d6d7cb24bc7d4f9a71c2de764fe094234b9b047b1f04c4d82d93c81c5d025b` |
| 7 | `lemma` | [compProd_fst_condKernelReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/compprod-fst-condkernelreal--448be92d476395a7c72d5f50.md) | 150 | `result-track:448be92d476395a7c72d5f508a084bdc9c6768c4cb318be187a15bec5f578f59` |
| 8 | `def` | [condKernelUnitReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/condkernelunitreal--b8c09239b64a859a4795d51b.md) | 158 | `declaration-track:b8c09239b64a859a4795d51b26b29cc7905935ab709bf6073134af06c8cb820b` |
| 9 | `instance` | [instIsMarkovKernelCondKernelUnitReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/instismarkovkernelcondkernelunitreal--6097d82eb60342fa5ac49cb4.md) | 161 | `declaration-track:6097d82eb60342fa5ac49cb478854ebad112aeb513a7ef345a82ca60db5a16ec` |
| 10 | `instance` | [condKernelUnitReal.instIsCondKernel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/condkernelunitreal-instiscondkernel--ff30cfafe4230e45c37b9cdd.md) | 166 | `declaration-track:ff30cfafe4230e45c37b9cddbbb0d32d4d2d1c972bd80ec4816397f7f43afd5c` |
| 11 | `def` | [borelMarkovFromReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/borelmarkovfromreal--cce14dc9834a2ef6d70e2fff.md) | 189 | `declaration-track:cce14dc9834a2ef6d70e2fffd7c923e1922d154a80096e854c2f89bb91c1092f` |
| 12 | `lemma` | [borelMarkovFromReal_apply](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/borelmarkovfromreal-apply--cd30f2c5e3385ea34fc4999c.md) | 199 | `result-track:cd30f2c5e3385ea34fc4999ca982e3f1f51f0f1a33c59b4400abf46dc215bbab` |
| 13 | `lemma` | [borelMarkovFromReal_apply'](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/borelmarkovfromreal-apply--c25010c0af5ddcb77a176529.md) | 209 | `result-track:c25010c0af5ddcb77a176529c2210ebfce80a03c996663ee0f33f969f2cb1921` |
| 14 | `instance` | [instIsSFiniteKernelBorelMarkovFromReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/instissfinitekernelborelmarkovfromreal--dc120cf100c30ec76ec0a96f.md) | 221 | `declaration-track:dc120cf100c30ec76ec0a96f4c697bc59c4adc47579e868b9c9ca1a37fac6205` |
| 15 | `instance` | [instIsFiniteKernelBorelMarkovFromReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/instisfinitekernelborelmarkovfromreal--93b0c7671940cb0672bfb71c.md) | 226 | `declaration-track:93b0c7671940cb0672bfb71c7cc6ca323e614fe6f04a49cc6e36daa42176ec96` |
| 16 | `instance` | [instIsMarkovKernelBorelMarkovFromReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/instismarkovkernelborelmarkovfromreal--b7a8324b9341228edd72f859.md) | 231 | `declaration-track:b7a8324b9341228edd72f8593d6164e446ac8cea6a944bbfbe7d0ccd70a4a001` |
| 17 | `lemma` | [compProd_fst_borelMarkovFromReal_eq_comapRight_compProd](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/compprod-fst-borelmarkovfromreal-eq-comapright-compprod--1abba9fb06a937e707079c4f.md) | 243 | `result-track:1abba9fb06a937e707079c4f4a09b287654c598760870339809a036d28c2630c` |
| 18 | `lemma` | [compProd_fst_borelMarkovFromReal](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/compprod-fst-borelmarkovfromreal--32ba93de84e2cf50189e8a3a.md) | 292 | `result-track:32ba93de84e2cf50189e8a3abfed4bca081e799817e204bf206d949a37758dca` |
| 19 | `def` | [condKernelBorel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/condkernelborel--f3bea30234d82e8420f5d766.md) | 320 | `declaration-track:f3bea30234d82e8420f5d76651e2ccb1522cf7b9e1b5cb9fb566063b88a0c1fb` |
| 20 | `instance` | [instIsMarkovKernelCondKernelBorel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/instismarkovkernelcondkernelborel--b0819247c2cee40233b299c6.md) | 324 | `declaration-track:b0819247c2cee40233b299c6e8f4eb1735f09f1e6ba0d9ee5c34e746cab8c205` |
| 21 | `instance` | [condKernelBorel.instIsCondKernel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/condkernelborel-instiscondkernel--dc1db3d34c57326a22335e3f.md) | 329 | `declaration-track:dc1db3d34c57326a22335e3f3d77d6a92d5427e2b6de65e41465fc907acaa22a` |
| 22 | `def` | [condKernelUnitBorel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/condkernelunitborel--69f7884d43cf52e7e01a6136.md) | 343 | `declaration-track:69f7884d43cf52e7e01a61365c7b11a64589bc70355a3f00b809bdd595d1ff64` |
| 23 | `instance` | [instIsMarkovKernelCondKernelUnitBorel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/instismarkovkernelcondkernelunitborel--33d037b63cff2bf367fc7d94.md) | 347 | `declaration-track:33d037b63cff2bf367fc7d94904b3fe004c9d348d00c1b8a0c4ab32055854499` |
| 24 | `instance` | [condKernelUnitBorel.instIsCondKernel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/condkernelunitborel-instiscondkernel--9b3dd4186b7e65074eab071b.md) | 351 | `declaration-track:9b3dd4186b7e65074eab071b4ff80793df1439dd05ba0d02796d6390b31e4679` |
| 25 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.IsRatCondKernelCDFAuxDensityIic.Variant6cf6290e0c5867d393367b47f2bdf98c499a1e2e30add73c21eb4deb316cdf73.MeasureTheory.Measure.condKernel_apply](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/root-grwtsk-analysis-measuretheory-isratcondkernelcdfauxdensityiic-varia--fe0bad85a7e55637bf62ab2d.md) | 368 | `result-track:fe0bad85a7e55637bf62ab2dc946b23682ea768b10dc9df255888c13d64319bf` |
| 26 | `instance` | [_root_.GRWTSK.Analysis.MeasureTheory.IsRatCondKernelCDFAuxDensityIic.Variant6cf6290e0c5867d393367b47f2bdf98c499a1e2e30add73c21eb4deb316cdf73.MeasureTheory.Measure.condKernel.instIsCondKernel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/root-grwtsk-analysis-measuretheory-isratcondkernelcdfauxdensityiic-varia--eea016172530a60c849ff66b.md) | 373 | `declaration-track:eea016172530a60c849ff66b2ea5c3628bafa2225ad272538e3ac556d2739614` |
| 27 | `instance` | [_root_.GRWTSK.Analysis.MeasureTheory.IsRatCondKernelCDFAuxDensityIic.Variant6cf6290e0c5867d393367b47f2bdf98c499a1e2e30add73c21eb4deb316cdf73.MeasureTheory.Measure.instIsMarkovKernelCondKernel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/root-grwtsk-analysis-measuretheory-isratcondkernelcdfauxdensityiic-varia--89712a7db861114f34d33e5c.md) | 385 | `declaration-track:89712a7db861114f34d33e5ce66888e1869cbea63a346ce8bab0db298a1e412a` |
| 28 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.IsRatCondKernelCDFAuxDensityIic.Variant6cf6290e0c5867d393367b47f2bdf98c499a1e2e30add73c21eb4deb316cdf73.MeasureTheory.Measure.condKernel_apply_of_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/root-grwtsk-analysis-measuretheory-isratcondkernelcdfauxdensityiic-varia--031fa0424b9fcdba5fc27e80.md) | 392 | `result-track:031fa0424b9fcdba5fc27e80995e8ab3eeb17ef1dbd6a28a8960f5db88d04045` |
| 29 | `instance` | [instIsMarkovKernelCondKernel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/instismarkovkernelcondkernel--2f9da2c0457c5fb16f569a53.md) | 416 | `declaration-track:2f9da2c0457c5fb16f569a5376f10306e988a15ce8dc30c181a4ca75940cb465` |
| 30 | `instance` | [condKernel.instIsCondKernel](../../../../../mathematics/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/declarations/condkernel-instiscondkernel--469eb6abea4c4aca189056de.md) | 420 | `declaration-track:469eb6abea4c4aca189056de9b6b6f009eeffe4d8a3ba0e842d4dc1624500636` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
