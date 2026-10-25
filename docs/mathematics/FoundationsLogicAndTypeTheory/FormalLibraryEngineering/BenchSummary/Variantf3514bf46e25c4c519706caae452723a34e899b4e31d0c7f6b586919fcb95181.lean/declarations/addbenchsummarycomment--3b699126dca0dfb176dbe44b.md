# addBenchSummaryComment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e519022441fe9cba1779cc0d2c7711cf8205b95edde88259b9e933364d5f044",
  "kind": "def",
  "lexical_name": "addBenchSummaryComment",
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
  "slug": "addbenchsummarycomment--3b699126dca0dfb176dbe44b",
  "source": {
    "blob": "a661a13ad84709fa68b757a571da8109cdb3a0ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 168,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchSummary/Variantf3514bf46e25c4c519706caae452723a34e899b4e31d0c7f6b586919fcb95181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b699126dca0dfb176dbe44b39b7e9e78566ae0121fd0b1ac84ae7f854deab14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchSummary/Variantf3514bf46e25c4c519706caae452723a34e899b4e31d0c7f6b586919fcb95181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e519022441fe9cba1779cc0d2c7711cf8205b95edde88259b9e933364d5f044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addBenchSummaryComment (PR : Nat) (repo : String) (jobID : Nat := 0)
    (author : String := "leanprover-bot") (tempFile : String := "benchOutput.json") :
    CommandElabM Unit := do
  let job_msg := s!"\n[CI run](https://github.com/{repo}/actions/runs/{jobID})"
  let PR := s!"{PR}"
  let jq := s!".comments | last | select(.author.login==\"{author}\") | .body"

  -- retrieve the relevant comment
  let gh_pr_comments : IO.Process.SpawnArgs :=
    { cmd := "gh", args := #["pr", "view", PR, "--repo", repo, "--json", "comments", "--jq", jq] }
  -- This is the content of the last comment made by `leanprover-bot` to the PR `PR`.
  let output ← IO.Process.run gh_pr_comments
  -- URLs of benchmarking results have the form {something}/compare/source_sha/to/target_sha,
  -- where source_sha and target_sha are the commit hashes of the revisions being benchmarked.
  -- The comment contains such a URL (and only one); parse the revisions from the comment.
  let frags := output.split (· == '/')
  let some compIdx := frags.findIdx? (· == "compare") |
    logInfo "No 'compare' found in URL."
    return
  let source := frags.getD (compIdx + 1) ""
  let target := (frags.getD (compIdx + 3) "").takeWhile (· != ')')
  if (source.length, target.length) != (36, 36) then
    logInfo m!"Found\nsource: '{source}'\ntarget: '{target}'\ninstead of two commit hashes."
    return
  dbg_trace s!"Using commits\nsource: '{source}'\ntarget: '{target}'\n"

  -- retrieve the data from the speed-center
  let curlSpeedCenter : IO.Process.SpawnArgs :=
    { cmd := "curl"
      args := #[s!"https://speed.lean-lang.org/mathlib4/api/compare/{source}/to/{target}?all_values=true"] }
  dbg_trace "\n#running\n\
    curl https://speed.lean-lang.org/mathlib4/api/compare/{source}/to/{target}?all_values=true > {tempFile}.src"
  let bench ← IO.Process.run curlSpeedCenter
  IO.FS.writeFile (tempFile ++ ".src") bench

  -- Extract all instruction changes whose magnitude is larger than `threshold`.
  let threshold := 10 ^ 9
  let jq1 : IO.Process.SpawnArgs :=
    { cmd := "jq"
      args := #["-r", "--arg", "thr", s!"{threshold}",
        ".differences | .[] | ($thr|tonumber) as $th |
        select(.dimension.metric == \"instructions\" and ((.diff >= $th) or (.diff <= -$th)))",
        (tempFile ++ ".src")] }
  dbg_trace "\n#running\n\
    jq -r --arg thr {threshold} '.differences | .[] | ($thr|tonumber) as $th |\n  \
      select(.dimension.metric == \"instructions\" and ((.diff >= $th) or (.diff <= -$th)))' \
      {tempFile}.src > {tempFile}"
  let firstFilter ← IO.Process.run jq1
  -- we leave `tempFile.src` unchanged and we switch to updating `tempfile`: this is useful for
  -- debugging, as it preserves the original data downloaded from the speed-center
  IO.FS.writeFile tempFile firstFilter
  -- Write these in compact form, in the format suitable for `benchOutput`.
  let jq2 : IO.Process.SpawnArgs :=
    { cmd := "jq"
      args := #["-c", "[{file: .dimension.benchmark, diff: .diff, reldiff: .reldiff}]", tempFile] }
  dbg_trace "\n#running\n\
    jq -c '[\{file: .dimension.benchmark, diff: .diff, reldiff: .reldiff}]' {tempFile} > \
      {tempFile}.2"
  let secondFilter ← IO.Process.run jq2
  if secondFilter == "" then
    let _ ← IO.Process.run
      { cmd := "gh", args := #["pr", "comment", PR, "--repo", repo, "--body",
        s!"No benchmark entry differed by at least {formatDiff threshold} instructions." ++
          job_msg] }
  else
  IO.FS.writeFile tempFile secondFilter
  let jq3 : IO.Process.SpawnArgs :=
    { cmd := "jq", args := #["-n", "reduce inputs as $in (null; . + $in)", tempFile] }
  dbg_trace "\n#running\n\
    jq -n 'reduce inputs as $in (null; . + $in)' {tempFile}.2 > {tempFile}.3"
  let thirdFilter ← IO.Process.run jq3
  let report ← benchOutput thirdFilter
  IO.println report
  -- Post the computed summary as a github comment.
  let add_comment : IO.Process.SpawnArgs :=
    { cmd := "gh", args := #["pr", "comment", PR, "--repo", repo, "--body", report ++ job_msg] }
  let _ ← IO.Process.run add_comment

end BenchAction

-- CI adds the following line, replacing `putPR` with the PR number:
--run_cmd BenchAction.addBenchSummaryComment putPR "leanprover-community/mathlib4"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchSummary/Variantf3514bf46e25c4c519706caae452723a34e899b4e31d0c7f6b586919fcb95181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchSummary/Variantf3514bf46e25c4c519706caae452723a34e899b4e31d0c7f6b586919fcb95181.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a661a13ad84709fa68b757a571da8109cdb3a0ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
