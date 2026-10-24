# findMathlibRemote

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9615bbe4b1b70ad73691604f3eb4df8618f8e0ec1511b8efb854bfc8b44b1722",
  "kind": "def",
  "lexical_name": "findMathlibRemote",
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
  "slug": "findmathlibremote--0f8249b89fe2772350674b7b",
  "source": {
    "blob": "b1bccf23b6211eb834b69b0220b8949534ec8f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f8249b89fe2772350674b7bff09e58767def1b9007ec5f5ba91e91f9e8b2b29",
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

Occurrence: `declaration:9615bbe4b1b70ad73691604f3eb4df8618f8e0ec1511b8efb854bfc8b44b1722`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findMathlibRemote (mathlibDepPath : FilePath) : IO String := do
  let remotesInfo ← IO.Process.output
    {cmd := "git", args := #["remote", "-v"], cwd := mathlibDepPath}

  unless remotesInfo.exitCode == 0 do
    throw <| IO.userError s!"\
      Failed to run Git to list remotes (exit code: {remotesInfo.exitCode}).\n\
      Ensure Git is installed.\n\
      Stdout:\n{remotesInfo.stdout.trimAscii}\nStderr:\n{remotesInfo.stderr.trimAscii}\n"

  let remoteLines := remotesInfo.stdout.splitToList (· == '\n')
  let mut mathlibRemote : Option String := none
  let mut originPointsToMathlib : Bool := false

  for line in remoteLines do
    let parts := line.trimAscii.copy.splitToList (· == '\t')
    if parts.length >= 2 then
      let remoteName := parts[0]!
      let remoteUrl := parts[1]!.takeWhile (· != ' ') |>.copy -- Remove (fetch) or (push) suffix

      -- Check if this remote points to leanprover-community/mathlib4
      let isMathlibRepo := remoteUrl.contains "leanprover-community/mathlib4"

      if isMathlibRepo then
        if remoteName == "origin" then
          originPointsToMathlib := true
        mathlibRemote := some remoteName

  match mathlibRemote with
  | none =>
    throw <| IO.userError "Could not find a remote pointing to leanprover-community/mathlib4"
  | some remoteName =>
    if remoteName != "upstream" then
      let mut warning := s!"Some Mathlib ecosystem tools assume that the git remote for `leanprover-community/mathlib4` is named `upstream`. You have named it `{remoteName}` instead. We recommend changing the name to `upstream`."
      if originPointsToMathlib then
        warning := warning ++ " Moreover, `origin` should point to your own fork of the mathlib4 repository."
      warning := warning ++ " You can set this up with `git remote add upstream https://github.com/leanprover-community/mathlib4.git`."
      IO.println s!"Warning: {warning}"
    return remoteName

/--
Extracts PR number from a git ref like "refs/remotes/upstream/pr/1234"
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bccf23b6211eb834b69b0220b8949534ec8f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
