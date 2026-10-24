# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6168a686e257e425a332ebae77ee89d480a53eec",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6168a686e257e425a332ebae77ee89d480a53eec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Chain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [count_not_add_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/count-not-add-count--6ba13274319887b8ab280a2f.md) | 22 | `result-track:6ba13274319887b8ab280a2f7d5a2f33e00c9d46dff60f9acd16a16cf85e72ac` |
| 2 | `theorem` | [count_add_count_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/count-add-count-not--9e8d20f4f0c71849050bfd42.md) | 27 | `result-track:9e8d20f4f0c71849050bfd425c5e5184adc02179744e0454b0c5ca24b4e88ed3` |
| 3 | `theorem` | [count_false_add_count_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/count-false-add-count-true--4e0eb73b91c831844b3a16cb.md) | 31 | `result-track:4e0eb73b91c831844b3a16cbcd4984bd5722f1859ed767548f83dee28ae8b348` |
| 4 | `theorem` | [count_true_add_count_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/count-true-add-count-false--173a9162e005eca61beb0fe8.md) | 35 | `result-track:173a9162e005eca61beb0fe8ad7c91e29d0bcc3bacc62508c9a80ded1210f13a` |
| 5 | `theorem` | [Chain.count_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/chain-count-not--b7231889c76392bab6f02517.md) | 38 | `result-track:b7231889c76392bab6f02517990ec9b1441312b8bf4968233cfebc1eff2827f8` |
| 6 | `theorem` | [count_not_eq_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/count-not-eq-count--5ef85931bf5c250f900e3b3c.md) | 50 | `result-track:5ef85931bf5c250f900e3b3c2028a556f292b2b3d2bc7dc86bec54ff2bf203e7` |
| 7 | `theorem` | [count_false_eq_count_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/count-false-eq-count-true--2c5b604e73c4922be24bbd08.md) | 59 | `result-track:2c5b604e73c4922be24bbd08baaaad6271b030f7294f29d1dd72262938817745` |
| 8 | `theorem` | [count_not_le_count_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/count-not-le-count-add-one--da28335d0fbc8c50b1fd8729.md) | 63 | `result-track:da28335d0fbc8c50b1fd8729ad227b24548635cdea605a5cbb49036e36ab97fa` |
| 9 | `theorem` | [count_false_le_count_true_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/count-false-le-count-true-add-one--ef483de24998902d23381df8.md) | 73 | `result-track:ef483de24998902d23381df82a74457d8768773621ddaadb2f91d64fe42bce0f` |
| 10 | `theorem` | [count_true_le_count_false_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/count-true-le-count-false-add-one--d63a4e6e404b0944c684bee9.md) | 77 | `result-track:d63a4e6e404b0944c684bee98e2714961ca68842e009b328a0ccd17eb2a61109` |
| 11 | `theorem` | [two_mul_count_bool_of_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/two-mul-count-bool-of-even--4e58d27715b7ee5703e9fc88.md) | 81 | `result-track:4e58d27715b7ee5703e9fc8806e78722885efadbb4cfdb12aab8b458a065d4c1` |
| 12 | `theorem` | [two_mul_count_bool_eq_ite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/two-mul-count-bool-eq-ite--727f50a4b3e53390e794fd78.md) | 85 | `result-track:727f50a4b3e53390e794fd7891c6081a54f93f53b81bacb86959e348aa6fbebc` |
| 13 | `theorem` | [length_sub_one_le_two_mul_count_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/length-sub-one-le-two-mul-count-bool--06f3168e60eb22debde9fff2.md) | 99 | `result-track:06f3168e60eb22debde9fff2303fa0145ea77b881f9ae8e2370a4e805cc1b3f3` |
| 14 | `theorem` | [length_div_two_le_count_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/length-div-two-le-count-bool--d067fc50f7fe39cfb25609c8.md) | 104 | `result-track:d067fc50f7fe39cfb25609c84293638b3b24e7c969e18b1ce2e082c6cf64c551` |
| 15 | `theorem` | [two_mul_count_bool_le_length_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db.lean/declarations/two-mul-count-bool-le-length-add-one--4ffa9f6bd1f71994a79c6839.md) | 109 | `result-track:4ffa9f6bd1f71994a79c683967aa52cb2b6d3eff5630ac0e84dc7dd1b004ea50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
