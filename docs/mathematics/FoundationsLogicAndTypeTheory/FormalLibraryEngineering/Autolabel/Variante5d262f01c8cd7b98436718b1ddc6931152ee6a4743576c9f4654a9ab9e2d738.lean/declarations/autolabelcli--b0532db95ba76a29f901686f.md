# autoLabelCli

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:092cbe7ee44358c2ee6eceaf815a4ef0837377b667546a1239047d57cb43cd54",
  "kind": "def",
  "lexical_name": "autoLabelCli",
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
  "slug": "autolabelcli--b0532db95ba76a29f901686f",
  "source": {
    "blob": "08d48cba7cf8b858e47f5dd0cf4ae37c63e1d6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 403,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variante5d262f01c8cd7b98436718b1ddc6931152ee6a4743576c9f4654a9ab9e2d738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0532db95ba76a29f901686f196d592b77a2a5e9a616cb822956fc33418081c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variante5d262f01c8cd7b98436718b1ddc6931152ee6a4743576c9f4654a9ab9e2d738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:092cbe7ee44358c2ee6eceaf815a4ef0837377b667546a1239047d57cb43cd54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def autoLabelCli (args : Cli.Parsed) : IO UInt32 := do
  let force := args.hasFlag "force"
  let tool: GithubInteraction :=
    match ((args.flag? "pr").map (·.as! Nat)), args.hasFlag "gh", args.flag? "curl" with
    | none,    _,     _             => .none
    | some _,  false, none          => .none
    | some pr, true,  _             => .gh pr
    | some pr, false, some curlFlag => .curl pr (curlFlag.as! String)

  -- test: validate that all paths in `mathlibLabelData` actually exist
  let mut valid := true
  for label in mathlibLabels do
    let data := mathlibLabelData label
    for dir in data.dirs do
      unless ← FilePath.pathExists dir do
        -- print github annotation error
        println <| AutoLabel.githubAnnotation "error" "scripts/autolabel.lean"
          s!"Misformatted `{ ``AutoLabel.mathlibLabelData }`"
          s!"directory '{dir}' does not exist but is included by label '{label}'. \
          Please update `{ ``AutoLabel.mathlibLabelData }`!"
        valid := false
    for dir in data.exclusions do
      unless ← FilePath.pathExists dir do
        -- print github annotation error
        println <| AutoLabel.githubAnnotation "error" "scripts/autolabel.lean"
          s!"Misformatted `{ ``AutoLabel.mathlibLabelData }`"
          s!"directory '{dir}' does not exist but is excluded by label '{label}'. \
          Please update `{ ``AutoLabel.mathlibLabelData }`!"
        valid := false
  unless valid do
    return 2

  -- test: validate that the labels cover all of the `Mathlib/` folder
  let notMatchedPaths ← findUncoveredPaths "Mathlib" (exceptions := mathlibUnlabelled)
  if notMatchedPaths.size > 0 then
    -- print github annotation warning
    -- note: only emitting a warning because the workflow is only triggered on the first commit
    -- of a PR and could therefore lead to unexpected behaviour if a folder was created later.
    println <| AutoLabel.githubAnnotation "warning" "scripts/autolabel.lean"
      s!"Incomplete `{ ``AutoLabel.mathlibLabelData }`"
      s!"the following paths inside `Mathlib/` are not covered \
      by any label: {notMatchedPaths} Please modify `AutoLabel.mathlibLabels` accordingly!"
    -- return 3

  -- get the modified files
  let gitDiff ← IO.Process.run {
    cmd := "git",
    args := #["diff", "--name-only", "origin/master...HEAD"] }
  let modifiedFiles : Array FilePath := (gitDiff.splitOn "\n").toArray.map (⟨·⟩)

  -- find labels covering the modified files
  let newLabels := dropDependentLabels <| getMatchingLabels modifiedFiles
  println s!"::notice::Applicable labels: {newLabels}"

  match newLabels with
  | #[] =>
    println s!"::warning::no labels to add"
  | newLabels =>
    if newLabels.size > MAX_LABELS then
      println s!"::notice::not adding more than {MAX_LABELS} labels: {newLabels}"
      return 0
    match tool with
    | .gh prNr =>
      let labelsPresent ← if force then pure "" else IO.Process.run {
        cmd := "gh"
        args := #["pr", "view", s!"{prNr}", "--json", "labels", "--jq", ".labels .[] .name"]}
      let existingLabels := labelsPresent.splitToList (· == '\n')
      let autoLabels := mathlibLabels.map (·.toString)
      match existingLabels.filter autoLabels.contains with
      | [] =>
        let _ ← IO.Process.run {
          cmd := "gh",
          args := #["pr", "edit", s!"{prNr}", "--add-label", ",".intercalate <| newLabels.toList.map (·.toString)] }
        println s!"::notice::added label: {newLabels}"
      | t_labels_already_present  =>
        println s!"::notice::did not add labels '{newLabels}', since {t_labels_already_present} \
                  were already present"
    | .curl prNr token =>
      -- TODO: take existing labels on the PR into account
      let _ ← IO.Process.run {
        cmd := "curl",
        args :=  #[
          "--request", "POST",
          "--header", "Accept: application/vnd.github+json",
          "--header", s!"authorization: Bearer {token}",
          "--header", "X-GitHub-Api-Version: 2022-11-28",
          "--url", s!"https://api.github.com/repos/leanprover-community/mathlib4/issues/{prNr}/labels",
          "--data", "{\"labels\":[\"" ++ s!"{"\",\"".intercalate <| newLabels.toList.map (·.toString)}" ++ "\"]}"
          ]}
      println s!"::notice::added label: {newLabels}"
    | .none =>
      println s!"::notice::github interaction disabled, not adding labels."
  return 0

end AutoLabel

/-- Setting up command line options and help text for `lake exe autolabel` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variante5d262f01c8cd7b98436718b1ddc6931152ee6a4743576c9f4654a9ab9e2d738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variante5d262f01c8cd7b98436718b1ddc6931152ee6a4743576c9f4654a9ab9e2d738.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08d48cba7cf8b858e47f5dd0cf4ae37c63e1d6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
