# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:266d37f7f5da48e4d5e9b5e7c77684934f35c61fd48dba7cad64dfc642fe1337",
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
  "slug": "syntax--af40f7a9649e1fcd5fff03b5",
  "source": {
    "blob": "245dfd10a8e7b1c8c62c8513914d8f37f75705f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 835,
    "line": 823,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84788268919d3b0b65acc15f11670dd60361444cc8fe9f1111c6c78760e2c835.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af40f7a9649e1fcd5fff03b5d6abad967ec924c782dc2cd6b26fe57b3ed34406",
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

Occurrence: `declaration:266d37f7f5da48e4d5e9b5e7c77684934f35c61fd48dba7cad64dfc642fe1337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 823–835.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
syntax guardMsgsPositionsArg := &"true" <|> &"false"

/--
Position reporting for `#guard_msgs`:
- `positions := true` will report the positions of messages with the line numbers computed
  relative to the line of the `#guard_msgs` token, e.g.
  ```
  @ +3:7...+4:2
  info: <message>
  ```
  Note that the reported column is absolute.
- `positions := false` (the default) will not render positions.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84788268919d3b0b65acc15f11670dd60361444cc8fe9f1111c6c78760e2c835.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84788268919d3b0b65acc15f11670dd60361444cc8fe9f1111c6c78760e2c835.lean#L823).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `245dfd10a8e7b1c8c62c8513914d8f37f75705f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
