# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d510078754dfbf0c0e045ebc65fa8297ebc726b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d510078754dfbf0c0e045ebc65fa8297ebc726b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Iterators.Lemmas.Consumers.Loop` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Array.iter_eq_toIter_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-iter-eq-toiter-iterm--e47b9a4fcba633b8be10b2a0.md) | 37 | `result-track:e47b9a4fcba633b8be10b2a0aac96ceeaeea7b4449afdf1db4e1be0f456f3d85` |
| 2 | `theorem` | [Array.iter_eq_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-iter-eq-iterfromidx--43f54696323db7fc6bfe9853.md) | 41 | `result-track:43f54696323db7fc6bfe985386957d17b204db2148a58c1a2e43959a194bf3c7` |
| 3 | `theorem` | [Array.iterFromIdx_eq_toIter_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-iterfromidx-eq-toiter-iterfromidxm--55642d35f291ead2796505f1.md) | 45 | `result-track:55642d35f291ead2796505f1e9c0cbb52352bb7f3b136be3ed030a336846be9d` |
| 4 | `theorem` | [Array.step_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-step-iterfromidx--0f30d1d9a589dd1ee3c9c846.md) | 49 | `result-track:0f30d1d9a589dd1ee3c9c8462333d2c54c919a04730ae82ef860120627410312` |
| 5 | `theorem` | [Array.step_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-step-iter--1a8120bbf5ab4f77fa54517f.md) | 61 | `result-track:1a8120bbf5ab4f77fa54517f6b93bf5999edce6d1432b79e04ca389e5ea7538b` |
| 6 | `theorem` | [Array.toList_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-tolist-iterfromidx--648d707c824d05ac51bcc757.md) | 72 | `result-track:648d707c824d05ac51bcc7570d407676be0f7576d16f2221f2ef0cf28ce85261` |
| 7 | `theorem` | [Array.toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-tolist-iter--a6f7b0d439c8b105d97a4e09.md) | 79 | `result-track:a6f7b0d439c8b105d97a4e0999ad352941821ae2154dd0eca2d5949cd36a1766` |
| 8 | `theorem` | [Array.toArray_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-toarray-iterfromidx--ce09490edd9dce865b15c493.md) | 84 | `result-track:ce09490edd9dce865b15c493aec4450075f8be70bd6890169027e4a874340a67` |
| 9 | `theorem` | [Array.toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-toarray-iter--c85b324a445ed030b1d19b00.md) | 89 | `result-track:c85b324a445ed030b1d19b0074bcca1504e2b6be310d4c61abd8631ad8f1b7b5` |
| 10 | `theorem` | [Array.toListRev_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-tolistrev-iterfromidx--92423f977033ee630c6b01ff.md) | 94 | `result-track:92423f977033ee630c6b01ffb3b7c06f49e7e875d4ab737640f1615a4cf8fafd` |
| 11 | `theorem` | [Array.toListRev_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-tolistrev-iter--79d705ecacacbb8bafa6d5fe.md) | 99 | `result-track:79d705ecacacbb8bafa6d5feba5bf839183ac98c72fa239400e86006a714c0a1` |
| 12 | `theorem` | [Array.length_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-length-iterfromidx--66ad18f56e279a34ea9025c3.md) | 104 | `result-track:66ad18f56e279a34ea9025c3c5ba3c369c874eb9b8c34f63f84043f527c8ba56` |
| 13 | `theorem` | [Array.length_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-length-iter--b15afdb7a2efb9ff21af0c10.md) | 109 | `result-track:b15afdb7a2efb9ff21af0c101d81390a1c0e319502c5d89e7d767911eb18dd38` |
| 14 | `theorem` | [Array.iterFromIdx_equiv_iter_drop_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-iterfromidx-equiv-iter-drop-tolist--415118d9b5998508c4e4ec0b.md) | 115 | `result-track:415118d9b5998508c4e4ec0bd69d1ca4dc62b53c369b33720c513a423d117172` |
| 15 | `theorem` | [Array.iter_equiv_iter_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc5b55ab8b5a463e89892b4e184f1e998db7e85ed19ac8ec4501940355005cfbf.lean/declarations/array-iter-equiv-iter-tolist--9d4f0d1db35a8e246196ebfd.md) | 120 | `result-track:9d4f0d1db35a8e246196ebfd2692c37757befdd2974c9e1afcb783670d26d979` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
