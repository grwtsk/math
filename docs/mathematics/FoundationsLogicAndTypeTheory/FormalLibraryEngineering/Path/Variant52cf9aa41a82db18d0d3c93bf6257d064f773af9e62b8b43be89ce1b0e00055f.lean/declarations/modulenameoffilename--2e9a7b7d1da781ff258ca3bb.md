# moduleNameOfFileName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55ab127108fe60df4912e1fb2268cafab932d351c5e0f4d37733c7966d3463b6",
  "kind": "def",
  "lexical_name": "moduleNameOfFileName",
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
  "slug": "modulenameoffilename--2e9a7b7d1da781ff258ca3bb",
  "source": {
    "blob": "09c0253b7066a88d65ab556dcc224463479090ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant52cf9aa41a82db18d0d3c93bf6257d064f773af9e62b8b43be89ce1b0e00055f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e9a7b7d1da781ff258ca3bb4e8907793a36be764594cddfb53bb35799f475e9",
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

Occurrence: `declaration:55ab127108fe60df4912e1fb2268cafab932d351c5e0f4d37733c7966d3463b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def moduleNameOfFileName (fname : FilePath) (rootDir : Option FilePath) : IO Name := do
  let fname ← IO.FS.realPath fname
  let rootDir ← match rootDir with
    | some rootDir => pure rootDir
    | none         => IO.currentDir
  let mut rootDir ← realPathNormalized rootDir
  if !rootDir.toString.endsWith System.FilePath.pathSeparator.toString then
    rootDir := ⟨rootDir.toString ++ System.FilePath.pathSeparator.toString⟩
  if !rootDir.toString.isPrefixOf fname.normalize.toString then
    throw $ IO.userError s!"input file '{fname}' must be contained in root directory ({rootDir})"
  -- NOTE: use `fname` instead of `fname.normalize` to preserve casing on all platforms
  let fnameSuffix := fname.toString.drop rootDir.toString.length
  let modNameStr := FilePath.mk fnameSuffix.copy |>.withExtension ""
  let modName    := modNameStr.components.foldl Name.mkStr Name.anonymous
  pure modName

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant52cf9aa41a82db18d0d3c93bf6257d064f773af9e62b8b43be89ce1b0e00055f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant52cf9aa41a82db18d0d3c93bf6257d064f773af9e62b8b43be89ce1b0e00055f.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09c0253b7066a88d65ab556dcc224463479090ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
