# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Basic.Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4432d3215bdb2bb3b2887560cfbc96200cefc4dc",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4432d3215bdb2bb3b2887560cfbc96200cefc4dc`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Continuity` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [NormedSpace.exp_continuousMap_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/normedspace-exp-continuousmap-eq--39ba863d40d9bb931f388a09.md) | 60 | `result-track:39ba863d40d9bb931f388a0910a65c43828f440c734289ae008bcaaf6ec30178` |
| 2 | `lemma` | [exp_eq_normedSpace_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/exp-eq-normedspace-exp--ec25f53dc20f25d6f660c906.md) | 77 | `result-track:ec25f53dc20f25d6f660c90641f3292b950ba68f2cb6860882f8277bf94bfae5` |
| 3 | `lemma` | [real_exp_eq_normedSpace_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/real-exp-eq-normedspace-exp--bc52b3836218d739aa9bdd45.md) | 95 | `result-track:bc52b3836218d739aa9bdd45a29be494da79c02599169b89f7d42ee0a71e0d88` |
| 4 | `lemma` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormedSpaceExpContinuousMapEq.Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.IsSelfAdjoint.exp_nonneg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/root-grwtsk-analysis-functionalanalysis-banachspaces-normedspaces-normed--b0ae5261906a4a6fe73d7abd.md) | 100 | `result-track:b0ae5261906a4a6fe73d7abd9751142011af406f1dacf0276487d8c2f23bcd81` |
| 5 | `lemma` | [complex_exp_eq_normedSpace_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/complex-exp-eq-normedspace-exp--2f155fcc795039ddd9ae79a9.md) | 113 | `result-track:2f155fcc795039ddd9ae79a9e039ae30db85c178183f07ad6e04929f0f319bf7` |
| 6 | `def` | [log](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/log--0b39a938ab96c41c3e178707.md) | 129 | `declaration-track:0b39a938ab96c41c3e17870732aa97758b6af1159a841b5bec685fd5721a53ea` |
| 7 | `lemma` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormedSpaceExpContinuousMapEq.Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.IsSelfAdjoint.log](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/root-grwtsk-analysis-functionalanalysis-banachspaces-normedspaces-normed--076e14fe40edea64379c1d84.md) | 132 | `result-track:076e14fe40edea64379c1d8480b8004e4f7c306b7904014e7e127e9694d3603f` |
| 8 | `lemma` | [log_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/log-zero--13ea654dd6a16de377673b0f.md) | 134 | `result-track:13ea654dd6a16de377673b0fc63860df58c93deadc43f220f0c8c4f4be749b36` |
| 9 | `lemma` | [log_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/log-one--4127b9e113c6ea89c21dc1f9.md) | 136 | `result-track:4127b9e113c6ea89c21dc1f9cbb96d0f783672d8b16640f7c8464f7fac985f3a` |
| 10 | `lemma` | [log_algebraMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/log-algebramap--9776a9278491431593afc7b1.md) | 139 | `result-track:9776a9278491431593afc7b186666655077e6ba2556615addef8980b183b9e53` |
| 11 | `lemma` | [log_smul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/log-smul--80caaa203598024276efa506.md) | 142 | `result-track:80caaa203598024276efa50600ebb986ff4b4a5ece4d5ab8a8ede9d7f1ba582b` |
| 12 | `lemma` | [log_smul'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/log-smul--973877bfeb0cf143db16b15b.md) | 152 | `result-track:973877bfeb0cf143db16b15bd6fccb6bc524a90fb59df00f5151f6f23ba19828` |
| 13 | `lemma` | [log_pow](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/log-pow--29c5914bf8638d07adc8896e.md) | 157 | `result-track:29c5914bf8638d07adc8896ed7c195adb82f06ba75f092592cf6db20cd95657b` |
| 14 | `lemma` | [log_pow'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/log-pow--0ed259229bd71cc2104a5bdf.md) | 165 | `result-track:0ed259229bd71cc2104a5bdf57a3abf3efbc75601fbbcc60d684398d9d0c65e8` |
| 15 | `lemma` | [log_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/log-exp--7fe24157e7692aa55672e590.md) | 172 | `result-track:7fe24157e7692aa55672e590017284dd9a860ba810bdac8550ec5358b6fa05c6` |
| 16 | `lemma` | [exp_log](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/exp-log--378653f75ae39bb2bfc58fc8.md) | 179 | `result-track:378653f75ae39bb2bfc58fc8528ae8f5a38554e14866ab86975f4d081f2160b7` |
| 17 | `lemma` | [continuousOn_log](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean/declarations/continuouson-log--2d68dc2822954754685d2f82.md) | 187 | `result-track:2d68dc2822954754685d2f82a506e285ea6096503bba8e841a845f70290b01bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
