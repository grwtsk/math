# Verification target: GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyStrictGap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16ccf57a581b3835d7b8f0756f23243d7b9511dc",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyStrictGap.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyStrictGap.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyStrictGap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16ccf57a581b3835d7b8f0756f23243d7b9511dc`.

Source path: `GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyStrictGap.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CanonicalFourFamilyStrictGap.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyFullAdjointReconstruction`](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.FiniteObservationGap`](../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteObservationGap.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [restrictionDifferenceSet_finite](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyStrictGap.lean/declarations/restrictiondifferenceset-finite--cffd3a44f0657d2bf28eafe3.md) | 16 | `result-track:cffd3a44f0657d2bf28eafe306c3c254c46e4f062c46794fc8d0b81c853f2a65` |
| 2 | `theorem` | [restriction_strict_adjoint_of_kernel_exclusion](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyStrictGap.lean/declarations/restriction-strict-adjoint-of-kernel-exclusion--ba4b726f87d1c2760d3cd381.md) | 31 | `result-track:ba4b726f87d1c2760d3cd381ca334f8897eabcdff49a56b569bfb2bdc8b846aa` |
| 3 | `theorem` | [restriction_kernel_exclusion_false_three](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyStrictGap.lean/declarations/restriction-kernel-exclusion-false-three--8b5f6f86b34e292c48243e91.md) | 58 | `result-track:8b5f6f86b34e292c48243e919d0f5ec0b9c8bc3f170065290a3aa68ea27a04c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
