# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMTypeSlope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f363b701a19db6e847abc45b6525d877510fbfa8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMTypeSlope.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMTypeSlope.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMTypeSlope.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f363b701a19db6e847abc45b6525d877510fbfa8`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMTypeSlope.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMTypeSlope.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMFourBalance`](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMFourBalance.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [slopeFromValuation](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMTypeSlope.lean/declarations/slopefromvaluation--05e37dd7c42c00ef7859311c.md) | 19 | `declaration-track:05e37dd7c42c00ef7859311cf25fa04ffeff243ec87828aab374d33bd257f385` |
| 2 | `theorem` | [slope_eq_signSelector](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMTypeSlope.lean/declarations/slope-eq-signselector--f89a7ee010223e521163e711.md) | 24 | `result-track:f89a7ee010223e521163e711762bb3955e4388a48c4627a13aa43323c50acfb7` |
| 3 | `theorem` | [slope_eq_one_of_positive](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMTypeSlope.lean/declarations/slope-eq-one-of-positive--e32721b432dd5ef7cc084f03.md) | 32 | `result-track:e32721b432dd5ef7cc084f0332c3899185f73ed3390429e0bcef6bc6bfeec7fb` |
| 4 | `theorem` | [slope_eq_zero_of_negative](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMTypeSlope.lean/declarations/slope-eq-zero-of-negative--97256a3e4b92aad06d7123f3.md) | 38 | `result-track:97256a3e4b92aad06d7123f3d2d3c75cb9d8844c5d2940b66e229f1cb22867ab` |
| 5 | `theorem` | [slope_zero_or_one_of_sign](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMTypeSlope.lean/declarations/slope-zero-or-one-of-sign--e0e7d3fcf93ee84d1a467ef1.md) | 45 | `result-track:e0e7d3fcf93ee84d1a467ef1c870fec14da74dab2f21ca52e589fb138874dcdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
