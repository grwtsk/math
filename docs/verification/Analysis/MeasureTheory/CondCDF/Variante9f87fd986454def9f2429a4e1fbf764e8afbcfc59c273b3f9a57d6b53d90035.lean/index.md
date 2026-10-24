# Verification target: GRWTSK.Analysis.MeasureTheory.CondCDF.Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd149b39a23f97725d9f6f82209f8dace9845ea5",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd149b39a23f97725d9f6f82209f8dace9845ea5`.

Source path: `GRWTSK/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.CDFToKernel` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IicSnd](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/iicsnd--424d2e22459d023f98dad573.md) | 57 | `declaration-track:424d2e22459d023f98dad5735fb6630d991d69f23acd277be5a3f7de7cd40cb5` |
| 2 | `theorem` | [IicSnd_apply](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/iicsnd-apply--c308c3379551803f72553fa5.md) | 60 | `result-track:c308c3379551803f72553fa53173097bd3e6e0f5983664ddebc26287a29b49de` |
| 3 | `theorem` | [IicSnd_univ](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/iicsnd-univ--ec23926ca65786b6bf5863e0.md) | 65 | `result-track:ec23926ca65786b6bf5863e01b79459d8668590e7b4da12d58ec07ef7dde10bb` |
| 4 | `theorem` | [IicSnd_mono](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/iicsnd-mono--da11aace7ff5eb7a45d3b9ca.md) | 69 | `result-track:da11aace7ff5eb7a45d3b9ca9edfbd58e5b92b4412104963bd7f90adba74d6a8` |
| 5 | `theorem` | [IicSnd_le_fst](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/iicsnd-le-fst--a577c746f46d6252ee058264.md) | 72 | `result-track:a577c746f46d6252ee0582645cbcb632637267bf319e079bcbd32c55d3d15fa4` |
| 6 | `theorem` | [IicSnd_ac_fst](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/iicsnd-ac-fst--989d98dda6c67e8c71c6fdea.md) | 75 | `result-track:989d98dda6c67e8c71c6fdea2e561be5c3860d0a402bff37546b914fabd7bcda` |
| 7 | `theorem` | [IsFiniteMeasure.IicSnd](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/isfinitemeasure-iicsnd--aca1fc6a3ea22a16384a2b33.md) | 78 | `result-track:aca1fc6a3ea22a16384a2b33cf7ed9691d6d3cd74921a5cde991485f86ce2d7d` |
| 8 | `theorem` | [iInf_IicSnd_gt](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/iinf-iicsnd-gt--db4dda497bf6c081acdb63de.md) | 82 | `result-track:db4dda497bf6c081acdb63de5e558b064ed7436ce3f12ee8ddf059f6ab5d9725` |
| 9 | `theorem` | [tendsto_IicSnd_atTop](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/tendsto-iicsnd-attop--8ac71c7c23842101c7de603b.md) | 86 | `result-track:8ac71c7c23842101c7de603b3405b7b19d594ccc296f5b436a9f0b90474dd593` |
| 10 | `theorem` | [tendsto_IicSnd_atBot](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/tendsto-iicsnd-atbot--03907fb974d9eacc342ecedb.md) | 93 | `result-track:03907fb974d9eacc342ecedb1462530cf3a82616b62a2cdb9b73d498c2e22c41` |
| 11 | `def` | [preCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/precdf--a602132d5f218a5a349fcfcf.md) | 141 | `declaration-track:a602132d5f218a5a349fcfcf9843f31c92adc2bac93e0158d5931650a3fbcbd9` |
| 12 | `theorem` | [measurable_preCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/measurable-precdf--e0429fbd339077bdc3bda9b1.md) | 144 | `result-track:e0429fbd339077bdc3bda9b1b99b0b0eed997d5b5c0b0efa758b390a1d0a2e14` |
| 13 | `lemma` | [measurable_preCDF'](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/measurable-precdf--e8cda08b2aaf2ef2bb663a88.md) | 147 | `result-track:e8cda08b2aaf2ef2bb663a881a03cff939ec5495d640fce07bea8aa1888bc9f8` |
| 14 | `theorem` | [withDensity_preCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/withdensity-precdf--9428cc96b061e5d5a5289106.md) | 152 | `result-track:9428cc96b061e5d5a5289106596b69f0bb92d30c8758ad08309064d8ebd1badb` |
| 15 | `theorem` | [setLIntegral_preCDF_fst](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/setlintegral-precdf-fst--90e5b68be8487e03572eb541.md) | 156 | `result-track:90e5b68be8487e03572eb541854547736493f90f45724f9aea25e0f0b3f191cc` |
| 16 | `lemma` | [lintegral_preCDF_fst](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/lintegral-precdf-fst--544c616234428dff7c2a2357.md) | 166 | `result-track:544c616234428dff7c2a23573e0cf2714ddce1d0f1ba2dacf6d1fe07bd2c668f` |
| 17 | `theorem` | [monotone_preCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/monotone-precdf--3e7fc5650ca74d0d2c700c1e.md) | 170 | `result-track:3e7fc5650ca74d0d2c700c1e2266bbd5f5d3f92d18588a067df713a42f663ecf` |
| 18 | `theorem` | [preCDF_le_one](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/precdf-le-one--6fcda62076bce8696342813f.md) | 178 | `result-track:6fcda62076bce8696342813fee201ba607f93dbbdebc663b111816f05df2415d` |
| 19 | `lemma` | [setIntegral_preCDF_fst](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/setintegral-precdf-fst--0a63b05e213caee8388428af.md) | 186 | `result-track:0a63b05e213caee8388428afe362dd5e9bda21add982b958c3df611ad0062e75` |
| 20 | `lemma` | [integral_preCDF_fst](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/integral-precdf-fst--a58222275ad3266b96b627cf.md) | 196 | `result-track:a58222275ad3266b96b627cf4daba57bee7939a609b7edfec92299ab171f5674` |
| 21 | `lemma` | [integrable_preCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/integrable-precdf--d230e13427f891f17bcf96f1.md) | 200 | `result-track:d230e13427f891f17bcf96f1d44e5b8567adc35f336e442d87cc01f830b6b362` |
| 22 | `lemma` | [isRatCondKernelCDFAux_preCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/isratcondkernelcdfaux-precdf--24c1f545899e81477b7fb452.md) | 209 | `result-track:24c1f545899e81477b7fb4520699ccfad2550bd88f4634075ac12945114c2718` |
| 23 | `lemma` | [isRatCondKernelCDF_preCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/isratcondkernelcdf-precdf--27e1fc384b207ae6fe1d7caf.md) | 239 | `result-track:27e1fc384b207ae6fe1d7caf785b295390eb1cb210d169a9b6e182cc6c2306d7` |
| 24 | `def` | [condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/condcdf--1c9391ca8152947aae2d4b68.md) | 247 | `declaration-track:1c9391ca8152947aae2d4b685f1c494000849aba581fa6db2db30f55accd67a0` |
| 25 | `lemma` | [condCDF_eq_stieltjesOfMeasurableRat_unit_prod](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/condcdf-eq-stieltjesofmeasurablerat-unit-prod--5627e10eb9673a8a6edf4f59.md) | 250 | `result-track:5627e10eb9673a8a6edf4f59e348742885696dc33dfd44f93aa7ef0f98f98fb7` |
| 26 | `lemma` | [isCondKernelCDF_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/iscondkernelcdf-condcdf--f673f3089a2dd7fa63a2b333.md) | 256 | `result-track:f673f3089a2dd7fa63a2b333df38ac01f8dfa8f3d601465c6507353b97fe324e` |
| 27 | `theorem` | [condCDF_nonneg](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/condcdf-nonneg--4ea467e5ecdd42ca42973127.md) | 263 | `result-track:4ea467e5ecdd42ca429731273bfb4f2a1d1a80e4fdc98c5e1d240e34ee5a247c` |
| 28 | `theorem` | [condCDF_le_one](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/condcdf-le-one--dd312b74a88a9d5c8af78322.md) | 267 | `result-track:dd312b74a88a9d5c8af78322330f88e06d62b739ee9f5eb9ef52cfafe6a31e70` |
| 29 | `theorem` | [tendsto_condCDF_atBot](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/tendsto-condcdf-atbot--5ced42a314d78b393a18fe14.md) | 271 | `result-track:5ced42a314d78b393a18fe14bf9f5a56677a29d0cda30f0fe0cc76cfc63c0916` |
| 30 | `theorem` | [tendsto_condCDF_atTop](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/tendsto-condcdf-attop--5335e4afffbb6795ae2f40d6.md) | 275 | `result-track:5335e4afffbb6795ae2f40d64791ee05eda098eb97848673b2a889e8adb60ffb` |
| 31 | `theorem` | [condCDF_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/condcdf-ae-eq--5d2e59808570d95cd90d65c1.md) | 278 | `result-track:5d2e59808570d95cd90d65c1d26fe177fd025b3ffaa565fd301859c83561a8a6` |
| 32 | `theorem` | [ofReal_condCDF_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/ofreal-condcdf-ae-eq--cc9499b0051ea8ca39f988bf.md) | 283 | `result-track:cc9499b0051ea8ca39f988bf552792b54d4f8438689b15a06d6942116aaf0980` |
| 33 | `theorem` | [measurable_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/measurable-condcdf--fada51cd5e8a14a8af63110d.md) | 290 | `result-track:fada51cd5e8a14a8af63110de8829d3318e798ff02f0e878b3f0a53de95722a1` |
| 34 | `theorem` | [stronglyMeasurable_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/stronglymeasurable-condcdf--6b1dbc720a0f7e887d5757fa.md) | 294 | `result-track:6b1dbc720a0f7e887d5757faa7acd18a1e0f51b6806c63d2ec6bccd61c0fcb56` |
| 35 | `theorem` | [setLIntegral_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/setlintegral-condcdf--f06bb90354f23b0ab127d9b1.md) | 297 | `result-track:f06bb90354f23b0ab127d9b12f0068b6d14061d42c3044ef149f2925ca8bc764` |
| 36 | `theorem` | [lintegral_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/lintegral-condcdf--965e5a8951f63b8b1b1e86b2.md) | 302 | `result-track:965e5a8951f63b8b1b1e86b2dcc54ea6e45fcfdf5f02399f7ff4668938028c50` |
| 37 | `theorem` | [integrable_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/integrable-condcdf--5577dec562f2ee8480a946b8.md) | 306 | `result-track:5577dec562f2ee8480a946b88da7f8b098cb8aa2bf520c691f00c6cbf30ab0ff` |
| 38 | `theorem` | [setIntegral_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/setintegral-condcdf--6e33739abb68bde60f880f81.md) | 310 | `result-track:6e33739abb68bde60f880f815ce1d893eb22cffcd5fde4ab88b6b67ad960a143` |
| 39 | `theorem` | [integral_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/integral-condcdf--681a8088f18ad893611b6585.md) | 314 | `result-track:681a8088f18ad893611b658546c6ebf8bb262a949e61cfeac23384de44033506` |
| 40 | `theorem` | [measure_condCDF_Iic](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/measure-condcdf-iic--1dab3dfad1b845610b357c50.md) | 320 | `result-track:1dab3dfad1b845610b357c505d75c3f5736f7e64362fcc882fc1b68484b17d59` |
| 41 | `theorem` | [measure_condCDF_univ](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/measure-condcdf-univ--ce9e418a48960d2c2041c4bd.md) | 325 | `result-track:ce9e418a48960d2c2041c4bd72b807b5b30630d2e190bbae09708c85923bb049` |
| 42 | `instance` | [instIsProbabilityMeasureCondCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/instisprobabilitymeasurecondcdf--9933fd65a00a359a9a5509ef.md) | 329 | `declaration-track:9933fd65a00a359a9a5509efda39752b75c850aa4d36d345107282c320e9986f` |
| 43 | `theorem` | [measurable_measure_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/declarations/measurable-measure-condcdf--c6719fceb645bb47c9a1816c.md) | 334 | `result-track:c6719fceb645bb47c9a1816c9d06207e5d4f2b7b9fa28428245fc0a845a5fa9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
