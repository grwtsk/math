# findTransitiveImportsFromSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3cba538f03ff68657d7930cadd67f11df8c2ce65fedd5585161679094e1d70e",
  "kind": "def",
  "lexical_name": "findTransitiveImportsFromSource",
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
  "slug": "findtransitiveimportsfromsource--1419d70afa91bbe2efb66ab1",
  "source": {
    "blob": "ddf7df9fe1dbdfc35e68aca6ac4fb1160c6269b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromSource/Variant946b40de8f9d065a4ea58ae3985ddb31e9da4e22df4aeb58b719c573f5500609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1419d70afa91bbe2efb66ab13ef5a3ca80a15e8f1f4d3cc8e42fa7b73b711428",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromSource/Variant946b40de8f9d065a4ea58ae3985ddb31e9da4e22df4aeb58b719c573f5500609.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3cba538f03ff68657d7930cadd67f11df8c2ce65fedd5585161679094e1d70e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def findTransitiveImportsFromSource
  (startPath : System.FilePath)
  (rootFilter : Option Name := none)
  : IO NameSet := do
  let mut visited : NameSet := {}
  let mut queue := #[]

  -- Initialize with direct imports from the start file
  for imp in ← findImportsFromSource startPath do
    match rootFilter with
    | some root => if imp.getRoot == root then queue := queue.push imp
    | none => queue := queue.push imp

  -- Process queue with BFS
  while h : queue.size > 0 do
    let module := queue[0]
    queue := queue.eraseIdx 0

    if visited.contains module then continue
    visited := visited.insert module

    -- Convert module name to file path
    let path := System.mkFilePath (module.components.map (·.toString)) |>.addExtension "lean"

    if ← path.pathExists then
      for imp in ← findImportsFromSource path do
        match rootFilter with
        | some root =>
          if imp.getRoot == root && !visited.contains imp then
            queue := queue.push imp
        | none =>
          if !visited.contains imp then
            queue := queue.push imp

  return visited
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromSource/Variant946b40de8f9d065a4ea58ae3985ddb31e9da4e22df4aeb58b719c573f5500609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromSource/Variant946b40de8f9d065a4ea58ae3985ddb31e9da4e22df4aeb58b719c573f5500609.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddf7df9fe1dbdfc35e68aca6ac4fb1160c6269b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
