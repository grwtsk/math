# addUserData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62df2bc09d8826b1a6adfcfc7f8d662b78c0cffc4cbd1218b1aa08a4a6a872af",
  "kind": "def",
  "lexical_name": "addUserData",
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
  "slug": "adduserdata--4f594d8ee10dd52bfc543aea",
  "source": {
    "blob": "db36313ec70188dfd2564a0a4947da4fe70cbe39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 214,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Writer/Variant92511c097fe2d6321513ecbd79be199cf2e7d5d4f85fa085d2feae75d4e2554a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f594d8ee10dd52bfc543aea7c0cd29e61e2f2454b4a734144ea4287c3d6f100",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Writer/Variant92511c097fe2d6321513ecbd79be199cf2e7d5d4f85fa085d2feae75d4e2554a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62df2bc09d8826b1a6adfcfc7f8d662b78c0cffc4cbd1218b1aa08a4a6a872af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addUserData (data : Array Chunk) (writer : Writer dir) : Writer dir :=
  if writer.canAcceptData then
    let extraBytes := data.foldl (fun acc c => acc + c.data.size) 0
    { writer with userData := writer.userData ++ data, userDataBytes := writer.userDataBytes + extraBytes }
  else
    writer

/--
Writes accumulated user data to output using fixed-size encoding.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Writer/Variant92511c097fe2d6321513ecbd79be199cf2e7d5d4f85fa085d2feae75d4e2554a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Writer/Variant92511c097fe2d6321513ecbd79be199cf2e7d5d4f85fa085d2feae75d4e2554a.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db36313ec70188dfd2564a0a4947da4fe70cbe39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
