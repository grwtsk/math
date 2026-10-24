# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LYM.Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d6e000ccd8e9f4669434dc2f9005211e5fd6542",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d6e000ccd8e9f4669434dc2f9005211e5fd6542`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.DoubleCounting` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SetFamily.Shadow` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Order` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_mul_le_card_shadow_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/declarations/card-mul-le-card-shadow-mul--fdbc2afd139a282ce9f6802a.md) | 64 | `result-track:fdbc2afd139a282ce9f6802a785bbae1c446a25a620996ff097486e955b762cb` |
| 2 | `theorem` | [card_div_choose_le_card_shadow_div_choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/declarations/card-div-choose-le-card-shadow-div-choose--3c77dd71ef98a456ad351d3b.md) | 91 | `result-track:3c77dd71ef98a456ad351d3baad1eeb5fd6b26b2bb197c7e31a07feb9fdcec82` |
| 3 | `def` | [falling](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/declarations/falling--600f306496208c9821a1ec46.md) | 125 | `declaration-track:600f306496208c9821a1ec465818a528274fee1d1a9edcbb9389a01fdef65e9a` |
| 4 | `theorem` | [mem_falling](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/declarations/mem-falling--04eb785549e712b7a568804c.md) | 131 | `result-track:04eb785549e712b7a568804c1bc74f73c18af3dc87bd1e0833b3698b9c69c5db` |
| 5 | `theorem` | [sized_falling](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/declarations/sized-falling--65d31082f46fc21628073bea.md) | 138 | `result-track:65d31082f46fc21628073bea510b02d579cecc6923af2344911680fbf2e53307` |
| 6 | `theorem` | [slice_subset_falling](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/declarations/slice-subset-falling--04ad9ab5c81ca9613433ab89.md) | 141 | `result-track:04ad9ab5c81ca9613433ab89b3bf028d1a0447d5bb674b02670f104ffeef5a31` |
| 7 | `theorem` | [falling_zero_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/declarations/falling-zero-subset--55064bcbc8bd92dd7679482f.md) | 145 | `result-track:55064bcbc8bd92dd7679482f3c753f9b36c64f138deff5d5cd341152b30b6b0d` |
| 8 | `theorem` | [slice_union_shadow_falling_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/declarations/slice-union-shadow-falling-succ--687b486eb5712774710499e1.md) | 149 | `result-track:687b486eb5712774710499e17165c0e9750fb2c06107c250657bfc741e4f30d6` |
| 9 | `theorem` | [IsAntichain.disjoint_slice_shadow_falling](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/declarations/isantichain-disjoint-slice-shadow-falling--2c4cf586285b5d72840aa0a6.md) | 170 | `result-track:2c4cf586285b5d72840aa0a61dc7fca9c618e335e5c1796f5625aa6cc4ba0b5b` |
| 10 | `theorem` | [le_card_falling_div_choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/declarations/le-card-falling-div-choose--35edd406e5f137aaa6407831.md) | 181 | `result-track:35edd406e5f137aaa6407831fb72a0b93066c69c8958fb44cb3043083df965d7` |
| 11 | `theorem` | [sum_card_slice_div_choose_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/declarations/sum-card-slice-div-choose-le-one--1c90e8d9e6700ff8638ea6ee.md) | 209 | `result-track:1c90e8d9e6700ff8638ea6ee292aeb6ef6b70efb5703b8483df06d41662c6a34` |
| 12 | `theorem` | [IsAntichain.sperner](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/declarations/isantichain-sperner--6ce6762ddb2169bf403594f9.md) | 229 | `result-track:6ce6762ddb2169bf403594f95fae574d6ecfcbd3494ae19a03cf22db93dc742e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
