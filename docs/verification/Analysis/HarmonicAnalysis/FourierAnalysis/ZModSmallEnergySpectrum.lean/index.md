# Verification target: GRWTSK.Analysis.Fourier.ZModSmallEnergySpectrum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95681c2768eeac33856177ca2e0114d68f0c544c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModSmallEnergySpectrum.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95681c2768eeac33856177ca2e0114d68f0c544c`.

Source path: `GRWTSK/Analysis/Fourier/ZModSmallEnergySpectrum.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModSmallEnergySpectrum.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ZModSmallEnergySets`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.CyclicSumsetGrowth`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iteratedSumset_smallEnergyPoints_subset](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/declarations/iteratedsumset-smallenergypoints-subset--dfd490f3e782043dd08f9d04.md) | 24 | `result-track:dfd490f3e782043dd08f9d041b61073dd421d3cf3b03a3e15bc436dced3a76ae` |
| 2 | `def` | [expansionLength](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/declarations/expansionlength--4a6c098df3cb9d9e981b31b0.md) | 39 | `declaration-track:4a6c098df3cb9d9e981b31b0cd6e6421d2a78e38a7be9b65d6e286f0d210fada` |
| 3 | `theorem` | [expansionLength_spec](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/declarations/expansionlength-spec--16bf5b1a95e5ab315773eac8.md) | 44 | `result-track:16bf5b1a95e5ab315773eac8e36027b417de45fe43517fbcf24e964d88f34c86` |
| 4 | `theorem` | [smallEnergyFrequencies_card_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/declarations/smallenergyfrequencies-card-le--0be895b3d5fd16b223a7e3e2.md) | 81 | `result-track:0be895b3d5fd16b223a7e3e2e29d1d82f3fe5b3a87fc413f221d5a18e97315a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
