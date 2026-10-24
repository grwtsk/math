# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BitIndices.Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8ce7e216a3f4c50b7e4a4b9020e22bf581e6ac4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8ce7e216a3f4c50b7e4a4b9020e22bf581e6ac4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.List` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.List` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sort` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bitwise` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bitIndices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/declarations/bitindices--e848aaf539689b27a6cc476a.md) | 35 | `declaration-track:e848aaf539689b27a6cc476ae4e22dda42b52016560c2f57d4ae1055d5fd0e4f` |
| 2 | `theorem` | [bitIndices_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/declarations/bitindices-zero--905fd6b7c51fcd1f459bf2a3.md) | 38 | `result-track:905fd6b7c51fcd1f459bf2a3ecc541c4de6385a641f4184512238c85eddbae6a` |
| 3 | `theorem` | [bitIndices_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/declarations/bitindices-one--96e13f4689e0490a0ba884dc.md) | 40 | `result-track:96e13f4689e0490a0ba884dca0934ac9b3f4a571e0ad6fec3be62c72ac89cee5` |
| 4 | `theorem` | [bitIndices_bit_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/declarations/bitindices-bit-true--893198176950fc84bd4e86c7.md) | 42 | `result-track:893198176950fc84bd4e86c777b86bf803e4a9c3702110f51b6fcf94a267d12f` |
| 5 | `theorem` | [bitIndices_bit_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/declarations/bitindices-bit-false--6f26fa05cb66e4154125a334.md) | 46 | `result-track:6f26fa05cb66e4154125a334bafbdcefd45a78ecf3b28c72a8c700aae271e793` |
| 6 | `theorem` | [bitIndices_two_mul_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/declarations/bitindices-two-mul-add-one--287d2e5a9d491277afa120af.md) | 50 | `result-track:287d2e5a9d491277afa120af08d1b9fee1ee6144a05cbb522e7877b711672f1d` |
| 7 | `theorem` | [bitIndices_two_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/declarations/bitindices-two-mul--b27ae4a54e7564a10719bb0d.md) | 54 | `result-track:b27ae4a54e7564a10719bb0dc417bf9c4b14e1afd7b3ea7db1daa1caa8de8dbf` |
| 8 | `theorem` | [bitIndices_sorted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/declarations/bitindices-sorted--aa1b0dbfa327ce1647a358f2.md) | 58 | `result-track:aa1b0dbfa327ce1647a358f2162d400bd77fffe85ae29ada28afefc0ed0f3dcc` |
| 9 | `theorem` | [bitIndices_two_pow_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/declarations/bitindices-two-pow-mul--5fc9ee6766006600a9eee109.md) | 65 | `result-track:5fc9ee6766006600a9eee109c31664c84a529a3029ac5ff500d52e7ee3e03ae3` |
| 10 | `theorem` | [bitIndices_two_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/declarations/bitindices-two-pow--90a6c87b7230f89f916a2dd5.md) | 72 | `result-track:90a6c87b7230f89f916a2dd5b219171876df0f8e7c15354e180a06d488e45595` |
| 11 | `theorem` | [twoPowSum_bitIndices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/declarations/twopowsum-bitindices--1ff1fee5f3821c9e7c59a17c.md) | 75 | `result-track:1ff1fee5f3821c9e7c59a17c7d3c0ddd3747fb91235875e9d834265397892893` |
| 12 | `theorem` | [bitIndices_twoPowsum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/declarations/bitindices-twopowsum--2964af1e9826c55f18319190.md) | 86 | `result-track:2964af1e9826c55f1831919073f49f0bfc5d6432eed4cddd54b2635dae33e201` |
| 13 | `theorem` | [two_pow_le_of_mem_bitIndices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/declarations/two-pow-le-of-mem-bitindices--a38309f4c7edbea68a431b9f.md) | 111 | `result-track:a38309f4c7edbea68a431b9f3c409e37474bd141ee60de2ee0fdb0cf6cb49a8d` |
| 14 | `theorem` | [notMem_bitIndices_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/declarations/notmem-bitindices-self--a1e4f1e00d90834bdf7b95fc.md) | 115 | `result-track:a1e4f1e00d90834bdf7b95fc85aa23e0a59e0fc23de3652723a2ff54f3c08c64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
