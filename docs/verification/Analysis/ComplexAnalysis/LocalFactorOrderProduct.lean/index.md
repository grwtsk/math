# Verification target: GRWTSK.Analysis.Complex.LocalFactorOrderProduct

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcb736fbc9dd37ce44a3bb2405788f81876ae7b5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/LocalFactorOrderProduct.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/LocalFactorOrderProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5`.

Source path: `GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/LocalFactorOrderProduct.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.LogarithmicOrderDetection`](../../../../mathematics/Analysis/ComplexAnalysis/LogarithmicOrderDetection.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [product_local_factorization](../../../../mathematics/Analysis/ComplexAnalysis/LocalFactorOrderProduct.lean/declarations/product-local-factorization--12db975b2e81b10734371c48.md) | 10 | `result-track:12db975b2e81b10734371c48d1c67aafcb9ec3fc6bf73262c1ef5ad47d4ef62d` |
| 2 | `theorem` | [product_scaled_neg_logDeriv](../../../../mathematics/Analysis/ComplexAnalysis/LocalFactorOrderProduct.lean/declarations/product-scaled-neg-logderiv--d24ac04cc957a07180c8ac25.md) | 21 | `result-track:d24ac04cc957a07180c8ac25fc5ac49638f9e029ffeba1275da275c7b8b6adca` |
| 3 | `theorem` | [analytic_unit_preserves_scaled_coefficient](../../../../mathematics/Analysis/ComplexAnalysis/LocalFactorOrderProduct.lean/declarations/analytic-unit-preserves-scaled-coefficient--497101d5fc73b16fcbd5f453.md) | 32 | `result-track:497101d5fc73b16fcbd5f4534a4a14a60040c99451036c314a8cf9bc6a832b65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
