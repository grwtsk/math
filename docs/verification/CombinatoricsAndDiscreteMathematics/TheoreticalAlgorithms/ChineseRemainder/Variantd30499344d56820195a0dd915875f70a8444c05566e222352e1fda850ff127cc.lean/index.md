# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ChineseRemainder.Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cb39a1101ea722e223d526dc4d50533a664968f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cb39a1101ea722e223d526dc4d50533a664968f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.List` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.BigOperators` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [modEq_list_prod_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/declarations/modeq-list-prod-iff--d2ff5fa149e999be2d1c519b.md) | 30 | `result-track:d2ff5fa149e999be2d1c519b4fe5d118a09077f533204f2929898d900d19600a` |
| 2 | `lemma` | [modEq_list_prod_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/declarations/modeq-list-prod-iff--ad47ccee4a28f8b6bea1f2ba.md) | 42 | `result-track:ad47ccee4a28f8b6bea1f2ba1dbb58a30654d59155c7c95d1a8fbb37e8b2566a` |
| 3 | `def` | [chineseRemainderOfList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/declarations/chineseremainderoflist--f34193fae8150c7261aa999d.md) | 57 | `declaration-track:f34193fae8150c7261aa999da4140bd9fbb086d1bb6d143cdd75d2f5d2a9315c` |
| 4 | `theorem` | [chineseRemainderOfList_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/declarations/chineseremainderoflist-nil--bf880e5be2d4e6161ba5f929.md) | 73 | `result-track:bf880e5be2d4e6161ba5f929e390e2b3f4b70c8d61843ecd3b1b04dbdb237b6c` |
| 5 | `theorem` | [chineseRemainderOfList_lt_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/declarations/chineseremainderoflist-lt-prod--b7a7dfe79c1e06a2bf3d42a2.md) | 76 | `result-track:b7a7dfe79c1e06a2bf3d42a2510398bb5c963cdecd74492a855103dbe0527815` |
| 6 | `theorem` | [chineseRemainderOfList_modEq_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/declarations/chineseremainderoflist-modeq-unique--b11e204fe6441bb77809737b.md) | 94 | `result-track:b11e204fe6441bb77809737b86254616ea27b2f914507467f7479af0790793aa` |
| 7 | `theorem` | [chineseRemainderOfList_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/declarations/chineseremainderoflist-perm--1526ef54ac4cf57ca8d4c20e.md) | 108 | `result-track:1526ef54ac4cf57ca8d4c20eb9d8f582ed18929f6674aec22b2c8d8400f4635c` |
| 8 | `def` | [chineseRemainderOfMultiset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/declarations/chineseremainderofmultiset--55ad7fa3bebba32de9dc8179.md) | 123 | `declaration-track:55ad7fa3bebba32de9dc817996fcab2f77c709f651e9e2a16a0b7bdbd09c8df2` |
| 9 | `theorem` | [chineseRemainderOfMultiset_lt_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/declarations/chineseremainderofmultiset-lt-prod--1d5aad23ea8b655c14da8b58.md) | 146 | `result-track:1d5aad23ea8b655c14da8b58024f6f152f352e0b5ebd9ef8dca4dc54bb1d07b1` |
| 10 | `def` | [chineseRemainderOfFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/declarations/chineseremainderoffinset--35fafe9809bf3666b6d9d721.md) | 156 | `declaration-track:35fafe9809bf3666b6d9d7215f350625a6a35843a5b6b4835807e7ade927261d` |
| 11 | `theorem` | [chineseRemainderOfFinset_lt_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/declarations/chineseremainderoffinset-lt-prod--f31bd8d2179f1d3f45b81aa3.md) | 161 | `result-track:f31bd8d2179f1d3f45b81aa3e6179a1d50112f98ae47f173221babcd65734677` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
