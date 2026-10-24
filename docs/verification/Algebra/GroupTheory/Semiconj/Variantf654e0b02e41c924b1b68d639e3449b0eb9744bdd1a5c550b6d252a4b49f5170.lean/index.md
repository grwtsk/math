# Verification target: GRWTSK.Algebra.GroupTheory.Semiconj.Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a5f776ffe2bfe13f3c35203d022e2698d345bff",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a5f776ffe2bfe13f3c35203d022e2698d345bff`.

Source path: `GRWTSK/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Semiconj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_right](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean/declarations/add-right--6af6cb86780f6fd7bbbdebf9.md) | 33 | `result-track:6af6cb86780f6fd7bbbdebf9516241c7ca23f77f193845572c7ca1779cd4f2ca` |
| 2 | `theorem` | [add_left](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean/declarations/add-left--6ca5a38eb43f3e24518e7712.md) | 39 | `result-track:6ca5a38eb43f3e24518e771226c21b39538363ab348638d7fe3559a15d821bb4` |
| 3 | `theorem` | [neg_right](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean/declarations/neg-right--30df406092b4855a3dec31ea.md) | 48 | `result-track:30df406092b4855a3dec31ea5504946698ba80ed072625ec32e48d164c973918` |
| 4 | `theorem` | [neg_right_iff](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean/declarations/neg-right-iff--31f4c5112706118275fa165d.md) | 53 | `result-track:31f4c5112706118275fa165d5406acd025fd4de64854802365fd8157c34eac52` |
| 5 | `theorem` | [neg_left](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean/declarations/neg-left--0ab2ef36292823817c9e7b15.md) | 57 | `result-track:0ab2ef36292823817c9e7b159ee82a07e58646fd98377d7f035d282cbdeebac4` |
| 6 | `theorem` | [neg_left_iff](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean/declarations/neg-left-iff--a7debca759c062eb6633bd53.md) | 62 | `result-track:a7debca759c062eb6633bd53ce555cbf05e33715c8b9178aab22d2f2c4db8288` |
| 7 | `theorem` | [neg_one_right](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean/declarations/neg-one-right--fbe9bd9e42a7b36009f5305a.md) | 73 | `result-track:fbe9bd9e42a7b36009f5305a2d6a39855e2eba1e0f74f87aa38d403ad4fad8e5` |
| 8 | `theorem` | [neg_one_left](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean/declarations/neg-one-left--b779b82c1a2ecf71e3280f2e.md) | 78 | `result-track:b779b82c1a2ecf71e3280f2e0c4885a024be8d1a1a1c96baf23ab7a55226702f` |
| 9 | `theorem` | [sub_right](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean/declarations/sub-right--2a1ae4f74e857108e271d9f5.md) | 89 | `result-track:2a1ae4f74e857108e271d9f5f67d91f150f6a4605d6ed31fafadcfce5e049df1` |
| 10 | `theorem` | [sub_left](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170.lean/declarations/sub-left--c9a8245238186def80e624b5.md) | 95 | `result-track:c9a8245238186def80e624b57c6b6755e9fc6621f8352cfef46ae983aaf9f419` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
