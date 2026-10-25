# mkTacticMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22d530dbc7c3265ed33635025b281c34b4ec88809c7e81a13b9f0e406a6c6a61",
  "kind": "def",
  "lexical_name": "mkTacticMVar",
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
  "slug": "mktacticmvar--ac51a25512a3cbfb3b645594",
  "source": {
    "blob": "872babc942fe96b14ef803da94e7e2245f8a08ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1502,
    "line": 1475,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac51a25512a3cbfb3b645594ed9b098c2a04bdaf613ed38d5c668c029d59cb95",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22d530dbc7c3265ed33635025b281c34b4ec88809c7e81a13b9f0e406a6c6a61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1475–1502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def mkTacticMVar (type : Expr) (tacticCode : Syntax) (kind : TacticMVarKind)
    (delayOnMVars := false) : TermElabM Expr := do
  if ← pure (debug.byAsSorry.get (← getOptions)) <&&> isProp type then
    withRef tacticCode <| mkLabeledSorry type false (unique := true)
  else
    let mvar ← mkFreshExprMVar type MetavarKind.syntheticOpaque
    let mvarId := mvar.mvarId!
    let ref ← getRef
    registerSyntheticMVar ref mvarId <| .tactic tacticCode (← saveContext) kind delayOnMVars
    return mvar

/--
  Create an auxiliary annotation to make sure we create an `Info` even if `e` is a metavariable.
  See `mkTermInfo`.

  We use this function because some elaboration functions elaborate subterms that may not be immediately
  part of the resulting term. Example:
  ```
  let_mvar% ?m := b; wait_if_type_mvar% ?m; body
  ```
  If the type of `b` is not known, then `wait_if_type_mvar% ?m; body` is postponed and just returns a fresh
  metavariable `?n`. The elaborator for
  ```
  let_mvar% ?m := b; wait_if_type_mvar% ?m; body
  ```
  returns `mkSaveInfoAnnotation ?n` to make sure the info nodes created when elaborating `b` are "saved".
  This is a bit hackish, but elaborators like `let_mvar%` are rare.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean#L1475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872babc942fe96b14ef803da94e7e2245f8a08ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
