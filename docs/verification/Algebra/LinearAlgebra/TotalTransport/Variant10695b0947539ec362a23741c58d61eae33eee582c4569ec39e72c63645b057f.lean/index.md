# Verification target: GRWTSK.Algebra.LinearAlgebra.TotalTransport.Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "898b01de39e7a98c4846df9e17e030deec17dc39",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `898b01de39e7a98c4846df9e17e030deec17dc39`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fold.ChainMap` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Heat` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.HodgeDirac` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Kronecker` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftedOperator](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean/declarations/liftedoperator--0bd01940284a6f54a5f2bcab.md) | 40 | `declaration-track:0bd01940284a6f54a5f2bcab70ae3c1b1db4d89af7043249065c8da92b5ce29b` |
| 2 | `theorem` | [liftedOperator_unitary_left](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean/declarations/liftedoperator-unitary-left--41174fca2591b1de0800e6a2.md) | 44 | `result-track:41174fca2591b1de0800e6a26838dc524773b17415494adf25774cdd405c6bbd` |
| 3 | `theorem` | [liftedOperator_unitary_right](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean/declarations/liftedoperator-unitary-right--a1b2096a8a3c641d5f964031.md) | 52 | `result-track:a1b2096a8a3c641d5f964031cf573cd2fada6f509cec9a7bcd286bcf851bcc73` |
| 4 | `theorem` | [fold_intertwines_totalOperator](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean/declarations/fold-intertwines-totaloperator--d919c39bdc2559915e9dc3d1.md) | 61 | `result-track:d919c39bdc2559915e9dc3d17589fb709fb82343f23b9a5ab8edf84bc4e7be82` |
| 5 | `theorem` | [fold_intertwines_totalDiffuser](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean/declarations/fold-intertwines-totaldiffuser--14282b42e31a2e1b668153c0.md) | 86 | `result-track:14282b42e31a2e1b668153c0d1653ea7a06c87a96aa4f215e377ec7ebb557b51` |
| 6 | `def` | [vectorProjectionMatrix](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean/declarations/vectorprojectionmatrix--4d6f3f3d9707e540541f30e8.md) | 112 | `declaration-track:4d6f3f3d9707e540541f30e87dee5dca18089bf723fa1b34f357531de35108ad` |
| 7 | `theorem` | [fold_transports_pointProjection](../../../../../mathematics/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean/declarations/fold-transports-pointprojection--d773a0b677433518d1e4ed68.md) | 118 | `result-track:d773a0b677433518d1e4ed68e77093e3219b689ed7848376fbb735ebce9ec881` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
