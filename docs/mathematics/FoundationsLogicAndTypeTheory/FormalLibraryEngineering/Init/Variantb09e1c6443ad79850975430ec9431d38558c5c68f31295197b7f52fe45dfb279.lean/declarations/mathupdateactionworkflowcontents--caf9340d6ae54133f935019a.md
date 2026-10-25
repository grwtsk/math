# mathUpdateActionWorkflowContents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93561522e1814afe2835069ea0f5baa1ea2a3e5fb5159f3ad0dbfde9d3a31367",
  "kind": "def",
  "lexical_name": "mathUpdateActionWorkflowContents",
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
  "slug": "mathupdateactionworkflowcontents--caf9340d6ae54133f935019a",
  "source": {
    "blob": "a0c9c29459d09418de77ce91909a26d44f9531a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 262,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variantb09e1c6443ad79850975430ec9431d38558c5c68f31295197b7f52fe45dfb279.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:caf9340d6ae54133f935019a2910bfca011b2cfd98e05cd1c16493765f1a3820",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variantb09e1c6443ad79850975430ec9431d38558c5c68f31295197b7f52fe45dfb279.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93561522e1814afe2835069ea0f5baa1ea2a3e5fb5159f3ad0dbfde9d3a31367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mathUpdateActionWorkflowContents :=
"name: Update Dependencies

on:
  # schedule:             # Sets a schedule to trigger the workflow
  #   - cron: \"0 8 * * *\" # Every day at 08:00 AM UTC (see https://docs.github.com/en/actions/writing-workflows/choosing-when-your-workflow-runs/events-that-trigger-workflows#schedule)
  workflow_dispatch:    # Allows the workflow to be triggered manually via the GitHub interface

jobs:
  check-for-updates: # Determines which updates to apply.
    runs-on: ubuntu-latest
    outputs:
      is-update-available: ${{ steps.check-for-updates.outputs.is-update-available }}
      new-tags: ${{ steps.check-for-updates.outputs.new-tags }}
    steps:
      - name: Run the action
        id: check-for-updates
        uses: leanprover-community/mathlib-update-action@v1
        # START CONFIGURATION BLOCK 1
        # END CONFIGURATION BLOCK 1
  do-update: # Runs the upgrade, tests it, and makes a PR/issue/commit.
    runs-on: ubuntu-latest
    permissions:
      contents: write      # Grants permission to push changes to the repository
      issues: write        # Grants permission to create or update issues
      pull-requests: write # Grants permission to create or update pull requests
    needs: check-for-updates
    if: ${{ needs.check-for-updates.outputs.is-update-available == 'true' }}
    strategy: # Runs for each update discovered by the `check-for-updates` job.
      max-parallel: 1 # Ensures that the PRs/issues are created in order.
      matrix:
        tag: ${{ fromJSON(needs.check-for-updates.outputs.new-tags) }}
    steps:
      - name: Run the action
        id: update-the-repo
        uses: leanprover-community/mathlib-update-action/do-update@v1
        with:
          tag: ${{ matrix.tag }}
          # START CONFIGURATION BLOCK 2
          on_update_succeeds: pr # Create a pull request if the update succeeds
          on_update_fails: issue # Create an issue if the update fails
          # END CONFIGURATION BLOCK 2
"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variantb09e1c6443ad79850975430ec9431d38558c5c68f31295197b7f52fe45dfb279.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variantb09e1c6443ad79850975430ec9431d38558c5c68f31295197b7f52fe45dfb279.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0c9c29459d09418de77ce91909a26d44f9531a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
