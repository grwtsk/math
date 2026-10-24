# Verification target: GRWTSK.Algebra.QuarticCubicPolynomialComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a21176351d009497dc0f18aefe0881cbdca56d1",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticCubicPolynomialComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticCubicPolynomialComparison.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticCubicPolynomialComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a21176351d009497dc0f18aefe0881cbdca56d1`.

Source path: `GRWTSK/Algebra/QuarticCubicPolynomialComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticCubicPolynomialComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticCubicDiscriminant`](../../../mathematics/Algebra/QuarticCubicDiscriminant.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Algebra.QuarticBaseResolvent`](../../../mathematics/Algebra/QuarticBaseResolvent.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adjacencyCubic_toPoly_eq_resolvent](../../../mathematics/Algebra/QuarticCubicPolynomialComparison.lean/declarations/adjacencycubic-topoly-eq-resolvent--4096c599bbf98ee2f0da7dfb.md) | 25 | `result-track:4096c599bbf98ee2f0da7dfb681173286bfc4083a211ff7338b6fbcebb11d0d9` |
| 2 | `theorem` | [baseAdjacencyResolvent_eq_toPoly](../../../mathematics/Algebra/QuarticCubicPolynomialComparison.lean/declarations/baseadjacencyresolvent-eq-topoly--cfa11fcd249e5eff6d071952.md) | 34 | `result-track:cfa11fcd249e5eff6d0719525e68aad049d98239fb9b62cb27a9758d1c8069f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
