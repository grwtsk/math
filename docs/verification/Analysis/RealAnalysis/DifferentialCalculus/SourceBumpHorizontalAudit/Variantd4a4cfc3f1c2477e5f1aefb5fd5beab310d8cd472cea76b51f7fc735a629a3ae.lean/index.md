# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceBumpHorizontalAudit.Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e232715b4b719d5bf81aca475e1c1b2cc1e043c6",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e232715b4b719d5bf81aca475e1c1b2cc1e043c6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean.json)

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
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/bumpmoment--61307b8dadaed5aba3e9c425.md) | 23 | `declaration-track:61307b8dadaed5aba3e9c425e4f7642ced0fa72683cc7a7b478351b91b6e8b9c` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/bumpmoment-intervalintegrable--de955ab747a25a8497de1a92.md) | 28 | `result-track:de955ab747a25a8497de1a9276be12b9d4e91f08bd732a411abd7310c3b580f6` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/bumpmoment-zero-eq-source--96c12f5c33529bdad445cdb5.md) | 35 | `result-track:96c12f5c33529bdad445cdb503032178d083b7b3c9b16541f5267671f2f27e74` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/bumpmoment-zero-zero--81de7a985d7d64ae223202d6.md) | 48 | `result-track:81de7a985d7d64ae223202d6815290abab206a5ff386a7d04429a55d3eb58cf0` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/bumpflux-hasderivat--4d4993d5f4e99decd9ca2618.md) | 58 | `result-track:4d4993d5f4e99decd9ca2618b96583ccf1cb0d61878134c861246e3e363a04c2` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/bumpmoment-equation--e8f3ea4ca5969920d1d98c34.md) | 69 | `result-track:e8f3ea4ca5969920d1d98c34f8f20f969525c7457c7fe394a4e22be683c9873a` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/re-eq-zero-of-weighted-energy--250112283fe80ff7d113c74a.md) | 104 | `result-track:250112283fe80ff7d113c74af230458b256e1dfe080c23f8d3bfbabf546735e2` |
| 8 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/bumpmoment-hasderivat--ba3ff423f3e9aa8e546c0644.md) | 137 | `result-track:ba3ff423f3e9aa8e546c064445635b044e6e6e1f29932857436ba995dbf26068` |
| 9 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/bumpmoment-continuous--fad5f1994a28cdc3afab91d0.md) | 173 | `result-track:fad5f1994a28cdc3afab91d046777eeb5873068138fe46993733cafa32a53eb2` |
| 10 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/radialprofile--e308ec3c482a6e94d6a7ee11.md) | 178 | `declaration-track:e308ec3c482a6e94d6a7ee11ca33722ac4f78a7bc1d0e54793ecd38ec4b15209` |
| 11 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/radialflux--6cfb84152030330e8cec89e8.md) | 181 | `declaration-track:6cfb84152030330e8cec89e804026c683e0406886e9837481b7620d981f140bb` |
| 12 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/radialprofile-hasderivat--962122305053e133dfa91af9.md) | 185 | `result-track:962122305053e133dfa91af98bffe28022936e054e53d19576af2bbd76bc9756` |
| 13 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/radialflux-hasderivat--8c34410ab382ecada1464242.md) | 194 | `result-track:8c34410ab382ecada14642426152d48dcd3f68a541f833f1656580037e021af8` |
| 14 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/radialprofile-continuous--da17de86457e38d25aa957ed.md) | 204 | `result-track:da17de86457e38d25aa957ed9d9356b76a3b67f899cb83d9eee81242acb9d80a` |
| 15 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/radialflux-continuous--b9c9a8640f837db06dbc7c17.md) | 208 | `result-track:b9c9a8640f837db06dbc7c174b374d21f4149a79960adf0624bee3e7105c1f00` |
| 16 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/radialmass--d180029ca0155fe313acbe68.md) | 213 | `declaration-track:d180029ca0155fe313acbe68a5b0896edeb08379f440e33c001be9aab3a96057` |
| 17 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/radialenergy--51a46bbd08c2adbb815f3eb4.md) | 216 | `declaration-track:51a46bbd08c2adbb815f3eb4be9ff65943791b2a38dbb942549550a28e9c6107` |
| 18 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/radial-integrands-intervalintegrable--0bb2335a161573919ab5ade3.md) | 220 | `result-track:0bb2335a161573919ab5ade3e294fed8f4358ce7a3911dcc5ccc6433e31c9d5c` |
| 19 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/radialenergy-nonneg--f57963f480d5efd49388bdf6.md) | 232 | `result-track:f57963f480d5efd49388bdf6d1603611bee966010dc99347fa31990d969e3b64` |
| 20 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/radialprofile-eventually-ne-zero--a8833fd3f0daaca34f59672e.md) | 238 | `result-track:a8833fd3f0daaca34f59672eaa14e7a11c6fdfebf0222f81c114cddcce2b64f5` |
| 21 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/radialmass-pos--e596bbe49010e72de4945fa7.md) | 245 | `result-track:e596bbe49010e72de4945fa77aff42876b16663299ab9e455a1a870746dbcc5a` |
| 22 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/radial-energy-identity--74be85af9bc926bdd8abb27d.md) | 261 | `result-track:74be85af9bc926bdd8abb27ddb0154a9e8b6caf8fd092b171df2954cce8fdbc0` |
| 23 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/bumpmoment-zero-re--a9f59e1fa9c0f87685fb7d56.md) | 319 | `result-track:a9f59e1fa9c0f87685fb7d562870ed525324c848556a0e65406fdef027a2b8bd` |
| 24 | `theorem` | [radial_boundary_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/radial-boundary-energy-identity--d0f1ea2535f919b754c85151.md) | 334 | `result-track:d0f1ea2535f919b754c851510d57bfa126a1f6f0e39659efc50e9a8a70d69d4f` |
| 25 | `theorem` | [bumpMoment_derivative_pairing_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/bumpmoment-derivative-pairing-nonneg--a151d53fd212adb299eb3690.md) | 401 | `result-track:a151d53fd212adb299eb3690827da4f1561290513330b3271d9e5d637439faa2` |
| 26 | `theorem` | [bumpMoment_horizontal_norm_sq_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/bumpmoment-horizontal-norm-sq-hasderivat--e9c6208f9e047e94b8d2640d.md) | 424 | `result-track:e9c6208f9e047e94b8d2640d2796b9763a049adb167059099639a45346e2012d` |
| 27 | `theorem` | [bumpMoment_horizontal_norm_monotone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/bumpmoment-horizontal-norm-monotone--4d16b6d208313ea5373bf586.md) | 436 | `result-track:4d16b6d208313ea5373bf586f7de67215fc8d1fd3a493ee599151d1c52703dc7` |
| 28 | `theorem` | [bumpMoment_horizontal_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variantd4a4cfc3f1c2477e5f1aefb5fd5beab310d8cd472cea76b51f7fc735a629a3ae.lean/declarations/bumpmoment-horizontal-norm-le--7a3170034d292dd095bb4743.md) | 457 | `result-track:7a3170034d292dd095bb4743c0276037aee2ee405fe6e5a89e5ea0963ed80d12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
