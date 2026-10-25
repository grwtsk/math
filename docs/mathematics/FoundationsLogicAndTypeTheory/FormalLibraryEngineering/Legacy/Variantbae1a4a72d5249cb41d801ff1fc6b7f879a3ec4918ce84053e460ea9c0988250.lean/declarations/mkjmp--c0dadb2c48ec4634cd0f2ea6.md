# mkJmp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87ef5238c8d089a1be9e44a8529bfd1bf8574969dc2949862714912a4a12df2d",
  "kind": "def",
  "lexical_name": "mkJmp",
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
  "slug": "mkjmp--c0dadb2c48ec4634cd0f2ea6",
  "source": {
    "blob": "8c8da9f50ee7a399431280e0ec5e9dd066fa0789",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1147,
    "line": 1145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0dadb2c48ec4634cd0f2ea6e5bbebb1f91021f02143fca16c4a99ac06ff57ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87ef5238c8d089a1be9e44a8529bfd1bf8574969dc2949862714912a4a12df2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1145–1147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkJmp (ref : Syntax) (j : Name) (args : Array Syntax) : Syntax :=
  Syntax.mkApp (mkIdentFrom ref j) args

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean#L1145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c8da9f50ee7a399431280e0ec5e9dd066fa0789` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
