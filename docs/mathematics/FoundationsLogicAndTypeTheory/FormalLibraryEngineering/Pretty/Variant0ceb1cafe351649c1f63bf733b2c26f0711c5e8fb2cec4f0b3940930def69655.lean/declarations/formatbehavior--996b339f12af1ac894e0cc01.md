# FormatBehavior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28d38c4289a78ca7e68b125e31879d2df874b756786f565786412bcf29fb9f0b",
  "kind": "inductive",
  "lexical_name": "FormatBehavior",
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
  "slug": "formatbehavior--996b339f12af1ac894e0cc01",
  "source": {
    "blob": "140f205e95cdd514d5146d8eb762221c32590ecb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 223,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:996b339f12af1ac894e0cc014e098f690182e3950f30b6fe914a9f408276fe83",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28d38c4289a78ca7e68b125e31879d2df874b756786f565786412bcf29fb9f0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected inductive FormatBehavior where
| /-- Does not sort or group imports at all. -/
  none
| /-- Sorts an array of imports first by visibility (`public` first, then private (no token), then
  `all`), then by phase (`meta` imports first), then alphabetically. -/
  sorted
| /-- Groups imports by visibility (first `public`, then private (no token), then `all`) with an
  extra newline in between groups. Within groups, sorts first by the `meta` token then
  alphabetically within groups. If `splitMeta := true` (default: `false`), also inserts an extra
  newline between `meta` imports and non-`meta` imports. -/
  grouped (splitMeta := false)

@[inline, inherit_doc FormatBehavior.sorted]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `140f205e95cdd514d5146d8eb762221c32590ecb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
