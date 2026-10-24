# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.ExpLog.Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "623c13f8cd38f74bc38cdebb73b68c557f4cb8ac",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `623c13f8cd38f74bc38cdebb73b68c557f4cb8ac`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Algebra.Spectrum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exponential` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unique` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ContinuousSqrt` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [NormedSpace.exp_continuousMap_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/declarations/normedspace-exp-continuousmap-eq--75dce968c5414321239ef22c.md) | 47 | `result-track:75dce968c5414321239ef22c9548148332d8850cf4e536adfd5bb1d526aa09b4` |
| 2 | `lemma` | [exp_eq_normedSpace_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/declarations/exp-eq-normedspace-exp--e339fe75892e788afc25e55f.md) | 64 | `result-track:e339fe75892e788afc25e55f33a4916a7501f0b278a789523de229e56ba67b58` |
| 3 | `lemma` | [real_exp_eq_normedSpace_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/declarations/real-exp-eq-normedspace-exp--cebe9c204891a728205dac99.md) | 82 | `result-track:cebe9c204891a728205dac99b6658849ef5b3c4220317a131259f064fe94ad76` |
| 4 | `lemma` | [_root_.IsSelfAdjoint.exp_nonneg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/declarations/root-isselfadjoint-exp-nonneg--b283a44af8ad01c4b0e321f0.md) | 87 | `result-track:b283a44af8ad01c4b0e321f04b0b852609abd12d831e6464ff388353fbdf80fc` |
| 5 | `lemma` | [complex_exp_eq_normedSpace_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/declarations/complex-exp-eq-normedspace-exp--c12726d00e5e2f5574f6feed.md) | 100 | `result-track:c12726d00e5e2f5574f6feeda06c11ec3b392d848345df4d9656355ed199b1c5` |
| 6 | `def` | [log](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/declarations/log--31a7587db98dedd2b34b30ce.md) | 116 | `declaration-track:31a7587db98dedd2b34b30ce5a4818f40fbd84318a2885815b236a8fabfb1764` |
| 7 | `lemma` | [_root_.IsSelfAdjoint.log](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/declarations/root-isselfadjoint-log--8c1297c71ee5514739a63cdf.md) | 119 | `result-track:8c1297c71ee5514739a63cdfe3c6fe56d0653559fad57f6025cb60eeac26f158` |
| 8 | `lemma` | [log_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/declarations/log-zero--03859437743a0ba83c4cd61d.md) | 122 | `result-track:03859437743a0ba83c4cd61dff8ba5d8056f258159bb59ab4c87a463e9c211ce` |
| 9 | `lemma` | [log_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/declarations/log-one--d01579bfbee3c9c665261ef1.md) | 124 | `result-track:d01579bfbee3c9c665261ef1e95d59d849e6127d6edec7cb4a44fc6403452f77` |
| 10 | `lemma` | [log_algebraMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/declarations/log-algebramap--06ae76fb5b41d3d7464d1d06.md) | 127 | `result-track:06ae76fb5b41d3d7464d1d06ec2b1e0af3d297b61d51458fb5be44f767427703` |
| 11 | `lemma` | [log_smul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/declarations/log-smul--4da23d0a4b83dafaad5606e4.md) | 131 | `result-track:4da23d0a4b83dafaad5606e4dfc067910c950883ac71b364415e199c7cad7fd7` |
| 12 | `lemma` | [log_pow](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/declarations/log-pow--45ace080789680d9d8a5bf16.md) | 141 | `result-track:45ace080789680d9d8a5bf16b0d9847a9137cff9de5754de44b6be7a6b04811e` |
| 13 | `lemma` | [log_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/declarations/log-exp--62bb3552a6558198d7f8fada.md) | 150 | `result-track:62bb3552a6558198d7f8fada0bb5a1c8e9a00ddf71d7836f1397bf0798158205` |
| 14 | `lemma` | [exp_log](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ExpLog/Variant5ddbf913700cd1f8779f991b20c6fbab763f8b9cc7bc7e7c2c850b9a20bffe48.lean/declarations/exp-log--ec433bb47bb019b8a13ab837.md) | 156 | `result-track:ec433bb47bb019b8a13ab8371be44f28bc31f92ce351040b88e610242ef48168` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
