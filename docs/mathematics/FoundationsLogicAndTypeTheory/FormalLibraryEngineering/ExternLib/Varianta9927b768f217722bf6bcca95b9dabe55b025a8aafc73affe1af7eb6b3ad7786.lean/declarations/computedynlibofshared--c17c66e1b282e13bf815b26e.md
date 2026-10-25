# computeDynlibOfShared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89a87117277a8473dcb2c6b562a6f6eb06af4ec782dd291bd5947d0ec107e8be",
  "kind": "def",
  "lexical_name": "computeDynlibOfShared",
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
  "slug": "computedynlibofshared--c17c66e1b282e13bf815b26e",
  "source": {
    "blob": "63473191127bc375891be84b98cea2a5c6dc3453",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Varianta9927b768f217722bf6bcca95b9dabe55b025a8aafc73affe1af7eb6b3ad7786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c17c66e1b282e13bf815b26e99fa75665e078b7ba31083653d68cedc98a8bb7f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Varianta9927b768f217722bf6bcca95b9dabe55b025a8aafc73affe1af7eb6b3ad7786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89a87117277a8473dcb2c6b562a6f6eb06af4ec782dd291bd5947d0ec107e8be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def computeDynlibOfShared (sharedLibTarget : Job FilePath) : SpawnM (Job Dynlib) :=
  sharedLibTarget.mapM fun sharedLib => do
    if let some stem := sharedLib.fileStem then
      if Platform.isWindows then
        return {path := sharedLib, name := stem}
      else if stem.startsWith "lib" then
        return {path := sharedLib, name := stem.drop 3 |>.copy}
      else
        error s!"shared library `{sharedLib}` does not start with `lib`; this is not supported on Unix"
    else
      error s!"shared library `{sharedLib}` has no file name"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Varianta9927b768f217722bf6bcca95b9dabe55b025a8aafc73affe1af7eb6b3ad7786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Varianta9927b768f217722bf6bcca95b9dabe55b025a8aafc73affe1af7eb6b3ad7786.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63473191127bc375891be84b98cea2a5c6dc3453` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
