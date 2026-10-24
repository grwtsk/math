# getProofWidgets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf9865617c420cde8ed2197c128bbe74947253256fa4893c518cdd702901d218",
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
  "slug": "getproofwidgets--d3af29631958584e7792e3fe",
  "source": {
    "blob": "a0b653c773f597f51d8c79211ec71b2d5dd61f1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 193,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantdffbd8084c62e819f51c56f703d634b740c40a13a5294ff7bceccf39b737572c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3af29631958584e7792e3fe6d28b7558ed14c2b2a18a72f5498b949b23435eb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantdffbd8084c62e819f51c56f703d634b740c40a13a5294ff7bceccf39b737572c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf9865617c420cde8ed2197c128bbe74947253256fa4893c518cdd702901d218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–216.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantdffbd8084c62e819f51c56f703d634b740c40a13a5294ff7bceccf39b737572c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantdffbd8084c62e819f51c56f703d634b740c40a13a5294ff7bceccf39b737572c.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0b653c773f597f51d8c79211ec71b2d5dd61f1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
