# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFilterDeltaLiteralCheck.Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2e2954bdde10034647df7725bd1d60c2690f174",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2e2954bdde10034647df7725bd1d60c2690f174`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean.json)

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
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/bumpmoment--47a099164472d1287324c025.md) | 34 | `declaration-track:47a099164472d1287324c025963903f4e985af866881f8186ba0de2fae816c2c` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/bumpmoment-intervalintegrable--8db6f7a997df6361aa976efb.md) | 39 | `result-track:8db6f7a997df6361aa976efb7618de6fc52a3bbbb06a6b60f7b345ea7ea3d9ed` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/bumpmoment-zero-eq-source--3bb9fd1953b7b0202225d7b5.md) | 46 | `result-track:3bb9fd1953b7b0202225d7b5c99e2c99e2ce0d3b3536526f94b3846ad7678171` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/bumpmoment-zero-zero--cbe1ac403324d59244f17caf.md) | 59 | `result-track:cbe1ac403324d59244f17caf55689356be3910e98dea7b8c18663e8c03dd0877` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/bumpflux-hasderivat--6d5d91e543d5281f49d96b41.md) | 69 | `result-track:6d5d91e543d5281f49d96b4155e1d636d3d2c04e263c04fec70c0b7e9574871b` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/bumpmoment-equation--828f289fb16bc121307df18e.md) | 80 | `result-track:828f289fb16bc121307df18eab8b5f4f978efe8752f7b31811bc219f89a8077a` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/re-eq-zero-of-weighted-energy--b2c1b7c8f05b77ed604b20f7.md) | 115 | `result-track:b2c1b7c8f05b77ed604b20f7d51366c186201dcba7b3224f30372558799822ba` |
| 8 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/bumpprimitive-hasderivat--04f7bbde184bdffbb62e175c.md) | 144 | `result-track:04f7bbde184bdffbb62e175c2032a58d4be90f9845aa4f6336f3f94f79102b51` |
| 9 | `theorem` | [bumpMoment_closedFormula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/bumpmoment-closedformula--53845967979f61a8d424c0db.md) | 159 | `result-track:53845967979f61a8d424c0db71c6cdfc6850b45c05735591f8066fc2d304a2cb` |
| 10 | `theorem` | [V_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/v-zero--e5070bf92305f1c554c1e8fd.md) | 184 | `result-track:e5070bf92305f1c554c1e8fd4c40337a0693cee343392b56944bd71bbc81599f` |
| 11 | `theorem` | [V_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/v-eq-bumpmoment--f06e3d212533d4adfcffa740.md) | 193 | `result-track:f06e3d212533d4adfcffa740a40a1d98435b4649c736f954dae3b95447ac2891` |
| 12 | `theorem` | [W_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/w-eq-bumpmoment--7cb7df2e15aab04d04b51a1e.md) | 206 | `result-track:7cb7df2e15aab04d04b51a1e038dd933c78a0098f4afe1e6f356a6eb409b7975` |
| 13 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/bumpmoment-hasderivat--05761ad92737c0ce1b216ca5.md) | 228 | `result-track:05761ad92737c0ce1b216ca5585c0fa875599905216f4cd8264b876467e03a5b` |
| 14 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/bumpmoment-continuous--b345f47b70bfbe51fdaac422.md) | 264 | `result-track:b345f47b70bfbe51fdaac42286d95d70ef7c9b31a5cf7d402d85baa0fc4bf5db` |
| 15 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/radialprofile--cb4b07f0950f864c12cc4ca5.md) | 269 | `declaration-track:cb4b07f0950f864c12cc4ca56d5ea0c862938c185e4c139295b060a2382c5d3e` |
| 16 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/radialflux--a5cf1c4c015ecf01d168c985.md) | 272 | `declaration-track:a5cf1c4c015ecf01d168c98524529073e8e5065499736eb193bb64b1b79f692e` |
| 17 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/radialprofile-hasderivat--89fe26b03473c86952de2005.md) | 276 | `result-track:89fe26b03473c86952de2005f22f923808b646e9c57ecce22ca7c1dba7e05a07` |
| 18 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/radialflux-hasderivat--04fc1782fd52c82bdfee7013.md) | 285 | `result-track:04fc1782fd52c82bdfee70131569848d6d52859bf7d598f2f3d4f28f428bc1ff` |
| 19 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/radialprofile-continuous--51237de61fe458c702551862.md) | 295 | `result-track:51237de61fe458c702551862b6ef0b32e3c9df3836154a1776c0661914394913` |
| 20 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/radialflux-continuous--ea761ddec7ee6b760898a2e9.md) | 299 | `result-track:ea761ddec7ee6b760898a2e991761a28e02355d50d15bc11b9805be717693f9d` |
| 21 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/radialmass--d6454642d1d2d741d2c3e46f.md) | 304 | `declaration-track:d6454642d1d2d741d2c3e46f541e3dba9d1354eacd8a1aac85a6d635f0b41121` |
| 22 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/radialenergy--fd42491435e7e39b3545e0e2.md) | 307 | `declaration-track:fd42491435e7e39b3545e0e21f434c918ad0d84d448124afaa8aab25b9e55c13` |
| 23 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/radial-integrands-intervalintegrable--853f8bb2a68a03453d312885.md) | 311 | `result-track:853f8bb2a68a03453d312885f222edd0b759b9517a676eb9d916eca5e7b56972` |
| 24 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/radialenergy-nonneg--6e3ac132c3090d0dd52bcd8c.md) | 323 | `result-track:6e3ac132c3090d0dd52bcd8c7239eeaf6cf9d0673208a238b5898b631655a166` |
| 25 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/radialprofile-eventually-ne-zero--076bd3e1df8abf4a36fd27e6.md) | 329 | `result-track:076bd3e1df8abf4a36fd27e6b6e09fee05876058d48d1c8533297a8bd3b5e11d` |
| 26 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/radialmass-pos--da88be2e6901dbb97bd7161a.md) | 336 | `result-track:da88be2e6901dbb97bd7161a91a1ac545cb7c144814749541029b1e2e02f9f12` |
| 27 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/radial-energy-identity--c15ab41f7407354711e540ed.md) | 352 | `result-track:c15ab41f7407354711e540ed9afe03dca6bb0a8a7b0272359c8c12e44548a2e9` |
| 28 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/bumpmoment-zero-re--debf9cd92bf4744b78432f0f.md) | 410 | `result-track:debf9cd92bf4744b78432f0f379ecd2f700d05c643c1fdff169382e949cea2c3` |
| 29 | `theorem` | [W_zero_set_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/w-zero-set-countable--f62d1bc94e54d99701c22b64.md) | 427 | `result-track:f62d1bc94e54d99701c22b640aa9d39333bab47b98813b365d51bf8ce75364bb` |
| 30 | `theorem` | [boundaryW_ae_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/boundaryw-ae-ne-zero--1e4ac86f1d280aa4f12cffa5.md) | 448 | `result-track:1e4ac86f1d280aa4f12cffa5b25a655546576cc52796b61ef21b44de789b9b41` |
| 31 | `def` | [boundaryFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/boundaryfilter--79eb7006eb2fc528b0326b26.md) | 455 | `declaration-track:79eb7006eb2fc528b0326b262fecefcd7e6c18c4debf7488bafb4f243a1d9ff3` |
| 32 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/example--ccf2d6b8524302ddde14d436.md) | 468 | `declaration-track:ccf2d6b8524302ddde14d436316fe2be8203440eccca8f04edcea6b9c7c55a53` |
| 33 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/example--285da2e9a914dcb00684a6ff.md) | 469 | `declaration-track:285da2e9a914dcb00684a6ffcf18d709a19a0b9084422417d277f1106294f480` |
| 34 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/declarations/example--fb78e646a8d412e69136677d.md) | 470 | `declaration-track:fb78e646a8d412e69136677ddcce15ee39c347ba4f243acb16c04b978e92dfbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
