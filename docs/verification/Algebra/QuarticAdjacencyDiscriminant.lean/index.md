# Verification target: GRWTSK.Algebra.QuarticAdjacencyDiscriminant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a834efa9287c7ef8ecb895f2bb7822e66657fe0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticAdjacencyDiscriminant.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticAdjacencyDiscriminant.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticAdjacencyDiscriminant.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a834efa9287c7ef8ecb895f2bb7822e66657fe0`.

Source path: `GRWTSK/Algebra/QuarticAdjacencyDiscriminant.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticAdjacencyDiscriminant.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.PolygonalQuarticSeparable`](../../../mathematics/Algebra/PolygonalQuarticSeparable.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quarticVandermonde](../../../mathematics/Algebra/QuarticAdjacencyDiscriminant.lean/declarations/quarticvandermonde--421881bb404e92f79540e80d.md) | 24 | `declaration-track:421881bb404e92f79540e80df29a1fd23cc2fcc4d58f55b9c75d0ed6f2469c2a` |
| 2 | `def` | [adjacencyVandermonde](../../../mathematics/Algebra/QuarticAdjacencyDiscriminant.lean/declarations/adjacencyvandermonde--ad744fc4650232fa32d1530a.md) | 29 | `declaration-track:ad744fc4650232fa32d1530ab2c7ae05409387345ee5f3863d0b556b92d8810b` |
| 3 | `theorem` | [adjacencyVandermonde_eq_neg_quartic](../../../mathematics/Algebra/QuarticAdjacencyDiscriminant.lean/declarations/adjacencyvandermonde-eq-neg-quartic--87809fcb0b58afda96e2727f.md) | 35 | `result-track:87809fcb0b58afda96e2727fed8a57173abf1627ca22f3974f4019b9a4e39e68` |
| 4 | `theorem` | [adjacency_discriminant_product_eq_quartic](../../../mathematics/Algebra/QuarticAdjacencyDiscriminant.lean/declarations/adjacency-discriminant-product-eq-quartic--8f2d2a8c6a1f421729ff4f08.md) | 46 | `result-track:8f2d2a8c6a1f421729ff4f083653aaf656df82059c3f24bfca7c12bbc0720e81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
