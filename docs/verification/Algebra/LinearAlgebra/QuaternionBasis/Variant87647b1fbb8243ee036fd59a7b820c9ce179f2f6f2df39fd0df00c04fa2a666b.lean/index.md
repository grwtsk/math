# Verification target: GRWTSK.Algebra.LinearAlgebra.QuaternionBasis.Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9040eac8a0d516b137a73671826ca0b94d85320e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9040eac8a0d516b137a73671826ca0b94d85320e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Quaternion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Basis](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/basis--3fda826ace83a850ee006bdb.md) | 45 | `declaration-track:3fda826ace83a850ee006bdbc60bcc36973d7fb736b8e767958692221f16b972` |
| 2 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/ext--d92f6d7f7ba313d8fe2ceb1e.md) | 61 | `result-track:d92f6d7f7ba313d8fe2ceb1ede26e7b9619c03f599f4848ff2474b5041a470a6` |
| 3 | `def` | [self](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/self--7377c0608c0b6d20996c9cc9.md) | 73 | `declaration-track:7377c0608c0b6d20996c9cc9dc2814f728e5b8015e3beaf4d095fc18a7ad2045` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/instance--05e6936a589545fa4c94f267.md) | 85 | `declaration-track:05e6936a589545fa4c94f26713f90578377f662bbcba33979c865b73be7db8d6` |
| 5 | `theorem` | [i_mul_k](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/i-mul-k--fecbcea73e353bd11ea3dd92.md) | 93 | `result-track:fecbcea73e353bd11ea3dd9207ebe293054cc17efaad49c871b0dd57804b8da5` |
| 6 | `theorem` | [k_mul_i](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/k-mul-i--b5bb46fdff0ce6ffc5cf291b.md) | 98 | `result-track:b5bb46fdff0ce6ffc5cf291b079dde59a36cc6543382a059a4c1de5e1b0aa2d3` |
| 7 | `theorem` | [k_mul_j](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/k-mul-j--9a5311be739aad39b8da4ecf.md) | 103 | `result-track:9a5311be739aad39b8da4ecf36689d06241eac1f8d2fd465bd1d275e9ca2c2c4` |
| 8 | `theorem` | [j_mul_k](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/j-mul-k--1bb7b1ae2502bbe5f73d06b1.md) | 108 | `result-track:1bb7b1ae2502bbe5f73d06b1fc0166aeaca3268d95b251f5326fe83af8c86a38` |
| 9 | `theorem` | [k_mul_k](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/k-mul-k--8b654772790159b7d9e8ca30.md) | 113 | `result-track:8b654772790159b7d9e8ca30aa719a57a72761b59ef8371560164b9f4d85881b` |
| 10 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/lift--37e711fd4010adb465609d46.md) | 119 | `declaration-track:37e711fd4010adb465609d469a0c02a2ba06bff91aa70a3b4b94114796fba790` |
| 11 | `theorem` | [lift_zero](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/lift-zero--2126c9850b5174e3f3c091f7.md) | 123 | `result-track:2126c9850b5174e3f3c091f7aa1442afee88e4b443c3c093300dc580d8140cb0` |
| 12 | `theorem` | [lift_one](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/lift-one--66cb735944715925b454dd12.md) | 126 | `result-track:66cb735944715925b454dd1239e86606f0a6d1eb9ee4e14b2a489c401e47f5ef` |
| 13 | `theorem` | [lift_add](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/lift-add--bc4bf786e7f5d0aae3278436.md) | 129 | `result-track:bc4bf786e7f5d0aae327843654afaabf84905ad2c173fd8da355d1127cd6fefa` |
| 14 | `theorem` | [lift_mul](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/lift-mul--87624a7a74c45da78818a785.md) | 134 | `result-track:87624a7a74c45da78818a7851ebb4330d8a4375ab0a040eb498ebf56b47cf014` |
| 15 | `theorem` | [lift_smul](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/lift-smul--15dc08a4a3a42d33c3b4f52d.md) | 147 | `result-track:15dc08a4a3a42d33c3b4f52d500b929ac1606a1d53c17dfd7a624f3cbb26ba73` |
| 16 | `def` | [liftHom](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/lifthom--188f77801d088c31f0f6064b.md) | 153 | `declaration-track:188f77801d088c31f0f6064bf24bf8f7c7dc7b11b9c41fe6ab3d4e4c16b7cbdc` |
| 17 | `def` | [compHom](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/comphom--c0ddae7941917a75bc6657a2.md) | 164 | `declaration-track:c0ddae7941917a75bc6657a26fd5e0588b9baca5848d1a7b3df4016228b8eb5c` |
| 18 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/declarations/lift--e8226013cf7f519726d81a90.md) | 178 | `declaration-track:e8226013cf7f519726d81a901aca51f7c1806781578745b298a30576b7ab264f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
