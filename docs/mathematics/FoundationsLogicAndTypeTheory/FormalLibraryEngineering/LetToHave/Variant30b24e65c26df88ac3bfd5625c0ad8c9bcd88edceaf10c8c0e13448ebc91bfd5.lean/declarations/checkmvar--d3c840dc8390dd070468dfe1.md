# checkMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22cf23bdfb3c224c06a2265c17b8bff28697a383afc69d04242759c0653e710f",
  "kind": "def",
  "lexical_name": "checkMVar",
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
  "slug": "checkmvar--d3c840dc8390dd070468dfe1",
  "source": {
    "blob": "f8ac672a71447edb01d29648bd1514c5140a07e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variant30b24e65c26df88ac3bfd5625c0ad8c9bcd88edceaf10c8c0e13448ebc91bfd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3c840dc8390dd070468dfe1afe3084086b0eeaea9321270714ed5b83b7eb38b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variant30b24e65c26df88ac3bfd5625c0ad8c9bcd88edceaf10c8c0e13448ebc91bfd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22cf23bdfb3c224c06a2265c17b8bff28697a383afc69d04242759c0653e710f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def checkMVar (mvarId : MVarId) (args : Array Expr) : M Unit := do
  if let some { fvars, mvarIdPending } ← getDelayedMVarAssignment? mvarId then
    let letFVars := (← read).letFVars
    unless fvars.size ≤ args.size do
      -- This is an invalid delayed assignment. Mark all `letFVars` to inhibit transformation.
      letFVars.forM (addZetaDeltaFVarId ·)
      return
    let pendingDecl ← mvarIdPending.getDecl
    for fvar in fvars, arg in args do
      let fvarDecl := pendingDecl.lctx.getFVar! fvar
      if fvarDecl.isLet then
        visitDepExpr arg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variant30b24e65c26df88ac3bfd5625c0ad8c9bcd88edceaf10c8c0e13448ebc91bfd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variant30b24e65c26df88ac3bfd5625c0ad8c9bcd88edceaf10c8c0e13448ebc91bfd5.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8ac672a71447edb01d29648bd1514c5140a07e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
