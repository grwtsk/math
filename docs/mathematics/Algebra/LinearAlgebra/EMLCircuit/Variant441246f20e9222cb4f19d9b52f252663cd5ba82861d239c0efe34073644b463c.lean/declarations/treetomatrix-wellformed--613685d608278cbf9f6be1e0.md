# treeToMatrix_wellFormed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8602a7a5f970e3aa36ab70b8570ea2ba96f3b30d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d580114a-773a-5fc5-3d7b-7a38521bd388",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36f21492-3b6b-689a-351b-08dadfa01e97",
  "kind": "theorem",
  "lexical_name": "treeToMatrix_wellFormed",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "treetomatrix-wellformed--613685d608278cbf9f6be1e0",
  "source": {
    "blob": "8602a7a5f970e3aa36ab70b8570ea2ba96f3b30d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 151,
    "path": "GRWTSK/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:613685d608278cbf9f6be1e032cbf9b05e8b3a19122106eb0f1b692103da0de4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36f21492-3b6b-689a-351b-08dadfa01e97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem treeToMatrix_wellFormed (t : EMLTree k) :
    EMLCircuitMatrix.WellFormed (treeToMatrix t).2 := by
  simp [treeToMatrix, EMLCircuitMatrix.WellFormed, EMLCircuitMatrix.RootIsLast,
    EMLCircuitMatrix.HasNodeKinds, EMLCircuitMatrix.KindMarkersDiagonal,
    EMLCircuitMatrix.ExactlyOneKindPerNode, EMLCircuitMatrix.OperatorChildrenFunctional,
    EMLCircuitMatrix.LeafNodesHaveNoChildren, EMLCircuitMatrix.VariableLeavesUseOneInput,
    EMLCircuitMatrix.ConstantLeavesUseNoInput, EMLCircuitMatrix.ChildrenDecrease,
    EMLCircuitMatrix.ReachableFromRoot, lastFin, EMLTree.size_pos]
  exact Nat.succ_pred_eq_of_pos t.size_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8602a7a5f970e3aa36ab70b8570ea2ba96f3b30d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
