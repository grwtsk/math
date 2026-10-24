# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ChineseRemainder.Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "310c862ad754289320a6fc2d7685c263d5428700",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `310c862ad754289320a6fc2d7685c263d5428700`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.List` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.BigOperators` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [modEq_list_prod_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean/declarations/modeq-list-prod-iff--2804f303f4fa08b06fb7ea1c.md) | 38 | `result-track:2804f303f4fa08b06fb7ea1c336b8d4bcc4c4f74dbd1c1690342ac238f340d8b` |
| 2 | `lemma` | [modEq_list_prod_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean/declarations/modeq-list-prod-iff--8dc15a08b370a101ef02202f.md) | 50 | `result-track:8dc15a08b370a101ef02202fb7f5686ac3e4895fb7d0d5344a693f7a2984b306` |
| 3 | `def` | [chineseRemainderOfList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean/declarations/chineseremainderoflist--a260eeb2ec29e1944aaba58c.md) | 65 | `declaration-track:a260eeb2ec29e1944aaba58c08b7bfecea932a255ff69b79d00b72f415cade89` |
| 4 | `theorem` | [chineseRemainderOfList_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean/declarations/chineseremainderoflist-nil--77fe9aa74e2f0eafccd8eb13.md) | 81 | `result-track:77fe9aa74e2f0eafccd8eb13ec04810388ada96e3077fa05a031eccdf0f18907` |
| 5 | `theorem` | [chineseRemainderOfList_lt_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean/declarations/chineseremainderoflist-lt-prod--14560425c59b45ae797e43a1.md) | 84 | `result-track:14560425c59b45ae797e43a165523326efd2ebb36dd4106872a6158602140cf1` |
| 6 | `theorem` | [chineseRemainderOfList_modEq_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean/declarations/chineseremainderoflist-modeq-unique--d30a98998e82c477b7dd09eb.md) | 102 | `result-track:d30a98998e82c477b7dd09eb4f6ee5e53ec90a9e36848803f11c7fe323988504` |
| 7 | `theorem` | [chineseRemainderOfList_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean/declarations/chineseremainderoflist-perm--80b7b9e470124ea75d67b12d.md) | 116 | `result-track:80b7b9e470124ea75d67b12d2edc6fae198a3371dd3ba3783d66c3fa0d6cb6a7` |
| 8 | `def` | [chineseRemainderOfMultiset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean/declarations/chineseremainderofmultiset--fbe398df2b5420fec62d9b1a.md) | 131 | `declaration-track:fbe398df2b5420fec62d9b1aaf35a7b2f485348006725710d28f31b1b6ef81bc` |
| 9 | `theorem` | [chineseRemainderOfMultiset_lt_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean/declarations/chineseremainderofmultiset-lt-prod--46fdb54d499c00c756472fe7.md) | 154 | `result-track:46fdb54d499c00c756472fe7c6c2f22c8068771a5e98420db4dd235687ecc79b` |
| 10 | `def` | [chineseRemainderOfFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean/declarations/chineseremainderoffinset--52249eb7e50c99bad22550a1.md) | 164 | `declaration-track:52249eb7e50c99bad22550a1e4c98b5dc543380bb952b8df61c8a85a9c9f92f7` |
| 11 | `theorem` | [chineseRemainderOfFinset_lt_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantb58afc64ca908cb50fd11115ea832ba94311252cbd962f98c131fc83ebb37796.lean/declarations/chineseremainderoffinset-lt-prod--d4b1039dec6e3fb2f06edce4.md) | 169 | `result-track:d4b1039dec6e3fb2f06edce411d26297a0fa49c508e5c39a3cf61bfdbb766f38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
