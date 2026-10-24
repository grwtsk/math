# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Minpoly.Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a38cb0a66f95e3397f0c38ba85a32590f8e2c684",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a38cb0a66f95e3397f0c38ba85a32590f8e2c684`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eigenspace_aeval_polynomial_degree_1](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean/declarations/eigenspace-aeval-polynomial-degree-1--a11a8394683389a51c379180.md) | 38 | `result-track:a11a8394683389a51c379180e6a92dd9eac28ec058ab0daa43bd416d1cd62935` |
| 2 | `theorem` | [ker_aeval_ring_hom'_unit_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean/declarations/ker-aeval-ring-hom-unit-polynomial--ba687cbea1c643cc1427e116.md) | 51 | `result-track:ba687cbea1c643cc1427e116b18ad21eda792bd040528b1670665d12404737f5` |
| 3 | `theorem` | [aeval_apply_of_hasEigenvector](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean/declarations/aeval-apply-of-haseigenvector--4a72482c14f7aa07b0538ed9.md) | 58 | `result-track:4a72482c14f7aa07b0538ed92e546c8047089e36c07d395c6848b3aa804cf353` |
| 4 | `theorem` | [isRoot_of_hasEigenvalue](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean/declarations/isroot-of-haseigenvalue--94244e9101b298648f7a8031.md) | 68 | `result-track:94244e9101b298648f7a8031e67c6805e60d71202968bf95630b9dd398557f3a` |
| 5 | `theorem` | [hasEigenvalue_of_isRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean/declarations/haseigenvalue-of-isroot--f0fe478c3598b16854290aff.md) | 77 | `result-track:f0fe478c3598b16854290affc06fc842b3f0a19c4874d8973b443fa6f49caa97` |
| 6 | `theorem` | [hasEigenvalue_iff_isRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean/declarations/haseigenvalue-iff-isroot--ed6025e373a7cade09aed63e.md) | 95 | `result-track:ed6025e373a7cade09aed63ec829b33c55d72a6eef2a1a126fe22453a4a0f4df` |
| 7 | `lemma` | [finite_hasEigenvalue](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean/declarations/finite-haseigenvalue--eb47c22cfff166458b7582ec.md) | 100 | `result-track:eb47c22cfff166458b7582ecc504a287283e06efdcb3f29940c8999eac5575c3` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean/declarations/instance--1ec19b7f835fc903bbe914e3.md) | 108 | `declaration-track:1ec19b7f835fc903bbe914e3ad98c88328595921f11ab674ad401339e1381de2` |
| 9 | `theorem` | [Module.End.finite_spectrum](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean/declarations/module-end-finite-spectrum--03ca4d583bbe7ba70e07f452.md) | 118 | `result-track:03ca4d583bbe7ba70e07f452232af3e687f38618c355926132362859b2033afd` |
| 10 | `theorem` | [Matrix.finite_spectrum](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean/declarations/matrix-finite-spectrum--110fce9c78971432cff651ff.md) | 128 | `result-track:110fce9c78971432cff651fff49dd7cc34d215be8c65064df9da1c664d291544` |
| 11 | `instance` | [Matrix.instFiniteSpectrum](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant00f931098d67df6c8b16bb5cec4e632e7bb6ec1c0d73bb982f2c4fca5d744248.lean/declarations/matrix-instfinitespectrum--bde0b2b90d14211636798f4d.md) | 132 | `declaration-track:bde0b2b90d14211636798f4d27e7525e2259c4cdc8cb3ff688258ae9b6ec9ac3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
