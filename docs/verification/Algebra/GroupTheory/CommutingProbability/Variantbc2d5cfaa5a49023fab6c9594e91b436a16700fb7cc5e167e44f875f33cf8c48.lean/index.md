# Verification target: GRWTSK.Algebra.GroupTheory.CommutingProbability.Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f6648803d174724475c3541670f2159962e2b66",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f6648803d174724475c3541670f2159962e2b66`.

Source path: `GRWTSK/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ConjFinite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Abelianization` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [commProb](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/declarations/commprob--5343431da19e814de79b47a5.md) | 46 | `declaration-track:5343431da19e814de79b47a5fe3748ffa8616821a6d032d7e86b1e903b3fa440` |
| 2 | `theorem` | [commProb_def](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/declarations/commprob-def--fcfe16c005a72ee9130ef165.md) | 50 | `result-track:fcfe16c005a72ee9130ef16548b50eb1146b355167a6785c18f59e772e948d09` |
| 3 | `theorem` | [commProb_prod](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/declarations/commprob-prod--120a3b0ce6457a08445ae3a4.md) | 55 | `result-track:120a3b0ce6457a08445ae3a4bbdcf247be41442dd5de166f59371530a9318e68` |
| 4 | `theorem` | [commProb_pi](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/declarations/commprob-pi--d505c327a78941b41f11697b.md) | 62 | `result-track:d505c327a78941b41f11697b34d52a515d7845661f1a9e972239c69ada2a1684` |
| 5 | `theorem` | [commProb_function](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/declarations/commprob-function--fc236e1e8c1c5d257f92b062.md) | 70 | `result-track:fc236e1e8c1c5d257f92b062cdc192e29adfb5d11e685c364838bf76a45850fa` |
| 6 | `theorem` | [commProb_eq_zero_of_infinite](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/declarations/commprob-eq-zero-of-infinite--c9a493da27aaed1767d9534a.md) | 75 | `result-track:c9a493da27aaed1767d9534a55447df2e6956e8dc4ba3f200df3a8f0f6394e40` |
| 7 | `theorem` | [commProb_pos](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/declarations/commprob-pos--3cb082a1e8c9d93b34761dcc.md) | 80 | `result-track:3cb082a1e8c9d93b34761dcc04cc47be19abfe6164fd3ce5301950ae91848b1e` |
| 8 | `theorem` | [commProb_le_one](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/declarations/commprob-le-one--9afea4d7236800a5d8e081f7.md) | 86 | `result-track:9afea4d7236800a5d8e081f77b4e15f66bba621514c8bacb7655624d4e723231` |
| 9 | `theorem` | [commProb_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/declarations/commprob-eq-one-iff--43276d896bbf2a2f7da71171.md) | 94 | `result-track:43276d896bbf2a2f7da711713772c46230b82f96e243f9efbb36624dd7bb2211` |
| 10 | `theorem` | [commProb_def'](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/declarations/commprob-def--3e2f2cc157cc1d7ede9c0acc.md) | 106 | `result-track:3e2f2cc157cc1d7ede9c0acc3b90c195470fd48fe2d6639d820cece099679793` |
| 11 | `theorem` | [Subgroup.commProb_subgroup_le](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/declarations/subgroup-commprob-subgroup-le--1539e67e2bdb2c5c4fa3304b.md) | 116 | `result-track:1539e67e2bdb2c5c4fa3304bfbf05d32b3b31061db7bf7a037f3bbab70158278` |
| 12 | `theorem` | [Subgroup.commProb_quotient_le](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/declarations/subgroup-commprob-quotient-le--9708df6780259fe8dcd4580d.md) | 127 | `result-track:9708df6780259fe8dcd4580dc4a3789fee669ab7e0f4d58ebd2a93a789281145` |
| 13 | `theorem` | [inv_card_commutator_le_commProb](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantbc2d5cfaa5a49023fab6c9594e91b436a16700fb7cc5e167e44f875f33cf8c48.lean/declarations/inv-card-commutator-le-commprob--78f0bd33c8494de8d3cf5144.md) | 141 | `result-track:78f0bd33c8494de8d3cf5144a01d0d9812626923133386edee7f8d9839b9d02c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
