# WorkDoneProgressReport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9fd6e616867c4297561d16f0a353f16ceae251aa4d7f2d1476eb33065a55f7f",
  "kind": "structure",
  "lexical_name": "WorkDoneProgressReport",
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
  "slug": "workdoneprogressreport--b5483dadae5c03f061e90f6b",
  "source": {
    "blob": "b4fcb5296f6848b2ddc25e7fb8633924a53a92a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 382,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3584edaa0660dd07ad09a92d4ddc1caecaf6bc5e2542b6a01272e6200adb6147.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5483dadae5c03f061e90f6b9f1858d9ee4b88a303e4d5dfbc63e02e9ea0feab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3584edaa0660dd07ad09a92d4ddc1caecaf6bc5e2542b6a01272e6200adb6147.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9fd6e616867c4297561d16f0a353f16ceae251aa4d7f2d1476eb33065a55f7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WorkDoneProgressReport where
  kind := "report"
  /-- More detailed associated progress message. -/
  message? : Option String := none
  /-- Controls if a cancel button should show to allow the user to cancel the operation. -/
  cancellable := false
  /-- Optional progress percentage to display (value 100 is considered 100%).
      If not provided infinite progress is assumed. -/
  percentage? : Option Nat := none
  deriving ToJson

/-- Notification to signal the start of progress reporting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3584edaa0660dd07ad09a92d4ddc1caecaf6bc5e2542b6a01272e6200adb6147.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3584edaa0660dd07ad09a92d4ddc1caecaf6bc5e2542b6a01272e6200adb6147.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4fcb5296f6848b2ddc25e7fb8633924a53a92a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
