# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ConductorThreeRieszExplicitFormula.Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61ab8c25c28cfb3e3f66fc30a468866745786f13",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61ab8c25c28cfb3e3f66fc30a468866745786f13`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductorThreeRieszMeanOne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean/declarations/conductorthreerieszmeanone--fef16ad51e7974ccb4eb1d1a.md) | 37 | `declaration-track:fef16ad51e7974ccb4eb1d1a54c3aa78025b26c648c4aa38d7cf28cf87257478` |
| 2 | `def` | [conductorThreeRieszDifferenceTail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean/declarations/conductorthreerieszdifferencetail--df205c2069bd9a96f78ec477.md) | 43 | `declaration-track:df205c2069bd9a96f78ec4772bbfac4293aed642e276d1160bc218319d9305b1` |
| 3 | `theorem` | [conductorThreeRieszMeanOne_add_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean/declarations/conductorthreerieszmeanone-add-sub--8f904af9d5de08ed6e860756.md) | 51 | `result-track:8f904af9d5de08ed6e8607566809350f90e70e706626b664737d3bd3d0b850fb` |
| 4 | `def` | [GRHRieszFiniteDifferenceEstimate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean/declarations/grhrieszfinitedifferenceestimate--718f7404bcbc5e14b0fd9d61.md) | 102 | `declaration-track:718f7404bcbc5e14b0fd9d61fab5bf9b22119767ff4bcb2e1ebdbdbbc78ef2e1` |
| 5 | `theorem` | [grh_implies_twistedPsiCriticalBound_of_rieszDifference](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean/declarations/grh-implies-twistedpsicriticalbound-of-rieszdifference--8d628e3a7bd4c0cab4c915c1.md) | 108 | `result-track:8d628e3a7bd4c0cab4c915c10c64bfc409d0e7816d3cb23868dfee6812f39937` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
