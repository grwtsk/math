# Verification target: GRWTSK.LinearAlgebra.FinitePositiveHodgeProjectors

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc65e76f80cf4686e787fac5d0c4afdfe68ff950",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/FinitePositiveHodgeProjectors.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc65e76f80cf4686e787fac5d0c4afdfe68ff950`.

Source path: `GRWTSK/LinearAlgebra/FinitePositiveHodgeProjectors.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/FinitePositiveHodgeProjectors.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat`](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coordinateProjector](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/declarations/coordinateprojector--5561aa943da29be257f9440f.md) | 12 | `declaration-track:5561aa943da29be257f9440f035d341a281c4ec17fc45bf78f59860ff77bc840` |
| 2 | `def` | [coordinateComplement](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/declarations/coordinatecomplement--37db336be2fac2fdde77b8b0.md) | 23 | `declaration-track:37db336be2fac2fdde77b8b0c1baac5c551d93f5e53bcba3df021709f3aff6fb` |
| 3 | `theorem` | [coordinateProjector_apply](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/declarations/coordinateprojector-apply--876b4649b2ff640da36ab0cf.md) | 34 | `result-track:876b4649b2ff640da36ab0cf31a2538c4cc06da79bb3c540eb8df2696b6aff36` |
| 4 | `theorem` | [coordinateComplement_apply](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/declarations/coordinatecomplement-apply--eb544f28279078ecebe5d4c3.md) | 38 | `result-track:eb544f28279078ecebe5d4c3815f85e79ce19a87755840b064a4e1c283406b0c` |
| 5 | `theorem` | [coordinateProjector_idempotent](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/declarations/coordinateprojector-idempotent--02f1eba3fc45e88aaaea0ebc.md) | 42 | `result-track:02f1eba3fc45e88aaaea0ebcfd00d32794da177873a79cfc3d40ead6829266a2` |
| 6 | `theorem` | [coordinateComplement_idempotent](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/declarations/coordinatecomplement-idempotent--21892a626238226bd191cd97.md) | 50 | `result-track:21892a626238226bd191cd97393359e68cca55b2404b8300fb2a420f281a9531` |
| 7 | `theorem` | [coordinateProjector_complement_zero](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/declarations/coordinateprojector-complement-zero--75c8bdc115fb5fc2aeaae9f5.md) | 58 | `result-track:75c8bdc115fb5fc2aeaae9f561823b269a1ce07794a6af3efdd6e90c300dcedf` |
| 8 | `theorem` | [coordinateProjector_add_complement](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/declarations/coordinateprojector-add-complement--5b7e0e2e9aa8ed168ce66d93.md) | 65 | `result-track:5b7e0e2e9aa8ed168ce66d9304e1954efb3affd7e005e566f6329603e7495467` |
| 9 | `theorem` | [coordinateProjector_diagonal_comm](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/declarations/coordinateprojector-diagonal-comm--3477968c72eb6fc163a2ffbf.md) | 72 | `result-track:3477968c72eb6fc163a2ffbf3f2229ed44de00ab92635a4c51e782ff195ec986` |
| 10 | `theorem` | [coordinateComplement_diagonal_comm](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/declarations/coordinatecomplement-diagonal-comm--516ea95e0cc2f8d9879e87fa.md) | 80 | `result-track:516ea95e0cc2f8d9879e87faa1de2db09aa590b4c27551da5fcae2479de73d03` |
| 11 | `def` | [coordinateSplitHodgeProjector](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/declarations/coordinatesplithodgeprojector--bbf07f07a91819033d609f8f.md) | 88 | `declaration-track:bbf07f07a91819033d609f8f325d0ad2ef6f8b916e6aa86a9430a64fb72fa09c` |
| 12 | `theorem` | [coordinateProjector_heat_comm](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/declarations/coordinateprojector-heat-comm--f477f8070f3a7e6c212ecb0a.md) | 98 | `result-track:f477f8070f3a7e6c212ecb0aa19a8380985e51dfacef943a2d7088cece63cd0e` |
| 13 | `theorem` | [energy_coordinate_split](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/declarations/energy-coordinate-split--1d27906be82cf3f3b76a5b03.md) | 108 | `result-track:1d27906be82cf3f3b76a5b035c9a65bd625f6d9161cdd8793d3c832a6c894081` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
