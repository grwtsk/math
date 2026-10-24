# Verification target: GRWTSK.Algebra.GroupTheory.Schreier.Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77f35794af373b1db9ddaf4ade6ab841d2fc222a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77f35794af373b1db9ddaf4ade6ab841d2fc222a`.

Source path: `GRWTSK/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Abelianization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Exponent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Transfer` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [closure_mul_image_mul_eq_top](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/declarations/closure-mul-image-mul-eq-top--64586ceb4dfdb1f973e51970.md) | 45 | `result-track:64586ceb4dfdb1f973e5197003272c3ee2a2b84b8c55479f65bf7ed2fca54d31` |
| 2 | `theorem` | [closure_mul_image_eq](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/declarations/closure-mul-image-eq--26eb70daec4712960fef4d1d.md) | 72 | `result-track:26eb70daec4712960fef4d1dddd95735487d3c1fa89bd2b75c1318499b7c33d6` |
| 3 | `theorem` | [closure_mul_image_eq_top](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/declarations/closure-mul-image-eq-top--65ee088302cd5491a30d19de.md) | 93 | `result-track:65ee088302cd5491a30d19ded6787bb0d25264e4ac893a536988bc7536db2976` |
| 4 | `theorem` | [closure_mul_image_eq_top'](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/declarations/closure-mul-image-eq-top--3b976a66e2085b78bd36e915.md) | 103 | `result-track:3b976a66e2085b78bd36e915d26b5adf70476156bc3d209129a97a8b8a157612` |
| 5 | `theorem` | [exists_finset_card_le_mul](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/declarations/exists-finset-card-le-mul--c1c75c8847036ec05996d4a1.md) | 113 | `result-track:c1c75c8847036ec05996d4a13cc76f52921ddb9a9011abf10041dcfc6b675cee` |
| 6 | `instance` | [fg_of_index_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/declarations/fg-of-index-ne-zero--eec0af4aacbd8b5efcde77fc.md) | 137 | `declaration-track:eec0af4aacbd8b5efcde77fc9d997c7657bc2c5ab845f9f0cdfa4059ab8df770` |
| 7 | `theorem` | [rank_le_index_mul_rank](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/declarations/rank-le-index-mul-rank--2f54a2adfca3f0818d714e1f.md) | 143 | `result-track:2f54a2adfca3f0818d714e1f5d6a65cd02649156411bd89ae5fe668d656fc0e0` |
| 8 | `theorem` | [card_commutator_dvd_index_center_pow](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/declarations/card-commutator-dvd-index-center-pow--163ce5b11c0241fbd31fd3b0.md) | 158 | `result-track:163ce5b11c0241fbd31fd3b06219318087421795e71e1424edb28c6924e6cc45` |
| 9 | `def` | [cardCommutatorBound](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/declarations/cardcommutatorbound--07ae31d3a95e8ffcc28adc38.md) | 190 | `declaration-track:07ae31d3a95e8ffcc28adc38e284ecbfb7164372018eaa7660f14f0508c87bbf` |
| 10 | `theorem` | [card_commutator_le_of_finite_commutatorSet](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/declarations/card-commutator-le-of-finite-commutatorset--35eb4456be1d3963eb3caf03.md) | 196 | `result-track:35eb4456be1d3963eb3caf03b329c2f4fb9475faf6e0422c8b2dc8b54e3e2649` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/declarations/instance--36d759b53253de74ba3b1196.md) | 213 | `declaration-track:36d759b53253de74ba3b11961314305b5cf22b27194df5e76b3120a7ab3b7603` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
