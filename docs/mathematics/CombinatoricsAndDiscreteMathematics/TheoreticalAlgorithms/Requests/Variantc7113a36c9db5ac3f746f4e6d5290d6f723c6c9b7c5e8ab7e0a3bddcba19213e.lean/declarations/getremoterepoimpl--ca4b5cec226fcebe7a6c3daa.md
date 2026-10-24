# getRemoteRepoImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c936f7cebe637f425927e69f78095128d6c43849b81175bc6ac8215fd0d3960",
  "kind": "def",
  "lexical_name": "getRemoteRepoImpl",
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
  "slug": "getremoterepoimpl--ca4b5cec226fcebe7a6c3daa",
  "source": {
    "blob": "dd81bd18c951748911d7ae56289c5ec095f0c087",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 156,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantc7113a36c9db5ac3f746f4e6d5290d6f723c6c9b7c5e8ab7e0a3bddcba19213e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca4b5cec226fcebe7a6c3daa345f805e7b0740683bb26f09474d72c01d16b2db",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantc7113a36c9db5ac3f746f4e6d5290d6f723c6c9b7c5e8ab7e0a3bddcba19213e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c936f7cebe637f425927e69f78095128d6c43849b81175bc6ac8215fd0d3960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getRemoteRepoImpl (mathlibDepPath : FilePath) : IO (Option RepoInfo) := do

  -- Since currently we need to push a PR to `leanprover-community/mathlib` build a user cache,
  -- we check if we are a special branch or a branch with PR. This leaves out non-PRed fork
  -- branches. These should be covered if we ever change how the cache is uploaded from forks
  -- to obviate the need for a PR.
  let currentBranch ← IO.Process.output
    {cmd := "git", args := #["rev-parse", "--abbrev-ref", "HEAD"], cwd := mathlibDepPath}

  if currentBranch.exitCode == 0 then
    let branchName := currentBranch.stdout.trimAscii.dropPrefix "heads/"
    IO.println s!"Current branch: {branchName}"

    -- Check if we're in a detached HEAD state at a nightly-testing tag
    let isDetachedAtNightlyTesting ← if branchName == "HEAD".toSlice then
      isDetachedAtNightlyTesting mathlibDepPath
    else
      pure false

    -- Check if we're on a branch that should use nightly-testing remote
    let shouldUseNightlyTesting := branchName == "nightly-testing".toSlice ||
                                  branchName.startsWith "lean-pr-testing-" ||
                                  branchName.startsWith "batteries-pr-testing-" ||
                                  branchName.startsWith "bump/" ||
                                  isDetachedAtNightlyTesting

    if shouldUseNightlyTesting then
      let repo := "leanprover-community/mathlib4-nightly-testing"
      IO.println s!"Using cache from nightly-testing remote: {repo}"
      return some {repo := repo}

    -- Only search for PR refs if we're not on a regular branch like master, bump/*, or nightly-testing*
    -- let isSpecialBranch := branchName == "master" || branchName.startsWith "bump/" ||
    --                       branchName.startsWith "nightly-testing"

    -- TODO: this code is currently broken in two ways: 1. you need to write `%(refname)` in quotes and
    -- 2. it is looking in the wrong place when in detached HEAD state.
    -- We comment it out for now, but we should fix it later.
    -- Check if the current commit coincides with any PR ref
    -- if !isSpecialBranch then
    --   let mathlibRemoteName ← findMathlibRemote mathlibDepPath
    --   let currentCommit ← IO.Process.output
    --     {cmd := "git", args := #["rev-parse", "HEAD"], cwd := mathlibDepPath}
    --
    --   if currentCommit.exitCode == 0 then
    --     let commit := currentCommit.stdout.trim
    --     -- Get all PR refs that contain this commit
    --     let prRefPattern := s!"refs/remotes/{mathlibRemoteName}/pr/*"
    --     let refsInfo ← IO.Process.output
    --       {cmd := "git", args := #["for-each-ref", "--contains", commit, prRefPattern, "--format=%(refname)"], cwd := mathlibDepPath}
    --     -- The code below is for debugging purposes currently
    --     IO.println s!"`git for-each-ref --contains {commit} {prRefPattern} --format=%(refname)` returned:
    --     {refsInfo.stdout.trim} with exit code {refsInfo.exitCode} and stderr: {refsInfo.stderr.trim}."
    --     let refsInfo' ← IO.Process.output
    --       {cmd := "git", args := #["for-each-ref", "--contains", commit, prRefPattern, "--format=\"%(refname)\""], cwd := mathlibDepPath}
    --     IO.println s!"`git for-each-ref --contains {commit} {prRefPattern} --format=\"%(refname)\"` returned:
    --     {refsInfo'.stdout.trim} with exit code {refsInfo'.exitCode} and stderr: {refsInfo'.stderr.trim}."
    --
    --     if refsInfo.exitCode == 0 && !refsInfo.stdout.trim.isEmpty then
    --       let prRefs := refsInfo.stdout.trim.split (· == '\n')
    --       -- Extract PR numbers from refs like "refs/remotes/upstream/pr/1234"
    --       for prRef in prRefs do
    --         if let some prNumber := extractPRNumber prRef then
    --           -- Get PR details using gh
    --           let prInfo ← IO.Process.output
    --             {cmd := "gh", args := #["pr", "view", toString prNumber, "--json", "headRefName,headRepositoryOwner,number"], cwd := mathlibDepPath}
    --           if prInfo.exitCode == 0 then
    --             if let .ok json := Lean.Json.parse prInfo.stdout.trim then
    --               if let .ok owner := json.getObjValAs? Lean.Json "headRepositoryOwner" then
    --                 if let .ok login := owner.getObjValAs? String "login" then
    --                   if let .ok repoName := json.getObjValAs? String "headRefName" then
    --                     if let .ok prNum := json.getObjValAs? Nat "number" then
    --                       let repo := s!"{login}/mathlib4"
    --                       IO.println s!"Using cache from PR #{prNum} source: {login}/{repoName} (commit {commit.take 8} found in PR ref)"
    --                       let useFirst := if login != "leanprover-community" then true else false
    --                       return {repo := repo, useFirst := useFirst}

  -- Fall back to using the remote that the current branch is tracking
  let trackingRemote ← IO.Process.output
    {cmd := "git", args := #["config", "--get", s!"branch.{currentBranch.stdout.trimAscii}.remote"], cwd := mathlibDepPath}

  let remoteName := if trackingRemote.exitCode == 0 then
    trackingRemote.stdout.trimAscii.copy
  else
    -- If no tracking remote is configured, fall back to origin
    "origin"

  let repo? ← getRepoFromRemote mathlibDepPath remoteName
    s!"Ensure Git is installed and the '{remoteName}' remote points to its GitHub repository."
  match repo? with
  | some repo =>
    IO.println s!"Using cache from {remoteName}: {repo?}"
    return some {repo := repo}
  | none =>
    IO.println s!"Using cache from {MATHLIBREPO}."
    return none

/--
Attempts to determine the GitHub repository of a version of Mathlib from its Git remote.
If the current commit coincides with a PR ref, it will determine the source fork
of that PR rather than just using the origin remote.

Returns `none` if git is unavailable, the path is not inside a git checkout, or
the remote cannot be resolved. This is the expected outcome when `cache get` is
invoked on a dependency that was fetched as an archive rather than a git clone;
callers fall back to `MATHLIBREPO` and the master container.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantc7113a36c9db5ac3f746f4e6d5290d6f723c6c9b7c5e8ab7e0a3bddcba19213e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantc7113a36c9db5ac3f746f4e6d5290d6f723c6c9b7c5e8ab7e0a3bddcba19213e.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd81bd18c951748911d7ae56289c5ec095f0c087` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
