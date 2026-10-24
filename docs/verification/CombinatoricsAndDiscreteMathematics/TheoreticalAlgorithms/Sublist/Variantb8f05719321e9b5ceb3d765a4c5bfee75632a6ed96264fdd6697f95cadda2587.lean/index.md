# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sublist.Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12143e27334cd4a830fa22f4e8cabba5276fcec2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12143e27334cd4a830fa22f4e8cabba5276fcec2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsSuffix.getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/declarations/issuffix-getelem--66d0fd3e68fe65542f095d0d.md) | 33 | `result-track:66d0fd3e68fe65542f095d0d1f7afe699b305b5fa648876d0544acae977ff83f` |
| 2 | `theorem` | [suffix_iff_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/declarations/suffix-iff-getelem--3ab7e439248cebc0b6dae036.md) | 40 | `result-track:3ab7e439248cebc0b6dae036f0c9d00562e92295d88353d34a23a7fb519ff066` |
| 3 | `theorem` | [suffix_iff_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/declarations/suffix-iff-getelem--e9505f351bf52a93cff20254.md) | 70 | `result-track:e9505f351bf52a93cff202549294ad6d77d6f36b1eac8e91796a8359d79f7df6` |
| 4 | `theorem` | [infix_iff_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/declarations/infix-iff-getelem--7f13ee9ebc156490608be16f.md) | 85 | `result-track:7f13ee9ebc156490608be16f44021a6b5c5fc5ba111d03525be605f367f81001` |
| 5 | `theorem` | [suffix_iff_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/declarations/suffix-iff-eq-append--d14edadcc71113329a569e12.md) | 118 | `result-track:d14edadcc71113329a569e1273670854c335350fcc428a01637a669a723f18fe` |
| 6 | `theorem` | [prefix_take_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/declarations/prefix-take-iff--68793ce43a336ea22c055410.md) | 123 | `result-track:68793ce43a336ea22c055410644ce2ebfb47250a128963fcbcb0655e441116c4` |
| 7 | `theorem` | [suffix_iff_eq_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/declarations/suffix-iff-eq-drop--44a6482fd0bf58236134ded4.md) | 137 | `result-track:44a6482fd0bf58236134ded4ee7b6a4b8b46746ee47fe955e90cdd7e580d8846` |
| 8 | `theorem` | [prefix_map_iff_of_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/declarations/prefix-map-iff-of-injective--564cc50ff5a1bbfc11d73589.md) | 141 | `result-track:564cc50ff5a1bbfc11d735892d8cbf1bb4fcd083e10c1209b7214d3cf9cddf27` |
| 9 | `theorem` | [suffix_map_iff_of_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/declarations/suffix-map-iff-of-injective--18895cffd803d701bc0eb82e.md) | 145 | `result-track:18895cffd803d701bc0eb82e78b5357e3af71fde2ff5e419a72a86b05d11f926` |
| 10 | `theorem` | [prefix_take_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/declarations/prefix-take-le-iff--ac4fdd8647dff59e2cceb672.md) | 149 | `result-track:ac4fdd8647dff59e2cceb67244df870cc8a89fa2895fc5e363a9ac901cd3df78` |
| 11 | `theorem` | [append_left_sublist_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/declarations/append-left-sublist-self--435af866422a9abe3ce82b40.md) | 165 | `result-track:435af866422a9abe3ce82b40187093048570cf7eb1effb71b2575fa8f03637cb` |
| 12 | `theorem` | [append_right_sublist_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/declarations/append-right-sublist-self--215fef2d52e984e3b92a76c8.md) | 174 | `result-track:215fef2d52e984e3b92a76c80ea8ab8414293b3b65d1c7a3695db44b42665b24` |
| 13 | `theorem` | [append_sublist_of_sublist_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/declarations/append-sublist-of-sublist-left--6f3ecf4a1cf0610dc81c76b5.md) | 184 | `result-track:6f3ecf4a1cf0610dc81c76b55ef7c7caa561d8b0cb6f598bb2a3f3a779d8e263` |
| 14 | `theorem` | [append_sublist_of_sublist_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/declarations/append-sublist-of-sublist-right--0cb76be32e53306f99baa7df.md) | 197 | `result-track:0cb76be32e53306f99baa7df2d44118234e48173b16920791e01a5e8a4767432` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
