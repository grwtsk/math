# Verification target: GRWTSK.Analysis.MeasureTheory.Integral.FixedWidthEnergyTelescope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "beb92fcfbed12582b897e7cb58f05419f05979bd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `beb92fcfbed12582b897e7cb58f05419f05979bd`.

Source path: `GRWTSK/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean.json)

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
| 1 | `def` | [localEnergy](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/declarations/localenergy--ab1f1b6d1ba2f655df93b1a4.md) | 16 | `declaration-track:ab1f1b6d1ba2f655df93b1a4c55c12b564b4af64e60bd2b3d46c53b366547b83` |
| 2 | `lemma` | [localEnergy_nonnegative](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/declarations/localenergy-nonnegative--ba9cfaa8753fb2168885e76b.md) | 21 | `result-track:ba9cfaa8753fb2168885e76b2b5dd09848119b7c0105d53e59c90e9a14a001b3` |
| 3 | `lemma` | [localEnergy_common_cutoff](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/declarations/localenergy-common-cutoff--6ac5ae29feb11c36f5e5cfc6.md) | 24 | `result-track:6ac5ae29feb11c36f5e5cfc69ce972490e071665d465e8fa148e7ef686144988` |
| 4 | `theorem` | [energy_step](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/declarations/energy-step--30aa3d9324d57f96ac931da6.md) | 31 | `result-track:30aa3d9324d57f96ac931da6467d721c1fd33ad4f9074a7f0090841986068b3d` |
| 5 | `theorem` | [backward_telescope](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/declarations/backward-telescope--e09bb35e8bd7f6706304f8b9.md) | 46 | `result-track:e09bb35e8bd7f6706304f8b9ef02d74208f7608329a9df243d4e1dc9f97e3302` |
| 6 | `lemma` | [floor_remainder_bounds](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/declarations/floor-remainder-bounds--e63cc617d3294ab9d2d4b5bc.md) | 68 | `result-track:e63cc617d3294ab9d2d4b5bc56c89922b6cffc3e95a05707a195dc73611cb442` |
| 7 | `theorem` | [floor_telescope](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/declarations/floor-telescope--994f5f521ddd456c08a621d8.md) | 77 | `result-track:994f5f521ddd456c08a621d8d2a6f2f82f62abdf3fbf3c8c48e3a00f09c5e81c` |
| 8 | `lemma` | [compact_remainder_bound](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/declarations/compact-remainder-bound--9e58d048567b1cb26521db5f.md) | 82 | `result-track:9e58d048567b1cb26521db5f2535ce2e10b1ebd6bc38f107d573fbc9ad61be7d` |
| 9 | `theorem` | [grid_telescope](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/declarations/grid-telescope--cd253cd1d46da2d4dc032861.md) | 87 | `result-track:cd253cd1d46da2d4dc032861d75ea5f0eaf83b9732e4ebda44f3b8c698a4ef49` |
| 10 | `lemma` | [localEnergy_le_total](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/declarations/localenergy-le-total--b19a2e1474f91832a772e79a.md) | 102 | `result-track:b19a2e1474f91832a772e79aac9a3346adc028319031dc4ffc8d067ef090724a` |
| 11 | `theorem` | [window_bound_implies_energy_polynomial](../../../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/declarations/window-bound-implies-energy-polynomial--ec8334f7285db87c0d378100.md) | 109 | `result-track:ec8334f7285db87c0d3781002b3c121a8ab00f0d43f50ec62a4c03c9b59b3614` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
