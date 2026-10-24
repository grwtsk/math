# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.1f3ef636747f742891d9SourceBumpLaplace.Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b68ce8b2791c958889ebad8f34616976f3abbf8b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b68ce8b2791c958889ebad8f34616976f3abbf8b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/bumplaplace--dbab8010b10d0016a20b7b00.md) | 34 | `declaration-track:dbab8010b10d0016a20b7b007114e85a735f1d440f5f27eb8930f6f31809f8fb` |
| 2 | `def` | [bumpLaplaceMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/bumplaplacemoment--b42cb8b5e87d5e36400d7cfe.md) | 38 | `declaration-track:b42cb8b5e87d5e36400d7cfe5b965e27751fd32b8f3dccfdfe84584386787527` |
| 3 | `theorem` | [bump_laplace_moment_interval_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/bump-laplace-moment-interval-integrable--18690ae985b13ddbfe3d99da.md) | 43 | `result-track:18690ae985b13ddbfe3d99dabddd9621bad6c440640e298222eb80a453c8f078` |
| 4 | `theorem` | [bump_laplace_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/bump-laplace-moment-zero--89914946175939f29f2c1ec3.md) | 49 | `result-track:89914946175939f29f2c1ec3cf7256a48ef51cb8fd205614597adad0bf9b45b3` |
| 5 | `theorem` | [bump_laplace_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/bump-laplace-even--f42cd0ee60a8d8d805d8a981.md) | 53 | `result-track:f42cd0ee60a8d8d805d8a9816de1d82561d956e1138075ad3fc13227707c66e9` |
| 6 | `theorem` | [bump_laplace_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/bump-laplace-at-zero--af2babaa939c1c6b0d517a6f.md) | 69 | `result-track:af2babaa939c1c6b0d517a6fd3f5baf2105778e7c7750f8874fe63dbbf04e9d8` |
| 7 | `theorem` | [bump_laplace_zero_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/bump-laplace-zero-ne-zero--e768ebcd93c8633c3bf78506.md) | 88 | `result-track:e768ebcd93c8633c3bf78506d245b9325ced24771c634bebba540f08c80b0c8c` |
| 8 | `theorem` | [bump_moment_factor_norm_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/bump-moment-factor-norm-le-one--cf668862fd103c341d1156a0.md) | 93 | `result-track:cf668862fd103c341d1156a00ddf2384b13d97aeb070464f4edcc719c964d9f8` |
| 9 | `theorem` | [bump_laplace_moment_has_deriv_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/bump-laplace-moment-has-deriv-at--6bff33db49f96ccd102ba4df.md) | 106 | `result-track:6bff33db49f96ccd102ba4dfd30a4e015003f4dde45f935e01fffa063d545c16` |
| 10 | `theorem` | [bump_laplace_moment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/bump-laplace-moment-continuous--006f3d8df8e16518c050e661.md) | 153 | `result-track:006f3d8df8e16518c050e6612d5a40597f8c280fa64a45fb98766c4a993883fe` |
| 11 | `theorem` | [bump_laplace_moment_ode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/bump-laplace-moment-ode--b3986e046849bbb2e0eaa651.md) | 158 | `result-track:b3986e046849bbb2e0eaa651a4ab4f7df6195acd3d229a2bc9634e5d5d7d148f` |
| 12 | `def` | [radialBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radialbump--4af70bddb66eb42a8b85fc61.md) | 194 | `declaration-track:4af70bddb66eb42a8b85fc61bacbec344bf67d00a1386428b105d29d6f0345aa` |
| 13 | `def` | [radialBumpSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radialbumpslope--e70421ff9547853a3a325f0f.md) | 197 | `declaration-track:e70421ff9547853a3a325f0fa235f93f9d7a574324f96106a6c7a35701edcab5` |
| 14 | `def` | [radialBumpFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radialbumpflux--3c1386dce9f5a1f46127e161.md) | 200 | `declaration-track:3c1386dce9f5a1f46127e161aab19d2f6739dce4ac08098b9e2e0afe2ac8df4a` |
| 15 | `theorem` | [radial_moment_has_deriv_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radial-moment-has-deriv-at--b7610015909324e6d61c4615.md) | 203 | `result-track:b7610015909324e6d61c4615d702ecf2258d3b3dad75403725ceff6e7add916b` |
| 16 | `theorem` | [radial_bump_has_deriv_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radial-bump-has-deriv-at--9164bf230f07189ec14bba02.md) | 212 | `result-track:9164bf230f07189ec14bba024e52b0c295a4ff3a2a0dc67c0785cf5cfbfa6c79` |
| 17 | `theorem` | [radial_bump_slope_has_deriv_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radial-bump-slope-has-deriv-at--577dfc6260f69cd0615ddd99.md) | 220 | `result-track:577dfc6260f69cd0615ddd993a132170a7a26e38fda6e7ff233a24cea5d7900a` |
| 18 | `theorem` | [radial_bump_flux_has_deriv_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radial-bump-flux-has-deriv-at--8e5fdd36cc60920939fc2eec.md) | 227 | `result-track:8e5fdd36cc60920939fc2eec36ebcf7c71e1f029cccdc498a809a5a91a160e61` |
| 19 | `theorem` | [radial_bump_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radial-bump-continuous--81a2285117631e4f62a9857b.md) | 238 | `result-track:81a2285117631e4f62a9857bf583afe8d35bc17f4ff809ee7408bd436dcd385b` |
| 20 | `theorem` | [radial_bump_slope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radial-bump-slope-continuous--38601443da2a0ce837f75bf3.md) | 243 | `result-track:38601443da2a0ce837f75bf3360e31b8aeb875c490b1f3a5cb84acd5760b1a57` |
| 21 | `theorem` | [radial_bump_flux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radial-bump-flux-continuous--84e8a983fbc7fac642c2fb6b.md) | 248 | `result-track:84e8a983fbc7fac642c2fb6b3264eef95260066a5892262bdce26054a684a214` |
| 22 | `def` | [radialBumpMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radialbumpmass--4e72a2a5a0fb3a961fc4f4c6.md) | 253 | `declaration-track:4e72a2a5a0fb3a961fc4f4c67f0f441dbb9c889c4b358cc7528deaf565ce6ca1` |
| 23 | `def` | [radialBumpEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radialbumpenergy--ba56b8d40010b45ba1185841.md) | 257 | `declaration-track:ba56b8d40010b45ba1185841064997bdc40302b97a607b08fba2d324bf17cd95` |
| 24 | `theorem` | [radial_bump_mass_interval_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radial-bump-mass-interval-integrable--38209a5cbfa5a35a4e226836.md) | 261 | `result-track:38209a5cbfa5a35a4e22683682a003406405ec3bb482d332f74458e5ebc6da58` |
| 25 | `theorem` | [radial_bump_energy_interval_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radial-bump-energy-interval-integrable--42aaf47fbc37a336fce00428.md) | 267 | `result-track:42aaf47fbc37a336fce00428e9a2b89bcb70ce17ba01b55f56cb75d04fefcccf` |
| 26 | `theorem` | [radial_bump_energy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radial-bump-energy-nonneg--ca16e75f156101f523c290e0.md) | 273 | `result-track:ca16e75f156101f523c290e01484aff76919458fd5194873c25b2a2d39f63755` |
| 27 | `theorem` | [radial_bump_mass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/radial-bump-mass-pos--aa6e92a5cf1a58483c1514a3.md) | 279 | `result-track:aa6e92a5cf1a58483c1514a3207feb62d5f9ab4307a3ad7d4c0f87c33a604eca` |
| 28 | `theorem` | [bump_laplace_radial_energy_of_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/bump-laplace-radial-energy-of-zero--ed35481aa6e5c3d839c9078c.md) | 302 | `result-track:ed35481aa6e5c3d839c9078ca49a62b66865d75041d6ceeebdf3095830eed605` |
| 29 | `theorem` | [re_eq_zero_of_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/re-eq-zero-of-energy--12bbfa9368891a6665055245.md) | 343 | `result-track:12bbfa9368891a66650552450c38daa6da6ee1bc03dcc62a45a5b142d8f1e9e2` |
| 30 | `theorem` | [bump_laplace_ne_zero_of_re_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/declarations/bump-laplace-ne-zero-of-re-ne-zero--f5c4414c8e9e7855c0dc52d4.md) | 364 | `result-track:f5c4414c8e9e7855c0dc52d4df46027a11d1eaf7510b1d1c7ef4737f2212be5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
