# Verification target: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.BooleanCoefficientEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a089878f483b76a48cc89a38c426842374886dec",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/index.md) · [Full source](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a089878f483b76a48cc89a38c426842374886dec`.

Source path: `GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.Avalanche` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GF2](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/declarations/gf2--2bd3870e2d2f074c55c49a1d.md) | 57 | `declaration-track:2bd3870e2d2f074c55c49a1d2d12d56a7f757e1adea9a204929da53d2d93193f` |
| 2 | `abbrev` | [GF2Matrix](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/declarations/gf2matrix--e7036faf5d52f95418d1eb48.md) | 61 | `declaration-track:e7036faf5d52f95418d1eb48c954f709929dd086fd7e74e0cab2f4ac2fc16464` |
| 3 | `def` | [boolGF2Equiv](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/declarations/boolgf2equiv--bd6ef9d3b4a9b8a63bd403b6.md) | 65 | `declaration-track:bd6ef9d3b4a9b8a63bd403b6f9015f7bd60708d5cfde0bf65c29c61effafd1b5` |
| 4 | `theorem` | [boolGF2Equiv_false](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/declarations/boolgf2equiv-false--3280f1266c040272024c0fce.md) | 84 | `result-track:3280f1266c040272024c0fce98b764559c9734e4eade6fe6340bf040d6f129c1` |
| 5 | `theorem` | [boolGF2Equiv_true](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/declarations/boolgf2equiv-true--a541f7d77a72a0347ac6a24c.md) | 88 | `result-track:a541f7d77a72a0347ac6a24c49680118b8d7ee11394c39fe72a1c2d3faa7bbac` |
| 6 | `theorem` | [boolGF2Equiv_xor](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/declarations/boolgf2equiv-xor--52a6f147c7bb21cbf1f4f1a1.md) | 93 | `result-track:52a6f147c7bb21cbf1f4f1a183f73833cf7ac7f24cfd8fc8c19a5539082f1fe1` |
| 7 | `theorem` | [boolGF2Equiv_and](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/declarations/boolgf2equiv-and--95c20ff110f19cce58f01d6c.md) | 100 | `result-track:95c20ff110f19cce58f01d6cf5390b06d0e80be7899d98a5ab420241f2e54e4f` |
| 8 | `def` | [boolMatrixGF2Equiv](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/declarations/boolmatrixgf2equiv--1cc26557a12e0d675df04384.md) | 106 | `declaration-track:1cc26557a12e0d675df0438436cb28c18b4fed9c205580987545fa29d7f870fc` |
| 9 | `theorem` | [boolMatrixGF2Equiv_apply](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/declarations/boolmatrixgf2equiv-apply--841a103141eb3d5eb1eac558.md) | 118 | `result-track:841a103141eb3d5eb1eac558f2274d151bacf9118825e74b760aae5f20a2f049` |
| 10 | `theorem` | [boolMatrixGF2Equiv_symm_apply](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/declarations/boolmatrixgf2equiv-symm-apply--0899aff79f76a894b6cb030f.md) | 125 | `result-track:0899aff79f76a894b6cb030f58357a82d4e29165154b707e697a74881ce2f641` |
| 11 | `theorem` | [boolMatrixGF2Equiv_xor](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/declarations/boolmatrixgf2equiv-xor--eb6eeb8078d814ac66a2b6df.md) | 132 | `result-track:eb6eeb8078d814ac66a2b6df7842645ad872c6b7b6c95f474d25929a82481389` |
| 12 | `theorem` | [boolMatrixGF2Equiv_and](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/BooleanCoefficientEquivalence.lean/declarations/boolmatrixgf2equiv-and--e609f53696b7de8856e97488.md) | 145 | `result-track:e609f53696b7de8856e974887909987b4f0782ee476c5cb2972e9142eaf45c28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
