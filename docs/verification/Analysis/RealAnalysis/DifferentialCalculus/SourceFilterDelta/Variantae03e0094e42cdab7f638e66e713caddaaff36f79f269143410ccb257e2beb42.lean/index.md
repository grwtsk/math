# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFilterDelta.Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72169a910defd63d6fc326c7abc50933825f7f78",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72169a910defd63d6fc326c7abc50933825f7f78`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Lindelof` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.NullSingletonClass` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient` — import line 10; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 11; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/bumpmoment--e1d53248ebeb8397ccc5974a.md) | 34 | `declaration-track:e1d53248ebeb8397ccc5974ad73d22cba010907abe32452ca1e27359a8f95372` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/bumpmoment-intervalintegrable--f2c19aad8bd7cad0f983e6ae.md) | 39 | `result-track:f2c19aad8bd7cad0f983e6aeb454ecc78bb570d633c4a0f6e3db317fa630b7a5` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/bumpmoment-zero-eq-source--7bb0d3b852267e61041e1267.md) | 46 | `result-track:7bb0d3b852267e61041e12673cd9914d87c08324281917c636d7b34589599507` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/bumpmoment-zero-zero--dcdc5f2b1ee4f208fd788fe4.md) | 59 | `result-track:dcdc5f2b1ee4f208fd788fe42840aa8148114cf7f0efe806f3f49932ad8fecd6` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/bumpflux-hasderivat--da867c49c7a6f691a38ca800.md) | 69 | `result-track:da867c49c7a6f691a38ca8002bbecd3069d9bf3c18db3149c13cb319d5ed165a` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/bumpmoment-equation--fb3a223288cd93f82b36acde.md) | 80 | `result-track:fb3a223288cd93f82b36acdec232d3581cb784ca1d84334cf1d31f7376fa8ebe` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/re-eq-zero-of-weighted-energy--c6c4b8f7a03d86952acbd2d7.md) | 115 | `result-track:c6c4b8f7a03d86952acbd2d726cd80f51760fc403be48b3b1208e6b1e37606c1` |
| 8 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/bumpprimitive-hasderivat--6b749ef80e88f2da218cd658.md) | 144 | `result-track:6b749ef80e88f2da218cd65872cbd399df7fd713dc1a5d6ff836d45cf7c670f7` |
| 9 | `theorem` | [bumpMoment_closedFormula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/bumpmoment-closedformula--98d9bee4083eb95c024e09f3.md) | 159 | `result-track:98d9bee4083eb95c024e09f377c85f6b3c6f3a0a1eebbc93ff1dc2cbfbd58e87` |
| 10 | `theorem` | [V_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/v-zero--f20c607dcc39d6c44b37815d.md) | 184 | `result-track:f20c607dcc39d6c44b37815d2383c002533c89c7ac9aa8d63d8bdb23d8ccf05f` |
| 11 | `theorem` | [V_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/v-eq-bumpmoment--3b197b95d21e168f5113d7dc.md) | 193 | `result-track:3b197b95d21e168f5113d7dc6ef84edfaf1a3dc5d5738f49d3ac57de12602bc7` |
| 12 | `theorem` | [W_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/w-eq-bumpmoment--b2a1064ed12c07d2e9c4fd28.md) | 206 | `result-track:b2a1064ed12c07d2e9c4fd28a0423bec84bfbb9392d0f62771543527067de728` |
| 13 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/bumpmoment-hasderivat--06061fdde9a8a601c211ec00.md) | 228 | `result-track:06061fdde9a8a601c211ec003a76b90c20c51dc24e99ac53037979947edf1e40` |
| 14 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/bumpmoment-continuous--8f5ed45d11d0000f296b6e76.md) | 264 | `result-track:8f5ed45d11d0000f296b6e76675e0ff9e90c41e44740ee9deb729a7adabba851` |
| 15 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/radialprofile--a6baf6facc0e74d4a6a0e798.md) | 269 | `declaration-track:a6baf6facc0e74d4a6a0e79847d65a667bc9a89f6201e46ae4f315282016b828` |
| 16 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/radialflux--654609244d1b12dfc5fa2fca.md) | 272 | `declaration-track:654609244d1b12dfc5fa2fcabec595c53b50b13c787ccf259909cbaaebf739ed` |
| 17 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/radialprofile-hasderivat--5b52cc4c77beaae0fff7b9ae.md) | 276 | `result-track:5b52cc4c77beaae0fff7b9aed9ef175292614cf416bc1e2861cc3480ee93cb88` |
| 18 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/radialflux-hasderivat--b6cb262df2b6db7ce05b0bae.md) | 285 | `result-track:b6cb262df2b6db7ce05b0bae6ee9eb76679574a9de95138332ae903170dd3508` |
| 19 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/radialprofile-continuous--e9a82aceb68a8617e2a841b7.md) | 295 | `result-track:e9a82aceb68a8617e2a841b7d0700489fecefd28ead2c33e94cb7fde28be6c14` |
| 20 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/radialflux-continuous--b5f8d7246b592598e4c9f5a0.md) | 299 | `result-track:b5f8d7246b592598e4c9f5a0efa213ebd82f8938d55e3505442f0d5401862a05` |
| 21 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/radialmass--6a7acefd717d96139711d27f.md) | 304 | `declaration-track:6a7acefd717d96139711d27f09c3e42a0ff8fef9f553618987f2b2a5a48df1e6` |
| 22 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/radialenergy--3cb1e60fa7f43dbc0531a9dd.md) | 307 | `declaration-track:3cb1e60fa7f43dbc0531a9ddfaebdf754e44dd30bacba40e8e4fc4442696bc68` |
| 23 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/radial-integrands-intervalintegrable--991af9e53814cda7cb585b50.md) | 311 | `result-track:991af9e53814cda7cb585b5077e90a9cf75f133f484bce2ef658ab2cf2735c11` |
| 24 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/radialenergy-nonneg--1c5abe4a0d0fd3a6adcb15c6.md) | 323 | `result-track:1c5abe4a0d0fd3a6adcb15c628bfe80feef427be042581817ddb66269db2f0c1` |
| 25 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/radialprofile-eventually-ne-zero--20b3f08818d0f15eddc45fda.md) | 329 | `result-track:20b3f08818d0f15eddc45fda8318c6f03a5153d0102b107763974440a035ff23` |
| 26 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/radialmass-pos--cd1f31675b09f6e12e76ae57.md) | 336 | `result-track:cd1f31675b09f6e12e76ae572ff5d3837e388395ca59fa86b99e5671a5100365` |
| 27 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/radial-energy-identity--20ef8b5426a4300c15dd492c.md) | 352 | `result-track:20ef8b5426a4300c15dd492c21455174d133fc1fae00e9ebda70085e6c655bf6` |
| 28 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/bumpmoment-zero-re--6d9ff55e8b4937c41abc8231.md) | 410 | `result-track:6d9ff55e8b4937c41abc8231cb646a983476e3eb76d43c345d166642dcefa190` |
| 29 | `theorem` | [W_zero_set_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/w-zero-set-countable--6bdd28c0e82dd6ac64cb3ded.md) | 427 | `result-track:6bdd28c0e82dd6ac64cb3ded0c277f0d66837768222be7f12467ffbd2b5a6de1` |
| 30 | `theorem` | [boundaryW_ae_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/boundaryw-ae-ne-zero--dafa0ad5a78e268867f47a39.md) | 448 | `result-track:dafa0ad5a78e268867f47a3958b9cb6ecae6d9587bde178b5076c107dd9e9212` |
| 31 | `def` | [boundaryFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean/declarations/boundaryfilter--437cf80985a832a03dbc8dd9.md) | 455 | `declaration-track:437cf80985a832a03dbc8dd93d6f5b3cd123adc4c41c96768aa451db56b7db7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
