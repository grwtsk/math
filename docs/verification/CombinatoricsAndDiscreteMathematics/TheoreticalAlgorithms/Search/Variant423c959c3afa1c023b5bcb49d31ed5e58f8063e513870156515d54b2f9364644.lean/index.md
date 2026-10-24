# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Search.Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89416257492116ce389f0412c2cd9d42c9a0bfc3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89416257492116ce389f0412c2cd9d42c9a0bfc3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Slice` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.FindPos` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Slice.Pos.le_find](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean/declarations/slice-pos-le-find--f717d1a80a7256bec1f33e42.md) | 24 | `result-track:f717d1a80a7256bec1f33e428f64837a74456f0403438b8d24cdeaee297e4ac7` |
| 2 | `theorem` | [Pos.le_find](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean/declarations/pos-le-find--2d68697e15dd63898b973599.md) | 29 | `result-track:2d68697e15dd63898b97359943ea4c5623c48b88a9f1a5505c74f6263ea13292` |
| 3 | `theorem` | [front?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean/declarations/front-toslice--0a8a7ebaef0b23f60b132af7.md) | 34 | `result-track:0a8a7ebaef0b23f60b132af7a1ce24e96ec1b839ab2af42362d0e5a7159fe5ea` |
| 4 | `theorem` | [front?_eq_get?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean/declarations/front-eq-get--937b4940501fa1645d4a569a.md) | 37 | `result-track:937b4940501fa1645d4a569a2d525015767109632b52a7853dbcc713d20b0248` |
| 5 | `theorem` | [front?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean/declarations/front-eq--5d6e56fed06435afa6707f8d.md) | 40 | `result-track:5d6e56fed06435afa6707f8d91ae7a9ee1324faca9408e81d8a2e49e25b2fafd` |
| 6 | `theorem` | [front_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean/declarations/front-toslice--43d9dc50884dad44fc1c041f.md) | 44 | `result-track:43d9dc50884dad44fc1c041fc01f8785f395c3b57334a796e61025c4c99e4c44` |
| 7 | `theorem` | [front_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean/declarations/front-eq--0f56f72f538db4895cc3ad44.md) | 48 | `result-track:0f56f72f538db4895cc3ad4469b678dfede216e5ac8d484ccf867c786b11ae92` |
| 8 | `theorem` | [back?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean/declarations/back-toslice--ca5cc54f6151c6d8176c0c0a.md) | 52 | `result-track:ca5cc54f6151c6d8176c0c0a026396caac5079ecdc6423f1d498ad0f968f965a` |
| 9 | `theorem` | [back?_eq_get?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean/declarations/back-eq-get--15c05984fe73e2dea3cb9a60.md) | 55 | `result-track:15c05984fe73e2dea3cb9a6017ae538e0a493f027ceeb4633b4bedf92d71e47d` |
| 10 | `theorem` | [back?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean/declarations/back-eq--c0bcc128aad2aa7d0ae7c0b2.md) | 60 | `result-track:c0bcc128aad2aa7d0ae7c0b2f94fc2d8f652c350f3c320831a409c1df545ba8d` |
| 11 | `theorem` | [back_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean/declarations/back-toslice--d93727fd5bba9dd2770d7c29.md) | 64 | `result-track:d93727fd5bba9dd2770d7c29af4bc88363ce6717360bdf4f617fb5333f957eb8` |
| 12 | `theorem` | [back_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644.lean/declarations/back-eq--097043616e9f5a4a3f9205ff.md) | 68 | `result-track:097043616e9f5a4a3f9205ffa4001eb41eddc5668aabcefcfe07b9edb0a335ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
