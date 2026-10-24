# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IntPolynomial.Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "211df9171d84a3b16b6837576ead4f33f9f79064",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IntPolynomial/Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `211df9171d84a3b16b6837576ead4f33f9f79064`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IntPolynomial/Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IntPolynomial/Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Polynomial.int](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0.lean/declarations/polynomial-int--2dfacea520bab9d1b1b83bc9.md) | 27 | `declaration-track:2dfacea520bab9d1b1b83bc99a01466328cc67679282914af6f7baf2c4d4dd19` |
| 2 | `theorem` | [int_coeff_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0.lean/declarations/int-coeff-eq--fd7d25b7253c3cd0b88e8f14.md) | 39 | `result-track:fd7d25b7253c3cd0b88e8f14980caf894f00172236be04ff776c8b9299519055` |
| 3 | `theorem` | [int_leadingCoeff_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0.lean/declarations/int-leadingcoeff-eq--5fd2cae23da890785057b628.md) | 42 | `result-track:5fd2cae23da890785057b628360fe957b34861d7e6036d10c993e7e27ca8f7f6` |
| 4 | `theorem` | [int_monic_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0.lean/declarations/int-monic-iff--6c23ebc5cf7a210a857a96ce.md) | 45 | `result-track:6c23ebc5cf7a210a857a96ce21bb02c508b48520fefa40aa15800d80c423ee0f` |
| 5 | `theorem` | [int_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0.lean/declarations/int-natdegree--94a2cf4c259c70ef71811150.md) | 49 | `result-track:94a2cf4c259c70ef718111506e91f232b00684951717d17f6e66d521e831d9e7` |
| 6 | `theorem` | [int_eval₂_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variant3ecd972e46a75f1708b077b1b71fc0df8036025c828f7a38085017a9a498deb0.lean/declarations/int-eval-eq--2c628e82f8e09f07edafe8aa.md) | 54 | `result-track:2c628e82f8e09f07edafe8aa943f25279d8b8b3edf394a1f7ba3305ccf20334b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
