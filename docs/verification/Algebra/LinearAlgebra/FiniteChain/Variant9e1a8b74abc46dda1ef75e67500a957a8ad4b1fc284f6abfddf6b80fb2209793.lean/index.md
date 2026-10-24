# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteChain.Variant9e1a8b74abc46dda1ef75e67500a957a8ad4b1fc284f6abfddf6b80fb2209793

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8013473400ad9e0d1e641781aa5834c347b909a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteChain/Variant9e1a8b74abc46dda1ef75e67500a957a8ad4b1fc284f6abfddf6b80fb2209793.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteChain/Variant9e1a8b74abc46dda1ef75e67500a957a8ad4b1fc284f6abfddf6b80fb2209793.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteChain/Variant9e1a8b74abc46dda1ef75e67500a957a8ad4b1fc284f6abfddf6b80fb2209793.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8013473400ad9e0d1e641781aa5834c347b909a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteChain/Variant9e1a8b74abc46dda1ef75e67500a957a8ad4b1fc284f6abfddf6b80fb2209793.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteChain/Variant9e1a8b74abc46dda1ef75e67500a957a8ad4b1fc284f6abfddf6b80fb2209793.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.Event` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiniteFree](../../../../../mathematics/Algebra/LinearAlgebra/FiniteChain/Variant9e1a8b74abc46dda1ef75e67500a957a8ad4b1fc284f6abfddf6b80fb2209793.lean/declarations/finitefree--8b36a43e70222d5c706a202f.md) | 26 | `declaration-track:8b36a43e70222d5c706a202f95b7f3fe3db2daa12f531b73c4c9984847ae15ef` |
| 2 | `structure` | [FiniteIntegralChain](../../../../../mathematics/Algebra/LinearAlgebra/FiniteChain/Variant9e1a8b74abc46dda1ef75e67500a957a8ad4b1fc284f6abfddf6b80fb2209793.lean/declarations/finiteintegralchain--43f3d2748a06486ae42f5629.md) | 29 | `declaration-track:43f3d2748a06486ae42f56294dbb345523f82b4b4651d7c7408a188d189baa9b` |
| 3 | `def` | [boundaryMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteChain/Variant9e1a8b74abc46dda1ef75e67500a957a8ad4b1fc284f6abfddf6b80fb2209793.lean/declarations/boundarymap--0bffdec06e10d4dcaf995787.md) | 43 | `declaration-track:0bffdec06e10d4dcaf995787db708758b99d4bfc55d420e5426edce35e1e6f0e` |
| 4 | `theorem` | [boundaryMap_squared](../../../../../mathematics/Algebra/LinearAlgebra/FiniteChain/Variant9e1a8b74abc46dda1ef75e67500a957a8ad4b1fc284f6abfddf6b80fb2209793.lean/declarations/boundarymap-squared--f586b4fde00be88c1d5618f5.md) | 50 | `result-track:f586b4fde00be88c1d5618f5e25f110d0e0a1b7ca1765c40c8ad9b01166a3d03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
