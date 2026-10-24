# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFilterDeltaFullAudit.Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20e24f0a2b72365bd2252e0e171497cab9428fd2",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20e24f0a2b72365bd2252e0e171497cab9428fd2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean.json)

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
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/bumpmoment--e4acc3798a1d41dde6f3d24a.md) | 34 | `declaration-track:e4acc3798a1d41dde6f3d24ad29dc043ab067c9af057b1aa967628ea188a1102` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/bumpmoment-intervalintegrable--e62bc390d1a42b77fdc3f20d.md) | 39 | `result-track:e62bc390d1a42b77fdc3f20d91afc537452bc24f00202e24c75c0dbaf71f1f30` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/bumpmoment-zero-eq-source--dabf60aef79b054a821f67d4.md) | 46 | `result-track:dabf60aef79b054a821f67d474421ff8a6cd09a72736ac9221b1d699c5bc23a8` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/bumpmoment-zero-zero--1630f4ccba0b32ba60001aae.md) | 59 | `result-track:1630f4ccba0b32ba60001aae7d8bce1b6e95e949d8fcdba2eaa1cb2a5c24647d` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/bumpflux-hasderivat--182833b9b038da7966148199.md) | 69 | `result-track:182833b9b038da7966148199b3b9ba2418ca55c0aadbd9fb70a40655552b95ee` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/bumpmoment-equation--5c18c561188a4854eaf0954e.md) | 80 | `result-track:5c18c561188a4854eaf0954edf6bf61d81ec605ee9bf75ef066279afef23ad98` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/re-eq-zero-of-weighted-energy--600a543fb74cb5c4b2a3885a.md) | 115 | `result-track:600a543fb74cb5c4b2a3885a97a5f955af1c3ed9b01bf0523b41b7f5a71c9ea7` |
| 8 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/bumpprimitive-hasderivat--b0c7e79f8d90583c2c1328be.md) | 144 | `result-track:b0c7e79f8d90583c2c1328be5ea48924fe91d22283c5ef987b3383a63fc0f062` |
| 9 | `theorem` | [bumpMoment_closedFormula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/bumpmoment-closedformula--961d753e4ca9766843febf68.md) | 159 | `result-track:961d753e4ca9766843febf68e121fb90d52a07f1709b9b3c428d55c48f7eb45f` |
| 10 | `theorem` | [V_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/v-zero--9c8d8684a933dadc6bec2fd4.md) | 184 | `result-track:9c8d8684a933dadc6bec2fd44261dca9b642007647e1d0a3eef76bac64f93216` |
| 11 | `theorem` | [V_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/v-eq-bumpmoment--9580bcac56ad4bf5cae033e3.md) | 193 | `result-track:9580bcac56ad4bf5cae033e34be0f134b441ee3a883616497265441178e46e50` |
| 12 | `theorem` | [W_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/w-eq-bumpmoment--333ed0b1fc739c3cc2064e9e.md) | 206 | `result-track:333ed0b1fc739c3cc2064e9e0ebd384516eea2a87bb54b0b5935ab095322327b` |
| 13 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/bumpmoment-hasderivat--df683d80125ecb5e6d948d3e.md) | 228 | `result-track:df683d80125ecb5e6d948d3ee04a7a96e60f6ed3e1228c9756546bc0a34b2d38` |
| 14 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/bumpmoment-continuous--893f43321f271c341dbcc779.md) | 264 | `result-track:893f43321f271c341dbcc7790a2cdb30c8bca34343b20b26b2e5cad5cb698eec` |
| 15 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/radialprofile--0e09dd9b3190f54b62416d06.md) | 269 | `declaration-track:0e09dd9b3190f54b62416d063ba450411a1f66712841cb5283c8eaf7f9a61b76` |
| 16 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/radialflux--ca61a20e5401f3c58621a819.md) | 272 | `declaration-track:ca61a20e5401f3c58621a81974e7f03ccd6c92723462158f1a28275105aa3ba8` |
| 17 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/radialprofile-hasderivat--f179c7f45d972ce93b02007d.md) | 276 | `result-track:f179c7f45d972ce93b02007d95b384019a8aa7c24fd24300e5145208501ae2b0` |
| 18 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/radialflux-hasderivat--251dc3da4b29977a577f4777.md) | 285 | `result-track:251dc3da4b29977a577f4777ebe564be3052ce4ab5b11db6d582e4b11c60cfee` |
| 19 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/radialprofile-continuous--03e7e07b554438abbe666348.md) | 295 | `result-track:03e7e07b554438abbe66634879078ac0c91609d227eba1bd2fd3fe8b39b707e5` |
| 20 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/radialflux-continuous--b383c8be07df394bb67853c9.md) | 299 | `result-track:b383c8be07df394bb67853c9e2fa1bb6a02d44498ee8098f793810983176579c` |
| 21 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/radialmass--6ba2d1278e73625e60395f45.md) | 304 | `declaration-track:6ba2d1278e73625e60395f457da96ccc75da61ec61093c3a663eb62f02cc1f42` |
| 22 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/radialenergy--a277bbb52deebf591b07aaf8.md) | 307 | `declaration-track:a277bbb52deebf591b07aaf823db1b210f34f8e41933f8d4684cb62043adde44` |
| 23 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/radial-integrands-intervalintegrable--df052dff00f3333daff14839.md) | 311 | `result-track:df052dff00f3333daff14839e856c9ec07e0100e1d84579cdff7b20db0a87430` |
| 24 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/radialenergy-nonneg--278e57434eb6658ba8ceeb0a.md) | 323 | `result-track:278e57434eb6658ba8ceeb0aac317e52001832e7f5dafdb681ee529a2ff39691` |
| 25 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/radialprofile-eventually-ne-zero--63e64ea779c582d70e5e5d9c.md) | 329 | `result-track:63e64ea779c582d70e5e5d9ceab9ffa57549ea0d3c3bfabe1cc467c6c1576e29` |
| 26 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/radialmass-pos--f91a685aef742dbf4acb42eb.md) | 336 | `result-track:f91a685aef742dbf4acb42eb75dd7db9011b3943c564213023ae4203e0e932cf` |
| 27 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/radial-energy-identity--5ae4cb5f35a2d1ec1fb3995a.md) | 352 | `result-track:5ae4cb5f35a2d1ec1fb3995a8296ef5a93a913435d401deb77b8e5dced989319` |
| 28 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/bumpmoment-zero-re--93f122fc4b9dc07078aa1634.md) | 410 | `result-track:93f122fc4b9dc07078aa163422f5370227e66842616cda5a9ea60ba3ec8c0999` |
| 29 | `theorem` | [W_zero_set_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/w-zero-set-countable--a6b841ad751c97f9348132c9.md) | 427 | `result-track:a6b841ad751c97f9348132c9c2ec5da02831e03030b1f3d2201a904c05d22115` |
| 30 | `theorem` | [boundaryW_ae_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/boundaryw-ae-ne-zero--0e4f5d2686330fbebbc14c3d.md) | 448 | `result-track:0e4f5d2686330fbebbc14c3d18360fc90d5df257750bf49bb8f9b9a776502c7b` |
| 31 | `def` | [boundaryFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147.lean/declarations/boundaryfilter--25434b800fd92b393e055bc5.md) | 455 | `declaration-track:25434b800fd92b393e055bc5f46dfaad5687d5632c69afd220d98c59b2417031` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
