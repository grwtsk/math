# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Slice.Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44e987bf5305a684f958bfeed489970b6abca21a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44e987bf5305a684f958bfeed489970b6abca21a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Interval` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antichain` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sized](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/sized--769a46193f954dabc58f8e40.md) | 54 | `declaration-track:769a46193f954dabc58f8e402e037fa99c62d03219219410622758f9e5b98854` |
| 2 | `theorem` | [Sized.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/sized-mono--b57fbc605c873a4c50931b75.md) | 58 | `result-track:b57fbc605c873a4c50931b752c8401556837a2c2f2685f986c040825c5cf01eb` |
| 3 | `theorem` | [sized_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/sized-union--d5d4755ae9944d570b7e8d7b.md) | 61 | `result-track:d5d4755ae9944d570b7e8d7bcf662c9a2de41348764e8b2f28f7565954ca9f01` |
| 4 | `theorem` | [sized_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/sized-iunion--ba59e418241edb003ee2e546.md) | 71 | `result-track:ba59e418241edb003ee2e546de18ab22b6c5d7080f5d715eb79be5af1fb07946` |
| 5 | `theorem` | [sized_iUnion₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/sized-iunion--43b81d9cf89697e05fa1c2a2.md) | 77 | `result-track:43b81d9cf89697e05fa1c2a29a5ab23dce9ab686efadff3fe061e7c7f7780a2a` |
| 6 | `theorem` | [Sized.isAntichain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/sized-isantichain--9134607e097575396e968347.md) | 82 | `result-track:9134607e097575396e9683476fefd68308287d293934c720a1f64eb67c310022` |
| 7 | `theorem` | [Sized.subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/sized-subsingleton--e1ed1be1463339c34c5cb133.md) | 86 | `result-track:e1ed1be1463339c34c5cb1330dfee2bad751e39da52cee44b6c12f18b1c2b87b` |
| 8 | `theorem` | [Sized.subsingleton'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/sized-subsingleton--5f5f572e305dcb5f7c155deb.md) | 90 | `result-track:5f5f572e305dcb5f7c155deb0fd57449545d17a5601732e6ada9f70d847f8dfd` |
| 9 | `theorem` | [Sized.empty_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/sized-empty-mem-iff--5557e91dc0280c76093cd30c.md) | 94 | `result-track:5557e91dc0280c76093cd30c8833153f448e7d0b995bbb3f4f05045cdd2111f8` |
| 10 | `theorem` | [Sized.univ_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/sized-univ-mem-iff--1dc574963f87f785500cd4f4.md) | 98 | `result-track:1dc574963f87f785500cd4f40a0875ce71ce078926f328e0083f1766556a1725` |
| 11 | `theorem` | [sized_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/sized-powersetlen--25f32e1e6ca3efc2caef3d8c.md) | 102 | `result-track:25f32e1e6ca3efc2caef3d8c8a4ce37fd6a4a17547e37a3ca1fb3b6cb2d464ed` |
| 12 | `theorem` | [subset_powersetLen_univ_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/subset-powersetlen-univ-iff--aaf9e3208295ff1c915aa2f0.md) | 114 | `result-track:aaf9e3208295ff1c915aa2f0b83728f0394a7a738498a8234f98489631ebd170` |
| 13 | `theorem` | [Set.Sized.card_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/set-sized-card-le--62c4a782f321df90f110f5b3.md) | 121 | `result-track:62c4a782f321df90f110f5b30e04eb5ab9bf6b796ff3053dd81832bdd1fa8b7d` |
| 14 | `def` | [slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/slice--6c7335a32c2c259534dd14ff.md) | 137 | `declaration-track:6c7335a32c2c259534dd14ff620533b378347e28281b69012b8f440ea5ce9696` |
| 15 | `theorem` | [mem_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/mem-slice--c823383ecf6756bedaa6e56f.md) | 147 | `result-track:c823383ecf6756bedaa6e56f17de38d5787bb8c28b1caf6571c25e7881f5831e` |
| 16 | `theorem` | [slice_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/slice-subset--80a8be443b17212c0c362ef4.md) | 152 | `result-track:80a8be443b17212c0c362ef4f6cdf6b2c2d3d0a6c3fbe23be1133713fb7791a0` |
| 17 | `theorem` | [sized_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/sized-slice--2dc2e3581ae59038eb70adc5.md) | 157 | `result-track:2dc2e3581ae59038eb70adc5dc9bca5ac957dae8b4b73c275faa17f6990e0972` |
| 18 | `theorem` | [eq_of_mem_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/eq-of-mem-slice--ba0b17ab189878430f8ee771.md) | 160 | `result-track:ba0b17ab189878430f8ee771766dfbbf1d31cbcef2628b133acd45912845e379` |
| 19 | `theorem` | [ne_of_mem_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/ne-of-mem-slice--e8b36e848f0a11baca20bb5f.md) | 165 | `result-track:e8b36e848f0a11baca20bb5f3224bb5726918b2c0a658b4fb217c71c56e08921` |
| 20 | `theorem` | [pairwiseDisjoint_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/pairwisedisjoint-slice--9c8c1e0f83082ab7e8eecb64.md) | 169 | `result-track:9c8c1e0f83082ab7e8eecb64c33473f6c4edb612b5490cc6cd4bb51c43a0c5cd` |
| 21 | `theorem` | [biUnion_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/biunion-slice--e1cde4e85bea42707a2e99b4.md) | 176 | `result-track:e1cde4e85bea42707a2e99b43642196c81b4faa17a91cfe8b44166681ca0e969` |
| 22 | `theorem` | [sum_card_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant372269bc6a120816595b78e235a9ea48caadd4c9900c260b1f1ebdcedefe3d97.lean/declarations/sum-card-slice--a3cd2ea47244ed549792117e.md) | 182 | `result-track:a3cd2ea47244ed549792117eb15b650ad3c2b1db8292a9d10d8f22a7f9e1bff1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
