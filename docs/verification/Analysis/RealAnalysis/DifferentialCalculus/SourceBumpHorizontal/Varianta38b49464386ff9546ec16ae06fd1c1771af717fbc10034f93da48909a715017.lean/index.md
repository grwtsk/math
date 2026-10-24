# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceBumpHorizontal.Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c022f07e4242f53b702156d94ad6d69ff2a51010",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c022f07e4242f53b702156d94ad6d69ff2a51010`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/bumpmoment--e7db32f1c1a4e8f438edb1eb.md) | 23 | `declaration-track:e7db32f1c1a4e8f438edb1ebb384c6e49f544548e821c6af06ef9a13848a7970` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/bumpmoment-intervalintegrable--0ecf9af35104308415f04dd5.md) | 28 | `result-track:0ecf9af35104308415f04dd5cac1bb36dee15a0506f4466f14f43fc068c1d078` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/bumpmoment-zero-eq-source--c3baafd3d4773648826d8d11.md) | 35 | `result-track:c3baafd3d4773648826d8d11d5f2a039b77a8b67db325f13505c348a370b5e7a` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/bumpmoment-zero-zero--4945d8325561e61e3d3947cf.md) | 48 | `result-track:4945d8325561e61e3d3947cfc07d5bc4d769838a6b765b8f01c1255a54a9904a` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/bumpflux-hasderivat--8e45d09fe4937e2c95c97751.md) | 58 | `result-track:8e45d09fe4937e2c95c97751325d20d40ca3e6de84d4d747ad59af70df9f8c82` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/bumpmoment-equation--d7bafb95848ea3914e62db03.md) | 69 | `result-track:d7bafb95848ea3914e62db0389e58e8745bbe8437470eb811905e2ffba1660ed` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/re-eq-zero-of-weighted-energy--de95fb5fb04c3ff51e35fc57.md) | 104 | `result-track:de95fb5fb04c3ff51e35fc574d0017e598a4efc0f0821fe652bbfd93a350511f` |
| 8 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/bumpmoment-hasderivat--e0a8626a6d1099fc99ef24df.md) | 137 | `result-track:e0a8626a6d1099fc99ef24df6063946b85cb1e5af1edad27fbfd63ce2ec585e8` |
| 9 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/bumpmoment-continuous--46be4dc90b728e9da30c04b0.md) | 173 | `result-track:46be4dc90b728e9da30c04b05fe9e0a092b2ddb76a882ba48db4dbd8c798efc0` |
| 10 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/radialprofile--9aea781e85d471e8810c918f.md) | 178 | `declaration-track:9aea781e85d471e8810c918fa5fcbe2556ee4c435c7586ae1ac7ff30473a26b0` |
| 11 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/radialflux--ce68da069000029f83086461.md) | 181 | `declaration-track:ce68da069000029f83086461903d899205019089a611ab1818bafdc980d509a2` |
| 12 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/radialprofile-hasderivat--17d4b9aa5e6944b43115d7e0.md) | 185 | `result-track:17d4b9aa5e6944b43115d7e0d1fb5f6ff80d0bcff34ecdeeedc10cf781627cd6` |
| 13 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/radialflux-hasderivat--e5879b7a2225a93a4659f851.md) | 194 | `result-track:e5879b7a2225a93a4659f851833b3420eee32a0b344f82f97ebeac623a333fc1` |
| 14 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/radialprofile-continuous--99da6746446c26b2c4d2f8b1.md) | 204 | `result-track:99da6746446c26b2c4d2f8b14a8281ae880df2d2420b5b79167db0cb3e5f076a` |
| 15 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/radialflux-continuous--0887bbaaf5a165e3154e9b41.md) | 208 | `result-track:0887bbaaf5a165e3154e9b41421069b82d82a8d237ff6e53b72038427a52fb45` |
| 16 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/radialmass--b02ba79ac8f0480e80382f82.md) | 213 | `declaration-track:b02ba79ac8f0480e80382f8240ee881f6aa1cd10c4ca68f6b8b5d0f4ad4c288c` |
| 17 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/radialenergy--1b5d6bbeff8d0eeee9254344.md) | 216 | `declaration-track:1b5d6bbeff8d0eeee925434400c11c7ca06a8f2a79005b2a21b2bd49c073a421` |
| 18 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/radial-integrands-intervalintegrable--cce37048289fa5a4e9235738.md) | 220 | `result-track:cce37048289fa5a4e9235738990680d062d3cce4d491686df129f8d3d1e16eec` |
| 19 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/radialenergy-nonneg--d0fe59dce2037069701909f2.md) | 232 | `result-track:d0fe59dce2037069701909f231c866982bd5b39cb669d09f4dd2fb4aef803cef` |
| 20 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/radialprofile-eventually-ne-zero--0fd51af28df535e981343459.md) | 238 | `result-track:0fd51af28df535e98134345922201ed0d0b36a3e4853be6dc7fc9d9fb39f6ca0` |
| 21 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/radialmass-pos--c54af86e9c93af07dc8c54fe.md) | 245 | `result-track:c54af86e9c93af07dc8c54feee55ec0925454568cc725a85cb6705d9c82e5c26` |
| 22 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/radial-energy-identity--4e692612949d14bf976c786c.md) | 261 | `result-track:4e692612949d14bf976c786c4a42c1d0420a020a97a2ad297c00c3988fd0e358` |
| 23 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/bumpmoment-zero-re--a1e9706c0fa2109e1208c77c.md) | 319 | `result-track:a1e9706c0fa2109e1208c77c69f0f5c193884265efeca6a01a9c8b8df3ac95b9` |
| 24 | `theorem` | [radial_boundary_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/radial-boundary-energy-identity--b8cfa32646df898f7c90a4df.md) | 334 | `result-track:b8cfa32646df898f7c90a4df288778b2acbfa5c1d67894c65010caf50a3f7ba4` |
| 25 | `theorem` | [bumpMoment_derivative_pairing_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/bumpmoment-derivative-pairing-nonneg--0806517c8f8e346e49a262e9.md) | 401 | `result-track:0806517c8f8e346e49a262e97fc25a049ee18318c7dc892cd3734c531f5f949a` |
| 26 | `theorem` | [bumpMoment_horizontal_norm_sq_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/bumpmoment-horizontal-norm-sq-hasderivat--d9310d0aaa12ff0e318cba64.md) | 424 | `result-track:d9310d0aaa12ff0e318cba64f64caae0bd21aaf23040e140c60ebd8b1b1562bd` |
| 27 | `theorem` | [bumpMoment_horizontal_norm_monotone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/bumpmoment-horizontal-norm-monotone--a1e78d749334f90479687a12.md) | 436 | `result-track:a1e78d749334f90479687a120148b34620e4420a4aac67412e5bba54af698cfb` |
| 28 | `theorem` | [bumpMoment_horizontal_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Varianta38b49464386ff9546ec16ae06fd1c1771af717fbc10034f93da48909a715017.lean/declarations/bumpmoment-horizontal-norm-le--68f0a6767bf5fcd68c99c82a.md) | 457 | `result-track:68f0a6767bf5fcd68c99c82a0522d460e9573ea59f2c680c6ca96032052c84db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
