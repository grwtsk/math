# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.1f3ef636747f742891d9SourceBumpLaplace.Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61c180fdcb90a95cf292c5bb5ac4e81c082c5127",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61c180fdcb90a95cf292c5bb5ac4e81c082c5127`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/bumplaplace--9b447c3e21b723c50af6ef95.md) | 26 | `declaration-track:9b447c3e21b723c50af6ef9573be504c7798b539e26887ba0a688e1e69b3ccbd` |
| 2 | `def` | [bumpLaplaceMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/bumplaplacemoment--307238e05f2185aaff54724d.md) | 30 | `declaration-track:307238e05f2185aaff54724d0e4f55978a54462d3c50630f8e07ff6e1a555eca` |
| 3 | `theorem` | [bump_laplace_moment_interval_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/bump-laplace-moment-interval-integrable--9c1b7e61db0035c6d69a549e.md) | 35 | `result-track:9c1b7e61db0035c6d69a549e1e51f257439360791564d02e4c44f5bc15913a94` |
| 4 | `theorem` | [bump_laplace_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/bump-laplace-moment-zero--2a8f92f559f0de3ba69ddf4d.md) | 41 | `result-track:2a8f92f559f0de3ba69ddf4d734b39d2de08e93110c824775a0f48a09c5066e5` |
| 5 | `theorem` | [bump_laplace_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/bump-laplace-even--f79a436ca4d9247906dd52ae.md) | 45 | `result-track:f79a436ca4d9247906dd52aea9d2d8344f0a41a06268d01b891180b83f5c7c5b` |
| 6 | `theorem` | [bump_laplace_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/bump-laplace-at-zero--0266890fb9c3d2280633ef62.md) | 61 | `result-track:0266890fb9c3d2280633ef6286d7cd251c1ddab7489ba09cbb432246b6d5fb49` |
| 7 | `theorem` | [bump_laplace_zero_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/bump-laplace-zero-ne-zero--737cc21e52e63cb74aa7c286.md) | 80 | `result-track:737cc21e52e63cb74aa7c286bed9065504eb1fe36ed0fdba71d799b5c14fbeb6` |
| 8 | `theorem` | [bump_moment_factor_norm_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/bump-moment-factor-norm-le-one--0a4e6131b86e9d266dd858cc.md) | 85 | `result-track:0a4e6131b86e9d266dd858ccdad30e5cb5b2e10715becb26f4ce57d1cfe31c82` |
| 9 | `theorem` | [bump_laplace_moment_has_deriv_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/bump-laplace-moment-has-deriv-at--01d71e3b942752d6a4cee070.md) | 98 | `result-track:01d71e3b942752d6a4cee0701ce95c68082905fae1355474355f1ad34e7c9200` |
| 10 | `theorem` | [bump_laplace_moment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/bump-laplace-moment-continuous--d44a93336ea48dd329adc491.md) | 145 | `result-track:d44a93336ea48dd329adc49151e98689d95c020c542a789efdfb30655c245a1e` |
| 11 | `theorem` | [bump_laplace_moment_ode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/bump-laplace-moment-ode--af51c49c33464cd8839baa9f.md) | 150 | `result-track:af51c49c33464cd8839baa9f21844ca23b19dcd03102c1ab15f2f71abcf3cb3e` |
| 12 | `def` | [radialBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radialbump--2d3447a48c54bd9cb581f7bd.md) | 186 | `declaration-track:2d3447a48c54bd9cb581f7bdc88d0519a530ed05e44362ceb610e6084da5fee4` |
| 13 | `def` | [radialBumpSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radialbumpslope--06998a1606ef8d3503124954.md) | 189 | `declaration-track:06998a1606ef8d3503124954931496ba5738afae1f25b96e359a1f7479562221` |
| 14 | `def` | [radialBumpFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radialbumpflux--7666d6c7b91988c51902f0cf.md) | 192 | `declaration-track:7666d6c7b91988c51902f0cfa09d4455c6b17eb9bb17cbcea21f53787b5949dc` |
| 15 | `theorem` | [radial_moment_has_deriv_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radial-moment-has-deriv-at--4cbcf654258a205a40fbdd88.md) | 195 | `result-track:4cbcf654258a205a40fbdd8826531104bf13aa21484645ef18d792a46269320d` |
| 16 | `theorem` | [radial_bump_has_deriv_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radial-bump-has-deriv-at--d819453105e9c8d06547d9d3.md) | 204 | `result-track:d819453105e9c8d06547d9d38172c9ff4c37acab96a1a0c58cba4e4e9b82e239` |
| 17 | `theorem` | [radial_bump_slope_has_deriv_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radial-bump-slope-has-deriv-at--733cba0dd113ced06a3d92ea.md) | 212 | `result-track:733cba0dd113ced06a3d92ea1f00265fb955d00937aa9d9fe1a85b0446c14dde` |
| 18 | `theorem` | [radial_bump_flux_has_deriv_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radial-bump-flux-has-deriv-at--6f4387bf8ad994e9bb5328fc.md) | 219 | `result-track:6f4387bf8ad994e9bb5328fc95d136ca9a27d36eb09f323f45d0d31dba1fd12c` |
| 19 | `theorem` | [radial_bump_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radial-bump-continuous--cbff27feff22aa582808e98b.md) | 230 | `result-track:cbff27feff22aa582808e98b33629a685987f28217ee9836a1f2875440bb660a` |
| 20 | `theorem` | [radial_bump_slope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radial-bump-slope-continuous--6dd392c663685fda0cb04d75.md) | 235 | `result-track:6dd392c663685fda0cb04d7577481746686f034d8f87cf663875f3d6aa560070` |
| 21 | `theorem` | [radial_bump_flux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radial-bump-flux-continuous--98bb54d3324994bf39d70c81.md) | 240 | `result-track:98bb54d3324994bf39d70c81a58bce37229c1cbf0eef6bf75c5275721259602d` |
| 22 | `def` | [radialBumpMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radialbumpmass--52e8f279c04316f3d05b2dd9.md) | 245 | `declaration-track:52e8f279c04316f3d05b2dd995a279a0425f5ad605162e7197c08aa1fa911b25` |
| 23 | `def` | [radialBumpEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radialbumpenergy--cbc5dcf2fcf8b2d9deb4f3f5.md) | 249 | `declaration-track:cbc5dcf2fcf8b2d9deb4f3f57e3696aa360013b4ae42c425c1f41b5e89c61400` |
| 24 | `theorem` | [radial_bump_mass_interval_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radial-bump-mass-interval-integrable--2372dd2466342fdd6e34ea24.md) | 253 | `result-track:2372dd2466342fdd6e34ea241937d443a7901e33c9fcfe76493b62178ba637f8` |
| 25 | `theorem` | [radial_bump_energy_interval_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radial-bump-energy-interval-integrable--a99843ee771abb7b76d9a270.md) | 259 | `result-track:a99843ee771abb7b76d9a2705eb70df7137bfc54e7d8441ec7c67c9d18c01a91` |
| 26 | `theorem` | [radial_bump_energy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radial-bump-energy-nonneg--e9823687ee46586a587242de.md) | 265 | `result-track:e9823687ee46586a587242ded70b4974cb8055cbcdb76e2a844e167e7683d6fa` |
| 27 | `theorem` | [radial_bump_mass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/radial-bump-mass-pos--f1e9e2d8d10cd9bcb7e54b32.md) | 271 | `result-track:f1e9e2d8d10cd9bcb7e54b32887f759d0e2d3cb53f368f73998fdbbd75836c75` |
| 28 | `theorem` | [bump_laplace_radial_energy_of_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/bump-laplace-radial-energy-of-zero--6c1f73eb81e82ca744f83ca7.md) | 294 | `result-track:6c1f73eb81e82ca744f83ca7728ae81bf78a53fc3cafc9b39f009ff01cc37635` |
| 29 | `theorem` | [re_eq_zero_of_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/re-eq-zero-of-energy--338cda133b2a4f8ac9f3c3ad.md) | 335 | `result-track:338cda133b2a4f8ac9f3c3ad37d665547d4087cbd10959620f5c28e61f1d1e4e` |
| 30 | `theorem` | [bump_laplace_ne_zero_of_re_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef.lean/declarations/bump-laplace-ne-zero-of-re-ne-zero--84b0c1ec94b846abbdc77f3f.md) | 356 | `result-track:84b0c1ec94b846abbdc77f3f08dd7d17e57ef6452522d0f12bce4024cf5cb849` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
