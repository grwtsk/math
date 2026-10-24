# Verification target: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.RowMajorBooleanCoordinates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc641de6e9b11474f294d89f8440e31cd5fb61c8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean/index.md) · [Full source](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc641de6e9b11474f294d89f8440e31cd5fb61c8`.

Source path: `GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean.json)

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

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rowMajorIndexEquiv](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean/declarations/rowmajorindexequiv--26cd5022e3e3ad1bae7e2490.md) | 59 | `declaration-track:26cd5022e3e3ad1bae7e24902bd3bb4ac90e4731589019ee911806d8dcd4712a` |
| 2 | `theorem` | [rowMajorIndexEquiv_apply](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean/declarations/rowmajorindexequiv-apply--01b010623c32efec830eaf18.md) | 64 | `result-track:01b010623c32efec830eaf18ca307ddcb2f2a1f78cc828b8acb8ba8afa7beb44` |
| 3 | `def` | [flattenEquiv](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean/declarations/flattenequiv--315630f965f9ce8856746147.md) | 72 | `declaration-track:315630f965f9ce885674614798f1cb8508ce2b871ad63a5c6d4f50b0720f218d` |
| 4 | `theorem` | [flattenEquiv_apply_flatIdx](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean/declarations/flattenequiv-apply-flatidx--449a9b4f10f4551b8d1ac033.md) | 90 | `result-track:449a9b4f10f4551b8d1ac033aea5758bbf341985e21efd7e39827ae4a447f857` |
| 5 | `theorem` | [flattenEquiv_xor](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/RowMajorBooleanCoordinates.lean/declarations/flattenequiv-xor--df79d01043e75d190ce0819d.md) | 102 | `result-track:df79d01043e75d190ce0819dd3f205ed43f066ca3a996bed08300d8888088438` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
