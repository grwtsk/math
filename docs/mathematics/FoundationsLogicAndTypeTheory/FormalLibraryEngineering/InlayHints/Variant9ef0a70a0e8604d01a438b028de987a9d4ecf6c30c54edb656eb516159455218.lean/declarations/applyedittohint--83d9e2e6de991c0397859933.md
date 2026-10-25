# applyEditToHint?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1755f59b1630b510de8f0fd2fc9027cf6a65af405d495e3f1724392a2c6763ee",
  "kind": "def",
  "lexical_name": "applyEditToHint?",
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
  "slug": "applyedittohint--83d9e2e6de991c0397859933",
  "source": {
    "blob": "327c2d1d882f2a80f63987923ceaac3a8d2b0f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant9ef0a70a0e8604d01a438b028de987a9d4ecf6c30c54edb656eb516159455218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83d9e2e6de991c0397859933b25c3cf8c85d75cf017029cddc714735dcf09b8f",
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

Occurrence: `declaration:1755f59b1630b510de8f0fd2fc9027cf6a65af405d495e3f1724392a2c6763ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyEditToHint? (hintMod : Name) (ihi : Elab.InlayHintInfo) (range : Lean.Syntax.Range) (newText : String) : Option Elab.InlayHintInfo := do
  let isLabelLocAffectedByEdit :=
    match ihi.label with
    | .name _ => false
    | .parts ps =>
      ps.any fun p =>
        p.location?.any fun loc =>
          loc.module == hintMod && range.overlaps loc.range (includeFirstStop := true)
  -- We always include the stop of the edit range because insertion edit ranges may be empty,
  -- but we must still invalidate the inlay hint in this case.
  let isInlayHintInvalidatedByEdit :=
    range.contains ihi.position (includeStop := true) ||
      ihi.textEdits.any (range.overlaps ·.range (includeFirstStop := true)) ||
      isLabelLocAffectedByEdit
  if isInlayHintInvalidatedByEdit then
    none
  let byteOffset : Int := (newText.toRawSubstring.bsize : Int) - (range.bsize : Int)
  let shift (p : String.Pos.Raw) : String.Pos.Raw :=
    if range.stop < p then
      ⟨p.byteIdx + byteOffset |>.toNat⟩
    else if p < range.start then
      p
    else -- `range.start <= p && p <= range.stop`
      panic! s!"Got position {p} that should have been invalidated by edit at range {range.start}-{range.stop}"
  let shiftRange (r : Lean.Syntax.Range) : Lean.Syntax.Range := ⟨shift r.start, shift r.stop⟩
  return { ihi with
    position := shift ihi.position
    textEdits := ihi.textEdits.map fun edit => { edit with range := shiftRange edit.range }
    label :=
      match ihi.label with
      | .name s => .name s
      | .parts ps => .parts <| ps.map fun p => { p with
        location? := p.location?.map fun loc =>
          if loc.module == hintMod then
            { loc with range := shiftRange loc.range }
          else
            loc
      }
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant9ef0a70a0e8604d01a438b028de987a9d4ecf6c30c54edb656eb516159455218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlayHints/Variant9ef0a70a0e8604d01a438b028de987a9d4ecf6c30c54edb656eb516159455218.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `327c2d1d882f2a80f63987923ceaac3a8d2b0f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
