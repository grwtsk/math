# utf16PosToCodepointPosFromAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e47815f4803de94a52ebacf04f018870a2f0f7577ff457ff76dbf593d388360e",
  "kind": "def",
  "lexical_name": "utf16PosToCodepointPosFromAux",
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
  "slug": "utf16postocodepointposfromaux--1ce95449154a2f39505f7462",
  "source": {
    "blob": "7f3f4a31438e93367af4406a603aae52c475b04e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ce95449154a2f39505f7462c1f27e2a786c4ff95e6e42bfabcd5f07fe9a55d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e47815f4803de94a52ebacf04f018870a2f0f7577ff457ff76dbf593d388360e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def utf16PosToCodepointPosFromAux (s : String) : Nat → Pos.Raw → Nat → Nat
  | 0,        _,       cp => cp
  | utf16pos, utf8pos, cp => utf16PosToCodepointPosFromAux s (utf16pos - csize16 (utf8pos.get s)) (utf8pos.next s) (cp + 1)

/-- Computes the position of the Unicode codepoint at UTF-16 offset
`utf16pos` in the substring of `s` starting at UTF-8 offset `off`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f3f4a31438e93367af4406a603aae52c475b04e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
