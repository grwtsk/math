# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variant2aaadb4acef9f84ac9d7d8cdadefcb56119685e0b1f554c87cfa3eff0eeda1e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0de432433d874bdd248f745b3958c02d7a4fec70",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant2aaadb4acef9f84ac9d7d8cdadefcb56119685e0b1f554c87cfa3eff0eeda1e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant2aaadb4acef9f84ac9d7d8cdadefcb56119685e0b1f554c87cfa3eff0eeda1e0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant2aaadb4acef9f84ac9d7d8cdadefcb56119685e0b1f554c87cfa3eff0eeda1e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0de432433d874bdd248f745b3958c02d7a4fec70`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant2aaadb4acef9f84ac9d7d8cdadefcb56119685e0b1f554c87cfa3eff0eeda1e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MvPolynomial/Variant2aaadb4acef9f84ac9d7d8cdadefcb56119685e0b1f554c87cfa3eff0eeda1e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Supported` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Polynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [transcendental_supported_polynomial_aeval_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant2aaadb4acef9f84ac9d7d8cdadefcb56119685e0b1f554c87cfa3eff0eeda1e0.lean/declarations/transcendental-supported-polynomial-aeval-x--17852e294f6943e43e20f56a.md) | 25 | `result-track:17852e294f6943e43e20f56a7879de8c423b9ac07faf0b46fd2420c6a727e27b` |
| 2 | `theorem` | [transcendental_polynomial_aeval_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant2aaadb4acef9f84ac9d7d8cdadefcb56119685e0b1f554c87cfa3eff0eeda1e0.lean/declarations/transcendental-polynomial-aeval-x--5c6bccae5a1c16fc5cbc0322.md) | 61 | `result-track:5c6bccae5a1c16fc5cbc03229e57af9f651f7d7716b914ab2b9703e216b56eca` |
| 3 | `theorem` | [transcendental_polynomial_aeval_X_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant2aaadb4acef9f84ac9d7d8cdadefcb56119685e0b1f554c87cfa3eff0eeda1e0.lean/declarations/transcendental-polynomial-aeval-x-iff--d8c54b682388c87561a182be.md) | 69 | `result-track:d8c54b682388c87561a182bea9b8134328db4be2ce7c9f9cba586d82a70a8010` |
| 4 | `theorem` | [transcendental_supported_polynomial_aeval_X_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant2aaadb4acef9f84ac9d7d8cdadefcb56119685e0b1f554c87cfa3eff0eeda1e0.lean/declarations/transcendental-supported-polynomial-aeval-x-iff--b6019f064f7491fb75441d08.md) | 75 | `result-track:b6019f064f7491fb75441d08a447bd156b8c00f04fb1c7fe2f92f56e5aa7f17b` |
| 5 | `theorem` | [transcendental_supported_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant2aaadb4acef9f84ac9d7d8cdadefcb56119685e0b1f554c87cfa3eff0eeda1e0.lean/declarations/transcendental-supported-x--a0ffe243b0e04ae87ecdfe8b.md) | 90 | `result-track:a0ffe243b0e04ae87ecdfe8b8e3a4dd86fdbfe239b810d376f37f713ae00c2b5` |
| 6 | `theorem` | [transcendental_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant2aaadb4acef9f84ac9d7d8cdadefcb56119685e0b1f554c87cfa3eff0eeda1e0.lean/declarations/transcendental-x--aa0d2f02afe3fcd2bd321281.md) | 94 | `result-track:aa0d2f02afe3fcd2bd3212817411e249a630e7a33b876094200259246df1ac37` |
| 7 | `theorem` | [transcendental_supported_X_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant2aaadb4acef9f84ac9d7d8cdadefcb56119685e0b1f554c87cfa3eff0eeda1e0.lean/declarations/transcendental-supported-x-iff--19129ad06f775a41090bb4ef.md) | 97 | `result-track:19129ad06f775a41090bb4efdd843db9e7953c4e5b7bbbbb7c04b6e63893f73d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
