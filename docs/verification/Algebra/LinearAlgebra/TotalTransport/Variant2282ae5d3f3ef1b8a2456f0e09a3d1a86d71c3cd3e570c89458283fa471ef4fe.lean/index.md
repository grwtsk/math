# Verification target: GRWTSK.Algebra.LinearAlgebra.TotalTransport.Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfa89c1d40aeeeed345de3fe5dab28a8520a3f67",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfa89c1d40aeeeed345de3fe5dab28a8520a3f67`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fold.ChainMap` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Heat` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.HodgeDirac` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Kronecker` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftedOperator](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean/declarations/liftedoperator--117e7494f51babcd62364589.md) | 32 | `declaration-track:117e7494f51babcd623645893438f3f68ca2c19bc091e547421719c9ed66bbe6` |
| 2 | `theorem` | [liftedOperator_unitary_left](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean/declarations/liftedoperator-unitary-left--01ef6adec052b9b203720b55.md) | 36 | `result-track:01ef6adec052b9b203720b55f8e3067f1a7bcf495af61ee76365c46e93979efa` |
| 3 | `theorem` | [liftedOperator_unitary_right](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean/declarations/liftedoperator-unitary-right--bde951d90e081ac000c30071.md) | 44 | `result-track:bde951d90e081ac000c300713c76a24e32955c5b220b7abe55cb37157673bf64` |
| 4 | `theorem` | [fold_intertwines_totalOperator](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean/declarations/fold-intertwines-totaloperator--e426cc509794157282cac7ee.md) | 53 | `result-track:e426cc509794157282cac7eee151e96130ca148d9215200797ad7a2088039782` |
| 5 | `theorem` | [fold_intertwines_totalDiffuser](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean/declarations/fold-intertwines-totaldiffuser--70deae11e06bdcc0b1cfbb59.md) | 78 | `result-track:70deae11e06bdcc0b1cfbb593cbffc35ae9d301196d94af6394c37575980b624` |
| 6 | `def` | [vectorProjectionMatrix](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean/declarations/vectorprojectionmatrix--b82152e91927b1ff64d0873d.md) | 104 | `declaration-track:b82152e91927b1ff64d0873d4e2f581be7c4e30f7a31f6ac6053031572263142` |
| 7 | `theorem` | [fold_transports_pointProjection](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean/declarations/fold-transports-pointprojection--e105010e87047ceeacd74ff6.md) | 110 | `result-track:e105010e87047ceeacd74ff6ea3487a470f14440127564434f14d301107bc9bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
