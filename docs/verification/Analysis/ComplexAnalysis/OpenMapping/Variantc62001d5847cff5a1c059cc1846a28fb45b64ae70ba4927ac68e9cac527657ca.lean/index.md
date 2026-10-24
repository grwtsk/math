# Verification target: GRWTSK.Analysis.ComplexAnalysis.OpenMapping.Variantc62001d5847cff5a1c059cc1846a28fb45b64ae70ba4927ac68e9cac527657ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc810b088d2332c2d8bf8c40c886cd03de14428b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variantc62001d5847cff5a1c059cc1846a28fb45b64ae70ba4927ac68e9cac527657ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variantc62001d5847cff5a1c059cc1846a28fb45b64ae70ba4927ac68e9cac527657ca.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variantc62001d5847cff5a1c059cc1846a28fb45b64ae70ba4927ac68e9cac527657ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc810b088d2332c2d8bf8c40c886cd03de14428b`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variantc62001d5847cff5a1c059cc1846a28fb45b64ae70ba4927ac68e9cac527657ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/OpenMapping/Variantc62001d5847cff5a1c059cc1846a28fb45b64ae70ba4927ac68e9cac527657ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.AbsMax` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [DiffContOnCl.ball_subset_image_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variantc62001d5847cff5a1c059cc1846a28fb45b64ae70ba4927ac68e9cac527657ca.lean/declarations/diffcontoncl-ball-subset-image-closedball--43d719ccd081017852289946.md) | 43 | `result-track:43d719ccd081017852289946ad7a5fa0f5efc5207dac08b5d865946e5fe71313` |
| 2 | `theorem` | [AnalyticAt.eventually_constant_or_nhds_le_map_nhds_aux](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variantc62001d5847cff5a1c059cc1846a28fb45b64ae70ba4927ac68e9cac527657ca.lean/declarations/analyticat-eventually-constant-or-nhds-le-map-nhds-aux--ff78c18f4cebe01b66db72f3.md) | 75 | `result-track:ff78c18f4cebe01b66db72f304eabfb998c16f553ce2d55e7bc5e1571846a5ba` |
| 3 | `theorem` | [AnalyticAt.eventually_constant_or_nhds_le_map_nhds](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variantc62001d5847cff5a1c059cc1846a28fb45b64ae70ba4927ac68e9cac527657ca.lean/declarations/analyticat-eventually-constant-or-nhds-le-map-nhds--c03fdb42f5013469d0c9a4cd.md) | 110 | `result-track:c03fdb42f5013469d0c9a4cda1268630b16a8517ada88d94f9d8efd1eba9ef4a` |
| 4 | `theorem` | [AnalyticOnNhd.is_constant_or_isOpen](../../../../../mathematics/Analysis/ComplexAnalysis/OpenMapping/Variantc62001d5847cff5a1c059cc1846a28fb45b64ae70ba4927ac68e9cac527657ca.lean/declarations/analyticonnhd-is-constant-or-isopen--0da5dd25a9330ef9e8689f73.md) | 158 | `result-track:0da5dd25a9330ef9e8689f739fc52ef58ac05c0a619574ada81f5d3881594106` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
