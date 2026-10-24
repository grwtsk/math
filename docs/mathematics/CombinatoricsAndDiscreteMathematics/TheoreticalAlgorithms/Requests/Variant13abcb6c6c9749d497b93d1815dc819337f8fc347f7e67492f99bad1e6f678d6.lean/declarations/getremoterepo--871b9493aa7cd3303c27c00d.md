# getRemoteRepo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8406a15bb5ad2644b4fd5a507c20964420ac3c11a364761d88e7f0b559ca3f44",
  "kind": "def",
  "lexical_name": "getRemoteRepo",
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
  "slug": "getremoterepo--871b9493aa7cd3303c27c00d",
  "source": {
    "blob": "cd8649fbc13ce4c7b901e279c83d2d8fb64bbf9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 20,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant13abcb6c6c9749d497b93d1815dc819337f8fc347f7e67492f99bad1e6f678d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:871b9493aa7cd3303c27c00d797abf2c748b042dddd5dddc5d9b8ac63f7fe4c7",
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

Occurrence: `declaration:8406a15bb5ad2644b4fd5a507c20964420ac3c11a364761d88e7f0b559ca3f44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getRemoteRepo : IO String := do
  let out ← IO.Process.output {cmd := "git", args := #["remote", "get-url", "origin"]}
  unless out.exitCode == 0 do
    throw <| IO.userError s!"\
      Failed to run Git to determine project repository (exit code: {out.exitCode}).\n\
      Ensure Git is installed and the `origin` remote points to the project's GitHub repository.\n\
      Stdout:\n{out.stdout.trim}\nStderr:{out.stderr.trim}\n"
  -- No strong validation is done here because this is simply used as a smart default
  -- for `lake exe cache get`, which is freely modifiable by any user.
  let url := out.stdout.trim.stripSuffix ".git"
  let repo? : Option String := do
    let pos ← url.revFind (· == '/')
    let pos ← url.revFindAux (fun c => c == '/'  || c == ':') pos
    return url.extract (url.next pos) url.endPos
  if let some repo := repo? then
    return repo
  else
    throw <| IO.userError s!"\
      Failed to determine project repository from remote URL.\n\
      Ensure the `origin` Git remote points to the project's GitHub repository.\n\
      Detected URL: {url}"

-- FRO cache is flaky so disable until we work out the kinks: https://leanprover.zulipchat.com/#narrow/channel/113488-general/topic/The.20cache.20doesn't.20work/near/411058849
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant13abcb6c6c9749d497b93d1815dc819337f8fc347f7e67492f99bad1e6f678d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant13abcb6c6c9749d497b93d1815dc819337f8fc347f7e67492f99bad1e6f678d6.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd8649fbc13ce4c7b901e279c83d2d8fb64bbf9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
