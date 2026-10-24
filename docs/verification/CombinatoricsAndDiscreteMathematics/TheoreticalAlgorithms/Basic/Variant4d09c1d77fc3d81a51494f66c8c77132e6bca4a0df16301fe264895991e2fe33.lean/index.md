# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "565073aad8a50eda5c3400f5ca35433b5c2b09ed",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `565073aad8a50eda5c3400f5ca35433b5c2b09ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Loop` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Order` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Grind` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Pattern.Model.find?_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/declarations/pattern-model-find-eq-some-iff--ec3a9914ea7cf8e57a90ae41.md) | 26 | `result-track:ec3a9914ea7cf8e57a90ae41b9dfdece10d4e21d1da90e29e0b2a68e8533c53c` |
| 2 | `theorem` | [Pattern.Model.find?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/declarations/pattern-model-find-eq-none-iff--85395f99ec94f38c9e646951.md) | 43 | `result-track:85395f99ec94f38c9e646951f4cd30e51dcfa3ba432677fdc8880f992f651af7` |
| 3 | `theorem` | [isSome_find?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/declarations/issome-find--6d23dcb82d8abe0e66bc965c.md) | 54 | `result-track:6d23dcb82d8abe0e66bc965cbe2a36bbe0350a411ca1bd26699d1b12560adda9` |
| 4 | `theorem` | [find?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/declarations/find-eq-none-iff--f55e73702ae3114d2ba69362.md) | 62 | `result-track:f55e73702ae3114d2ba69362ad09888fb0fa9058756f00d3cddd9d21cf6f625a` |
| 5 | `theorem` | [Pattern.Model.contains_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/declarations/pattern-model-contains-eq-false-iff--81b0448d69d17e5c498adf5c.md) | 68 | `result-track:81b0448d69d17e5c498adf5ccc5e38fa44a865605cb40a0367722d3fb3fd6f04` |
| 6 | `theorem` | [Pattern.Model.contains_eq_true_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/declarations/pattern-model-contains-eq-true-iff--a12565a57ebfa6d1f40fb7d9.md) | 75 | `result-track:a12565a57ebfa6d1f40fb7d9797bb615538ba208f693da6aa17fdf92ab928c5a` |
| 7 | `theorem` | [Pos.find?_eq_find?_sliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/declarations/pos-find-eq-find-slicefrom--e8a83e5d8b0619c5d2a7d2a6.md) | 82 | `result-track:e8a83e5d8b0619c5d2a7d2a6a579315b0fdcd5ee0026b5838407da78972333c9` |
| 8 | `theorem` | [Pattern.Model.posFind?_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/declarations/pattern-model-posfind-eq-some-iff--a27c87bc480c24e102f8b632.md) | 88 | `result-track:a27c87bc480c24e102f8b6321c5493c72f61b7321777f39048380fbfb1a1e921` |
| 9 | `theorem` | [Pattern.Model.posFind?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/declarations/pattern-model-posfind-eq-none-iff--1e2c5111b744d2a0b4748546.md) | 103 | `result-track:1e2c5111b744d2a0b4748546843c30c85b43e08abc7390182a520a5a01ce0033` |
| 10 | `theorem` | [Pos.find?_eq_find?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/declarations/pos-find-eq-find-toslice--9035778d97c585c794b09eaa.md) | 114 | `result-track:9035778d97c585c794b09eaa1a7a10458ecb80c5bdc5971fa80fc2364e65c2ef` |
| 11 | `theorem` | [find?_eq_find?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/declarations/find-eq-find-toslice--766aee487d883f493b5c7976.md) | 119 | `result-track:766aee487d883f493b5c7976d883ba1c77c699a2f3ffd8e743649d1f4f43a3c3` |
| 12 | `theorem` | [contains_eq_contains_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/declarations/contains-eq-contains-toslice--c7068ce4879ef796ec5f289d.md) | 124 | `result-track:c7068ce4879ef796ec5f289dad484b38fec909dece27c88fe6e3919519c17c95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
