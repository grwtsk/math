# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55807e4f80b20b29e3e907e2354d2a3df3c34293",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55807e4f80b20b29e3e907e2354d2a3df3c34293`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Supported` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Polynomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [transcendental_supported_polynomial_aeval_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean/declarations/transcendental-supported-polynomial-aeval-x--ab7e30b8924297f3c764061e.md) | 33 | `result-track:ab7e30b8924297f3c764061ecf7f9d698c7c17edafb71482d8d49365151fc730` |
| 2 | `theorem` | [transcendental_polynomial_aeval_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean/declarations/transcendental-polynomial-aeval-x--49e8f4e26cee03f2dc716972.md) | 69 | `result-track:49e8f4e26cee03f2dc716972333aab5afbfbfd148a882b695fa6c490eec95fa3` |
| 3 | `theorem` | [transcendental_polynomial_aeval_X_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean/declarations/transcendental-polynomial-aeval-x-iff--866c8709808c6e5585c37a45.md) | 77 | `result-track:866c8709808c6e5585c37a455c1eb1d388621df4046a4c8473a2651f9af2ac8c` |
| 4 | `theorem` | [transcendental_supported_polynomial_aeval_X_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean/declarations/transcendental-supported-polynomial-aeval-x-iff--98e9d44a9738e694efbcf310.md) | 83 | `result-track:98e9d44a9738e694efbcf31050723a3f57e5442a70c3d3a4e2a95b107fa00451` |
| 5 | `theorem` | [transcendental_supported_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean/declarations/transcendental-supported-x--647f7c5265fd9312c6b447cd.md) | 98 | `result-track:647f7c5265fd9312c6b447cd12bacd24fc7c34f129378727fcc511f4620494a7` |
| 6 | `theorem` | [transcendental_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean/declarations/transcendental-x--e5c1849b2e0c57a1af4a6ce9.md) | 102 | `result-track:e5c1849b2e0c57a1af4a6ce912d14f184a84a79b9a2e0e9497f4411039bfe285` |
| 7 | `theorem` | [transcendental_supported_X_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean/declarations/transcendental-supported-x-iff--994f0da6bc324249d9e46541.md) | 105 | `result-track:994f0da6bc324249d9e46541a72b59b35a33eb2639a3780822ea51165c4c6f83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
