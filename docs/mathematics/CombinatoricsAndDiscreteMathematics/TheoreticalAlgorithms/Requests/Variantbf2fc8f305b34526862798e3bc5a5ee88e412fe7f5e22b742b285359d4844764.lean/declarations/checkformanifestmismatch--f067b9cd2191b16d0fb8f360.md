# checkForManifestMismatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1646236dd704eb1b3f2979325b3ea0fd84628ea221c94d7914066e7bc777fd45",
  "kind": "def",
  "lexical_name": "checkForManifestMismatch",
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
  "slug": "checkformanifestmismatch--f067b9cd2191b16d0fb8f360",
  "source": {
    "blob": "b1bccf23b6211eb834b69b0220b8949534ec8f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1045,
    "line": 1003,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f067b9cd2191b16d0fb8f360b75af3d78e3ccbb99c88e8aa873229417728c2c7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1646236dd704eb1b3f2979325b3ea0fd84628ea221c94d7914066e7bc777fd45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1003–1045.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkForManifestMismatch : IO.CacheM Unit := do
  let mathlibDepPath := (← read).mathlibDepPath
  let downstreamEntries ← Lake.Manifest.tryLoadEntries "lake-manifest.json"
  let mathlibEntries ← Lake.Manifest.tryLoadEntries (mathlibDepPath / "lake-manifest.json")
  let downstreamByName : Std.HashMap Lean.Name Lake.PackageEntry :=
    downstreamEntries.foldl (init := ∅) fun m e => m.insert e.name e
  let mut directMismatches : Array (String × String × String) := #[]
  let mut inheritedMismatches : Array (String × String × String) := #[]
  for mathlibEntry in mathlibEntries do
    if let some downstreamEntry := downstreamByName[mathlibEntry.name]? then
      unless packageEntrySrcMatch mathlibEntry downstreamEntry do
        let name := mathlibEntry.name.toString
        let downstreamDesc := packageEntrySrcDesc downstreamEntry
        let mathlibDesc := packageEntrySrcDesc mathlibEntry
        if downstreamEntry.inherited then
          inheritedMismatches := inheritedMismatches.push (name, downstreamDesc, mathlibDesc)
        else
          directMismatches := directMismatches.push (name, downstreamDesc, mathlibDesc)
  let allMismatches := directMismatches ++ inheritedMismatches
  unless allMismatches.isEmpty do
    IO.println "Warning: your project pins different versions of some dependencies than Mathlib."
    IO.println "This will cause `lake exe cache get` to compute wrong hashes.\n"
    for (name, downstreamDesc, mathlibDesc) in allMismatches do
      IO.println s!"  {name}:"
      IO.println s!"    project: {downstreamDesc}"
      IO.println s!"    mathlib: {mathlibDesc}"
    if !directMismatches.isEmpty then
      IO.println "\nRemove these dependencies from your lakefile and let them come \
        transitively from Mathlib."
    if !inheritedMismatches.isEmpty then
      IO.println "\nSome mismatched dependencies come transitively from other packages \
        in your lakefile. \
        Try putting `require mathlib` last in your lakefile so that Mathlib's versions take \
        precedence, then run `lake update`."
    IO.Process.exit 1

/-- Downloads missing files, and unpacks files.

`repo` is the already-resolved GitHub repo (see `resolveRepo`); its
trust-ordered container list from `defaultContainersForRepo` is the single
source of truth for what gets tried — there's no separate outer-loop
iteration. Master's cache reaches fork builds via `master` being in the fork
chain (the highest-trust source, holding the bulk of any fork's deps). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean#L1003).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bccf23b6211eb834b69b0220b8949534ec8f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
