# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a533ef9e4c85edb8953dfb5ca26bc6a504dc02ef080c451411c6e9c7ce51152c",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--b0a7f7cc65b2aebe34844bc5",
  "source": {
    "blob": "8bab9c9f6cae923cc3ccba2c415f543892e81a1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 83,
    "path": "GRWTSK/Algebra/Inequalities/Variant4553538d1999847b4e8074b67cd26d73be3126c9b2c43961da0203b21f1be06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0a7f7cc65b2aebe34844bc5bd512a6d0e8e5d711746c7847d8d8ba3e9f3a33b",
  "verification": {
    "reference": "docs/verification/Algebra/Inequalities/Variant4553538d1999847b4e8074b67cd26d73be3126c9b2c43961da0203b21f1be06e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a533ef9e4c85edb8953dfb5ca26bc6a504dc02ef080c451411c6e9c7ce51152c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {x y : ℝ} (h : 3 ≤ x) (h' : 1 ≤ y) : (3 + 1) / 2 ≤ (x + y) / 2 := by gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inequalities/Variant4553538d1999847b4e8074b67cd26d73be3126c9b2c43961da0203b21f1be06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inequalities/Variant4553538d1999847b4e8074b67cd26d73be3126c9b2c43961da0203b21f1be06e.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bab9c9f6cae923cc3ccba2c415f543892e81a1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
