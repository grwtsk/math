# addExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:068045b4873165a9cc669ca6d5793b624e99c23ce662a5769b34d83fbcf9fe25",
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
  "slug": "addextension--443ba76fe4eaa88f2e9f7747",
  "source": {
    "blob": "282ad242c2cb0a2f689adfc1475fb33c8ea46d79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 247,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant23cb50807195a0f22b8e11dc44f4be445bbca3cf99de11704a702bef971bdd98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:443ba76fe4eaa88f2e9f7747479809da83377d68736c9bd7e642661b85ca42e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant23cb50807195a0f22b8e11dc44f4be445bbca3cf99de11704a702bef971bdd98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:068045b4873165a9cc669ca6d5793b624e99c23ce662a5769b34d83fbcf9fe25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–264.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant23cb50807195a0f22b8e11dc44f4be445bbca3cf99de11704a702bef971bdd98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant23cb50807195a0f22b8e11dc44f4be445bbca3cf99de11704a702bef971bdd98.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `282ad242c2cb0a2f689adfc1475fb33c8ea46d79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
