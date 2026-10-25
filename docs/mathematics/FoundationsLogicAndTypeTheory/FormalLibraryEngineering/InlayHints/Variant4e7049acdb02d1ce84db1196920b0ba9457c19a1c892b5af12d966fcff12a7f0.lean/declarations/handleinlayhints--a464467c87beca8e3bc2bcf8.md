# handleInlayHints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:649124484b69a2e4b012a323b5ad24d0ba0314feb0f3055b0ba19cc3393adfa4",
  "kind": "def",
  "lexical_name": "handleInlayHints",
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
  "slug": "handleinlayhints--a464467c87beca8e3bc2bcf8",
  "source": {
    "blob": "77caa7b18b4cfc29178bf7a5b343f02eaa10da63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant4e7049acdb02d1ce84db1196920b0ba9457c19a1c892b5af12d966fcff12a7f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a464467c87beca8e3bc2bcf835b981a642d63c7a4c58504eabf4d770fd9cc9dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant4e7049acdb02d1ce84db1196920b0ba9457c19a1c892b5af12d966fcff12a7f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:649124484b69a2e4b012a323b5ad24d0ba0314feb0f3055b0ba19cc3393adfa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleInlayHints (p : InlayHintParams) (s : InlayHintState) :
    RequestM (LspResponse (Array InlayHint) × InlayHintState) := do
  let ctx ← read
  let text := ctx.doc.meta.text
  let range := text.lspRangeToUtf8Range p.range
  if s.isFirstRequestAfterEdit then
    -- We immediately respond to the first inlay hint request after an edit with the old inlay hints,
    -- without waiting for the edit delay.
    -- The reason for this is that in VS Code, when it hasn't received a new set of inlay hints,
    -- edits to the document visually move all old inlay hints, but do not actually update other
    -- fields, like the `textEdit` field. This means that e.g. inlay hint insertion will insert
    -- the inlay hint at the wrong position.
    -- To reduce the size of the window for this race condition, we attempt to minimize the delay
    -- after an edit, providing VS Code with a set of old inlay hints that we have already updated
    -- correctly for VS Code ASAP.
    let lspInlayHints ← s.oldInlayHints.mapM (·.toLspInlayHint text)
    let r := { response := lspInlayHints, isComplete := false }
    let s := { s with isFirstRequestAfterEdit := false }
    return (r, s)
  -- We delay sending inlay hints by 3000ms to avoid inlay hint flickering on the client.
  -- VS Code already has a mechanism for this, but it is not sufficient.
  let inlayHintEditDelayMs := 3000
  let timestamp ← IO.monoMsNow
  let editDelayMs :=
    match s.lastEditTimestamp? with
    | none => 0
    | some lastEditTimestamp =>
      let timeSinceLastEditMs := timestamp - lastEditTimestamp
      inlayHintEditDelayMs - timeSinceLastEditMs
  let (snaps, _, isComplete) ← ctx.doc.cmdSnaps.getFinishedPrefixWithConsistentLatency editDelayMs.toUInt32 (cancelTks := ctx.cancelTk.cancellationTasks)
  if ← ctx.cancelTk.wasCancelled then
    -- Inlay hint request has been cancelled, either by a cancellation request or another edit.
    -- In the former case, we will simply discard the result and respond with a request error
    -- denoting cancellation.
    -- In the latter case, we respond with the old inlay hints, since we can't respond with an error.
    -- This is to prevent cancellation from making us serve updated inlay hints before the
    -- edit delay has passed.
    let lspInlayHints ← s.oldInlayHints.mapM (·.toLspInlayHint text)
    let r := { response := lspInlayHints, isComplete := false }
    return (r, s)
  let snaps := snaps.toArray
  let finishedSnaps := snaps.size
  let oldFinishedSnaps := s.oldFinishedSnaps
  -- File processing is monotonic modulo `didChange` notifications.
  assert! finishedSnaps >= oldFinishedSnaps
  -- VS Code emits inlay hint requests *every time the user scrolls*. This is reasonably expensive,
  -- so in addition to re-using old inlay hints from parts of the file that haven't been processed
  -- yet, we also re-use old inlay hints from parts of the file that have been processed already
  -- with the current state of the document.
  let invalidOldInlayHintsRange : Lean.Syntax.Range := {
    start := snaps[oldFinishedSnaps - 1]?.map (·.endPos) |>.getD ⟨0⟩
    stop := snaps[finishedSnaps - 1]?.map (·.endPos) |>.getD ⟨0⟩
  }
  let oldInlayHints :=
    s.oldInlayHints.filter fun (ihi : Elab.InlayHintInfo) =>
      ! invalidOldInlayHintsRange.contains ihi.position
  let newInlayHints : Array Elab.InlayHintInfo ← (·.2) <$> StateT.run (s := #[]) do
    for s in snaps[oldFinishedSnaps...*] do
      s.infoTree.visitM' (postNode := fun ci i _ => do
        let .ofCustomInfo i := i
          | return
        let some ih := Elab.InlayHint.ofCustomInfo? i
          | return
        let ih ← ci.runMetaM ih.lctx ih.resolveDeferred
        modify (·.push ih.toInlayHintInfo))
  let allInlayHints := newInlayHints ++ oldInlayHints
  let inlayHintsInRange := allInlayHints.filter (range.contains (includeStop := true) ·.position)
  let lspInlayHints ← inlayHintsInRange.mapM (·.toLspInlayHint text)
  let r := { response := lspInlayHints, isComplete }
  let s := { s with
    oldInlayHints := allInlayHints
    oldFinishedSnaps := finishedSnaps
  }
  return (r, s)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant4e7049acdb02d1ce84db1196920b0ba9457c19a1c892b5af12d966fcff12a7f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant4e7049acdb02d1ce84db1196920b0ba9457c19a1c892b5af12d966fcff12a7f0.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77caa7b18b4cfc29178bf7a5b343f02eaa10da63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
