# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ShapeChangingGrids.Variant8abed34926fdd994.ShellStateRoundTrips

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8dff9b513b848a1d098024e3791426c492665a7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/ShellStateRoundTrips.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/ShellStateRoundTrips.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/ShellStateRoundTrips.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8dff9b513b848a1d098024e3791426c492665a7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/ShellStateRoundTrips.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/ShellStateRoundTrips.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Catalan.Tree` — import line 19; external provider; requires a separately pinned dependency.
- `Folder.Expansion.Shell` — import line 20; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Expansion` — import line 21; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Fiber` — import line 22; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 23; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ShapeChangingGrids.Variant8abed34926fdd994.LevelShapes`](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/LevelShapes.lean/index.md) — import line 25; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ShapeChangingState](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/ShellStateRoundTrips.lean/declarations/shapechangingstate--4d5289ac48b8653c345100c3.md) | 47 | `declaration-track:4d5289ac48b8653c345100c39cfb82a93852059940b63dbc0ba38fea54178629` |
| 2 | `structure` | [ShapeStepPayload](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/ShellStateRoundTrips.lean/declarations/shapesteppayload--222b3a4bc5172567b067ad3c.md) | 54 | `declaration-track:222b3a4bc5172567b067ad3c1650b8899d9ef2eccb3ee262c3f77b72068661ed` |
| 3 | `def` | [expandWithShell](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/ShellStateRoundTrips.lean/declarations/expandwithshell--8cecf6ac3d6370caa72ed813.md) | 61 | `declaration-track:8cecf6ac3d6370caa72ed81367919ee31d203cefe9a73a878dab1cdd25baff81` |
| 4 | `def` | [contractOneStep](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/ShellStateRoundTrips.lean/declarations/contractonestep--790978db1f7c0bc637141e8d.md) | 74 | `declaration-track:790978db1f7c0bc637141e8dd388edefe847584b243e9a8ef40a170154b54641` |
| 5 | `theorem` | [contract_expandWithShell_center](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/ShellStateRoundTrips.lean/declarations/contract-expandwithshell-center--8eb3d8fb00015c7086856e65.md) | 85 | `result-track:8eb3d8fb00015c7086856e65a0bd04e0b5a997a13e552eac2c310fb721e56fa5` |
| 6 | `theorem` | [contract_expandWithShell_shell](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/ShellStateRoundTrips.lean/declarations/contract-expandwithshell-shell--8c8eef5840f9150832c09669.md) | 103 | `result-track:8c8eef5840f9150832c09669be540c86ba414bffa38269dc6af4e3cd8c442608` |
| 7 | `theorem` | [expand_contractOneStep](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/ShellStateRoundTrips.lean/declarations/expand-contractonestep--ceceb4704222c3a613f9adbc.md) | 120 | `result-track:ceceb4704222c3a613f9adbcf7d2d4aa0eb95e06036743deb9eba979e472c8b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
