# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusPerronCombined.Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b4075fbfaa968641a726275a4ca4d9d3ff65d74",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b4075fbfaa968641a726275a4ca4d9d3ff65d74`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Inversion` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [kernelIntegrand_integrable_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/kernelintegrand-integrable-ioi-zero--71a66043b7fbaf9fc9c6e2de.md) | 23 | `result-track:71a66043b7fbaf9fc9c6e2de05ea9b8dd02007a1708a8508ab06db3f4303f21e` |
| 2 | `theorem` | [integral_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/integral-first-moment--000dc18e1154b16dc8c6af69.md) | 37 | `result-track:000dc18e1154b16dc8c6af696a9fe930f76e3fe241f1521f203791564d656f13` |
| 3 | `def` | [dampedRamp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/dampedramp--a8cc981b320f3e57e66c8266.md) | 59 | `declaration-track:a8cc981b320f3e57e66c8266cc53a6385e93a1496e15411fe33cf3a929a895db` |
| 4 | `theorem` | [dampedRamp_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/dampedramp-continuous--e4458803bb6093174ee32122.md) | 63 | `result-track:e4458803bb6093174ee321226325a2bd9dbff65ee9d62966fffea2200385698b` |
| 5 | `theorem` | [dampedRamp_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/dampedramp-eq-indicator--8b2a10928a62bd8f03155c5d.md) | 68 | `result-track:8b2a10928a62bd8f03155c5d7af49d3b1790ab862aca8e29b5ecd87be44ef90d` |
| 6 | `theorem` | [dampedRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/dampedramp-integrable--f27516c33dddc61beefb6cc9.md) | 76 | `result-track:f27516c33dddc61beefb6cc978fd0c583997a3de5bac59f104425d926c904248` |
| 7 | `theorem` | [dampedRamp_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/dampedramp-fourier--7428222d3550c9a3c0357a6d.md) | 81 | `result-track:7428222d3550c9a3c0357a6d481d419e6248e688d4d44f9fe562748bd2dc4768` |
| 8 | `theorem` | [reciprocal_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/reciprocal-square-integrable--d317c580bf734bba60c479d9.md) | 100 | `result-track:d317c580bf734bba60c479d923375d97d7b2dc351ff7cc2ec825a347f0dfe7ae` |
| 9 | `theorem` | [dampedRamp_fourier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/dampedramp-fourier-integrable--a5109cb7daba078e658641dd.md) | 114 | `result-track:a5109cb7daba078e658641ddde1d3e49c377993c0f17d3ca18b27cb6f5d9e4c0` |
| 10 | `def` | [perronIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/perronintegrand--cd0f745ccfb53d433ed1ff2f.md) | 126 | `declaration-track:cd0f745ccfb53d433ed1ff2f9c414bbd1aa923f0c04f78d89129cb253a950570` |
| 11 | `theorem` | [perronIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/perronintegrand-integrable--d273eb19e423f20d6fe5c263.md) | 131 | `result-track:d273eb19e423f20d6fe5c26371735c46073a11bca747a25cd24b6dca95316130` |
| 12 | `theorem` | [vertical_ramp_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/vertical-ramp-inversion--415085b70c15ce4e47a397ea.md) | 144 | `result-track:415085b70c15ce4e47a397ea48ce07cb43e0bdeb76c54c3bcd21b3a2d95da0a8` |
| 13 | `theorem` | [elementary_perron_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/elementary-perron-kernel--4ab7466328afc0d3af78d99b.md) | 170 | `result-track:4ab7466328afc0d3af78d99b2055263797d028e2eb8064fc48e1c0b86d40cbe9` |
| 14 | `theorem` | [elementary_perron_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/elementary-perron-endpoint--4acad019ee99a6c677fffeb2.md) | 193 | `result-track:4acad019ee99a6c677fffeb2c818806be103528faed0bf5e9da47676d9f1cc98` |
| 15 | `theorem` | [elementary_perron_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/elementary-perron-ratio--e775f8a57cc184de63903197.md) | 198 | `result-track:e775f8a57cc184de63903197f29ebaf9c9c6711836caf0c5c61ca6e037caaaab` |
| 16 | `def` | [dirichletNumerator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/dirichletnumerator--fd64f80841845644f7a951a3.md) | 224 | `declaration-track:fd64f80841845644f7a951a391e0e4cba8530488eebc84a3e5e2ca36bc776e0e` |
| 17 | `def` | [correctedNumerator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/correctednumerator--8986b605613435c7dbe8c383.md) | 229 | `declaration-track:8986b605613435c7dbe8c383f849ab89360feab2605c59bb2ea54524b0dd4228` |
| 18 | `def` | [logNormalization](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/lognormalization--114c1d61e51815bd7a882ac6.md) | 234 | `declaration-track:114c1d61e51815bd7a882ac6ba645e70a69d6d46a9c19b802fee288782aa5bfe` |
| 19 | `theorem` | [exponential_at_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/exponential-at-half--13e32a7b5c841eb49d56cc63.md) | 239 | `result-track:13e32a7b5c841eb49d56cc632f7ce4dfaec0a6441a1f5248570311dfca965cf5` |
| 20 | `theorem` | [dirichletNumerator_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/dirichletnumerator-half--c192db7dc94bf9dd5a598b5e.md) | 249 | `result-track:c192db7dc94bf9dd5a598b5e851aa7c0d2138b6c850d5b9eaca9e3cd0f70d708` |
| 21 | `theorem` | [correctedNumerator_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/correctednumerator-half--4a87248e987ed5ef11ae1e0d.md) | 260 | `result-track:4a87248e987ed5ef11ae1e0dc52b5d47b3cd06e572d9249cb670a13ec314d2be` |
| 22 | `theorem` | [correctedNumerator_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/correctednumerator-differentiable--05a8ef769ca244bd3bf99486.md) | 265 | `result-track:05a8ef769ca244bd3bf9948677a961f63b8644b8d34b033212aab7e2d6bb757b` |
| 23 | `theorem` | [correctedNumerator_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/correctednumerator-hasderivat--f201885cb39bce62de679602.md) | 270 | `result-track:f201885cb39bce62de67960201548f54e19e08ea6a8b467c129b63521893908e` |
| 24 | `theorem` | [logNormalization_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/lognormalization-eq--a40699c4a4301ac9be937e42.md) | 289 | `result-track:a40699c4a4301ac9be937e42dcd5b91fdd029b0cc4cce803a1e5c81401780a42` |
| 25 | `theorem` | [correctedNumerator_hasDerivAt_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/correctednumerator-hasderivat-half--565dcf8faacb0d9037347469.md) | 305 | `result-track:565dcf8faacb0d90373474694cda03fcea82b33367c49e2c77898d4496ac1bb8` |
| 26 | `def` | [correctedQuotient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/correctedquotient--f11f554edf1ad2f6376a89ce.md) | 324 | `declaration-track:f11f554edf1ad2f6376a89ced2aba65bba4b75259c4f831e5ff61c2b2cef141e` |
| 27 | `theorem` | [correctedQuotient_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/correctedquotient-of-ne--d84611c6a1235dd55ef788ae.md) | 327 | `result-track:d84611c6a1235dd55ef788aef16002c97c5afd7582b2fdaed07fbc7abefdfec7` |
| 28 | `theorem` | [correctedNumerator_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/correctednumerator-factor--36265672eca6ff934063762c.md) | 333 | `result-track:36265672eca6ff934063762ca21e04fb1b75d376286fbe74c25a89f22961a778` |
| 29 | `theorem` | [correctedQuotient_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/correctedquotient-differentiable--a374369e741708e2d48db5c3.md) | 339 | `result-track:a374369e741708e2d48db5c310346af314567cefffcfe6bf0a0539cb49b40818` |
| 30 | `theorem` | [correctedQuotient_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/correctedquotient-half--f1a4e4793437a366f4ceb74e.md) | 345 | `result-track:f1a4e4793437a366f4ceb74e2d8388b44090ac5204975484733c314314f35e94` |
| 31 | `theorem` | [correctedQuotient_tendsto_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/correctedquotient-tendsto-half--139772670200f5efd3783504.md) | 351 | `result-track:139772670200f5efd37835040ec85923a5fa7109dd1ac5f97da0d2d202b6dae0` |
| 32 | `theorem` | [mobiusDirichlet_reciprocal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/mobiusdirichlet-reciprocal--77dd4cdcbd1b1ec4e1fa64b0.md) | 381 | `result-track:77dd4cdcbd1b1ec4e1fa64b0a4dbf8c1ad1c0e7c7e0bc193f48f12a465f7d938` |
| 33 | `def` | [perronTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/perronterm--7cc2c9bfd4860ff478bc5482.md) | 390 | `declaration-track:7cc2c9bfd4860ff478bc5482f51bc20b94c4a83f56727a91064dcac070d70287` |
| 34 | `theorem` | [perronTerm_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/perronterm-norm--9666539168ec975eef7c5b53.md) | 395 | `result-track:9666539168ec975eef7c5b532038c05f9e62c0d189098cf9ef59cb122eb8e70b` |
| 35 | `theorem` | [perronTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/perronterm-integrable--4b1a8500465cbb3f0823364a.md) | 405 | `result-track:4b1a8500465cbb3f0823364aa000119fecd407de5e75dbeab329a4290b3e6468` |
| 36 | `theorem` | [perronTerm_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/perronterm-norm-integrals-summable--4c19351ffc7b9f89d451e7c5.md) | 415 | `result-track:4c19351ffc7b9f89d451e7c5175217cfcbc34c5c581aa4c028b44884d7d6ea03` |
| 37 | `theorem` | [perronTerm_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/perronterm-tsum--fbd273c7feb275574675552b.md) | 424 | `result-track:fbd273c7feb275574675552b2cf700e79ed17ce373989d7b14d0a8605bb33d40` |
| 38 | `theorem` | [perronTerm_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/declarations/perronterm-ratio--ca2c17a6936e7bcc66186bab.md) | 438 | `result-track:ca2c17a6936e7bcc66186bab4491ccc34beeeb49497305c7fa82787c5e4e54d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
