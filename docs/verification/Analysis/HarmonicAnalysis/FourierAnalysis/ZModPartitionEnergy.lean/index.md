# Verification target: GRWTSK.Analysis.Fourier.ZModPartitionEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e1dd968c25aac5f9f2e7eeadf0332d7a3ae7afe",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModPartitionEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e1dd968c25aac5f9f2e7eeadf0332d7a3ae7afe`.

Source path: `GRWTSK/Analysis/Fourier/ZModPartitionEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModPartitionEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.FiniteExponentialLayers`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModCharacterEnergy`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModIndependentSelection`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [balanced_size_square_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/declarations/balanced-size-square-bound--8546c9ec88060ed982dbf442.md) | 24 | `result-track:8546c9ec88060ed982dbf4429c4747df5edc1034ad67af060fbe6f4e82cf4c7a` |
| 2 | `theorem` | [balanced_inverse_square_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/declarations/balanced-inverse-square-bound--3f5e581e1a9dc6a3141abbff.md) | 39 | `result-track:3f5e581e1a9dc6a3141abbff0ce15a5a68da57d85dfe4bfce69e911c7df296bb` |
| 3 | `def` | [partitionEnergy](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/declarations/partitionenergy--c1021df70935d70161950b1a.md) | 54 | `declaration-track:c1021df70935d70161950b1aa936c476c314870ea5b1769ab175ae4d2194310b` |
| 4 | `theorem` | [partitionEnergy_nonneg](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/declarations/partitionenergy-nonneg--5d3e8eebec292057ca48b9a1.md) | 58 | `result-track:5d3e8eebec292057ca48b9a1a1e481d5cf57f76fc11d71ff6b1f1ef6fcd05c84` |
| 5 | `theorem` | [partitionEnergy_zero_frequency](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/declarations/partitionenergy-zero-frequency--ac0e6473ac5d6ecad5ddcba7.md) | 63 | `result-track:ac0e6473ac5d6ecad5ddcba7780c044c93cc84860138de264ca5d2dbc8a8d04b` |
| 6 | `theorem` | [partitionEnergy_le_card](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/declarations/partitionenergy-le-card--ea592a112322536381243afe.md) | 66 | `result-track:ea592a112322536381243afe491cdbc10b3fe99da229051d7dc6d7c4a06b6dbd` |
| 7 | `theorem` | [partitionEnergy_lower_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/declarations/partitionenergy-lower-bound--d8a2282f9d8c80954c46939c.md) | 75 | `result-track:d8a2282f9d8c80954c46939c9e760a3ec32123706c15372c33a25505b11871c9` |
| 8 | `theorem` | [part_mass_le_exponential](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/declarations/part-mass-le-exponential--5305d38ad190d1ae81af67f3.md) | 92 | `result-track:5305d38ad190d1ae81af67f327caf7d9896ee8891dea03f66bad2bfa6ccaa98a` |
| 9 | `theorem` | [part_mass_le_dyadic_layers](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/declarations/part-mass-le-dyadic-layers--935a1d6df14a7407d2fa9e08.md) | 106 | `result-track:935a1d6df14a7407d2fa9e084b3631c51a16399bdd978b1261aa17c586d6ae48` |
| 10 | `theorem` | [part_mass_le_log_layers](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/declarations/part-mass-le-log-layers--013a073220ee88e6486b30e0.md) | 124 | `result-track:013a073220ee88e6486b30e055d03f0d46f90610afd8e94a3a40b909d924f273` |
| 11 | `theorem` | [log_nat_ge_half](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/declarations/log-nat-ge-half--9d8599f2ea29db0d511317ec.md) | 138 | `result-track:9d8599f2ea29db0d511317ec3ad4d089f9941e1cbb17f229c68ab305701a822f` |
| 12 | `theorem` | [source_upper_range_gives_quarter](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/declarations/source-upper-range-gives-quarter--d2f68715c22a743cfdb89437.md) | 147 | `result-track:d2f68715c22a743cfdb894376851be07f9acff989fe6c20db2152952f2063a09` |
| 13 | `theorem` | [source_range_size_bounds](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/declarations/source-range-size-bounds--b91d4d6703aba5fc1bd898bd.md) | 162 | `result-track:b91d4d6703aba5fc1bd898bd7d8751157345ed38b01890be5b84e4f98d0f3f13` |
| 14 | `theorem` | [source_range_large](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/declarations/source-range-large--08038293d312b7753c8b8217.md) | 173 | `result-track:08038293d312b7753c8b821787ad97505b65c0e5628d5d068e3c656c022589a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
