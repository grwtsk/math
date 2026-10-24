# map_fundamentalDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5142101-e2d3-0d87-1758-269574ac5a7f",
  "kind": "theorem",
  "lexical_name": "map_fundamentalDomain",
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
  "slug": "map-fundamentaldomain--52d82412f8dae916385cbb79",
  "source": {
    "blob": "f474d705b90b30a0aaea43c0b49d82585a4cea9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantf6c3dfd26c9e4ff54ed8376fc9e0b67ee6ec321921bfbe1a1bb687ab4b44fa89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52d82412f8dae916385cbb79d83d3f4aac4bec8e1782a7a18609594001a032da",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantf6c3dfd26c9e4ff54ed8376fc9e0b67ee6ec321921bfbe1a1bb687ab4b44fa89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5142101-e2d3-0d87-1758-269574ac5a7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_fundamentalDomain {F : Type*} [NormedAddCommGroup F] [NormedSpace K F] (f : E ≃ₗ[K] F) :
    f '' (fundamentalDomain b) = fundamentalDomain (b.map f) := by
  ext x
  rw [mem_fundamentalDomain, Basis.map_repr, LinearEquiv.trans_apply, ← mem_fundamentalDomain,
    show f.symm x = f.toEquiv.symm x by rfl, ← Set.mem_image_equiv]
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantf6c3dfd26c9e4ff54ed8376fc9e0b67ee6ec321921bfbe1a1bb687ab4b44fa89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantf6c3dfd26c9e4ff54ed8376fc9e0b67ee6ec321921bfbe1a1bb687ab4b44fa89.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f474d705b90b30a0aaea43c0b49d82585a4cea9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
