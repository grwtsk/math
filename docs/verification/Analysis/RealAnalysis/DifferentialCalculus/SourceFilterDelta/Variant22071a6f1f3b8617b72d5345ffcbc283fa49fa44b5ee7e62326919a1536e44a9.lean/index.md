# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFilterDelta.Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aeac2dbffda9d6cdcf5f6ba18743af325785a5f3",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aeac2dbffda9d6cdcf5f6ba18743af325785a5f3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Lindelof` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.NullSingletonClass` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient` — import line 5; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/bumpmoment--e5fd6162c97989aa9d88d923.md) | 26 | `declaration-track:e5fd6162c97989aa9d88d92324fa289e7f251225a07719dccdcb7f338ed192b8` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/bumpmoment-intervalintegrable--6f12f94404e36632f6118ccc.md) | 31 | `result-track:6f12f94404e36632f6118ccc945059116978e410f10903c9ced32be28c62634f` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/bumpmoment-zero-eq-source--78ab8bf94aa3992d5a985735.md) | 38 | `result-track:78ab8bf94aa3992d5a98573579931f85e649f46e0a5ae95253e9134318b02fbf` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/bumpmoment-zero-zero--957b88c9216fd483122cca5f.md) | 51 | `result-track:957b88c9216fd483122cca5fbde094af234f43c329435e39c32926ce35764215` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/bumpflux-hasderivat--2057c77de439230d81aed357.md) | 61 | `result-track:2057c77de439230d81aed357b8663475e5cc6835d976a43a1f9e958d612f3d04` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/bumpmoment-equation--6a2d1a16f3e458b6591310fc.md) | 72 | `result-track:6a2d1a16f3e458b6591310fcef2fe87e8e28cf7e909ab6ff0ccb094d5d6abb34` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/re-eq-zero-of-weighted-energy--5c890aa9353a86691714193c.md) | 107 | `result-track:5c890aa9353a86691714193c94f114b73838993dbe792e282c6e86f9a3e7e6fb` |
| 8 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/bumpprimitive-hasderivat--fde8e192d88155118ccd52c8.md) | 136 | `result-track:fde8e192d88155118ccd52c8f13dc2c2f1d326b330da9462054da2874961621b` |
| 9 | `theorem` | [bumpMoment_closedFormula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/bumpmoment-closedformula--33f28e6650b3c4b483b288fc.md) | 151 | `result-track:33f28e6650b3c4b483b288fc9c7bd1542465a197b053f6316438c9ef5e0b4887` |
| 10 | `theorem` | [V_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/v-zero--d24683e2a4a42e1a8a7e2148.md) | 176 | `result-track:d24683e2a4a42e1a8a7e2148f82c06da3bafcc41efbf98db137ab1ff31657507` |
| 11 | `theorem` | [V_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/v-eq-bumpmoment--155d190bd50f56900143c4e2.md) | 185 | `result-track:155d190bd50f56900143c4e212cfd3a3f2986fe66ec638517d06e19847cec32f` |
| 12 | `theorem` | [W_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/w-eq-bumpmoment--e4117dd96220110c93c0704d.md) | 198 | `result-track:e4117dd96220110c93c0704dc4349da1ea10b62c4bf529d51cfddb2d173476db` |
| 13 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/bumpmoment-hasderivat--87d16d1affc79f0cf207e8fb.md) | 220 | `result-track:87d16d1affc79f0cf207e8fb28e1090ce46bba1f7172dce56284999fa92f2c27` |
| 14 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/bumpmoment-continuous--fbeadd3c15a0f8c78ff9ad53.md) | 256 | `result-track:fbeadd3c15a0f8c78ff9ad53841171ddc879aa591894b7eb7cade66d6b8fca3c` |
| 15 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/radialprofile--ec3c10de6f6a90c8d4206f05.md) | 261 | `declaration-track:ec3c10de6f6a90c8d4206f05ea1f8a14bfd56ff5e422a85d0878eb4577c6acc2` |
| 16 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/radialflux--e019726a99edce5db9bfed89.md) | 264 | `declaration-track:e019726a99edce5db9bfed895f48306ad627f3d887abdf597c30cdd762f0b3b1` |
| 17 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/radialprofile-hasderivat--03326c17e5e3d30fe34f0ff6.md) | 268 | `result-track:03326c17e5e3d30fe34f0ff6ed9c9070fbe112dc11abbb793964d9a4aedd8800` |
| 18 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/radialflux-hasderivat--f718efc43336f9e84f50b9a0.md) | 277 | `result-track:f718efc43336f9e84f50b9a06b44a8e07446aa527371e34c0ee8b1391829fe72` |
| 19 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/radialprofile-continuous--dc84bcb8f14aa29a60cc7e94.md) | 287 | `result-track:dc84bcb8f14aa29a60cc7e94abc76346017aba7c0aec60192fbc27692d7f1f6a` |
| 20 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/radialflux-continuous--ae4c37b3444e865b48fcf325.md) | 291 | `result-track:ae4c37b3444e865b48fcf3258b87d40f66c31b8ec9357b67e5aeeaff67f63b6b` |
| 21 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/radialmass--9cc174ca91fd326479db900f.md) | 296 | `declaration-track:9cc174ca91fd326479db900fbcc0ab156a15f59c4d549fe492ac22bcf78691d8` |
| 22 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/radialenergy--a4cd16c484bfb62fafa17888.md) | 299 | `declaration-track:a4cd16c484bfb62fafa17888d210a1908689a3a9c8b010721de33bb79e5983e0` |
| 23 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/radial-integrands-intervalintegrable--d0f915b01d614e5238290fb2.md) | 303 | `result-track:d0f915b01d614e5238290fb2f24f1b7adfb2d9742138acd568112ad964dafa6e` |
| 24 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/radialenergy-nonneg--51f7dbaacbfd62384ee4318b.md) | 315 | `result-track:51f7dbaacbfd62384ee4318b4e2d7cd0e04614ee2b4ed8cfedecea71dc135c4f` |
| 25 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/radialprofile-eventually-ne-zero--dceb3eb510e3047f5b4aea23.md) | 321 | `result-track:dceb3eb510e3047f5b4aea236894301c0dac67c4850108d4a513c47ca4ed4092` |
| 26 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/radialmass-pos--cbc1475ec6aeb9a755a41978.md) | 328 | `result-track:cbc1475ec6aeb9a755a419785630f82cf5f5f4d5f8c11decb1fd6dc532b3dd49` |
| 27 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/radial-energy-identity--f993fa0be980dd2628f1e411.md) | 344 | `result-track:f993fa0be980dd2628f1e411fcb7abaca0d120d7b77eb1fa06dd3cdf8e4a2db6` |
| 28 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/bumpmoment-zero-re--26a9f91ae8ec5b4bafcadd6b.md) | 402 | `result-track:26a9f91ae8ec5b4bafcadd6b5e23341774584a4e6dbd6433d9a3d87079be50b9` |
| 29 | `theorem` | [W_zero_set_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/w-zero-set-countable--b66b05d8656ac7abd3003a9f.md) | 419 | `result-track:b66b05d8656ac7abd3003a9fc4e84e30b8e8d5ba8a787770c673b5410cfea5b0` |
| 30 | `theorem` | [boundaryW_ae_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/boundaryw-ae-ne-zero--1031cadd2908447b86b9a289.md) | 440 | `result-track:1031cadd2908447b86b9a28970c82c4d312523831ba94b3074cc840109105c90` |
| 31 | `def` | [boundaryFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variant22071a6f1f3b8617b72d5345ffcbc283fa49fa44b5ee7e62326919a1536e44a9.lean/declarations/boundaryfilter--cb841fb1c8fe48ef5c691765.md) | 447 | `declaration-track:cb841fb1c8fe48ef5c69176583753ed91cde000a10df8590fb8472148f95d435` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
