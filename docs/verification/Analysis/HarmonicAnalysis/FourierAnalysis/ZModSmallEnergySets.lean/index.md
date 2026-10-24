# Verification target: GRWTSK.Analysis.Fourier.ZModSmallEnergySets

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "991e5cd3b742f2c3f3235e1d34715f5f8db95e20",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModSmallEnergySets.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `991e5cd3b742f2c3f3235e1d34715f5f8db95e20`.

Source path: `GRWTSK/Analysis/Fourier/ZModSmallEnergySets.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModSmallEnergySets.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ZModCharacterEnergy`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModIndependentSelection`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smallEnergyFrequencies](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/smallenergyfrequencies--eb5a798798d2afed30d84944.md) | 22 | `declaration-track:eb5a798798d2afed30d84944c4955329295be2b82ee7702b76e5abc7d211a269` |
| 2 | `def` | [smallEnergyPoints](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/smallenergypoints--c9a3fc1aa8bc211f283cb2fd.md) | 28 | `declaration-track:c9a3fc1aa8bc211f283cb2fd94a83c8bad7c7084ba806cc7139cfd98e09ad47f` |
| 3 | `theorem` | [mem_smallEnergyFrequencies](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/mem-smallenergyfrequencies--51adee8898706e37d74162bb.md) | 33 | `result-track:51adee8898706e37d74162bb63e45cab260d31ebaf56c154d4098c0738e8fb3f` |
| 4 | `theorem` | [mem_smallEnergyPoints](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/mem-smallenergypoints--213ed57cf2f5ac1d5e2d8aeb.md) | 39 | `result-track:213ed57cf2f5ac1d5e2d8aebb2ffae27107e40fbca675272fdeccf7bd802ea2b` |
| 5 | `theorem` | [zero_mem_smallEnergyFrequencies](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/zero-mem-smallenergyfrequencies--aa1bed5b2d7033082c0b46db.md) | 45 | `result-track:aa1bed5b2d7033082c0b46db3d9787319e794c236534798bf6ec4472b0d9da93` |
| 6 | `theorem` | [smallEnergyFrequencies_nonempty](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/smallenergyfrequencies-nonempty--c789a9dbfe6cd0ff19ecef47.md) | 48 | `result-track:c789a9dbfe6cd0ff19ecef4733237381668af0168c8a68dcf4244fe9fc1a8bdf` |
| 7 | `theorem` | [smallEnergyPoints_mono](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/smallenergypoints-mono--014356126eb0627829034a21.md) | 52 | `result-track:014356126eb0627829034a21552da7b2882148782c30bd4780d32bf28f1c7d5c` |
| 8 | `theorem` | [sum_mem_smallEnergyPoints](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/sum-mem-smallenergypoints--c0dfbbbfc3df09ea38461e6f.md) | 59 | `result-track:c0dfbbbfc3df09ea38461e6f090a2422ebd8386b5be7aaea64536b3bc54d7e9a` |
| 9 | `theorem` | [character_orthogonality](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/character-orthogonality--f942869cd941e9424d1a123d.md) | 83 | `result-track:f942869cd941e9424d1a123d035e5b79ae8cd1c4ae45c821cdd0864e367e8550` |
| 10 | `theorem` | [character_orthogonality_re](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/character-orthogonality-re--c5489136f73b899aec7fec4a.md) | 87 | `result-track:c5489136f73b899aec7fec4a77d99c177fffb0461a4d5b05d7959f6f42533d2e` |
| 11 | `theorem` | [character_sum_parseval](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/character-sum-parseval--b12cc74dff894536f939030c.md) | 94 | `result-track:b12cc74dff894536f939030c1bd3a29a59aab5b2d5914e06286dd458dc171ab7` |
| 12 | `theorem` | [character_sum_norm_sq_lower](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/character-sum-norm-sq-lower--f00f9008e8d31a64e43e4250.md) | 116 | `result-track:f00f9008e8d31a64e43e4250addc83566c6ad9220164a4f274d638f429a382a2` |
| 13 | `theorem` | [smallEnergyPoints_card_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/smallenergypoints-card-le--35d6c30146f06e7617e4c48d.md) | 132 | `result-track:35d6c30146f06e7617e4c48ddbab117feb5832161203afd21b1e859db50a4bd7` |
| 14 | `theorem` | [sum_pair_frequency_energy](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/sum-pair-frequency-energy--34d5796a2aafc31a4811c2c8.md) | 154 | `result-track:34d5796a2aafc31a4811c2c8efec95165615b4011f56a077a5da31a351db089d` |
| 15 | `theorem` | [filter_card_mul_le_sum](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/filter-card-mul-le-sum--9ce4c83ea1f5c501d3943b69.md) | 179 | `result-track:9ce4c83ea1f5c501d3943b69a5892d4f8b517b404d103568a2e095ba04874377` |
| 16 | `theorem` | [smallEnergyPoints_card_lower_of_pairEnergy](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/smallenergypoints-card-lower-of-pairenergy--35ecd3a0589f7b524c94f02e.md) | 194 | `result-track:35ecd3a0589f7b524c94f02e7ba4a4f088cc6549f571ba2be08c8555847c852d` |
| 17 | `theorem` | [smallEnergyPoints_card_lower](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/declarations/smallenergypoints-card-lower--38836fcab6e0a12182291ed4.md) | 241 | `result-track:38836fcab6e0a12182291ed463770a53cb1a1fb51902b4262ed63cf5d92ee447` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
