# withFileName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4ccb8b58ec9640f4cb826a80b72aeed6f178704d6a5ee94dcee1be56ed0772a",
  "kind": "def",
  "lexical_name": "withFileName",
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
  "slug": "withfilename--e6f4f20f21106c7620ba4b45",
  "source": {
    "blob": "2e6c65e442f84c964a4ad4dc2853ca321d051200",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 226,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6f4f20f21106c7620ba4b45700339329aefc74d4bcb3c32e07c28893e0a7f24",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4ccb8b58ec9640f4cb826a80b72aeed6f178704d6a5ee94dcee1be56ed0772a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withFileName (p : FilePath) (fname : String) : FilePath :=
  match p.parent with
  | none => ⟨fname⟩
  | some p => p / fname

/--
Appends the extension `ext` to a path `p`.

`ext` should not have leading `.`, as this function adds one. If `ext` is the empty string, no
`.` is added.

Unlike `System.FilePath.withExtension`, this does not remove any existing extension.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e6c65e442f84c964a4ad4dc2853ca321d051200` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
