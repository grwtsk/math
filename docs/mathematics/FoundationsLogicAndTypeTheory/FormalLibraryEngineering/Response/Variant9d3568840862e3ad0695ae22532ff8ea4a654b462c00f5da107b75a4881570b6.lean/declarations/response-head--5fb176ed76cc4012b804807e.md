# Response.Head

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c879e70ff9f2b06b1f3c04af269bd23e84cb1d2828426b8ab1e16f2b83c8c6a1",
  "kind": "structure",
  "lexical_name": "Response.Head",
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
  "slug": "response-head--5fb176ed76cc4012b804807e",
  "source": {
    "blob": "911e7a1403870d8d67c58681dbbc732a0e1ea394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9d3568840862e3ad0695ae22532ff8ea4a654b462c00f5da107b75a4881570b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fb176ed76cc4012b804807e742b103c3ff07bdd373befcf250af1b7b046bce7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9d3568840862e3ad0695ae22532ff8ea4a654b462c00f5da107b75a4881570b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c879e70ff9f2b06b1f3c04af269bd23e84cb1d2828426b8ab1e16f2b83c8c6a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Response.Head where
  /--
  The HTTP status for the response.
  -/
  status : Status := .ok

  /--
  The HTTP protocol version used in the response, e.g. `HTTP/1.1`.
  -/
  version : Version := .v11

  /--
  The set of response headers, providing metadata such as `Content-Type`,
  `Content-Length`, and caching directives.
  -/
  headers : Headers := .empty
deriving Inhabited, Repr

/--
HTTP response structure parameterized by body type.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9d3568840862e3ad0695ae22532ff8ea4a654b462c00f5da107b75a4881570b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9d3568840862e3ad0695ae22532ff8ea4a654b462c00f5da107b75a4881570b6.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `911e7a1403870d8d67c58681dbbc732a0e1ea394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
