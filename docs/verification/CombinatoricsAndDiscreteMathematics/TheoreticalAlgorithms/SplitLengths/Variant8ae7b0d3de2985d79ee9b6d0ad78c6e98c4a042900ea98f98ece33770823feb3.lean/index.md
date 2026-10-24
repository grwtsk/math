# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SplitLengths.Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fe080e64299a72200a902be7e1b414a62613943",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fe080e64299a72200a902be7e1b414a62613943`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.MinMax` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitLengths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean/declarations/splitlengths--b462a4651c821720708cc45b.md) | 30 | `declaration-track:b462a4651c821720708cc45b7c01ee786b062f64096d0419e5a913798af617b3` |
| 2 | `theorem` | [length_splitLengths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean/declarations/length-splitlengths--a68e1c36c3dcbd75d33e7753.md) | 37 | `result-track:a68e1c36c3dcbd75d33e775300a89f6b8d4484e9a5ba926d375729e82adfbc86` |
| 3 | `lemma` | [splitLengths_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean/declarations/splitlengths-nil--5da974c78831b23ac948dd4c.md) | 41 | `result-track:5da974c78831b23ac948dd4cd3c28e1e127ba62369d9ad8c7a629e66aa92a62d` |
| 4 | `lemma` | [splitLengths_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean/declarations/splitlengths-cons--fd0fd37283071b6c5909bc78.md) | 44 | `result-track:fd0fd37283071b6c5909bc789f60eae8d24e0a50f93f57cf780d22756fb74936` |
| 5 | `theorem` | [take_splitLength](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean/declarations/take-splitlength--1963c8f83618ac33005922b5.md) | 48 | `result-track:1963c8f83618ac33005922b591297ae22cafd99fea16d5ed0c9b5cb16e7ed00a` |
| 6 | `theorem` | [length_splitLengths_getElem_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean/declarations/length-splitlengths-getelem-le--e1c0d3b6b57ccab05971849f.md) | 56 | `result-track:e1c0d3b6b57ccab05971849f171227a6414e0a308e9dbb4b79eff3a34072b41c` |
| 7 | `theorem` | [flatten_splitLengths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean/declarations/flatten-splitlengths--57a24f9429794f7b8f5129b7.md) | 66 | `result-track:57a24f9429794f7b8f5129b741aa4cb04125d61a79ccb0a10794a7b84b3ad552` |
| 8 | `theorem` | [map_splitLengths_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean/declarations/map-splitlengths-length--1d55559c29fa2577b04e9430.md) | 74 | `result-track:1d55559c29fa2577b04e9430ca144312d28dcee8542a595fe6e169f8fc49476e` |
| 9 | `theorem` | [length_splitLengths_getElem_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean/declarations/length-splitlengths-getelem-eq--88642a41ba5025c4ab6c1b4b.md) | 85 | `result-track:88642a41ba5025c4ab6c1b4b34b50eb8b573ab9e44e928f6dfa2df006cd196f5` |
| 10 | `theorem` | [splitLengths_length_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean/declarations/splitlengths-length-getelem--96857e6b9115916895fed0d2.md) | 95 | `result-track:96857e6b9115916895fed0d2656aecbebc8ef2bbb6199850fe5ccc6bfd55aab3` |
| 11 | `theorem` | [length_mem_splitLengths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant8ae7b0d3de2985d79ee9b6d0ad78c6e98c4a042900ea98f98ece33770823feb3.lean/declarations/length-mem-splitlengths--bc13802c39bc711e0622aeef.md) | 103 | `result-track:bc13802c39bc711e0622aeef5bdc70821ca6d0bf28a28977893ef7d8b3469f7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
