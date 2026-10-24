# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCoefficientRecovery

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dcc98cb1fe6c122c58e4ff2efa5b1743a77549d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dcc98cb1fe6c122c58e4ff2efa5b1743a77549d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerArithmeticPackingCoordinate`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExplicitFormulaPrimePowerCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/declarations/explicitformulaprimepowercoefficient--90a53c2142f97944e3a7242d.md) | 34 | `declaration-track:90a53c2142f97944e3a7242d45af0821b2dc2855b35a66330d2c74a93d87faed` |
| 2 | `theorem` | [mangoldtScale_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/declarations/mangoldtscale-pos--70ad4a5f101e84877c4ae264.md) | 43 | `result-track:70ad4a5f101e84877c4ae2648b21c95f503c90f1f3865c06754e0d5b004e72d7` |
| 3 | `theorem` | [mangoldtScale_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/declarations/mangoldtscale-ne-zero--d91d09d330dcc63fa94ef957.md) | 49 | `result-track:d91d09d330dcc63fa94ef957eb4a472149766f28ad556a4a5901c103a7d0a14f` |
| 4 | `def` | [toWeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/declarations/toweight--7f1c0a48d14422a84ccbdb22.md) | 58 | `declaration-track:7f1c0a48d14422a84ccbdb22ba8806f1be1f0b7ecd961c6b0e4ec21a618c1376` |
| 5 | `theorem` | [packingPoint_y_eq_coefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/declarations/packingpoint-y-eq-coefficient--fdd6a48824cbdbf77b03262c.md) | 69 | `result-track:fdd6a48824cbdbf77b03262cdc2e5e8692505e613d3cf0352963cb3d1de5e897` |
| 6 | `theorem` | [packingPoint_x_eq_logScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/declarations/packingpoint-x-eq-logscale--4f9febcff690021c95efb8f7.md) | 82 | `result-track:4f9febcff690021c95efb8f7461279b96e2ed961c3fd22e7d264645e25181bc5` |
| 7 | `theorem` | [testWeight_unique](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/declarations/testweight-unique--baee7b8c34ed964ce08416fc.md) | 90 | `result-track:baee7b8c34ed964ce08416fc692f3e512f00a01f05637ddb5192eeba740f0ee9` |
| 8 | `structure` | [PrimePowerCoefficientRecurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/declarations/primepowercoefficientrecurrence--0b71bc09bea5fd5afdd4c68a.md) | 102 | `declaration-track:0b71bc09bea5fd5afdd4c68ad084be72bdcaac17c4975c2024a3b97dae4d81c7` |
| 9 | `def` | [toCoordinateRecurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/declarations/tocoordinaterecurrence--b1101be75277d4e6a758c2c5.md) | 124 | `declaration-track:b1101be75277d4e6a758c2c5004094de4ca34b99e2918c2024955d50ccb19abb` |
| 10 | `def` | [toPackingProgram](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/declarations/topackingprogram--30c9bf881eb65a934c57c329.md) | 140 | `declaration-track:30c9bf881eb65a934c57c32951b505cb43230d2189acee156622f13e7aa92b80` |
| 11 | `theorem` | [nextPoint_y_eq_coefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/declarations/nextpoint-y-eq-coefficient--9016ccfc12ae0cd83de2b71c.md) | 151 | `result-track:9016ccfc12ae0cd83de2b71ce9f457baf5b5c5c74b4a4e4a807ed9248c3c5321` |
| 12 | `theorem` | [nextPoint_x_eq_logScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/declarations/nextpoint-x-eq-logscale--14e9c45a01b1c228d2b31b64.md) | 167 | `result-track:14e9c45a01b1c228d2b31b64291f09cec569df3270f8c5c4a958b212bc66ac8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
