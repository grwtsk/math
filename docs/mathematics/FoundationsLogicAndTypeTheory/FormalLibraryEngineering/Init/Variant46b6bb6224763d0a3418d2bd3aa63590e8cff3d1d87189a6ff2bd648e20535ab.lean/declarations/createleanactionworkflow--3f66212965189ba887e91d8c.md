# createLeanActionWorkflow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3bb379204dac9ddc23acc64ed4ce6731ddb722b2bf734e5b411322c9a622baf",
  "kind": "def",
  "lexical_name": "createLeanActionWorkflow",
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
  "slug": "createleanactionworkflow--3f66212965189ba887e91d8c",
  "source": {
    "blob": "8e0584dae352349bc1ab85edc95b8d3276334552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 384,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant46b6bb6224763d0a3418d2bd3aa63590e8cff3d1d87189a6ff2bd648e20535ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f66212965189ba887e91d8cc517a4e2aedb51d7b5761fca840788c72d36cc71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant46b6bb6224763d0a3418d2bd3aa63590e8cff3d1d87189a6ff2bd648e20535ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3bb379204dac9ddc23acc64ed4ce6731ddb722b2bf734e5b411322c9a622baf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createLeanActionWorkflow (dir : FilePath) (tmp : InitTemplate) : LogIO PUnit := do
  logVerbose "creating lean-action CI workflow"
  let workflowDir := dir / ".github" / "workflows"
  IO.FS.createDirAll workflowDir

  let workflowFile := workflowDir / "lean_action_ci.yml"
  if (← workflowFile.pathExists) then
    logVerbose "lean-action CI workflow already exists"
    return
  if tmp = .math then
    IO.FS.writeFile workflowFile mathBuildActionWorkflowContents
  else
    IO.FS.writeFile workflowFile leanActionWorkflowContents
  logVerbose s!"created lean-action CI workflow at '{workflowFile}'"

  if tmp = .math then
    -- A workflow for automatically creating update PRs/issues.
    let workflowFile := workflowDir / "update.yml"
    if (← workflowFile.pathExists) then
      logVerbose "Mathlib update CI workflow already exists"
      return
    IO.FS.writeFile workflowFile mathUpdateActionWorkflowContents
    logVerbose s!"created Mathlib update CI workflow at '{workflowFile}'"
    -- A workflow for tagging commits that bump the Lean toolchain version.
    let workflowFile := workflowDir / "create-release.yml"
    if (← workflowFile.pathExists) then
      logVerbose "create-release CI workflow already exists"
      return
    IO.FS.writeFile workflowFile createReleaseActionWorkflowContents
    logVerbose s!"created create-release CI workflow at '{workflowFile}'"

/-- Initialize a new Lake package in the given directory with the given name. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant46b6bb6224763d0a3418d2bd3aa63590e8cff3d1d87189a6ff2bd648e20535ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant46b6bb6224763d0a3418d2bd3aa63590e8cff3d1d87189a6ff2bd648e20535ab.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e0584dae352349bc1ab85edc95b8d3276334552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
