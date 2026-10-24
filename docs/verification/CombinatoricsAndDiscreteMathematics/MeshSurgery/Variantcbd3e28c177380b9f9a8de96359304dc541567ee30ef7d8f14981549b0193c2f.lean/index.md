# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MeshSurgery.Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23b523e53ee619af349c2ccff7975a722e9eebea",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23b523e53ee619af349c2ccff7975a722e9eebea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.PrismMesh` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Terrain.Surgery` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vertexInMeshLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean/declarations/vertexinmeshlocus--a51aa24ab9afa6c9b78d9b93.md) | 29 | `declaration-track:a51aa24ab9afa6c9b78d9b9360a7c65ece26137322432918ba08e8c0eb08d3b2` |
| 2 | `def` | [cellTouchesMeshLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean/declarations/celltouchesmeshlocus--215ca6846b6dbc1e01423469.md) | 42 | `declaration-track:215ca6846b6dbc1e014234693f69ecab315ae8d0009c38f83fcc0f5dd82ba9e0` |
| 3 | `structure` | [MeshSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean/declarations/meshsurgery--cf668af62dae2c9110efa25f.md) | 59 | `declaration-track:cf668af62dae2c9110efa25fa15a3b4e060647d9515ed3fb886b8fe25c72bf63` |
| 4 | `theorem` | [mem_removedCells_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean/declarations/mem-removedcells-iff--cccc1154e3a09912fd4c60d7.md) | 122 | `result-track:cccc1154e3a09912fd4c60d76fb6899cc4ec2b3ac70dc98d99ce7b26a14cb58b` |
| 5 | `theorem` | [mem_insertedCells_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean/declarations/mem-insertedcells-iff--d234c6a51f6a16e587d11ca1.md) | 131 | `result-track:d234c6a51f6a16e587d11ca1999a7d9c4530bc1ffcf10810f31c515b0920875d` |
| 6 | `theorem` | [after_covers_carrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean/declarations/after-covers-carrier--d755df99d64be4e7aea527de.md) | 140 | `result-track:d755df99d64be4e7aea527de8d6b5d0b29aa97218b9e8a045958806453b939e5` |
| 7 | `structure` | [ReversibleMeshSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean/declarations/reversiblemeshsurgery--40ddc4cbe0225da5cd8aa4b0.md) | 148 | `declaration-track:40ddc4cbe0225da5cd8aa4b025ad417d2540bbffa7fd03b4a63e9a87c27a3374` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
