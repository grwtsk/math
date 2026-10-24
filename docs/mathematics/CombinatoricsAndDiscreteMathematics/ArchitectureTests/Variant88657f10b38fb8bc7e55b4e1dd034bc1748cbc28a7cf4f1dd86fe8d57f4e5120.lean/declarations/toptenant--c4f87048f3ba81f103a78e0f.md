# topTenant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a351ccbaef8bd9ef1454fba20e802b544af9fe86900ad8fb7e2d388db21c0aea",
  "kind": "def",
  "lexical_name": "topTenant",
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
  "slug": "toptenant--c4f87048f3ba81f103a78e0f",
  "source": {
    "blob": "e3e0d42dba1d6fcc16c2d8089c3000b5ad3acebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 116,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureTests/Variant88657f10b38fb8bc7e55b4e1dd034bc1748cbc28a7cf4f1dd86fe8d57f4e5120.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4f87048f3ba81f103a78e0f4e92c5db4c2e99468fd553d19ebe8222ff20f5da",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ArchitectureTests/Variant88657f10b38fb8bc7e55b4e1dd034bc1748cbc28a7cf4f1dd86fe8d57f4e5120.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a351ccbaef8bd9ef1454fba20e802b544af9fe86900ad8fb7e2d388db21c0aea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topTenant : DAF.Tenant chainGraph where
  roots := {project2}

/-- A concrete full environment whose value records its project index. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ArchitectureTests/Variant88657f10b38fb8bc7e55b4e1dd034bc1748cbc28a7cf4f1dd86fe8d57f4e5120.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureTests/Variant88657f10b38fb8bc7e55b4e1dd034bc1748cbc28a7cf4f1dd86fe8d57f4e5120.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e0d42dba1d6fcc16c2d8089c3000b5ad3acebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
