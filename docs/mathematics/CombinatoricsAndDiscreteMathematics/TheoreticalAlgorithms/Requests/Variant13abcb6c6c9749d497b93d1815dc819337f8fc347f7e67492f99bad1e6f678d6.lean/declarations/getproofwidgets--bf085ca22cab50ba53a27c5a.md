# getProofWidgets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8615c7e246f8274898bc9d08262f0f5c9c8992a63dc0bcd8aa3e3f61568302e",
  "kind": "def",
  "lexical_name": "getProofWidgets",
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
  "slug": "getproofwidgets--bf085ca22cab50ba53a27c5a",
  "source": {
    "blob": "cd8649fbc13ce4c7b901e279c83d2d8fb64bbf9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 201,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant13abcb6c6c9749d497b93d1815dc819337f8fc347f7e67492f99bad1e6f678d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf085ca22cab50ba53a27c5adc01f548bec61baabc6f74a1e3485716d6711883",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant13abcb6c6c9749d497b93d1815dc819337f8fc347f7e67492f99bad1e6f678d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8615c7e246f8274898bc9d08262f0f5c9c8992a63dc0bcd8aa3e3f61568302e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getProofWidgets (buildDir : FilePath) : IO Unit := do
  if (← buildDir.pathExists) then
    -- Check if the ProofWidgets build is out-of-date via `lake`.
    -- This is done through Lake as cache has no simple heuristic
    -- to determine whether the ProofWidgets JS is out-of-date.
    let exitCode ← (← IO.Process.spawn {cmd := "lake", args := #["-q", "build", "--no-build", "proofwidgets:release"]}).wait
    if exitCode == 0 then -- up-to-date
      return
    else if exitCode == 3 then -- needs fetch (`--no-build` triggered)
      pure ()
    else
      throw <| IO.userError s!"Failed to validate ProofWidgets cloud release: lake failed with error code {exitCode}"
  -- Download and unpack the ProofWidgets cloud release (for its `.js` files)
  let exitCode ← (← IO.Process.spawn {cmd := "lake", args := #["-q", "build", "proofwidgets:release"]}).wait
  if exitCode != 0 then
    throw <| IO.userError s!"Failed to fetch ProofWidgets cloud release: lake failed with error code {exitCode}"
  -- Prune non-JS ProofWidgets files (e.g., `olean`, `.c`)
  try
    IO.FS.removeDirAll (buildDir / "lib")
    IO.FS.removeDirAll (buildDir / "ir")
  catch e =>
    throw <| IO.userError s!"Failed to prune ProofWidgets cloud release: {e}"

/-- Downloads missing files, and unpacks files. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant13abcb6c6c9749d497b93d1815dc819337f8fc347f7e67492f99bad1e6f678d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant13abcb6c6c9749d497b93d1815dc819337f8fc347f7e67492f99bad1e6f678d6.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd8649fbc13ce4c7b901e279c83d2d8fb64bbf9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
