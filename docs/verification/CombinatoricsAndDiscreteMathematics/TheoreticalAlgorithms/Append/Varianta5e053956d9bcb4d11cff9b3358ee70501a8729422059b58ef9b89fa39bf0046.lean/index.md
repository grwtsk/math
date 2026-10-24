# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Append.Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d04d6957e81a39d5f069cfd71dcd465ece8233b6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d04d6957e81a39d5f069cfd71dcd465ece8233b6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Monadic.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.ToArray` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.step_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046.lean/declarations/iterm-step-append--7f4a6088f8bb22d822f3d14b.md) | 23 | `result-track:7f4a6088f8bb22d822f3d14b1222d168381ca74974d3cac657c9fee3d1e261ac` |
| 2 | `theorem` | [IterM.Intermediate.step_appendSnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046.lean/declarations/iterm-intermediate-step-appendsnd--36bdb096e233f941d6be2d44.md) | 37 | `result-track:36bdb096e233f941d6be2d4452e462bdf1c436ce4768ff9d77368e5a7bbfcb97` |
| 3 | `theorem` | [IterM.toList_appendSnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046.lean/declarations/iterm-tolist-appendsnd--6f4f8d99bc91c25df2c88dfc.md) | 52 | `result-track:6f4f8d99bc91c25df2c88dfc1fb1630d35ffb5a00ec88c695f51bfc7eb97ed06` |
| 4 | `theorem` | [IterM.toList_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046.lean/declarations/iterm-tolist-append--92f43208e637db487f959451.md) | 67 | `result-track:92f43208e637db487f95945169c87d5e39117b71f25c4e38265f54774f63af5e` |
| 5 | `theorem` | [IterM.toListRev_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046.lean/declarations/iterm-tolistrev-append--bc0df1ec4e95913ab4ccf0ff.md) | 84 | `result-track:bc0df1ec4e95913ab4ccf0ffd1f5ec22f3f4e86e24c9cab8ffa629b3221ebbbd` |
| 6 | `theorem` | [IterM.toArray_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046.lean/declarations/iterm-toarray-append--dd8ed7435659c2ddbc8eda04.md) | 96 | `result-track:dd8ed7435659c2ddbc8eda046408157d47bfb30f61ddb0a91d7b28d0a7a5575e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
