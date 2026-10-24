# Verification target: GRWTSK.Analysis.Fourier.ZModBalancedPartition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "674dfd64142382e83d5ca6e3e9725a1ec8dbd5a8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModBalancedPartition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `674dfd64142382e83d5ca6e3e9725a1ec8dbd5a8`.

Source path: `GRWTSK/Analysis/Fourier/ZModBalancedPartition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModBalancedPartition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.Sequences.BalancedPartitionSampling`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModIndependentSelection`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModCharacterEnergy`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModPartitionEnergy`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partValues](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/partvalues--40bb0808713aa9ba30afe15e.md) | 30 | `declaration-track:40bb0808713aa9ba30afe15e79b0c00c4e14ce8147fafed92408837c11eb0b3d` |
| 2 | `theorem` | [partValues_card](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/partvalues-card--27045a88b1e94eaf99e1e4d5.md) | 35 | `result-track:27045a88b1e94eaf99e1e4d5fa539ce2c3ae56e1936f0bfc7e96cb555ca2ea2b` |
| 3 | `theorem` | [partValues_nonempty](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/partvalues-nonempty--238d7cb7af208910c0206715.md) | 42 | `result-track:238d7cb7af208910c0206715c0e957e9ebf59ab669a6b4f58380a11cd2aff511` |
| 4 | `theorem` | [coordinate_average_eq_partValues](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/coordinate-average-eq-partvalues--89669b0b0195544d05646497.md) | 50 | `result-track:89669b0b0195544d0564649787d039394bc0371e44837d154ae0e4c7445fe66d` |
| 5 | `theorem` | [sum_output](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/sum-output--a55eca96a7073d9d11c79349.md) | 65 | `result-track:a55eca96a7073d9d11c793497a592870146127b4a59148a043d962992979ef05` |
| 6 | `def` | [jointSumProbability](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/jointsumprobability--e1c74368a3c7467070b49070.md) | 75 | `declaration-track:e1c74368a3c7467070b490701a82e6917faa39e4709e9521adfb2636f8463912` |
| 7 | `theorem` | [jointSumProbability_eq_average](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/jointsumprobability-eq-average--e15493fc82b0f080fabc8945.md) | 80 | `result-track:e15493fc82b0f080fabc894547da9c6243091cafa7cc6615d8e27bc0decbac93` |
| 8 | `theorem` | [jointSumProbability_eq_fixedSize](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/jointsumprobability-eq-fixedsize--4d316acd43ba646593f5d104.md) | 103 | `result-track:4d316acd43ba646593f5d104e3abe512dad2fffe5351741fe2cb4cd01ed060b4` |
| 9 | `theorem` | [fixedSize_mass_le_average_exponential](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/fixedsize-mass-le-average-exponential--43fd6b9f8f45027f15149722.md) | 124 | `result-track:43fd6b9f8f45027f15149722c8be82bc392789606630548c6025db47c2557fd8` |
| 10 | `def` | [residueEmbedding](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/residueembedding--f677fdce153f34c2ce0885ae.md) | 148 | `declaration-track:f677fdce153f34c2ce0885ae2bf57100d6d10d91fa18179b9b0ba51dcaf862fc` |
| 11 | `theorem` | [subtype_fixedSize_eq_subsetSum](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/subtype-fixedsize-eq-subsetsum--21dac7f68ef999c61772a477.md) | 153 | `result-track:21dac7f68ef999c61772a4779bfd22e837590fa12c39192e0285b10da56e6a70` |
| 12 | `abbrev` | [BalancedPartitions](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/balancedpartitions--400c8cee08951c358fe12048.md) | 183 | `declaration-track:400c8cee08951c358fe120480307542d6eeda51f87af931279202098bfc8cb43` |
| 13 | `theorem` | [subsetSumProbability_eq_balanced_average](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/subsetsumprobability-eq-balanced-average--6df7421dedea7de9f35eb8b7.md) | 188 | `result-track:6df7421dedea7de9f35eb8b7011a7a4a7eaf1e5130f3d940b4dfa9dfa1c554b2` |
| 14 | `theorem` | [subsetSumProbability_le_balanced_exponential](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/subsetsumprobability-le-balanced-exponential--92e7b87a7ddc41c473fc1bc4.md) | 202 | `result-track:92e7b87a7ddc41c473fc1bc40bc74842ddf1b32b0ea5c158996a9662eb08a3b9` |
| 15 | `theorem` | [balanced_partition_energy_lower_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/balanced-partition-energy-lower-bound--9ae28d4992df40fd99b40aa8.md) | 217 | `result-track:9ae28d4992df40fd99b40aa83abeaba93b6b3c924187a8948903960325a9c0f2` |
| 16 | `theorem` | [subsetSumProbability_le_balanced_layers](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/subsetsumprobability-le-balanced-layers--907495e47e12d5b53496913e.md) | 235 | `result-track:907495e47e12d5b53496913e3cf1f56d737844c18ee2cf63c58fa6063a65affc` |
| 17 | `theorem` | [source_slice_mass_le_balanced_layers](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/declarations/source-slice-mass-le-balanced-layers--2398b9f4764d653ff8b8ca9c.md) | 259 | `result-track:2398b9f4764d653ff8b8ca9c65da43ddd163538b50f627bfb21e69805a9d3a94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
