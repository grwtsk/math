# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceBumpGlobal.Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0244ddb46b3aeb899af68358be49bae4d949c090",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0244ddb46b3aeb899af68358be49bae4d949c090`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/bumpmoment--b0fd93b49e75a1f93716cf46.md) | 22 | `declaration-track:b0fd93b49e75a1f93716cf46d39b28617dd57dc9171df8161141a63b860b47b7` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/bumpmoment-intervalintegrable--d416f587fb0b87aa7a8efea4.md) | 27 | `result-track:d416f587fb0b87aa7a8efea497016f412ff3d3aa6210fbd9c067ca6a9857e9e8` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/bumpmoment-zero-eq-source--4763920ee946e573021c0c90.md) | 34 | `result-track:4763920ee946e573021c0c909d56f612a92cd5ce46df38bb4a51d98ea758b38f` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/bumpmoment-zero-zero--b90ac6859faf46a2c783ec3d.md) | 47 | `result-track:b90ac6859faf46a2c783ec3d8f20fea65b5fe0a765f5c0a4cb8e12db1962571c` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/bumpflux-hasderivat--e3c7997f669f5d77ffee4e42.md) | 57 | `result-track:e3c7997f669f5d77ffee4e427438dae038b268a419dc60a34fdabc90bd537299` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/bumpmoment-equation--44e6f64ba8af46d676908d26.md) | 68 | `result-track:44e6f64ba8af46d676908d26d7a3520c1f6311655fad8e490c72daea8ea74e1b` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/re-eq-zero-of-weighted-energy--f57edc732430b52f4592cc95.md) | 103 | `result-track:f57edc732430b52f4592cc950fcb3daae39023946085f16faf793d33304ee1c2` |
| 8 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/bumpmoment-hasderivat--c06598a84a506e4cb6947079.md) | 136 | `result-track:c06598a84a506e4cb69470790b79f07c8263ba4c4d155689b52a8c94da6020a4` |
| 9 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/bumpmoment-continuous--322dd3d8dc67c26918a5b8ab.md) | 172 | `result-track:322dd3d8dc67c26918a5b8ab3abc1833acf9c0fc78cba71243d30112ea5224cd` |
| 10 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/radialprofile--8cd04c2e41f207bbcef4540d.md) | 177 | `declaration-track:8cd04c2e41f207bbcef4540da7f1215ea33fad4b08438d6d78eb8df09f71580d` |
| 11 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/radialflux--5eb8c8d32ccf9c25cd2e49ad.md) | 180 | `declaration-track:5eb8c8d32ccf9c25cd2e49ade3d17669b9303f0f6bcb7290fc8a512b3f2dc45d` |
| 12 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/radialprofile-hasderivat--0b782ad859daa55f4912da4a.md) | 184 | `result-track:0b782ad859daa55f4912da4a6c1d1d4e3e0938edec2c8a8d17e30ecfbe7c9a41` |
| 13 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/radialflux-hasderivat--1cc18267f6a17a37f18ff11d.md) | 193 | `result-track:1cc18267f6a17a37f18ff11d5d85c59939747805a0cea8836adc831cea682278` |
| 14 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/radialprofile-continuous--6251eb1ee8a2fbdd06c60d53.md) | 203 | `result-track:6251eb1ee8a2fbdd06c60d530667806b26167de96dd44da74dad15eb17d799fa` |
| 15 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/radialflux-continuous--1faab00dea43fd37dbc31630.md) | 207 | `result-track:1faab00dea43fd37dbc316305e1d8fae6dbf7d828595ce1be217c8f81d938a59` |
| 16 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/radialmass--ab5b9fb606bf25828842630a.md) | 212 | `declaration-track:ab5b9fb606bf25828842630a06a0875a2749bea42de974185acac04f94462701` |
| 17 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/radialenergy--f98f722996eb77f8339e8a19.md) | 215 | `declaration-track:f98f722996eb77f8339e8a19f498c16773a5542a23a24f1ed783bc854f073460` |
| 18 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/radial-integrands-intervalintegrable--8a741135e29a9caaa3ebfe8f.md) | 219 | `result-track:8a741135e29a9caaa3ebfe8f02d114730506927f4b1002b2b8dffab4adc1b1ea` |
| 19 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/radialenergy-nonneg--744f01955c21779a7a85facc.md) | 231 | `result-track:744f01955c21779a7a85faccb15b7f1a86ef972cb94541ff0ed95c1e1ce52b18` |
| 20 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/radialprofile-eventually-ne-zero--8c70facb8c52e61b1b9f8226.md) | 237 | `result-track:8c70facb8c52e61b1b9f8226ab4de0e0d57c490419eba8e19f182e80efa97d51` |
| 21 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/radialmass-pos--e9d2118ac3807ab70d5040e2.md) | 244 | `result-track:e9d2118ac3807ab70d5040e206381ba3ed31cc5bc3e56a56593e7b52570b2ffa` |
| 22 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/radial-energy-identity--0611f1513f8f58a7c61929bc.md) | 260 | `result-track:0611f1513f8f58a7c61929bcd64015b5ad3706e19d31a496f635fd9b231b89ef` |
| 23 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variantb96e8289647a9ff642f6e3e82b6e39c638a0338667f892a3199c7abae0cc7698.lean/declarations/bumpmoment-zero-re--f44b62276283b59bd23b26fc.md) | 318 | `result-track:f44b62276283b59bd23b26fc9854355510c31f9079ebf2756f15bca7f390e0a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
