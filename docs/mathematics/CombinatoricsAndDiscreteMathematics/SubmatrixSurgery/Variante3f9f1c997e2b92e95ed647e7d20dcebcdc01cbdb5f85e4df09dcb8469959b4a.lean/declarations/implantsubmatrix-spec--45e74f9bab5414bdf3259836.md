# implantSubmatrix_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "095219941e83b80347dc4e7ac71896e698f2a0a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5edf9f94-3913-2499-5af4-19d74c5a257f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a51b64f9-5aac-08e6-41b7-878367d2e7f5",
  "kind": "theorem",
  "lexical_name": "implantSubmatrix_spec",
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
  "slug": "implantsubmatrix-spec--45e74f9bab5414bdf3259836",
  "source": {
    "blob": "095219941e83b80347dc4e7ac71896e698f2a0a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 219,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45e74f9bab5414bdf32598369ed3ea5021ca1476a28e581b5ad5c2ae48dda0f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a51b64f9-5aac-08e6-41b7-878367d2e7f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem implantSubmatrix_spec
    (A : BinMatMut m n) (L : MatrixLocus m n)
    (replacement : BinMatMut L.rows.card L.columns.card) :
    (implantSubmatrix A L replacement).toDecl =
      BinMat.implantSubmatrix A.toDecl L replacement.toDecl := by
  simp [implantSubmatrix]

end BinMatMut

/--
A proof-bearing connection between one row-major implementation surgery and
the canonical declarative surgery on its `toDecl` observations.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `095219941e83b80347dc4e7ac71896e698f2a0a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
