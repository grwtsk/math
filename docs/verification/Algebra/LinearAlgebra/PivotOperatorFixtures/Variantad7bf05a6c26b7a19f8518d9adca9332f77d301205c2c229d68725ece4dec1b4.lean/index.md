# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotOperatorFixtures.Variantad7bf05a6c26b7a19f8518d9adca9332f77d301205c2c229d68725ece4dec1b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54a5fa9a08a0db1c0db6a156f29e692742143ea3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotOperatorFixtures/Variantad7bf05a6c26b7a19f8518d9adca9332f77d301205c2c229d68725ece4dec1b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotOperatorFixtures/Variantad7bf05a6c26b7a19f8518d9adca9332f77d301205c2c229d68725ece4dec1b4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotOperatorFixtures/Variantad7bf05a6c26b7a19f8518d9adca9332f77d301205c2c229d68725ece4dec1b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54a5fa9a08a0db1c0db6a156f29e692742143ea3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotOperatorFixtures/Variantad7bf05a6c26b7a19f8518d9adca9332f77d301205c2c229d68725ece4dec1b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotOperatorFixtures/Variantad7bf05a6c26b7a19f8518d9adca9332f77d301205c2c229d68725ece4dec1b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotOperatorBounds` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PivotTransitionFixtures` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PivotControlledTopology` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [intrinsicControlledPivot_normalization_bound](../../../../../mathematics/Algebra/LinearAlgebra/PivotOperatorFixtures/Variantad7bf05a6c26b7a19f8518d9adca9332f77d301205c2c229d68725ece4dec1b4.lean/declarations/intrinsiccontrolledpivot-normalization-bound--83dbc7c49d714f66d2b90fe5.md) | 27 | `result-track:83dbc7c49d714f66d2b90fe5778201431ced53d1ccc9496da545edddebcdbe56` |
| 2 | `theorem` | [intrinsicControlledPivot_transition_bounds](../../../../../mathematics/Algebra/LinearAlgebra/PivotOperatorFixtures/Variantad7bf05a6c26b7a19f8518d9adca9332f77d301205c2c229d68725ece4dec1b4.lean/declarations/intrinsiccontrolledpivot-transition-bounds--076388bcfc31e68980418763.md) | 35 | `result-track:076388bcfc31e689804187634167e0c0c257929c082c9a38b6e7cc0f80461b41` |
| 3 | `theorem` | [intrinsicPlane_controlled_normalization_budget](../../../../../mathematics/Algebra/LinearAlgebra/PivotOperatorFixtures/Variantad7bf05a6c26b7a19f8518d9adca9332f77d301205c2c229d68725ece4dec1b4.lean/declarations/intrinsicplane-controlled-normalization-budget--5f47ed9ea4c3f7744b11027d.md) | 46 | `result-track:5f47ed9ea4c3f7744b11027dc39008291ecd74d00a6dcaae5f966ed0740c96dc` |
| 4 | `theorem` | [line_atlas_controlled_normalization](../../../../../mathematics/Algebra/LinearAlgebra/PivotOperatorFixtures/Variantad7bf05a6c26b7a19f8518d9adca9332f77d301205c2c229d68725ece4dec1b4.lean/declarations/line-atlas-controlled-normalization--8eaca89c6d096ff0de9f4fda.md) | 60 | `result-track:8eaca89c6d096ff0de9f4fdaa624f15a9bc6bfa2ccc96f5aaefd5f6fe1b08e3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
