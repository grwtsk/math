# Verification target: GRWTSK.Analysis.Complex.HolomorphicAreaComplete

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "055494c26c76536ae2eb644bd1b978eb3edb791e",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicAreaComplete.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `055494c26c76536ae2eb644bd1b978eb3edb791e`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicAreaComplete.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicAreaComplete.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Add` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Countable` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scalarEnergy](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/scalarenergy--c0cb6353f7564194b6848bb5.md) | 42 | `declaration-track:c0cb6353f7564194b6848bb549bf583524a30293708c1e8705635f32ecbacc6a` |
| 2 | `theorem` | [scalarEnergy_realization](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/scalarenergy-realization--14299dc7e74cea6968b4025f.md) | 46 | `result-track:14299dc7e74cea6968b4025fd90c46c23d42780103449783b5c60e21f14b41e2` |
| 3 | `theorem` | [scalarEnergy_realization_norm](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/scalarenergy-realization-norm--8279c207a9f2d2e771e2ec1e.md) | 56 | `result-track:8279c207a9f2d2e771e2ec1e714701f845ab74221b5ade8079c484b3c360cd2c` |
| 4 | `theorem` | [realization_sub](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/realization-sub--35eb8f4e387e5ba4b6e779a2.md) | 61 | `result-track:35eb8f4e387e5ba4b6e779a214530bd09631fd4093cdff37f037837dd2247c70` |
| 5 | `theorem` | [scalarEnergy_le_liminf](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/scalarenergy-le-liminf--a092912ebcab2e3d188b4cb5.md) | 70 | `result-track:a092912ebcab2e3d188b4cb582b9bb8b5f4f6eed4b318782848be0d1756bd700` |
| 6 | `theorem` | [scalarEnergy_le_of_eventually_le](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/scalarenergy-le-of-eventually-le--4b5597d2694b2593bed4f784.md) | 92 | `result-track:4b5597d2694b2593bed4f784a8298f971eb82f46ed91d528da5f715231c69b77` |
| 7 | `theorem` | [realization_tendsto](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/realization-tendsto--0d3af26bb61331b981f328b2.md) | 107 | `result-track:0d3af26bb61331b981f328b2d0ef205b0015b06c9ec3d08347c5d05d22130527` |
| 8 | `theorem` | [cauchy_norm_bounded](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/cauchy-norm-bounded--1828041486113c1c1ed9be65.md) | 116 | `result-track:1828041486113c1c1ed9be656f8363c8cb14e8286e0ebf7915a7d333ac5a989a` |
| 9 | `theorem` | [holomorphicLimit_finite](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/holomorphiclimit-finite--e837d2a9b7ecdd2f24748759.md) | 127 | `result-track:e837d2a9b7ecdd2f24748759a8d4a48476d0b5028dafc78ce49800a08f978d60` |
| 10 | `def` | [finiteLimit](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/finitelimit--844cb797f555e111fafd84fa.md) | 140 | `declaration-track:844cb797f555e111fafd84fa1e5feefd30280240fe401d66f29212ddd01d4c4b` |
| 11 | `def` | [limitClass](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/limitclass--28bf8c97126faaf884d4309b.md) | 144 | `declaration-track:28bf8c97126faaf884d4309b3f7c01ab223ec281756fa90483f2713dc2fe9a3e` |
| 12 | `theorem` | [realization_limitClass](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/realization-limitclass--1d0ddb5264e49cc4182d3e31.md) | 148 | `result-track:1d0ddb5264e49cc4182d3e315558697255575a679448db9fa33a77c18cb6124a` |
| 13 | `theorem` | [distance_limit_le](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/distance-limit-le--cbcdf4a41147ae6e48c18d82.md) | 156 | `result-track:cbcdf4a41147ae6e48c18d82d3d4cc9f83d72e558b737cd90d31efd8fe9b9d7c` |
| 14 | `theorem` | [limitClass_tendsto](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/limitclass-tendsto--3e72acd25e6429491477dbcc.md) | 182 | `result-track:3e72acd25e6429491477dbcca9c7531625a506a087ddc16b383cf0924a794e9e` |
| 15 | `theorem` | [areaQuotient_complete](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/areaquotient-complete--2604fed6748c717afb58f512.md) | 195 | `result-track:2604fed6748c717afb58f512b6df3d83989476ce6317da1597d321238c4c5c81` |
| 16 | `theorem` | [existsUnique_area_limit](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/existsunique-area-limit--413cf73a9d994354925f3a51.md) | 199 | `result-track:413cf73a9d994354925f3a5193f326fb530a758a0dfce9a42097ba7a7679e705` |
| 17 | `theorem` | [toCompletion_surjective](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/tocompletion-surjective--8d94fff5f020775f369c046e.md) | 205 | `result-track:8d94fff5f020775f369c046e6e07e7f57785bf13045bf1cab63a72c6ee9113a5` |
| 18 | `def` | [areaCompletionEquiv](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/areacompletionequiv--87865e13465b01c2f66244f4.md) | 214 | `declaration-track:87865e13465b01c2f66244f469e533f4092e9c81be15bf72b3d7274a79e9fcf8` |
| 19 | `theorem` | [areaCompletionEquiv_apply](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/areacompletionequiv-apply--a10705122555bb6a81c4790a.md) | 221 | `result-track:a10705122555bb6a81c4790aef3585ab950ccb50a0e461b54c172c449ce20ccb` |
| 20 | `theorem` | [areaCompletionEquiv_symm_toCompletion](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/areacompletionequiv-symm-tocompletion--d5e0b4989334ea4345350700.md) | 225 | `result-track:d5e0b4989334ea4345350700074a320b3eea241eb855a50abf5241cb8b5bb454` |
| 21 | `theorem` | [toCompletion_areaCompletionEquiv_symm](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/tocompletion-areacompletionequiv-symm--3b1c4b0e8ab07387ad9ca815.md) | 231 | `result-track:3b1c4b0e8ab07387ad9ca8153baac00b6bac3a3ba64a93463785c07b02c0dce3` |
| 22 | `def` | [completedRealization](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/completedrealization--1e608e2b72ad5c897459283c.md) | 238 | `declaration-track:1e608e2b72ad5c897459283ccafd269b5ca64769ae83fb696c5061525417a6bc` |
| 23 | `theorem` | [completedRealization_toCompletion](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/completedrealization-tocompletion--7df712fa0f3e578ebaa3f124.md) | 242 | `result-track:7df712fa0f3e578ebaa3f124fb00b21fc90443c52dd595f9e6c8238c8110cf43` |
| 24 | `theorem` | [completedRealization_energy](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/completedrealization-energy--1d45525450e5bd1024aaef4b.md) | 250 | `result-track:1d45525450e5bd1024aaef4b510c60a1686bcf922a63d3c865d57b9272294c4b` |
| 25 | `theorem` | [completedRealization_finite](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/completedrealization-finite--871ccd2a24255cd0089e04d2.md) | 257 | `result-track:871ccd2a24255cd0089e04d2071a3f7f5d48dbe5ffb894678f678ed310101748` |
| 26 | `theorem` | [completedRealization_injective](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/completedrealization-injective--0e55edf594b3f300b6d2bc41.md) | 263 | `result-track:0e55edf594b3f300b6d2bc41d44c8e83b794aadf4201ffe3afa72293d658f7ef` |
| 27 | `theorem` | [constant_limitClass](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/constant-limitclass--f732324b224c592a3be15844.md) | 270 | `result-track:f732324b224c592a3be15844bbd09b0d025f11b54fb2e54373061672eb0d545c` |
| 28 | `def` | [escapingPulse](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/escapingpulse--ee30c8af70874a1227e39b84.md) | 278 | `declaration-track:ee30c8af70874a1227e39b84e918df8e5c72bcee805fb3fc04a51802eaac2cec` |
| 29 | `theorem` | [escapingPulse_integral](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/escapingpulse-integral--094d02617d7b6d46e6697353.md) | 280 | `result-track:094d02617d7b6d46e66973531d04af89b0cd61aedd21ea8c3e84b8b1a3ad7864` |
| 30 | `theorem` | [escapingPulse_pointwise](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/escapingpulse-pointwise--913ea6b714cb67273fc7e52f.md) | 285 | `result-track:913ea6b714cb67273fc7e52fdf49b3676545b4ca26c0d64e6f118b0bb39229f4` |
| 31 | `theorem` | [escapingPulse_strict_fatou](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/declarations/escapingpulse-strict-fatou--bb9c977ba7f5d95057f3cfd9.md) | 293 | `result-track:bb9c977ba7f5d95057f3cfd9022fc409083f721b2e399c53c975621fd8414d20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
