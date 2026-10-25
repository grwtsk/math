# addExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a91cf94faa1337dd6a244777d41f3c385ccc2ad48776e2b407928e198948d8b",
  "kind": "def",
  "lexical_name": "addExtension",
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
  "slug": "addextension--ec4ab1bf7313024882eef751",
  "source": {
    "blob": "2e6c65e442f84c964a4ad4dc2853ca321d051200",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 239,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec4ab1bf7313024882eef75184d4c6dd08bc2db7e836b5ba5f2c53879cef5fcb",
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

Occurrence: `declaration:2a91cf94faa1337dd6a244777d41f3c385ccc2ad48776e2b407928e198948d8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addExtension (p : FilePath) (ext : String) : FilePath :=
  match p.fileName with
  | none => p
  | some fname => p.withFileName (if ext.isEmpty then fname else fname ++ "." ++ ext)

/--
Replaces the current extension in a path `p` with `ext`, adding it if there is no extension. If the
path has multiple file extensions, only the last one is replaced. If the path has no filename, or if
`ext` is the empty string, then the filename is returned unmodified.

`ext` should not have a leading `.`, as this function adds one.

Examples:
* `("files/picture.jpeg" : System.FilePath).withExtension "jpg" = ⟨"files/picture.jpg"⟩`
* `("files/" : System.FilePath).withExtension "zip" = ⟨"files/"⟩`
* `("files" : System.FilePath).withExtension "zip" = ⟨"files.zip"⟩`
* `("files/archive.tar.gz" : System.FilePath).withExtension "xz" = ⟨"files.tar.xz"⟩`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e6c65e442f84c964a4ad4dc2853ca321d051200` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
