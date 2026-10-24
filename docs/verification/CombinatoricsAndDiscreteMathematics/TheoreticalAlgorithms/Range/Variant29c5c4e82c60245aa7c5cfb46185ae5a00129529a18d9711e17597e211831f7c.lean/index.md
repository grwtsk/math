# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3c4bd73e6271da11f8b855f037133c180a60672",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3c4bd73e6271da11f8b855f037133c180a60672`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.UnionInter` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/declarations/range--9920b77c4ae0d97843371b11.md) | 27 | `declaration-track:9920b77c4ae0d97843371b11925ea94cd1cbbdceb1c7e5daaab81404df1840a1` |
| 2 | `theorem` | [coe_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/declarations/coe-range--2f7479670845b93e43d48cb8.md) | 30 | `result-track:2f7479670845b93e43d48cb821bc957534af53d5fdfbe3424969ff6ad52471dc` |
| 3 | `theorem` | [range_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/declarations/range-zero--fb6f854b23f025c7c52565f6.md) | 34 | `result-track:fb6f854b23f025c7c52565f6149d3e15ddad8e6e8eb1b4ad5298f87fff78af5f` |
| 4 | `theorem` | [range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/declarations/range-succ--ccb3d1c5c7c704bc36dd69d1.md) | 38 | `result-track:ccb3d1c5c7c704bc36dd69d19e9f0ff9e31d49e6a15fea35d2b3e40ba0187356` |
| 5 | `theorem` | [card_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/declarations/card-range--ed37772740f6a609a2d58a38.md) | 42 | `result-track:ed37772740f6a609a2d58a3869af05954cc029091bd45215f5c8736951acebae` |
| 6 | `theorem` | [range_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/declarations/range-subset--f3be3992e4fce2cba7008d55.md) | 45 | `result-track:f3be3992e4fce2cba7008d552ad477f4f488051c8bfcba41d019c23c9f9cc8b7` |
| 7 | `theorem` | [mem_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/declarations/mem-range--4216fcb51b97b8a92279a49c.md) | 49 | `result-track:4216fcb51b97b8a92279a49c08a6792106ad411ec31bbf7623be6d9a3902e8c3` |
| 8 | `theorem` | [notMem_range_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/declarations/notmem-range-self--54544b9e599b68c26e0a3f3a.md) | 52 | `result-track:54544b9e599b68c26e0a3f3a8e722720cd501dfac481ee430f1ac2994292bc38` |
| 9 | `theorem` | [self_mem_range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/declarations/self-mem-range-succ--2bd2d695c0e1aa4d049a1551.md) | 57 | `result-track:2bd2d695c0e1aa4d049a155109cb2eb597441ecc0a7ef84857688f82e7ee5c46` |
| 10 | `theorem` | [range_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/declarations/range-add--2147486a688ee1a619042930.md) | 60 | `result-track:2147486a688ee1a61904293071eda8eeb126c3e83d9b0813275c940180005b96` |
| 11 | `theorem` | [range_disjoint_map_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/declarations/range-disjoint-map-add--d8813df6d5e1a18483a191a8.md) | 63 | `result-track:d8813df6d5e1a18483a191a8cb4bbe40e1a3bbef78c0f26c23a75fef2d1dfabd` |
| 12 | `theorem` | [range_add_eq_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/declarations/range-add-eq-union--17c1015102b965e954ad1d64.md) | 71 | `result-track:17c1015102b965e954ad1d64f32e70389b7c1bf317858f5c4141cdde1afa58f3` |
| 13 | `theorem` | [nodup_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/declarations/nodup-range--d88af23576f01b07932e5a16.md) | 77 | `result-track:d88af23576f01b07932e5a1649e021bc7be4c1ca6b8528090da198f72304b83f` |
| 14 | `theorem` | [range_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c.lean/declarations/range-le--58ba281dfd687d1fa3924a68.md) | 80 | `result-track:58ba281dfd687d1fa3924a688c3bbba2cea3749c1638e736b2a5189a4173916e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
