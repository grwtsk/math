# Verification target: GRWTSK.AlgebraicGeometry.Hodge.ComplementaryWeakAdmissibility

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "890c7a88553dad31868b7b0bba24397e75336c8f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `890c7a88553dad31868b7b0bba24397e75336c8f`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.DegreeOneSlope`](../../../../mathematics/AlgebraicGeometry/Hodge/DegreeOneSlope.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.LinearAlgebra.FilteredProjectorSplit`](../../../../mathematics/LinearAlgebra/FilteredProjectorSplit.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ComplementaryNumerics](../../../../mathematics/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/declarations/complementarynumerics--8408f3346d3b014f7e0d9107.md) | 16 | `declaration-track:8408f3346d3b014f7e0d9107f086d3df2b549a6cea02b38833dcbf566e1320f2` |
| 2 | `def` | [ofFilteredProjector](../../../../mathematics/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/declarations/offilteredprojector--26ec1cbdf51e666f55dab2aa.md) | 34 | `declaration-track:26ec1cbdf51e666f55dab2aa99fb10ae7eacd2a5f96f26d31ee0754e2362e148` |
| 3 | `theorem` | [component_equalities](../../../../mathematics/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/declarations/component-equalities--986807b3169ab9fa0bc1fc77.md) | 56 | `result-track:986807b3169ab9fa0bc1fc77c87b2a69e4a4eaa153e1fb06b729d92b4f3192c7` |
| 4 | `theorem` | [left_eq](../../../../mathematics/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/declarations/left-eq--a0dfbad362e9d63f62094f37.md) | 60 | `result-track:a0dfbad362e9d63f62094f3770edf0a671684837faaab3a28f5f4c66d5def6b5` |
| 5 | `theorem` | [right_eq](../../../../mathematics/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/declarations/right-eq--62a76e266bd0d30e6f8611ef.md) | 64 | `result-track:62a76e266bd0d30e6f8611efca67ffc6544860e1942b699cbe49046c1c41c4f3` |
| 6 | `theorem` | [component_equalities_of_filteredProjector](../../../../mathematics/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/declarations/component-equalities-of-filteredprojector--495e5dfa8b4239a98fd0f40e.md) | 71 | `result-track:495e5dfa8b4239a98fd0f40eae283123f49b6a9b81f16a03d99fd95f68c5b28d` |
| 7 | `theorem` | [pureType_of_complementary_projector](../../../../mathematics/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/declarations/puretype-of-complementary-projector--1625d95eddbcec81a6c93ed4.md) | 86 | `result-track:1625d95eddbcec81a6c93ed4512d7765e56a3b0f2f271d1087d0055306097ca7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
