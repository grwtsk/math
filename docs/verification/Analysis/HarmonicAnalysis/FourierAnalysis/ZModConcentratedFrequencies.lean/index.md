# Verification target: GRWTSK.Analysis.Fourier.ZModConcentratedFrequencies

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "583fd11a240c53a599dae3f719b121d2544a8c04",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModConcentratedFrequencies.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `583fd11a240c53a599dae3f719b121d2544a8c04`.

Source path: `GRWTSK/Analysis/Fourier/ZModConcentratedFrequencies.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModConcentratedFrequencies.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ZModSmallEnergySets`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [modularDistance_neg](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/modulardistance-neg--3ee058a0c70b2e8e6ed2643c.md) | 25 | `result-track:3ee058a0c70b2e8e6ed2643ce5f31a18d4d3a0966af78aaa2af969e43e6240c3` |
| 2 | `theorem` | [modularDistance_sub_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/modulardistance-sub-le--f564b09e67c1e84cf0edbca3.md) | 39 | `result-track:f564b09e67c1e84cf0edbca3693328e7d69b22dd4e2f10647b163b4649081919` |
| 3 | `theorem` | [modularDistance_sub_sq_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/modulardistance-sub-sq-le--0537d309c08aa145d0a89868.md) | 43 | `result-track:0537d309c08aa145d0a89868b4d3257c3d967e938c6410b18a8d536bcffe8f73` |
| 4 | `def` | [phaseInterval](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/phaseinterval--44bc909ddef30a6fbf48b1b0.md) | 50 | `declaration-track:44bc909ddef30a6fbf48b1b018e2ddc00374285c5abd12a87c0d835e823e31b9` |
| 5 | `theorem` | [mem_phaseInterval](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/mem-phaseinterval--27dd3a39e6a13b18ed566a7d.md) | 54 | `result-track:27dd3a39e6a13b18ed566a7d65f343ed0eb8a464ae7c52e8555d2f7cc0c7539a` |
| 6 | `def` | [concentratedFrequencies](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/concentratedfrequencies--86c410f8e9b2c4350cc2ab57.md) | 60 | `declaration-track:86c410f8e9b2c4350cc2ab577376d5f1269e55d26f9a1398b65331a8c037cb18` |
| 7 | `theorem` | [mem_concentratedFrequencies](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/mem-concentratedfrequencies--d84f8e029a1f198ab682cd49.md) | 66 | `result-track:d84f8e029a1f198ab682cd497c2b697b0169e2135932e9ba2181677a1f8881b2` |
| 8 | `theorem` | [card_mul_pairEnergy_le_center_sum](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/card-mul-pairenergy-le-center-sum--750c35e8077e17ef8569024a.md) | 73 | `result-track:750c35e8077e17ef8569024a7a0c1a97b68a5c95600727adc998727c28a1a4b2` |
| 9 | `theorem` | [phaseInterval_center_sum_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/phaseinterval-center-sum-le--867c8dbbf1da6d1ca04dac88.md) | 105 | `result-track:867c8dbbf1da6d1ca04dac887779c6047f8449e020ba6adc77e7afd095039ba2` |
| 10 | `theorem` | [tail_center_sum_ge_244](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/tail-center-sum-ge-244--ff8b6b0412630161da730f5e.md) | 125 | `result-track:ff8b6b0412630161da730f5ee8779d47e0effec540d93fac38d29c0f9d0e2a75` |
| 11 | `theorem` | [tail_center_sum_ge_200](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/tail-center-sum-ge-200--54b4e6c7c4a06f28ebb524a4.md) | 157 | `result-track:54b4e6c7c4a06f28ebb524a4dc87292fa9e67b1e8530c50e9158eda6264a46d3` |
| 12 | `theorem` | [normalized_tail_center_sum_ge_200](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/normalized-tail-center-sum-ge-200--a5faa0b7ed9b660935be7994.md) | 174 | `result-track:a5faa0b7ed9b660935be7994e1ec9242d2566397c75c92b322ccedd56ed017ce` |
| 13 | `theorem` | [exists_concentrated_center_tail](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/exists-concentrated-center-tail--136681c25d8960185be0547a.md) | 191 | `result-track:136681c25d8960185be0547a0b6bf6bc835be3afc42a3512cb2a8e90db426f9b` |
| 14 | `theorem` | [far_near_pair_distance_ge_half](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/far-near-pair-distance-ge-half--b6037cf130c1eba283560129.md) | 208 | `result-track:b6037cf130c1eba283560129fbf3f776e71f5a00a0f0b8faff76860f04292e11` |
| 15 | `theorem` | [far_near_pair_distance_sq_ge_quarter](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/declarations/far-near-pair-distance-sq-ge-quarter--1675a5fad521ae4c9ef7b1ba.md) | 221 | `result-track:1675a5fad521ae4c9ef7b1babb3fbc91793201959b0cc3a498ba5c30efe13d56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
