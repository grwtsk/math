# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96c1d5720e6bf4cf43df6e58ff24567c91457567",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96c1d5720e6bf4cf43df6e58ff24567c91457567`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.TakeDrop` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Array.iterM_eq_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/declarations/array-iterm-eq-iterfromidxm--23eb2e6c45ac5cbe20a40ea1.md) | 38 | `result-track:23eb2e6c45ac5cbe20a40ea1e5ac895e28d68ae11d793577db7b4f15a29c29da` |
| 2 | `theorem` | [Array.step_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/declarations/array-step-iterfromidxm--884a121d0fa88442705640a1.md) | 42 | `result-track:884a121d0fa88442705640a1089fa043809d86fd112151e28a3fa6a03ea4bda5` |
| 3 | `theorem` | [Array.step_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/declarations/array-step-iterm--41512a01cc3b73fc14785709.md) | 52 | `result-track:41512a01cc3b73fc147857090de3f603057d62d7a62130a1a80b6a7bb686d744` |
| 4 | `theorem` | [Std.Iterators.Types.ArrayIterator.stepAsHetT_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/declarations/std-iterators-types-arrayiterator-stepashett-iterfromidxm--98fc64e5c041c1d6728621e2.md) | 64 | `result-track:98fc64e5c041c1d6728621e2f50b1765214b3ec62456ebd96d62472d594eb757` |
| 5 | `theorem` | [Array.iterFromIdxM_equiv_iterM_drop_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/declarations/array-iterfromidxm-equiv-iterm-drop-tolist--fdb5b67cacb566056cdb9b8c.md) | 95 | `result-track:fdb5b67cacb566056cdb9b8c280c52b5ad324aef9ec01a4ae762bec58c128283` |
| 6 | `theorem` | [Array.iterM_equiv_iterM_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/declarations/array-iterm-equiv-iterm-tolist--18e4f70b0ab5b2306a37134b.md) | 130 | `result-track:18e4f70b0ab5b2306a37134b2b929382e1403f16a578f505898680abf5015364` |
| 7 | `theorem` | [Array.toList_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/declarations/array-tolist-iterfromidxm--6abd693b9c9e3592491350d4.md) | 139 | `result-track:6abd693b9c9e3592491350d44a41d813db810a6e8bbed7389137938ab8360741` |
| 8 | `theorem` | [Array.toList_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/declarations/array-tolist-iterm--c7e357e75b25340cde01c60c.md) | 145 | `result-track:c7e357e75b25340cde01c60c9ef35bb60a1336d43dac8b12785afbe47a0fbd55` |
| 9 | `theorem` | [Array.toArray_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/declarations/array-toarray-iterfromidxm--4001ab2683a7a693b49e67ec.md) | 150 | `result-track:4001ab2683a7a693b49e67ec76acdf3a6a3f1dca7f69509cc8562faed1eaa7bf` |
| 10 | `theorem` | [Array.toArray_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/declarations/array-toarray-iterm--fb22cb416ab74cd0e873cf07.md) | 157 | `result-track:fb22cb416ab74cd0e873cf0772672d96f71b5826e446611cb028e3efc1b12ab9` |
| 11 | `theorem` | [Array.toListRev_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/declarations/array-tolistrev-iterfromidxm--2ac17f5d4b1a936c792de617.md) | 162 | `result-track:2ac17f5d4b1a936c792de617b4a039996fdaff50c2056ff832ce85540d3e7df0` |
| 12 | `theorem` | [Array.toListRev_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/declarations/array-tolistrev-iterm--b11107b6aceed045ca49b06c.md) | 167 | `result-track:b11107b6aceed045ca49b06c1142fed448f5a1dfa189af3261c009bb2b24fedf` |
| 13 | `theorem` | [Array.length_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/declarations/array-length-iterfromidxm--c4c86a37e135b179d9d2de2d.md) | 172 | `result-track:c4c86a37e135b179d9d2de2d0cba29bce0de193ffad169c1f4bf7f5fc099c4b9` |
| 14 | `theorem` | [Array.length_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8.lean/declarations/array-length-iterm--199bfb97b5c8b2b3f61fcc34.md) | 177 | `result-track:199bfb97b5c8b2b3f61fcc34f048a974bda8a2ce18a109cab89498bc4f0aeb58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
