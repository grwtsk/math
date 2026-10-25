# NamingEventComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b21a434e05f8669447d8e90bba04cf7de50a57e1064473110f9e5f64936bd307",
  "kind": "structure",
  "lexical_name": "NamingEventComplex",
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
  "slug": "namingeventcomplex--43fdf70ed481def63e81f9dc",
  "source": {
    "blob": "e5d61f892a979ec9039642b1c4824195233bbd74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/AE01653da2cd33b4a/Variant05b971469bc9184dc454d6dabb169cc0e20a12f07ab30fe748b329d7d076301e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43fdf70ed481def63e81f9dc13cafbbbd2e05460bae049e7e7464385dc161a82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/AE01653da2cd33b4a/Variant05b971469bc9184dc454d6dabb169cc0e20a12f07ab30fe748b329d7d076301e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b21a434e05f8669447d8e90bba04cf7de50a57e1064473110f9e5f64936bd307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NamingEventComplex where
  elementId : SourceElementId
  vertices : Array NamingVertex
  edges : Array NamingEdge
  squares : Array NamingSquare
  squaresValid : ∀ square, square ∈ squares → square.Valid

end Mathematics.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/AE01653da2cd33b4a/Variant05b971469bc9184dc454d6dabb169cc0e20a12f07ab30fe748b329d7d076301e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/AE01653da2cd33b4a/Variant05b971469bc9184dc454d6dabb169cc0e20a12f07ab30fe748b329d7d076301e.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5d61f892a979ec9039642b1c4824195233bbd74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
