# Verification target: GRWTSK.NumberTheory.Chebyshev.QuadraticIntervalQuadrature

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c7834c86fa1f5ab2e553b689e850e4dc9bc25cb",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c7834c86fa1f5ab2e553b689e850e4dc9bc25cb`.

Source path: `GRWTSK/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IntervalMellinQuadrature`](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinQuadrature.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.QuadraticIntervalKernel`](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [square_uniform_left_error](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean/declarations/square-uniform-left-error--0a88bd84ba4292ef1724db1b.md) | 30 | `result-track:0a88bd84ba4292ef1724db1b092182429b7fa43672eaef74997a6a6288bf52c3` |
| 2 | `theorem` | [square_finite_quadrature_error](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean/declarations/square-finite-quadrature-error--0aedd6526a547f3734039dcf.md) | 42 | `result-track:0aedd6526a547f3734039dcf868db4585f1e778ce69ff47313f450bc15a35ea0` |
| 3 | `theorem` | [square_enclosed_quadrature_error](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean/declarations/square-enclosed-quadrature-error--0e14ef1f3e1a3d4a9888aab3.md) | 63 | `result-track:0e14ef1f3e1a3d4a9888aab3a8aae6dc114aa8a1204bf31c2be27cce0b3272e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
