# handleInlayHintsDidChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e003f2fa0723ca71eac70bac7b99cbcbfab03d0abdcd9ad159f82514f9b457c",
  "kind": "def",
  "lexical_name": "handleInlayHintsDidChange",
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
  "slug": "handleinlayhintsdidchange--a9794ce887282ddd95567d93",
  "source": {
    "blob": "327c2d1d882f2a80f63987923ceaac3a8d2b0f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant9ef0a70a0e8604d01a438b028de987a9d4ecf6c30c54edb656eb516159455218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9794ce887282ddd95567d93c31d726511c1be5c921019d17b89c166b154377b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant9ef0a70a0e8604d01a438b028de987a9d4ecf6c30c54edb656eb516159455218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e003f2fa0723ca71eac70bac7b99cbcbfab03d0abdcd9ad159f82514f9b457c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleInlayHintsDidChange (p : DidChangeTextDocumentParams)
    : StateT InlayHintState RequestM Unit := do
  let s ← get
  let updatedOldInlayHints ← updateOldInlayHints s.oldInlayHints
  let lastEditTimestamp? ← determineLastEditTimestamp? s.oldInlayHints
  set <| { s with
    oldInlayHints := updatedOldInlayHints
    oldFinishedSnaps := 0
    lastEditTimestamp?
    isFirstRequestAfterEdit := true
  }

where

  updateOldInlayHints (oldInlayHints : Array Elab.InlayHintInfo) : RequestM (Array Elab.InlayHintInfo) := do
    let doc := (← read).doc.meta
    let text := doc.text
    let mut updatedOldInlayHints := #[]
    for ihi in oldInlayHints do
      let mut ihi := ihi
      let mut inlayHintInvalidated := false
      for c in p.contentChanges do
        let .rangeChange changeRange newText := c
          | return #[] -- `fullChange` => all old inlay hints invalidated
        let changeRange := text.lspRangeToUtf8Range changeRange
        let some ihi' := applyEditToHint? doc.mod ihi changeRange newText
          | -- Change in some position of inlay hint => inlay hint invalidated
            inlayHintInvalidated := true
            break
        ihi := ihi'
      if ! inlayHintInvalidated then
        updatedOldInlayHints := updatedOldInlayHints.push ihi
    return updatedOldInlayHints

  determineLastEditTimestamp? (oldInlayHints : Array Elab.InlayHintInfo) : RequestM (Option Nat) := do
    let text := (← read).doc.meta.text
    let isInlayHintInsertionEdit := p.contentChanges.all fun c => Id.run do
      let .rangeChange changeRange newText := c
        | return false
      let changeRange := text.lspRangeToUtf8Range changeRange
      let edit := ⟨changeRange, newText⟩
      return oldInlayHints.any (·.textEdits.contains edit)
    let timestamp ← IO.monoMsNow
    if isInlayHintInsertionEdit then
      -- For some stupid reason, VS Code doesn't remove the inlay hint when applying it, so we
      -- try to figure out whether the edit was an insertion of an inlay hint and then respond
      -- to the request without latency so that it inserted ASAP.
      return none
    else
      return some timestamp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant9ef0a70a0e8604d01a438b028de987a9d4ecf6c30c54edb656eb516159455218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant9ef0a70a0e8604d01a438b028de987a9d4ecf6c30c54edb656eb516159455218.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `327c2d1d882f2a80f63987923ceaac3a8d2b0f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
