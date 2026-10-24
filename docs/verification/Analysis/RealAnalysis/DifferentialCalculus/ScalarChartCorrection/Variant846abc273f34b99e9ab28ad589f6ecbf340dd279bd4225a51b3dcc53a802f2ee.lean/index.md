# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ScalarChartCorrection.Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "740a7b7703513a3b3e089c0728c5e1d54a9bcfe8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `740a7b7703513a3b3e089c0728c5e1d54a9bcfe8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_composite_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/hasderivat-composite-second--dc7d2c8787d98f59c0500d86.md) | 35 | `result-track:dc7d2c8787d98f59c0500d867d1c380f89734e25da979e8e237124907c656e81` |
| 2 | `theorem` | [scalar_hessian_correction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/scalar-hessian-correction--1c0e9edff13e98558a8b5750.md) | 55 | `result-track:1c0e9edff13e98558a8b575026a1bdf209050e003746978e45f29110c2cda008` |
| 3 | `theorem` | [corrected_hessian_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/corrected-hessian-nonnegative--89f2c8062a688810ca12d2ab.md) | 69 | `result-track:89f2c8062a688810ca12d2ab1df6545534acae75cb3a515416b6ad6733f510f4` |
| 4 | `def` | [logOnePlus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/logoneplus--2bf73a7bca1fd1dc39851516.md) | 82 | `declaration-track:2bf73a7bca1fd1dc39851516cd27f80d03f0c0bdd50faf8cb80d4eaea540e4a0` |
| 5 | `theorem` | [hasDerivAt_logOnePlus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/hasderivat-logoneplus--4a33144f82403e7d9887143d.md) | 85 | `result-track:4a33144f82403e7d9887143d7bcb68cc50dc2990b895a5a55961f5c815c77d75` |
| 6 | `theorem` | [hasDerivAt_logOnePlusSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/hasderivat-logoneplusslope--26e130f551c7ee2f3135a3f1.md) | 92 | `result-track:26e130f551c7ee2f3135a3f15d048d9e95e6f7caf21aa4ca8c5a9831628cbfc5` |
| 7 | `theorem` | [logOnePlus_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/logoneplus-second--b1778e338dc8f99378516811.md) | 98 | `result-track:b1778e338dc8f993785168113d5f2c87087507dea1d38b60d7b76a4f9a35ce88` |
| 8 | `theorem` | [hasDerivAt_logChart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/hasderivat-logchart--83f1142cb347be67e82cd3ae.md) | 107 | `result-track:83f1142cb347be67e82cd3aeff1c53912c53a1b3583bdcc2e920300e5f06bcfe` |
| 9 | `theorem` | [hasDerivAt_logChartSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/hasderivat-logchartslope--ab4c8bb30b0c7046bbd0c2f8.md) | 112 | `result-track:ab4c8bb30b0c7046bbd0c2f86b89ef7f1bf8d52a55543d536f9f664c7fc30376` |
| 10 | `def` | [bernoulliPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/bernoullipotential--3be0dda4aef3ad441ff87fdb.md) | 117 | `declaration-track:3be0dda4aef3ad441ff87fdb874c73911cc378b2d321f2043ce0cb40744dba47` |
| 11 | `theorem` | [hasDerivAt_bernoulliPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/hasderivat-bernoullipotential--43e434c5c8c6619a958f21a8.md) | 120 | `result-track:43e434c5c8c6619a958f21a8ec7e82f79716e6b2675c2269996a9557632a98e4` |
| 12 | `theorem` | [bernoulli_logChart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/bernoulli-logchart--c7b912a79f5d647d6e406b32.md) | 127 | `result-track:c7b912a79f5d647d6e406b32affe4ea097e5d45b9b33b10b6285611107292dcf` |
| 13 | `theorem` | [bernoulli_chart_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/bernoulli-chart-term--bf31aea1ac91079ff43c7a49.md) | 132 | `result-track:bf31aea1ac91079ff43c7a494222e3ce83051c3e08af9c30fdd3f8c2dc27809a` |
| 14 | `theorem` | [bernoulli_corrected_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/bernoulli-corrected-second--0c80da523aa0ed89a765da45.md) | 141 | `result-track:0c80da523aa0ed89a765da4520ef2b0a61dfde610e7a8832ffbb9d0fbea4d543` |
| 15 | `theorem` | [bernoulli_sign_separation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/declarations/bernoulli-sign-separation--f3d870bbbfbaee58917c5c43.md) | 151 | `result-track:f3d870bbbfbaee58917c5c43e404d96c430bbdd0cecd570c66d8438fd7753f76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
