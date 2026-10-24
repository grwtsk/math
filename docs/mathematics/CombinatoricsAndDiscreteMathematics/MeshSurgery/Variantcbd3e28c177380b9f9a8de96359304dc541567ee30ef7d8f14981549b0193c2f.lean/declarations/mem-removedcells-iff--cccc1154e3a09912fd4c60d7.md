# mem_removedCells_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1f5d2a6-85b2-fe96-1e02-f72d2aca1e8e",
  "kind": "theorem",
  "lexical_name": "mem_removedCells_iff",
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
  "slug": "mem-removedcells-iff--cccc1154e3a09912fd4c60d7",
  "source": {
    "blob": "23b523e53ee619af349c2ccff7975a722e9eebea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cccc1154e3a09912fd4c60d76fb6899cc4ec2b3ac70dc98d99ce7b26a14cb58b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1f5d2a6-85b2-fe96-1e02-f72d2aca1e8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_removedCells_iff
    (S : MeshSurgery G before after)
    (c : M.CellId) :
    c ∈ S.removedCells ↔
      c ∈ before.activeCells ∧ c ∉ after.activeCells := by
  rw [S.removedCells_spec]
  simp

/-- Inserted cells are exactly inactive-before but active-after. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23b523e53ee619af349c2ccff7975a722e9eebea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
