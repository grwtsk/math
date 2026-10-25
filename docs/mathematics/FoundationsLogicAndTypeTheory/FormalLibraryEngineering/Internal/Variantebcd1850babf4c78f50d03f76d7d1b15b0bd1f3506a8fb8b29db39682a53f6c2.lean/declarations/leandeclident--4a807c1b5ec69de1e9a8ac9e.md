# LeanDeclIdent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc5678d39f3c66448efae53f6a6ca97106c4c17efa4ed30678b8e1f822a843dc",
  "kind": "structure",
  "lexical_name": "LeanDeclIdent",
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
  "slug": "leandeclident--4a807c1b5ec69de1e9a8ac9e",
  "source": {
    "blob": "bd64732ada62ab8127091ef690fa13f85acb4071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 401,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internal/Variantebcd1850babf4c78f50d03f76d7d1b15b0bd1f3506a8fb8b29db39682a53f6c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a807c1b5ec69de1e9a8ac9e1ff5ef21d67a2b026284e97e987bf88e19968006",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internal/Variantebcd1850babf4c78f50d03f76d7d1b15b0bd1f3506a8fb8b29db39682a53f6c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc5678d39f3c66448efae53f6a6ca97106c4c17efa4ed30678b8e1f822a843dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LeanDeclIdent where
  /-- Name of the module that this identifier is in. -/
  module : Name
  /-- Name of the declaration. -/
  decl   : Name
  deriving FromJson, ToJson

/--
`LocationLink` with additional meta-data that allows the watchdog to resolve the range of this
`LocationLink`. This is necessary because the position information from the .olean may be stale
(e.g. if the user has edited the file that the definition is from, but neither saved or built it),
while file workers sync their current reference information into the watchdog using ilean info
notifications, which is up-to-date.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internal/Variantebcd1850babf4c78f50d03f76d7d1b15b0bd1f3506a8fb8b29db39682a53f6c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internal/Variantebcd1850babf4c78f50d03f76d7d1b15b0bd1f3506a8fb8b29db39682a53f6c2.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd64732ada62ab8127091ef690fa13f85acb4071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
