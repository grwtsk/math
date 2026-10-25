# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:994017248a9477f94bc59536b55fc05d8d8df6bd48b6b9754602c88608a6cf03",
  "kind": "instance",
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
  "slug": "instance--fb51c83ff5e3e0e379da386f",
  "source": {
    "blob": "717136a131212c6d93611f83caead4b9664fba22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 339,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Method/Varianta6c3f875c99b5227b10a2bb2a423f1fa92149f190c8e1691062f011c9ca6edfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb51c83ff5e3e0e379da386f372f5c02c514100fa2c9adfee2e1864a14ba9feb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Method/Varianta6c3f875c99b5227b10a2bb2a423f1fa92149f190c8e1691062f011c9ca6edfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:994017248a9477f94bc59536b55fc05d8d8df6bd48b6b9754602c88608a6cf03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ToString Method where
  toString
    | .acl => "ACL"
    | .baselineControl => "BASELINE-CONTROL"
    | .bind => "BIND"
    | .checkin => "CHECKIN"
    | .checkout => "CHECKOUT"
    | .connect => "CONNECT"
    | .copy => "COPY"
    | .delete => "DELETE"
    | .get => "GET"
    | .head => "HEAD"
    | .label => "LABEL"
    | .link => "LINK"
    | .lock => "LOCK"
    | .merge => "MERGE"
    | .mkactivity => "MKACTIVITY"
    | .mkcalendar => "MKCALENDAR"
    | .mkcol => "MKCOL"
    | .mkredirectref => "MKREDIRECTREF"
    | .mkworkspace => "MKWORKSPACE"
    | .move => "MOVE"
    | .options => "OPTIONS"
    | .orderpatch => "ORDERPATCH"
    | .patch => "PATCH"
    | .post => "POST"
    | .pri => "PRI"
    | .propfind => "PROPFIND"
    | .proppatch => "PROPPATCH"
    | .put => "PUT"
    | .query => "QUERY"
    | .rebind => "REBIND"
    | .report => "REPORT"
    | .search => "SEARCH"
    | .trace => "TRACE"
    | .unbind => "UNBIND"
    | .uncheckout => "UNCHECKOUT"
    | .unlink => "UNLINK"
    | .unlock => "UNLOCK"
    | .update => "UPDATE"
    | .updateredirectref => "UPDATEREDIRECTREF"
    | .versionControl => "VERSION-CONTROL"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Method/Varianta6c3f875c99b5227b10a2bb2a423f1fa92149f190c8e1691062f011c9ca6edfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Method/Varianta6c3f875c99b5227b10a2bb2a423f1fa92149f190c8e1691062f011c9ca6edfb.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `717136a131212c6d93611f83caead4b9664fba22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
