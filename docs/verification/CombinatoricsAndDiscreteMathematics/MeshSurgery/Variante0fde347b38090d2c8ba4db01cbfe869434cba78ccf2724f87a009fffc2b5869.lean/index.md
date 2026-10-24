# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MeshSurgery.Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3811f170cfbd3ebdd1b1a5fd3e75d7e60c0d56ff",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3811f170cfbd3ebdd1b1a5fd3e75d7e60c0d56ff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.PrismMesh` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Terrain.Surgery` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vertexInMeshLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean/declarations/vertexinmeshlocus--9da0522500c7f6c21fbf3adb.md) | 21 | `declaration-track:9da0522500c7f6c21fbf3adb04629e9837b57e2ca108f32883285500c6b15d6c` |
| 2 | `def` | [cellTouchesMeshLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean/declarations/celltouchesmeshlocus--90cf7a7221b8b44fe831fa8d.md) | 34 | `declaration-track:90cf7a7221b8b44fe831fa8d91322547f5a718dc1fe4661ddb4feb03ef5509aa` |
| 3 | `structure` | [MeshSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean/declarations/meshsurgery--d2aec80fa44f141c7e840f5c.md) | 51 | `declaration-track:d2aec80fa44f141c7e840f5c27abc3d6a850ba8a3b9f7510707546f98e878d7b` |
| 4 | `theorem` | [mem_removedCells_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean/declarations/mem-removedcells-iff--bd90d56d14dbc351e62d3801.md) | 114 | `result-track:bd90d56d14dbc351e62d3801f05cb6a1fd0d045f3eba904f12cb85954945dd18` |
| 5 | `theorem` | [mem_insertedCells_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean/declarations/mem-insertedcells-iff--13f5daa46e3c75fcd2a72821.md) | 123 | `result-track:13f5daa46e3c75fcd2a72821283cc92ce6e9466e7660001fedb3a879de4efaca` |
| 6 | `theorem` | [after_covers_carrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean/declarations/after-covers-carrier--869e350818e108d2e0d41f03.md) | 132 | `result-track:869e350818e108d2e0d41f034a3a9a81c7a3cdac155d2711bea8857259bf053a` |
| 7 | `structure` | [ReversibleMeshSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean/declarations/reversiblemeshsurgery--f9e323c40a7bcb83e2d54e7b.md) | 140 | `declaration-track:f9e323c40a7bcb83e2d54e7b1645a88f0d7612a5a2c66a4674fc387851121a74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
