# Workspace.saveOutputs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f344f3fb7f8ba7077785b679ecacb37063602550c257f399ba877a91089d0e5f",
  "kind": "def",
  "lexical_name": "Workspace.saveOutputs",
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
  "slug": "workspace-saveoutputs--f441bf0292f91181effb3d7a",
  "source": {
    "blob": "dc19a860759f5e616e6f0708ea1fb91a716715a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 285,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f441bf0292f91181effb3d7aa466487f6fd666a00b531dbeb4ac8db304ad0855",
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

Occurrence: `declaration:f344f3fb7f8ba7077785b679ecacb37063602550c257f399ba877a91089d0e5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Workspace.saveOutputs
  [logger : MonadLog BaseIO] (ws : Workspace) (outputsRef? : Option CacheRef)
  (out : IO.FS.Stream) (outputsFile : FilePath) (isVerbose : Bool)
: BaseIO Unit := do
  unless ws.isRootArtifactCacheWritable do
    logWarning s!"{ws.root.prettyName}: \
      the artifact cache is not enabled for this package, so the artifacts described \
      by the mappings produced by `-o` will not necessarily be available in the cache."
  if let some ref := outputsRef? then
    match (← (← ref.get).writeFile outputsFile ws.root.isPlatformIndependent ∅) with
    | .ok _ log =>
      if !log.isEmpty && isVerbose then
        print! out "There were issues saving input-to-output mappings from the build:\n"
        log.replay
    | .error _ log =>
      print! out "Failed to save input-to-output mappings from the build.\n"
      if isVerbose then
        log.replay
  else
    print! out "Workspace missing input-to-output mappings from build. (This is likely a bug in Lake.)\n"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc19a860759f5e616e6f0708ea1fb91a716715a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
