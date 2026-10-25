# forEachModuleInDir

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8c19829618c52e81d698b2274aa0651001268a7ce749f5eeb19b070f1ec4454",
  "kind": "def",
  "lexical_name": "forEachModuleInDir",
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
  "slug": "foreachmoduleindir--4cd981bd7176b923a4ba914b",
  "source": {
    "blob": "09c0253b7066a88d65ab556dcc224463479090ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant52cf9aa41a82db18d0d3c93bf6257d064f773af9e62b8b43be89ce1b0e00055f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cd981bd7176b923a4ba914b15a193fea6ed815cc5f1f131bfd45d2a4e41d0b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant52cf9aa41a82db18d0d3c93bf6257d064f773af9e62b8b43be89ce1b0e00055f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8c19829618c52e81d698b2274aa0651001268a7ce749f5eeb19b070f1ec4454`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def forEachModuleInDir [Monad m] [MonadLiftT IO m]
    (dir : FilePath) (f : Lean.Name → m PUnit) : m PUnit := do
  for entry in (← dir.readDir) do
    if (← liftM (m := IO) <| entry.path.isDir) then
      let n := Lean.Name.mkSimple entry.fileName
      forEachModuleInDir entry.path (f <| n ++ ·)
    else if entry.path.extension == some "lean" then
      f <| Lean.Name.mkSimple <| FilePath.withExtension entry.fileName "" |>.toString

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant52cf9aa41a82db18d0d3c93bf6257d064f773af9e62b8b43be89ce1b0e00055f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant52cf9aa41a82db18d0d3c93bf6257d064f773af9e62b8b43be89ce1b0e00055f.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09c0253b7066a88d65ab556dcc224463479090ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
