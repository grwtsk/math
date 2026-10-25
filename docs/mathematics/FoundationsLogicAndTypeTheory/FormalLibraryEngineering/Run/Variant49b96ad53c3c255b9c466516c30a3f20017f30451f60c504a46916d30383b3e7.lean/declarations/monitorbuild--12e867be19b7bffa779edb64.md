# monitorBuild

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:485b5f43891d9302f6bfbbbcf855aca9b30efc9e2b9e9abb76cdc2ca14751984",
  "kind": "def",
  "lexical_name": "monitorBuild",
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
  "slug": "monitorbuild--12e867be19b7bffa779edb64",
  "source": {
    "blob": "dc19a860759f5e616e6f0708ea1fb91a716715a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 395,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12e867be19b7bffa779edb642bfcf6b1456b6eda2d2f3d4dd2806abcc7c31097",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:485b5f43891d9302f6bfbbbcf855aca9b30efc9e2b9e9abb76cdc2ca14751984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monitorBuild (mctx : MonitorContext) (job : Job (Job α)) : BaseIO (BuildResult α) := do
  let result ← monitorJob mctx job
  match result.out with
  | .ok job =>
    if let some a ← job.wait? then
      return {result with out := .ok a}
    else
      -- Job failed but was unreported in the monitor. It was likely not properly registered.
      return {result with out := .error <|
        "uncaught top-level build failure (this is likely a bug in the build script)"}
  | .error e =>
    return {result with out := .error e}

/--
Returns whether a build is needed to validate `build`. Does not report on the attempted build.

This is equivalent to checking whether `lake build --no-build` exits with code 0.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc19a860759f5e616e6f0708ea1fb91a716715a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
