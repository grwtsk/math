# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionJetTower

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83b3401f9b8b8b7a77572a768ca1acf99db4387a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83b3401f9b8b8b7a77572a768ca1acf99db4387a`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassOriginJet`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassOriginJet.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionSecondJet`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionSecondJet.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/declarations/instance--704c6eb43c76102824820366.md) | 23 | `declaration-track:704c6eb43c761028248203669df46b33730390dc872a6b99bc4cd3c813d09b71` |
| 2 | `def` | [selectedEquation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/declarations/selectedequation--c344af734d0c08e99e0d197e.md) | 26 | `declaration-track:c344af734d0c08e99e0d197e7bcf795b7a9361b98caaf214f58ca3d8097aa0e9` |
| 3 | `theorem` | [selectedEquation_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/declarations/selectedequation-eq--d43c37c46cc998ce54f08190.md) | 34 | `result-track:d43c37c46cc998ce54f08190898ed78f4334294618af5a90f85330798981440c` |
| 4 | `abbrev` | [SelectedJet](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/declarations/selectedjet--b5fe9d434ec2fccc397bcdf5.md) | 44 | `declaration-track:b5fe9d434ec2fccc397bcdf501e99913461128aa7f6753f0f1cd97c3b835c84d` |
| 5 | `def` | [selectedJetEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/declarations/selectedjetequiv--bbfe7028ed0de9906e04f53c.md) | 49 | `declaration-track:bbfe7028ed0de9906e04f53c907b30dec5b1725d341dd2ab30c52ff16d66b8b5` |
| 6 | `theorem` | [selected_finrank](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/declarations/selected-finrank--36e677224da2183d7228e0e7.md) | 57 | `result-track:36e677224da2183d7228e0e7ab921fe90d406b1c0a702209fc23c578f7002a85` |
| 7 | `def` | [rationalJetEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/declarations/rationaljetequiv--07ec23d88a93fc9e18600ec6.md) | 66 | `declaration-track:07ec23d88a93fc9e18600ec6a21d7d86104ca5abecd06d28a04b407635cd3b48` |
| 8 | `def` | [localJetEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/declarations/localjetequiv--d01d3fdf2352996e9893c3a1.md) | 74 | `declaration-track:d01d3fdf2352996e9893c3a1bd13ab12da138c4ee43c5ad3a09654f15210cb1d` |
| 9 | `theorem` | [local_guard_iff_second_lift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/declarations/local-guard-iff-second-lift--13353b2f7d98c87549e4bf24.md) | 85 | `result-track:13353b2f7d98c87549e4bf2493ded9be073e95dc354c098d2493f6ba4ef60245` |
| 10 | `theorem` | [local_guard_iff_gap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/declarations/local-guard-iff-gap--b60429b29959c4f49841f683.md) | 92 | `result-track:b60429b29959c4f49841f6834673042ebf75a7fbbdbbf1503d13ae96900ee4c4` |
| 11 | `def` | [rationalCubicResidual](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/declarations/rationalcubicresidual--918ed41e4e9292aaa983f24d.md) | 98 | `declaration-track:918ed41e4e9292aaa983f24d6b8ad609950cc69bc1c572f2ff01992387a9b242` |
| 12 | `theorem` | [rational_cubic_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/declarations/rational-cubic-iff--bc943acc0ad656d326372f46.md) | 101 | `result-track:bc943acc0ad656d326372f46b1d65da7c4011acdaf9776f7052336ae0bc5d2d5` |
| 13 | `theorem` | [cubic_coefficient_clearing](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/declarations/cubic-coefficient-clearing--9712da52693b8738eadd9965.md) | 109 | `result-track:9712da52693b8738eadd9965b92a1f296de024acf4252aae1d034b46283eb9ad` |
| 14 | `theorem` | [singular_direction_still_obstructed](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionJetTower.lean/declarations/singular-direction-still-obstructed--c5adf9ef1e49ca9d0fc33b1c.md) | 116 | `result-track:c5adf9ef1e49ca9d0fc33b1c49f4e43831b03c84b6acfbe4841376f1df1a9573` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
