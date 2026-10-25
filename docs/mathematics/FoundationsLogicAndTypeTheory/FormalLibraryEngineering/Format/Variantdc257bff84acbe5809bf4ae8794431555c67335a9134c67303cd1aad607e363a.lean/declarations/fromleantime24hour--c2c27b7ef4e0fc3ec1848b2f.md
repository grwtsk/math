# fromLeanTime24Hour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33d37e49efc7401fe136bf6ef2e55650a9df17c1219d0b91bd9710cb5279abd2",
  "kind": "def",
  "lexical_name": "fromLeanTime24Hour",
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
  "slug": "fromleantime24hour--c2c27b7ef4e0fc3ec1848b2f",
  "source": {
    "blob": "0fbf29c8132b8cf7301f28a898079f89c8cc7ead",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 309,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variantdc257bff84acbe5809bf4ae8794431555c67335a9134c67303cd1aad607e363a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2c27b7ef4e0fc3ec1848b2fa76c5c0e2cbfc16a1028f6077425a88c7d290602",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variantdc257bff84acbe5809bf4ae8794431555c67335a9134c67303cd1aad607e363a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33d37e49efc7401fe136bf6ef2e55650a9df17c1219d0b91bd9710cb5279abd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromLeanTime24Hour (input : String) : Except String PlainTime :=
  Formats.leanTime24Hour.parseBuilder (fun h m s n => some <| PlainTime.ofHourMinuteSecondsNano h m s n) input
  <|> Formats.leanTime24HourNoNanos.parseBuilder (fun h m s => some <| PlainTime.ofHourMinuteSecondsNano h m s 0) input

/--
Formats a `PlainTime` value into a 24-hour format string (`HH:mm:ss.SSSSSSSSS`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variantdc257bff84acbe5809bf4ae8794431555c67335a9134c67303cd1aad607e363a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variantdc257bff84acbe5809bf4ae8794431555c67335a9134c67303cd1aad607e363a.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fbf29c8132b8cf7301f28a898079f89c8cc7ead` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
