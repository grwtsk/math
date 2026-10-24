# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedLaplaceBoundary.Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "187d63e7ebb0cccc5b676aef400f066d969d985d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `187d63e7ebb0cccc5b676aef400f066d969d985d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceContinuation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/bumpmoment--32c699e9bb8ff216dfdce271.md) | 24 | `declaration-track:32c699e9bb8ff216dfdce2710e36e839324f27e658c700a76694c506af28cb45` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/bumpmoment-intervalintegrable--81131571cc99c46835e03cb3.md) | 29 | `result-track:81131571cc99c46835e03cb3a8e9b0a4af75cff85a16cc1837bc9021256831b1` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/bumpmoment-zero-eq-source--962e9be4e824e88a7580c955.md) | 36 | `result-track:962e9be4e824e88a7580c955190126e05b64d9a9cb75be97778619c3b9dcc863` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/bumpmoment-zero-zero--13fe74b28e818cea38b58479.md) | 49 | `result-track:13fe74b28e818cea38b584797dff7de5dd91d3167232a879f277caf5677cef7e` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/bumpflux-hasderivat--223b267d37ba8c7fecbd910b.md) | 59 | `result-track:223b267d37ba8c7fecbd910b9e0cc981f8edb9e27b08f778fb56f1105641b04d` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/bumpmoment-equation--5133ffe07df858b5e6856b9e.md) | 70 | `result-track:5133ffe07df858b5e6856b9e65af7c32d1540a53015e84a31b0a90405f26e1c0` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/re-eq-zero-of-weighted-energy--560bb8c15655aa38dd188344.md) | 105 | `result-track:560bb8c15655aa38dd188344fa1e2ff2c182f02bf43cb2d0fa8059371ad0eeb5` |
| 8 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/bumpprimitive-hasderivat--71c2f2000d048cae05f5f45b.md) | 134 | `result-track:71c2f2000d048cae05f5f45b588ad26f32c007c991d800e5baf0b73210c6336e` |
| 9 | `theorem` | [bumpMoment_closedFormula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/bumpmoment-closedformula--bf8933d386b63f424b6ed3a7.md) | 149 | `result-track:bf8933d386b63f424b6ed3a7a077923914fd4a8835e819a16581db4150ba8be1` |
| 10 | `theorem` | [V_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/v-zero--e518be9099cab37334668329.md) | 174 | `result-track:e518be9099cab373346683291d8700eba24e0a58dd85ecfd76b32abafda90da0` |
| 11 | `theorem` | [V_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/v-eq-bumpmoment--70345872fc6fb2979f052224.md) | 183 | `result-track:70345872fc6fb2979f05222454c291773d1578255f230d11afd460b46f3a4238` |
| 12 | `theorem` | [W_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/w-eq-bumpmoment--ad89ac14b591199d3fd4af2c.md) | 196 | `result-track:ad89ac14b591199d3fd4af2c3b61801bb25eb24a7f4eb137f00e8c33e34a18d2` |
| 13 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/bumpmoment-hasderivat--d6748ddf505d7b700c57088d.md) | 218 | `result-track:d6748ddf505d7b700c57088d650cb33e5ace9382ed77fe8c05ec6bba04cdbf06` |
| 14 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/bumpmoment-continuous--2554f9e7062ae297c91fa1fc.md) | 254 | `result-track:2554f9e7062ae297c91fa1fc587c07d0a2952fc20ee0330b12122190c5875484` |
| 15 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/radialprofile--fb4d1ba9eeba83d5d2b5c570.md) | 259 | `declaration-track:fb4d1ba9eeba83d5d2b5c570c683036ea72228d6b1dfa27f789ae3addb36f0e8` |
| 16 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/radialflux--ced55ed8f3ee9e96bf1b30ee.md) | 262 | `declaration-track:ced55ed8f3ee9e96bf1b30eea43ead4cfd91f83fd63020dacfd5df775b694379` |
| 17 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/radialprofile-hasderivat--8eee05d871a8550032f66143.md) | 266 | `result-track:8eee05d871a8550032f66143d1db264df3840ba06eebb419418ea23adacbce41` |
| 18 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/radialflux-hasderivat--54e392480f338a29290462f1.md) | 275 | `result-track:54e392480f338a29290462f1438c0d1f155a25cd6ab489cd9ff3fd8c4e46f4b0` |
| 19 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/radialprofile-continuous--19a51d9cadd7354555e49513.md) | 285 | `result-track:19a51d9cadd7354555e495135df6bd4d45513fc50387bb89a53d02fa47d423b2` |
| 20 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/radialflux-continuous--945971c561ef04eba038b1d2.md) | 289 | `result-track:945971c561ef04eba038b1d298f756976e5a0ed9a28ec0f60343fe6dfae11e35` |
| 21 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/radialmass--34f71a8e3e994309069ecebd.md) | 294 | `declaration-track:34f71a8e3e994309069ecebd5a0358fd6cf85d4e42a813ebebd24cf7f924e9cb` |
| 22 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/radialenergy--8b980ca0b32ee7c95974b1b0.md) | 297 | `declaration-track:8b980ca0b32ee7c95974b1b098f60189278beaa4654016ea18c804607454f1ff` |
| 23 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/radial-integrands-intervalintegrable--7fe4cff728535263317974d1.md) | 301 | `result-track:7fe4cff728535263317974d10eb45ec0c8bb5f5ecfcd284a4a0757d97a2f886e` |
| 24 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/radialenergy-nonneg--2b0f3d2b7aeb64e1a3c23346.md) | 313 | `result-track:2b0f3d2b7aeb64e1a3c2334665820d9008718f6bfaf7447f5dd5fbe6a98392f5` |
| 25 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/radialprofile-eventually-ne-zero--82327110b635940841ca038d.md) | 319 | `result-track:82327110b635940841ca038d0b74b728fea133eee1021d467dccdf3fa9a8b894` |
| 26 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/radialmass-pos--bdab4c465c44c36ca22fe556.md) | 326 | `result-track:bdab4c465c44c36ca22fe556c29d2e1fcdf2e4fe63316df7683e02abe43435ec` |
| 27 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/radial-energy-identity--12d458520ccb0498e3d5a24b.md) | 342 | `result-track:12d458520ccb0498e3d5a24b91307a28280a0b9260081d2766a3bd51fb919113` |
| 28 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/bumpmoment-zero-re--8bf931d22fee8894cc5b4956.md) | 400 | `result-track:8bf931d22fee8894cc5b4956c208cbdd1819d3074cdab5a3202e9f66169754e3` |
| 29 | `theorem` | [V_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/v-continuous--78a15e272a74538175582091.md) | 418 | `result-track:78a15e272a74538175582091ca1574c88a9ba1c65db2d516baa19af5f4fcf5fc` |
| 30 | `theorem` | [actualLaplace_continuousOn_closed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/actuallaplace-continuouson-closed--af33db89fae8be37742edc7a.md) | 426 | `result-track:af33db89fae8be37742edc7a12aac261b75460e81b7464c054f3701a204e15c9` |
| 31 | `theorem` | [sourceProduct_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/sourceproduct-continuousat--7df2d7c5d51e18ed586434a9.md) | 452 | `result-track:7df2d7c5d51e18ed586434a93bb8f45cc1bbe11a488337c85738da764d1c5c04` |
| 32 | `theorem` | [actualLaplace_eq_product_closed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/actuallaplace-eq-product-closed--631046be9168319b80102675.md) | 465 | `result-track:631046be9168319b80102675bdea7026c912329259b9153d719cb7a5071ab6fd` |
| 33 | `theorem` | [actualLaplace_boundary](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variante517b98459c0e1a1afdda1315f52663970e0fa3c6cd5e26cd9c81f3d85a33526.lean/declarations/actuallaplace-boundary--8b98f199f2be738f9501c9ac.md) | 491 | `result-track:8b98f199f2be738f9501c9ac6e1f0be6184b0eb6db671f1708b0cff947c5f8d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
