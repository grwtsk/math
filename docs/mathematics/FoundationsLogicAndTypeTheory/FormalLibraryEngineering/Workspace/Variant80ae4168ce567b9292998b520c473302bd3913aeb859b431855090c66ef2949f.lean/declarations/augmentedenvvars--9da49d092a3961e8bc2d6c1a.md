# augmentedEnvVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:099d394f9ae5f6f696403396aa6b711bc2b4368b65a819ab54a3eedb414289c0",
  "kind": "def",
  "lexical_name": "augmentedEnvVars",
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
  "slug": "augmentedenvvars--9da49d092a3961e8bc2d6c1a",
  "source": {
    "blob": "92df575a8aa0cd7ea4a85b0831986359d40a735f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 417,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variant80ae4168ce567b9292998b520c473302bd3913aeb859b431855090c66ef2949f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9da49d092a3961e8bc2d6c1acf4c18f18a69bff909b1f373579c63eed02171e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variant80ae4168ce567b9292998b520c473302bd3913aeb859b431855090c66ef2949f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:099d394f9ae5f6f696403396aa6b711bc2b4368b65a819ab54a3eedb414289c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def augmentedEnvVars (self : Workspace) : Array (String × Option String) :=
  let vars := self.lakeEnv.baseVars ++ #[
    ("LAKE_CACHE_DIR", some self.lakeCache.dir.toString),
    ("LAKE_ARTIFACT_CACHE", if let some b := self.enableArtifactCache? then toString b else ""),
    ("LAKE_RESTORE_ARTIFACTS", if let some b := self.restoreAllArtifacts? then toString b else ""),
    ("LEAN_PATH", some self.augmentedLeanPath.toString),
    ("LEAN_SRC_PATH", some self.augmentedLeanSrcPath.toString),
    -- Allow the Lean version to change dynamically within core
    ("LEAN_GITHASH", if self.bootstrap then none else some self.lakeEnv.leanGithash),
    ("PATH", some self.augmentedPath.toString)
  ]
  if Platform.isWindows then
    vars
  else
    vars.push (sharedLibPathEnvVar, some self.augmentedSharedLibPath.toString)

/-- Remove all packages' build outputs (i.e., delete their build directories). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variant80ae4168ce567b9292998b520c473302bd3913aeb859b431855090c66ef2949f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variant80ae4168ce567b9292998b520c473302bd3913aeb859b431855090c66ef2949f.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92df575a8aa0cd7ea4a85b0831986359d40a735f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
