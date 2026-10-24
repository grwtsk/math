# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixRing.Variant0485e8268d2b251b6c61c0ceca90c4d4c0cc87e21f956b40b879f795a0be5b8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e3d6f369e3c0eb109dd151e96ede55e8f7476c3",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixRing/Variant0485e8268d2b251b6c61c0ceca90c4d4c0cc87e21f956b40b879f795a0be5b8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variant0485e8268d2b251b6c61c0ceca90c4d4c0cc87e21f956b40b879f795a0be5b8e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variant0485e8268d2b251b6c61c0ceca90c4d4c0cc87e21f956b40b879f795a0be5b8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e3d6f369e3c0eb109dd151e96ede55e8f7476c3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixRing/Variant0485e8268d2b251b6c61c0ceca90c4d4c0cc87e21f956b40b879f795a0be5b8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixRing/Variant0485e8268d2b251b6c61c0ceca90c4d4c0cc87e21f956b40b879f795a0be5b8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.RingState` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FixedMatrixRingState](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variant0485e8268d2b251b6c61c0ceca90c4d4c0cc87e21f956b40b879f795a0be5b8e.lean/declarations/fixedmatrixringstate--540a65d67b386636358593f5.md) | 22 | `declaration-track:540a65d67b386636358593f56cbc15aaf7d648a5f9f38e439cd652a1c459c01f` |
| 2 | `def` | [selectedRowsObservation](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variant0485e8268d2b251b6c61c0ceca90c4d4c0cc87e21f956b40b879f795a0be5b8e.lean/declarations/selectedrowsobservation--ed2a13ced0538dbf5a18d19e.md) | 27 | `declaration-track:ed2a13ced0538dbf5a18d19eebc63a4ea19d07500748d6dc02d397f5d67a18da` |
| 3 | `def` | [selectedColumnsObservation](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variant0485e8268d2b251b6c61c0ceca90c4d4c0cc87e21f956b40b879f795a0be5b8e.lean/declarations/selectedcolumnsobservation--e82f2f747a592f97f2d82aa5.md) | 34 | `declaration-track:e82f2f747a592f97f2d82aa5bead55df6c46ce9a879e25a7f6131dda60193ba7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
