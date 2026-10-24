# toMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96c1d1084f2c4900644556eb298b60c4317a78b63018d8a5bc5dba4d718d3126",
  "kind": "abbrev",
  "lexical_name": "toMonoidHom",
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
  "slug": "tomonoidhom--f6fa6506010c3cc7baf972dc",
  "source": {
    "blob": "c09ed84bfabfc843c6c1a9fd6b45437e16e7c5f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 410,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantdaa7393b8f207edfe5e45b36aea69ceb4de80d6fdcbf29813d8c99a35d8c0db5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6fa6506010c3cc7baf972dc5b29d6c83617fe2b1a0cc424350532bf7b69a8e5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantdaa7393b8f207edfe5e45b36aea69ceb4de80d6fdcbf29813d8c99a35d8c0db5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96c1d1084f2c4900644556eb298b60c4317a78b63018d8a5bc5dba4d718d3126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev toMonoidHom (f : LocalizationMap S N) : M →* N where
  __ := f
  map_one' := f.isLocalizationMap.map_one (f := f.toMulHom)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantdaa7393b8f207edfe5e45b36aea69ceb4de80d6fdcbf29813d8c99a35d8c0db5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantdaa7393b8f207edfe5e45b36aea69ceb4de80d6fdcbf29813d8c99a35d8c0db5.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09ed84bfabfc843c6c1a9fd6b45437e16e7c5f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
