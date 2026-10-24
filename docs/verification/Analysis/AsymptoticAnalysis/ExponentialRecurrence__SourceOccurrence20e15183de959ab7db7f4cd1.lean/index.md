# Verification target: GRWTSK.Analysis.Asymptotics.ExponentialRecurrence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d8134f07d213526eca3c65ae63d44a362d10b5d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/ExponentialRecurrence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d8134f07d213526eca3c65ae63d44a362d10b5d`.

Source path: `GRWTSK/Analysis/Asymptotics/ExponentialRecurrence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/ExponentialRecurrence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prefixSum](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/declarations/prefixsum--f676a8199a9768fd5f9da5f2.md) | 12 | `declaration-track:f676a8199a9768fd5f9da5f2f918476593936181430099b19e899c1b1fa62925` |
| 2 | `theorem` | [prefixSum_zero](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/declarations/prefixsum-zero--960c7022dbdc51703e02b1e8.md) | 15 | `result-track:960c7022dbdc51703e02b1e85fddc1c36920ef112d8b27b6e064001d4abd5fda` |
| 3 | `theorem` | [prefixSum_succ](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/declarations/prefixsum-succ--242b86318b21e8188a6873c7.md) | 16 | `result-track:242b86318b21e8188a6873c7be74416641a6f8156203f541043c6b7f07d91540` |
| 4 | `theorem` | [prefixSum_nonneg](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/declarations/prefixsum-nonneg--a74c31078a2a82b8994ba179.md) | 18 | `result-track:a74c31078a2a82b8994ba179bb5cddd177922ce52378ce34f010fd857c2f0cf7` |
| 5 | `theorem` | [generalized_iteration](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/declarations/generalized-iteration--414482c78b5aab5c929ed01b.md) | 25 | `result-track:414482c78b5aab5c929ed01b05514a169a497cfc6efee6b25a975d14b065e63b` |
| 6 | `def` | [blockCost](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/declarations/blockcost--15a6d7b13144319ffc73b493.md) | 54 | `declaration-track:15a6d7b13144319ffc73b4931690954645d5a682c63a99d06fbf18b05b4b69db` |
| 7 | `def` | [massCostConstant](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/declarations/masscostconstant--1ee25cfec0491748d76315aa.md) | 55 | `declaration-track:1ee25cfec0491748d76315aa6b7c091ba6e5ddcd618cef4d70475d21172eac93` |
| 8 | `theorem` | [blockCost_nonneg](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/declarations/blockcost-nonneg--5c5ee013a27c1dd3c0851e88.md) | 57 | `result-track:5c5ee013a27c1dd3c0851e88fef40026a5d3790d58863bbccf31a72b20c1a1bd` |
| 9 | `theorem` | [sqrt_mass_bound](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/declarations/sqrt-mass-bound--69803d789f4bbe8a7244c5e6.md) | 62 | `result-track:69803d789f4bbe8a7244c5e67d6f88edcc319f940fe84ab814250debfcea278b` |
| 10 | `theorem` | [blockCost_le_mass](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/declarations/blockcost-le-mass--17c6533ce0b9dff49eef30c8.md) | 72 | `result-track:17c6533ce0b9dff49eef30c805f41dd138261515e99808bc76a91f6fd3ec3be9` |
| 11 | `theorem` | [remainder_cost](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/declarations/remainder-cost--1e66f6c88f098d21d5f3eca4.md) | 82 | `result-track:1e66f6c88f098d21d5f3eca49fe38fc926a905d9ff3edf29fb6bf13af9292394` |
| 12 | `theorem` | [sum_cost_with_remainder](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/declarations/sum-cost-with-remainder--cde5165c9badf4f98b617a6e.md) | 89 | `result-track:cde5165c9badf4f98b617a6e01805ce4262861d50d235fd32b38bad5b039a2d9` |
| 13 | `theorem` | [exp_cost_polynomial](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence20e15183de959ab7db7f4cd1.lean/declarations/exp-cost-polynomial--179945fa9988f80a5cc5734d.md) | 119 | `result-track:179945fa9988f80a5cc5734d4d688b2482081317e16cc3fe312f95d45bccdbd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
