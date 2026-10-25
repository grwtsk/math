# mkTacticMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3386aa44853c739d728e0fa43ba7d4e16fb4a8907f300fd44b61d970a7cf7dda",
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
  "slug": "mktacticmvar--ae4c4fc317676b2462a5c878",
  "source": {
    "blob": "4d848e0860a24a0a4bee2440466e612380b33ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1494,
    "line": 1467,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae4c4fc317676b2462a5c8786b92da6f7b9dff82a6f6c5f8b9dcd3d0aea2789f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3386aa44853c739d728e0fa43ba7d4e16fb4a8907f300fd44b61d970a7cf7dda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1467–1494.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean#L1467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d848e0860a24a0a4bee2440466e612380b33ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
