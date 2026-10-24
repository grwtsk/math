# Verification target: GRWTSK.Analysis.FiniteSum.WeightedCellRefinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b60f30b0c69e6c0107e93b2ee917a2a0966630b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteSum/WeightedCellRefinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteSums/WeightedCellRefinement.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteSums/WeightedCellRefinement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b60f30b0c69e6c0107e93b2ee917a2a0966630b`.

Source path: `GRWTSK/Analysis/FiniteSum/WeightedCellRefinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteSum/WeightedCellRefinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mean](../../../../mathematics/Analysis/FiniteSums/WeightedCellRefinement.lean/declarations/mean--c9c660555cc8b900662433b1.md) | 18 | `declaration-track:c9c660555cc8b900662433b1d5a79a84fb09e4cce5e0b0a7532b9413983ab5db` |
| 2 | `theorem` | [mean_preserves_mass](../../../../mathematics/Analysis/FiniteSums/WeightedCellRefinement.lean/declarations/mean-preserves-mass--126f251a8d2daebd37f54727.md) | 20 | `result-track:126f251a8d2daebd37f54727b9a518ee1c7b54747846ab0fd328c24dcd44479f` |
| 3 | `theorem` | [split_identity](../../../../mathematics/Analysis/FiniteSums/WeightedCellRefinement.lean/declarations/split-identity--818385130fc96711648bc17f.md) | 26 | `result-track:818385130fc96711648bc17f8f631fcabfe432ba3d5417e4d0ba18d51772f475` |
| 4 | `theorem` | [detail_nonneg](../../../../mathematics/Analysis/FiniteSums/WeightedCellRefinement.lean/declarations/detail-nonneg--d4f2b52210f318e938e88d34.md) | 33 | `result-track:d4f2b52210f318e938e88d34ff421283e8648af32474fb18a1cf5772168f1fd9` |
| 5 | `theorem` | [coarse_le_full](../../../../mathematics/Analysis/FiniteSums/WeightedCellRefinement.lean/declarations/coarse-le-full--7da560a7f1c989681d791851.md) | 36 | `result-track:7da560a7f1c989681d7918517cdb4557865fbb07f2b743c1ebba6e9efbc86f92` |
| 6 | `theorem` | [center_change](../../../../mathematics/Analysis/FiniteSums/WeightedCellRefinement.lean/declarations/center-change--310396c8fec2efef486f9017.md) | 42 | `result-track:310396c8fec2efef486f90170e500b61a4b253425deec2b2d6e3509e9397be30` |
| 7 | `theorem` | [range_variance](../../../../mathematics/Analysis/FiniteSums/WeightedCellRefinement.lean/declarations/range-variance--bb835b46e1b4da96c68bb3a8.md) | 47 | `result-track:bb835b46e1b4da96c68bb3a838963009e87ab0e346c5498d7e7dc812668b2417` |
| 8 | `theorem` | [weighted_square_return](../../../../mathematics/Analysis/FiniteSums/WeightedCellRefinement.lean/declarations/weighted-square-return--ebcfe49c25b304b757582abf.md) | 53 | `result-track:ebcfe49c25b304b757582abf2183e15baaa80cea4767dee77d3a55ca070317aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
