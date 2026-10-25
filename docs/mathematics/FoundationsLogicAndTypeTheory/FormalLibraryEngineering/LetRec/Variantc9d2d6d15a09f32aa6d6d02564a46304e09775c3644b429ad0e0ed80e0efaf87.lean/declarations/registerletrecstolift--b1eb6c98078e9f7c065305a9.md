# registerLetRecsToLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0e119e5e57fd382cf0c4ca17248a4c1d1292fbd5fb2341564180284e5737974",
  "kind": "def",
  "lexical_name": "registerLetRecsToLift",
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
  "slug": "registerletrecstolift--b1eb6c98078e9f7c065305a9",
  "source": {
    "blob": "50b9fe1bbfa5ccd1f4d9546aa18db198102098e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetRec/Variantc9d2d6d15a09f32aa6d6d02564a46304e09775c3644b429ad0e0ed80e0efaf87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1eb6c98078e9f7c065305a9d71855f2f3a2d50cf544bce24fbd1d7cb3b0114d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetRec/Variantc9d2d6d15a09f32aa6d6d02564a46304e09775c3644b429ad0e0ed80e0efaf87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0e119e5e57fd382cf0c4ca17248a4c1d1292fbd5fb2341564180284e5737974`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def registerLetRecsToLift (views : Array LetRecDeclView) (fvars : Array Expr) (values : Array Expr) : TermElabM Unit := do
  let letRecsToLiftCurr := (← get).letRecsToLift
  for view in views do
    if letRecsToLiftCurr.any fun toLift => toLift.declName == view.declName then
      withRef view.ref do
        throwError "`{view.declName}` has already been declared"
  let lctx ← getLCtx
  let localInstances ← getLocalInstances

  let toLift ← views.mapIdxM fun i view => do
    let value := values[i]!
    let termination := view.termination.rememberExtraParams view.binderIds.size value
    pure {
      ref            := view.ref
      fvarId         := fvars[i]!.fvarId!
      attrs          := view.attrs
      shortDeclName  := view.shortDeclName
      declName       := view.declName
      parentName?    := view.parentName?
      lctx
      localInstances
      type           := view.type
      val            := value
      mvarId         := view.mvar.mvarId!
      termination
      binders        := view.binders
      docString?     := view.docString?
    }
  modify fun s => { s with letRecsToLift := toLift.toList ++ s.letRecsToLift }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetRec/Variantc9d2d6d15a09f32aa6d6d02564a46304e09775c3644b429ad0e0ed80e0efaf87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetRec/Variantc9d2d6d15a09f32aa6d6d02564a46304e09775c3644b429ad0e0ed80e0efaf87.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50b9fe1bbfa5ccd1f4d9546aa18db198102098e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
