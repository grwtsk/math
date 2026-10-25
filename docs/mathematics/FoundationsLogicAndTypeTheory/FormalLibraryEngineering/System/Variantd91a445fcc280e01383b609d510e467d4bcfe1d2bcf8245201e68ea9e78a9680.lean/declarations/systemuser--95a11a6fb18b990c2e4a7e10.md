# SystemUser

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6fcfb3262e3a4ea47d99205dfb46d4e0b970f96f5cfa6321efbe9621ac58c02",
  "kind": "structure",
  "lexical_name": "SystemUser",
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
  "slug": "systemuser--95a11a6fb18b990c2e4a7e10",
  "source": {
    "blob": "071c9e4b765496711616fe4c9cbb028d3d17f388",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/System/Variantd91a445fcc280e01383b609d510e467d4bcfe1d2bcf8245201e68ea9e78a9680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95a11a6fb18b990c2e4a7e105ccc637c25b6d05daf5874ef278f425e21e5e5c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/System/Variantd91a445fcc280e01383b609d510e467d4bcfe1d2bcf8245201e68ea9e78a9680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6fcfb3262e3a4ea47d99205dfb46d4e0b970f96f5cfa6321efbe9621ac58c02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SystemUser where
  /--
  The user's name.
  -/
  username : String

  /--
  The user's ID.
  -/
  userId : Option UserId

  /--
  The group the user belongs to.
  -/
  groupId : Option GroupId

  /--
  The user's login shell.
  -/
  shell : Option String

  /--
  The home directory of the user.
  -/
  homeDir : Option System.FilePath
deriving Inhabited, DecidableEq, Repr

/--
Information about a group.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/System/Variantd91a445fcc280e01383b609d510e467d4bcfe1d2bcf8245201e68ea9e78a9680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/System/Variantd91a445fcc280e01383b609d510e467d4bcfe1d2bcf8245201e68ea9e78a9680.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `071c9e4b765496711616fe4c9cbb028d3d17f388` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
