# Verification target: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.PointwiseProductObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3278aafe1ef55c21a6c649c415abcc53526c7e39",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/index.md) · [Full source](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3278aafe1ef55c21a6c649c415abcc53526c7e39`.

Source path: `GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.Avalanche` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 22; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.BooleanCoefficientEquivalence`](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/index.md) — import line 24; pinned internal source present.
- [`GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.RowMajorBooleanCoordinates`](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean/index.md) — import line 25; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroMatrix](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/declarations/zeromatrix--deb60e38386a49514dbaebce.md) | 60 | `declaration-track:deb60e38386a49514dbaebcea17bca1ce9ac03b159f72eea853d1771e993d4bb` |
| 2 | `def` | [pointwiseOneMatrix](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/declarations/pointwiseonematrix--f0033a1d951951fb23131195.md) | 64 | `declaration-track:f0033a1d951951fb231311953f1fc2375f5566da3e5eaa53eb5e84ff8be1aa30` |
| 3 | `theorem` | [xor_zero_right](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/declarations/xor-zero-right--2dd48fb22da59d6d237c7865.md) | 68 | `result-track:2dd48fb22da59d6d237c7865fe036d4e4052c473f4981808cf92b773834b6e2a` |
| 4 | `theorem` | [xor_self](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/declarations/xor-self--f7f8ca3475ad4df1302b21cb.md) | 75 | `result-track:f7f8ca3475ad4df1302b21cb2c35a3b7eb323a790f4d3bc971bc5f18a567a535` |
| 5 | `theorem` | [and_zero_right](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/declarations/and-zero-right--04ffe6d6b95a71ef2487e44c.md) | 82 | `result-track:04ffe6d6b95a71ef2487e44ccc33be50eb9692d611cabb466b2ae0c4390bb825` |
| 6 | `theorem` | [and_one_right](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/declarations/and-one-right--39af002a6fac49261a3a7670.md) | 89 | `result-track:39af002a6fac49261a3a7670476e630533909ec8f0b999983b09cca47a1233c9` |
| 7 | `theorem` | [zeroMatrix_eq_pointwiseOneMatrix_of_mul_eq_zero](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/declarations/zeromatrix-eq-pointwiseonematrix-of-mul-eq-zero--69032dfb0c4d7598a31a8ea8.md) | 96 | `result-track:69032dfb0c4d7598a31a8ea830b785b5b145fc49297c41b4272f78ed0adade05` |
| 8 | `def` | [singletonMatrix](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/declarations/singletonmatrix--a2425214a42a8b96b89c017f.md) | 106 | `declaration-track:a2425214a42a8b96b89c017ffd9e4064675b7af7b18a7c8dc3e99a25dd67ba21` |
| 9 | `theorem` | [singletonMatrix_ne_zero](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/declarations/singletonmatrix-ne-zero--4bb3a038b11a08c240cbad09.md) | 111 | `result-track:4bb3a038b11a08c240cbad09700304280ada32b23776130f1d70be4a0fa0a2f8` |
| 10 | `theorem` | [exists_pointwise_zero_divisors](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/declarations/exists-pointwise-zero-divisors--1ed641b49938d6e9f41ad75e.md) | 123 | `result-track:1ed641b49938d6e9f41ad75eac199c8afa1cd0202077f762b83a2a9a3f8fa121` |
| 11 | `def` | [oneEntryGF2Equiv](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/declarations/oneentrygf2equiv--82f88314d0b9b188e6d58857.md) | 149 | `declaration-track:82f88314d0b9b188e6d5885767bc79acc217f53ab6e7b6781ba7b4b35efe0999` |
| 12 | `theorem` | [oneEntryGF2Equiv_xor](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/declarations/oneentrygf2equiv-xor--ec892af9c63c0d1af6988482.md) | 159 | `result-track:ec892af9c63c0d1af6988482fc53145dd0a7207c51cf90ecdf6876ccd1c1b240` |
| 13 | `theorem` | [oneEntryGF2Equiv_and](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/declarations/oneentrygf2equiv-and--7502712e0fe6dbfd2b576574.md) | 165 | `result-track:7502712e0fe6dbfd2b5765749180558dadc12be36b56fd4cbbf0a1debdefc810` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
