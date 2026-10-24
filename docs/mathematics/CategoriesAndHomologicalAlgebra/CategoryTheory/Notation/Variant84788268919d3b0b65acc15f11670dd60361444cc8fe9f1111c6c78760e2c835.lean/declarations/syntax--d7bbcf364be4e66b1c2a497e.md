# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b62d2a2fb450e8b7c9a3caab92fcca71fa86cf5c681a7e7acef3d59588f31e13",
  "kind": "syntax",
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
  "slug": "syntax--d7bbcf364be4e66b1c2a497e",
  "source": {
    "blob": "245dfd10a8e7b1c8c62c8513914d8f37f75705f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 795,
    "line": 780,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84788268919d3b0b65acc15f11670dd60361444cc8fe9f1111c6c78760e2c835.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7bbcf364be4e66b1c2a497e95cbc37dc63050772681c1fa3af9d86c44772d84",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84788268919d3b0b65acc15f11670dd60361444cc8fe9f1111c6c78760e2c835.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b62d2a2fb450e8b7c9a3caab92fcca71fa86cf5c681a7e7acef3d59588f31e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 780–795.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
syntax guardMsgsFilterSeverity := &"trace" <|> &"info" <|> &"warning" <|> &"error" <|> &"all"

/--
A message filter specification for `#guard_msgs`.
- `info`, `warning`, `error`: capture (non-trace) messages with the given severity level.
- `trace`: captures trace messages
- `all`: capture all messages.

The filters can be prefixed with
- `check` (the default): capture and check the message
- `drop`: drop the message
- `pass`: let the message pass through

If no filter is specified, `check all` is assumed.  Otherwise, these filters are processed in
left-to-right order, with an implicit `pass all` at the end.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84788268919d3b0b65acc15f11670dd60361444cc8fe9f1111c6c78760e2c835.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84788268919d3b0b65acc15f11670dd60361444cc8fe9f1111c6c78760e2c835.lean#L780).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `245dfd10a8e7b1c8c62c8513914d8f37f75705f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
