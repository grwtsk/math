# binary_matrix_to_mesh_reconstruction_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:935aaa72-4659-19c0-1888-fbc25a2ad3b8",
  "kind": "theorem",
  "lexical_name": "binary_matrix_to_mesh_reconstruction_sound",
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
  "slug": "binary-matrix-to-mesh-reconstruction-sound--e083944a7e51bfe2b6811da0",
  "source": {
    "blob": "800333be39339666675a34ff95d5ab739f138169",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 884,
    "line": 877,
    "path": "GRWTSK/Algebra/GroupTheory/CountableShadowPipeline/Variantbc9c2c4a2920cdc3220a4a21e59a37a372deb0214344cd0f90e3d32ba3e43632.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e083944a7e51bfe2b6811da0c4ffa6e1148df09a6f9d2f84c1f5abd4d9e0bee9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CountableShadowPipeline/Variantbc9c2c4a2920cdc3220a4a21e59a37a372deb0214344cd0f90e3d32ba3e43632.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:935aaa72-4659-19c0-1888-fbc25a2ad3b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 877–884.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binary_matrix_to_mesh_reconstruction_sound
    (R : BinaryToMeshReconstruction) :
    R.preservesIdentity ∧
    R.preservesIncidence ∧
    R.preservesWeights ∧
    R.preservesAuthorityBoundary :=
  ⟨R.identityProof, R.incidenceProof, R.weightProof, R.authorityBoundaryProof⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CountableShadowPipeline/Variantbc9c2c4a2920cdc3220a4a21e59a37a372deb0214344cd0f90e3d32ba3e43632.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CountableShadowPipeline/Variantbc9c2c4a2920cdc3220a4a21e59a37a372deb0214344cd0f90e3d32ba3e43632.lean#L877).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `800333be39339666675a34ff95d5ab739f138169` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
