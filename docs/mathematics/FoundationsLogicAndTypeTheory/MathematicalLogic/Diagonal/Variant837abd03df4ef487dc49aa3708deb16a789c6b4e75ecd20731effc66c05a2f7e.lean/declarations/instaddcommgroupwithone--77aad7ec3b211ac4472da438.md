# instAddCommGroupWithOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea0dab839f9cc30cfdb0dbd187c66ec551accf219ed39f6c309870f1d1916624",
  "kind": "instance",
  "lexical_name": "instAddCommGroupWithOne",
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
  "slug": "instaddcommgroupwithone--77aad7ec3b211ac4472da438",
  "source": {
    "blob": "d12b50c8d6d67d11929b02a265829674f39e059b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 279,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diagonal/Variant837abd03df4ef487dc49aa3708deb16a789c6b4e75ecd20731effc66c05a2f7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77aad7ec3b211ac4472da43852fbf41bff2463df5974eaf0ecb0173d6b5ec445",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Diagonal/Variant837abd03df4ef487dc49aa3708deb16a789c6b4e75ecd20731effc66c05a2f7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea0dab839f9cc30cfdb0dbd187c66ec551accf219ed39f6c309870f1d1916624`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAddCommGroupWithOne [AddCommGroupWithOne α] :
    AddCommGroupWithOne (Matrix n n α) where
  __ := addCommGroup
  __ := instAddGroupWithOne

end Diagonal

section Diag

/-- The diagonal of a square matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Diagonal/Variant837abd03df4ef487dc49aa3708deb16a789c6b4e75ecd20731effc66c05a2f7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diagonal/Variant837abd03df4ef487dc49aa3708deb16a789c6b4e75ecd20731effc66c05a2f7e.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d12b50c8d6d67d11929b02a265829674f39e059b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
