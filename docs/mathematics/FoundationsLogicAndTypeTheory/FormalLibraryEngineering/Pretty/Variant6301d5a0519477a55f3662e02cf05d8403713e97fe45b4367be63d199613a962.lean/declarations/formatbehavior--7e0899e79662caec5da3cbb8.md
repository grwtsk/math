# FormatBehavior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9643cbf8e0e56f508380173093b7678e67b7e44b98415c6deff1f6d962b7eb8",
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
  "slug": "formatbehavior--7e0899e79662caec5da3cbb8",
  "source": {
    "blob": "df54fdcc122f7e059adaf9cbb095a25050d3da6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e0899e79662caec5da3cbb8259e68eccc7b3b1cd1ba0fb29b342100c71c2717",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9643cbf8e0e56f508380173093b7678e67b7e44b98415c6deff1f6d962b7eb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–227.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df54fdcc122f7e059adaf9cbb095a25050d3da6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
