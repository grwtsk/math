# Verification target: GRWTSK.Algebra.GroupTheory.ToDirectSum.Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9189c17211b682e67fbb418d274a3f25587949d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9189c17211b682e67fbb418d274a3f25587949d`.

Source path: `GRWTSK/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddMonoidAlgebra.toDirectSum](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/addmonoidalgebra-todirectsum--681656709cad255caafb3394.md) | 78 | `declaration-track:681656709cad255caafb3394ce9bc9f0447188542fc99283bf4fbc1e88e3623c` |
| 2 | `theorem` | [AddMonoidAlgebra.toDirectSum_single](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/addmonoidalgebra-todirectsum-single--5a86693d5d62ad5c7997e5b4.md) | 87 | `result-track:5a86693d5d62ad5c7997e5b40a60eb4c089fcf99f731c359d95d0098d3cc7572` |
| 3 | `def` | [DirectSum.toAddMonoidAlgebra](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/directsum-toaddmonoidalgebra--37b0bcc459900c9d2319dacc.md) | 95 | `declaration-track:37b0bcc459900c9d2319daccc3766ec1b4d5b775ba81e6bfef140d4e532aff55` |
| 4 | `theorem` | [DirectSum.toAddMonoidAlgebra_of](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/directsum-toaddmonoidalgebra-of--26b29c82079f41cf6b2b4d88.md) | 100 | `result-track:26b29c82079f41cf6b2b4d88d015ac95e1256f25ce5345d9a191796ca6efff85` |
| 5 | `theorem` | [AddMonoidAlgebra.toDirectSum_toAddMonoidAlgebra](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/addmonoidalgebra-todirectsum-toaddmonoidalgebra--d7dc11db67d87059c8e84110.md) | 106 | `result-track:d7dc11db67d87059c8e84110a8663ac97fcbde9ebab3fb02ae54d802d81838f4` |
| 6 | `theorem` | [DirectSum.toAddMonoidAlgebra_toDirectSum](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/directsum-toaddmonoidalgebra-todirectsum--a60ba50a144303e2e8c67cbd.md) | 112 | `result-track:a60ba50a144303e2e8c67cbd34a930b828bf069d05743435feed20fa74790bb4` |
| 7 | `theorem` | [toDirectSum_zero](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/todirectsum-zero--f3744e867e3d2bf1ce581afd.md) | 129 | `result-track:f3744e867e3d2bf1ce581afdf4384ee3907aab5b6574b4dc961788327a4fc6e3` |
| 8 | `theorem` | [toDirectSum_add](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/todirectsum-add--e336e1c5cdf76685a06cf708.md) | 134 | `result-track:e336e1c5cdf76685a06cf70809bcd41591e6ac3afc30d93c7552923f8e41bcde` |
| 9 | `theorem` | [toDirectSum_mul](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/todirectsum-mul--7567f1108f12bdba3c54ddbb.md) | 140 | `result-track:7567f1108f12bdba3c54ddbba4131e32dfeb8c37c8b7a711805655d9f33b6fff` |
| 10 | `theorem` | [toAddMonoidAlgebra_zero](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/toaddmonoidalgebra-zero--7c061ecc47afe5b085c785d9.md) | 171 | `result-track:7c061ecc47afe5b085c785d96450a379a2d33277797e73f6ed8ab845980e68c8` |
| 11 | `theorem` | [toAddMonoidAlgebra_add](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/toaddmonoidalgebra-add--8b9493fa5c4df37b34f2dd35.md) | 177 | `result-track:8b9493fa5c4df37b34f2dd35e60dfd7eb1a9f1dc917ff2fe9cf81ce9c020c69d` |
| 12 | `theorem` | [toAddMonoidAlgebra_mul](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/toaddmonoidalgebra-mul--c7aa5899fe21942f6cc946b1.md) | 183 | `result-track:c7aa5899fe21942f6cc946b18766bf41722d613eceb3aa7b1907e66d4ace5ec7` |
| 13 | `def` | [addMonoidAlgebraEquivDirectSum](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/addmonoidalgebraequivdirectsum--d0f2e94c49c3d298495135aa.md) | 204 | `declaration-track:d0f2e94c49c3d298495135aa2aaa4d2edc19a7f62882ec2d717b40c640625e52` |
| 14 | `def` | [addMonoidAlgebraAddEquivDirectSum](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/addmonoidalgebraaddequivdirectsum--91d48d7d907939e9bf191675.md) | 213 | `declaration-track:91d48d7d907939e9bf19167505ab5da06e5b442720820548725628d558aa5e17` |
| 15 | `def` | [addMonoidAlgebraRingEquivDirectSum](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/addmonoidalgebraringequivdirectsum--669e6b0f72168184966056e1.md) | 223 | `declaration-track:669e6b0f72168184966056e10c572cfff81e9d49921dc7607626b49983ea81b1` |
| 16 | `def` | [addMonoidAlgebraAlgEquivDirectSum](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant7ba5bdeb30ccbdbafdb15c687efa3c1bf710bc2aecd7a1fabc667085f40172b1.lean/declarations/addmonoidalgebraalgequivdirectsum--16e3d411337b888096b6be26.md) | 233 | `declaration-track:16e3d411337b888096b6be26deeba4e44300ac395b22615871295902c87a0b11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
