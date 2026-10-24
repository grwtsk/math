# Verification target: GRWTSK.Analysis.Calculus.CompactProfileDerivativeEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1afab9f3c4f9ac33d489eab3dc924cc2040c7f38",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Calculus/CompactProfileDerivativeEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileDerivativeEnergy.lean/index.md) · [Full source](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileDerivativeEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1afab9f3c4f9ac33d489eab3dc924cc2040c7f38`.

Source path: `GRWTSK/Analysis/Calculus/CompactProfileDerivativeEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Calculus/CompactProfileDerivativeEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Calculus.CompactProfileNormalization`](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileNormalization.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_third_mul_first](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileDerivativeEnergy.lean/declarations/integral-third-mul-first--ac5a6d7ff7129047929224aa.md) | 23 | `result-track:ac5a6d7ff7129047929224aa876b8c0e9a6f7c4a3f9a27f6bb417d533af30113` |
| 2 | `theorem` | [deriv_dilationOperator](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileDerivativeEnergy.lean/declarations/deriv-dilationoperator--b3e88a22bc55d71a8dd2051f.md) | 31 | `result-track:b3e88a22bc55d71a8dd2051fa787965448337b3e529ea28a04520fe1676cedd8` |
| 3 | `theorem` | [deriv_normalizedOperator](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileDerivativeEnergy.lean/declarations/deriv-normalizedoperator--c3456453747b1b7bfe4c226c.md) | 52 | `result-track:c3456453747b1b7bfe4c226cb2f31b4790d3d5f4abc05d786e6e8fd149f43d0f` |
| 4 | `theorem` | [normalizedOperator_deriv_square_integrable](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileDerivativeEnergy.lean/declarations/normalizedoperator-deriv-square-integrable--d373f4abb88dc1745c268bb6.md) | 59 | `result-track:d373f4abb88dc1745c268bb6c640225e537aff210ca93c447c407f9552badfbe` |
| 5 | `theorem` | [normalizedOperator_deriv_square_integral_factorized](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileDerivativeEnergy.lean/declarations/normalizedoperator-deriv-square-integral-factorized--f804c9cc2ff5af7db9f6cab6.md) | 70 | `result-track:f804c9cc2ff5af7db9f6cab603869d256783ffbe188dd6d0c9f877ca3c7225d0` |
| 6 | `theorem` | [normalizedOperator_deriv_square_integral](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileDerivativeEnergy.lean/declarations/normalizedoperator-deriv-square-integral--689cecdbb38b28a8f8ced629.md) | 82 | `result-track:689cecdbb38b28a8f8ced62913b73b4de90e901360a028736b477e179783b2c6` |
| 7 | `theorem` | [profile_normalizedOperator_deriv_square_integral](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileDerivativeEnergy.lean/declarations/profile-normalizedoperator-deriv-square-integral--13d9e9aa8b247b338c922ca0.md) | 97 | `result-track:13d9e9aa8b247b338c922ca04a255a2872b6c992269b28b65c93c79412454b90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
