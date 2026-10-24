# getRepoFromRemote

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c895294caae0e7a7bacdb93e028a947f0c98cbedb1c7492ecbec4b7b367281b6",
  "kind": "def",
  "lexical_name": "getRepoFromRemote",
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
  "slug": "getrepofromremote--76dfaa70a7de49f937d8ba6c",
  "source": {
    "blob": "b1bccf23b6211eb834b69b0220b8949534ec8f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76dfaa70a7de49f937d8ba6cbafdd884e2fae2fb666fa0b17bf786a1c697c933",
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

Occurrence: `declaration:c895294caae0e7a7bacdb93e028a947f0c98cbedb1c7492ecbec4b7b367281b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getRepoFromRemote (mathlibDepPath : FilePath) (remoteName : String) (errorContext : String) : IO (Option String) := do
  -- If the remote is already a valid URL, attempt to extract the repo from it. This happens with `gh pr checkout`
  if isRemoteURL remoteName then
    repoFromURL remoteName
  else
  -- If not, we use `git remote get-url` to find the URL of the remote. This assumes the remote has a
  -- standard name like `origin` or `upstream` or it errors out.
  let out ← IO.Process.output
    {cmd := "git", args := #["remote", "get-url", remoteName], cwd := mathlibDepPath}
  -- If `git remote get-url` fails then return none.
  let output := out.stdout.trimAscii
  unless out.exitCode == 0 do
    IO.println s!"\
      Warning: failed to run Git to determine Mathlib's repository from {remoteName} remote\n\
      {errorContext}\n\
      Continuing to fetch the cache from {MATHLIBREPO}."
    return none
  -- Finally attempt to extract the repository from the remote URL returned by `git remote get-url`
  repoFromURL output.copy
where repoFromURL (url : String) : IO (Option String) := do
    if let some repo := extractRepoFromUrl url then
      return some repo
    else
      IO.println s!"\
        Warning: Failed to extract repository from remote URL: {url}.\n\
        {errorContext}\n\
        Continuing to fetch the cache from {MATHLIBREPO}."
      return none

/--
Finds the remote name that points to `leanprover-community/mathlib4` repository.
Returns the remote name and prints warnings if the setup doesn't follow conventions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bccf23b6211eb834b69b0220b8949534ec8f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
