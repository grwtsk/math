# Verification target: GRWTSK.MeasureTheory.Integral.FixedWidthEnergyTelescope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "beb92fcfbed12582b897e7cb58f05419f05979bd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `beb92fcfbed12582b897e7cb58f05419f05979bd`.

Source path: `GRWTSK/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MeasureTheory.Integral.MoebiusCumulativeEnergy`](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [localEnergy](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/declarations/localenergy--7f843ce1cefa0bd59d14865a.md) | 16 | `declaration-track:7f843ce1cefa0bd59d14865a28668acefec3293ad44f4cf8f390fedee3c7c04c` |
| 2 | `lemma` | [localEnergy_nonnegative](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/declarations/localenergy-nonnegative--4dd5167ab7621a419ea044a6.md) | 21 | `result-track:4dd5167ab7621a419ea044a69e0647f6b80ad12a71980dcce2e6bb644c983426` |
| 3 | `lemma` | [localEnergy_common_cutoff](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/declarations/localenergy-common-cutoff--61cd2684020cbfc2dcea07a4.md) | 24 | `result-track:61cd2684020cbfc2dcea07a4accbcd2acf20d947c603c89ed7bf9c6d1b2cc188` |
| 4 | `theorem` | [energy_step](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/declarations/energy-step--fbcf0257d17567a2f5d57ac2.md) | 31 | `result-track:fbcf0257d17567a2f5d57ac2b1e10b6e5fd2ad8824e31e806a1641f134745bcc` |
| 5 | `theorem` | [backward_telescope](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/declarations/backward-telescope--8cbe9d1b84c8e8682ce93220.md) | 46 | `result-track:8cbe9d1b84c8e8682ce9322017ec4373538c123d7d8101fa1a8bd631dde2b6e1` |
| 6 | `lemma` | [floor_remainder_bounds](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/declarations/floor-remainder-bounds--b1b88d1a6502d8bdb650627f.md) | 68 | `result-track:b1b88d1a6502d8bdb650627f7c9938e2dbb68cea60fe51a74a51b4251c7bd237` |
| 7 | `theorem` | [floor_telescope](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/declarations/floor-telescope--9b3aaa714a8e5e4aa0bb6a8c.md) | 77 | `result-track:9b3aaa714a8e5e4aa0bb6a8c4f437fbe5a9cf99bc3c3054b9c3ed045ca381cfd` |
| 8 | `lemma` | [compact_remainder_bound](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/declarations/compact-remainder-bound--1c89c9cf53ba36924bd5e756.md) | 82 | `result-track:1c89c9cf53ba36924bd5e7564a059a7c44184b686a2443d695f90524f8b6931d` |
| 9 | `theorem` | [grid_telescope](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/declarations/grid-telescope--58e90a5376929cbd426a4f7d.md) | 87 | `result-track:58e90a5376929cbd426a4f7db5a5c63af6804110cc8e51f4aae413878b5bb820` |
| 10 | `lemma` | [localEnergy_le_total](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/declarations/localenergy-le-total--0eba33902de8379d796ad007.md) | 102 | `result-track:0eba33902de8379d796ad0073546242c82f2d2f5f55e208834826f9081ce6c9e` |
| 11 | `theorem` | [window_bound_implies_energy_polynomial](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/declarations/window-bound-implies-energy-polynomial--af67e6795027061ac52efe42.md) | 109 | `result-track:af67e6795027061ac52efe42f10cad8d29953e45992ef2bf8b65d8926a5dd8b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
