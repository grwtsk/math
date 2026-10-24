# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.ExpLog.Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "795d01d32f2e3e0fbcf1bad25ffd34adbbe7a5f3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `795d01d32f2e3e0fbcf1bad25ffd34adbbe7a5f3`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Algebra.Spectrum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exponential` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unique` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ContinuousSqrt` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [NormedSpace.exp_continuousMap_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/declarations/normedspace-exp-continuousmap-eq--4b7846ffa0471816855b9e82.md) | 55 | `result-track:4b7846ffa0471816855b9e82bd53cea8164bf07413c774f34c934bb372f422a5` |
| 2 | `lemma` | [exp_eq_normedSpace_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/declarations/exp-eq-normedspace-exp--363bb536f902e97a39f8f511.md) | 72 | `result-track:363bb536f902e97a39f8f5116f074048314b6d6b3cf53bdb85d0e4a19a10b3f1` |
| 3 | `lemma` | [real_exp_eq_normedSpace_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/declarations/real-exp-eq-normedspace-exp--3be037ecb3d431d40ba5c127.md) | 90 | `result-track:3be037ecb3d431d40ba5c1274dd9b6253462adb314e71c39c18131c99e341056` |
| 4 | `lemma` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormedSpaceExpContinuousMapEq.Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.IsSelfAdjoint.exp_nonneg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/declarations/root-grwtsk-analysis-functionalanalysis-banachspaces-normedspaces-normed--e9d8b72e92693835d03e3eb4.md) | 95 | `result-track:e9d8b72e92693835d03e3eb44cc4bd9504ceecab1a64382c2f5607e220e40ed5` |
| 5 | `lemma` | [complex_exp_eq_normedSpace_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/declarations/complex-exp-eq-normedspace-exp--51a6946e87ffcc7e0e0a2660.md) | 108 | `result-track:51a6946e87ffcc7e0e0a266022ae5d46586b04e48c1ddd0c296ab56fc8bbcccf` |
| 6 | `def` | [log](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/declarations/log--1b319f9df1099a2f808efbcf.md) | 124 | `declaration-track:1b319f9df1099a2f808efbcf02ccdffab1cc35fe4b0eac80f97244ce6756a29b` |
| 7 | `lemma` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormedSpaceExpContinuousMapEq.Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.IsSelfAdjoint.log](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/declarations/root-grwtsk-analysis-functionalanalysis-banachspaces-normedspaces-normed--b26821cbdb34bed675663de4.md) | 127 | `result-track:b26821cbdb34bed675663de4dac65b49bb18ff01eae8d4fdf1eb8f3f207ac2d9` |
| 8 | `lemma` | [log_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/declarations/log-zero--abe89b026271cc2003220df5.md) | 130 | `result-track:abe89b026271cc2003220df510c18ff2d8b4b5a4138703c4240ce2d0795573c1` |
| 9 | `lemma` | [log_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/declarations/log-one--cde2049c7daa61d5cc6de1c8.md) | 132 | `result-track:cde2049c7daa61d5cc6de1c85641579243962cf45d4c014e6e61ab7d4abae631` |
| 10 | `lemma` | [log_algebraMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/declarations/log-algebramap--f5efd7cf0bf11e606d5e6f9e.md) | 135 | `result-track:f5efd7cf0bf11e606d5e6f9e2e83fc133aac841a4e9e1be96000495aad966f04` |
| 11 | `lemma` | [log_smul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/declarations/log-smul--450ef25f7e0907d465d7e00e.md) | 139 | `result-track:450ef25f7e0907d465d7e00e3dadbf3fbc175fc1be8500ff8a6de9386d091985` |
| 12 | `lemma` | [log_pow](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/declarations/log-pow--625db640c946c61f6029510d.md) | 149 | `result-track:625db640c946c61f6029510db114581d8e1c180aafafbc880631fc08646a266a` |
| 13 | `lemma` | [log_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/declarations/log-exp--ef28c1aa6c6f8742755fca1f.md) | 158 | `result-track:ef28c1aa6c6f8742755fca1ff6d5305445c2913076071fae45cb7e69dc21083c` |
| 14 | `lemma` | [exp_log](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Varianta6a4517639f23941ebf7a962e02e0bea677fab9ddea4247fdf8513bbcd46b9ff.lean/declarations/exp-log--69d35a534ff16811d3ad373b.md) | 164 | `result-track:69d35a534ff16811d3ad373b99ce925697d277084b36aea588eca6cdb816137b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
