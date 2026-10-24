# Verification target: GRWTSK.Algebra.LinearAlgebra.BlockSchur.Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b30a715ac7636f228704748a0099344ad77667e9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b30a715ac7636f228704748a0099344ad77667e9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ScalarSchur` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [provenanceInclusion](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/provenanceinclusion--011bbb8b748cba6cea52a2e7.md) | 37 | `declaration-track:011bbb8b748cba6cea52a2e7eb4b6415165c6236f34a2d4daa48d9ed8fc36899` |
| 2 | `def` | [autonomousInclusion](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/autonomousinclusion--0cde775429c24b493f039656.md) | 45 | `declaration-track:0cde775429c24b493f039656c7e7e5bb67849d0b3b4ec6a5d57abc3250c2ad0f` |
| 3 | `theorem` | [provenanceInclusion_apply](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/provenanceinclusion-apply--b39b58c047f7715050ffd8e3.md) | 53 | `result-track:b39b58c047f7715050ffd8e3e61a565503f5af3b87dc1c82c924834140c3b399` |
| 4 | `theorem` | [autonomousInclusion_apply](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/autonomousinclusion-apply--5bff3622eef829a6b6f442ef.md) | 58 | `result-track:5bff3622eef829a6b6f442effb0dbee253e4987b7639dbfc8acc12696ffd8f04` |
| 5 | `structure` | [BlockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/blockschursolver--614ca52a147e5c73b5e7a907.md) | 66 | `declaration-track:614ca52a147e5c73b5e7a907a3965a7aa5e6f5163f51e1171424b42a3f4f4a74` |
| 6 | `def` | [project](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/project--b6f1edda18a17b1b12486f35.md) | 78 | `declaration-track:b6f1edda18a17b1b12486f35975d11d102d018ca49afd01c02b070bcac3339a2` |
| 7 | `theorem` | [project_apply](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/project-apply--51e1b07dfbb1d8d2d3942513.md) | 86 | `result-track:51e1b07dfbb1d8d2d394251387e90a45579f8305a561449199b39fd64d710036` |
| 8 | `theorem` | [project_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/project-idempotent--d89ae9089b96468fdba4c340.md) | 91 | `result-track:d89ae9089b96468fdba4c3409a772813b378167544be88e74ddbed280128c5ee` |
| 9 | `theorem` | [project_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/project-orthogonal--b1c0010b2a753bb3c58453a8.md) | 96 | `result-track:b1c0010b2a753bb3c58453a865dd379ff5bf9649682e43ba974ff6057cea70ad` |
| 10 | `def` | [projector](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/projector--8ffeb3cc1aa184c17e104140.md) | 102 | `declaration-track:8ffeb3cc1aa184c17e1041401cf0e03ba595633ac2a7908d0ca7dd96ea9dc0d9` |
| 11 | `theorem` | [project_autonomous](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/project-autonomous--139dc6994ab0f819fd049a6a.md) | 108 | `result-track:139dc6994ab0f819fd049a6af1450604b4115cb3544634735f06c7d9de127412` |
| 12 | `theorem` | [residual_autonomous](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/residual-autonomous--cea3748a341f1b6521d5fae0.md) | 113 | `result-track:cea3748a341f1b6521d5fae0470f8be3f40bdaa59b289f457033b524da6bf7c3` |
| 13 | `def` | [schurForm](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/schurform--3ad67a4f48637a3f3f6626ee.md) | 119 | `declaration-track:3ad67a4f48637a3f3f6626ee8b6dd417fbd1b08ec88633be0c35250789df4cbd` |
| 14 | `theorem` | [schurForm_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/schurform-nonnegative--c733bc9e6007e8a3ef2d6acc.md) | 123 | `result-track:c733bc9e6007e8a3ef2d6accb8a611ae81d227a92b17b4cc91441304e46da675` |
| 15 | `theorem` | [schurForm_eq_sub](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/schurform-eq-sub--1d43497b22c53d04db50611d.md) | 129 | `result-track:1d43497b22c53d04db50611df446640c8686e65cebe2e25b601f8902cb806eba` |
| 16 | `theorem` | [schur_diagonal_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/schur-diagonal-nonnegative--384906a748f4e8ee20ebdcaa.md) | 142 | `result-track:384906a748f4e8ee20ebdcaa3ee57137773be938a572a3c79378dbb62d59685b` |
| 17 | `theorem` | [autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant73dfb9cbaebb9c49be9c5226a29407257878ba45a06f1f0f9ff3d40b2854ecd8.lean/declarations/autonomous-energy-decomposition--8d6d341aad81ec314d76c265.md) | 152 | `result-track:8d6d341aad81ec314d76c265e52d38092e7c22762bea75d1ebb53fd4c1af063a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
