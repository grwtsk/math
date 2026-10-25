# mkSimpContext'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8eaaaae0ce4b9e4f15edb0c70efb8992c1c35800cc593f492421fc3230341fe",
  "kind": "def",
  "lexical_name": "mkSimpContext'",
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
  "slug": "mksimpcontext--13f332b2407ec9fb9e3e649b",
  "source": {
    "blob": "7c3ea85cdd4a5d09eec44196e4290953411677c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant06cf3ef0b6f94b658304cc1613a9c4d4c0c2431bc95c86ccd563b480a7f5ff71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13f332b2407ec9fb9e3e649b1ece336d48dfeaa05ecb36b11b891c75cb4cd4d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant06cf3ef0b6f94b658304cc1613a9c4d4c0c2431bc95c86ccd563b480a7f5ff71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8eaaaae0ce4b9e4f15edb0c70efb8992c1c35800cc593f492421fc3230341fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkSimpContext' (simpTheorems : SimpTheorems) (stx : Syntax) (eraseLocal : Bool)
    (kind := SimpKind.simp) (ctx := false) (ignoreStarArg : Bool := false) :
    TacticM MkSimpContextResult := do
  if ctx && !stx[2].isNone then
    if kind == SimpKind.simpAll then
      throwError "'simp_all' tactic does not support 'discharger' option"
    if kind == SimpKind.dsimp then
      throwError "'dsimp' tactic does not support 'discharger' option"
  let dischargeWrapper ← mkDischargeWrapper stx[2]
  let simpOnly := !stx[3].isNone
  let simpTheorems ← if simpOnly then
    simpOnlyBuiltins.foldlM (·.addConst ·) {}
  else
    pure simpTheorems
  let congrTheorems ← Meta.getSimpCongrTheorems
  let r ← elabSimpArgs stx[4] (eraseLocal := eraseLocal) (kind := kind) {
    config       := (← elabSimpConfig stx[1] (kind := kind))
    simpTheorems := #[simpTheorems], congrTheorems
  }
  if !r.starArg || ignoreStarArg then
    return { r with dischargeWrapper }
  else
    let mut simpTheorems := r.ctx.simpTheorems
    let hs ← getPropHyps
    for h in hs do
      unless simpTheorems.isErased (.fvar h) do
        simpTheorems ← simpTheorems.addTheorem (.fvar h) (← h.getDecl).toExpr
    return { ctx := { r.ctx with simpTheorems }, dischargeWrapper }

export private checkTypeIsProp shouldPreprocess preprocess mkSimpTheoremCore
  from Lean.Meta.Tactic.Simp.SimpTheorems

/-- Similar to `mkSimpTheoremsFromConst` except that it also returns the names of the generated
lemmas.
Remark: either the length of the arrays is the same,
or the length of the first one is 0 and the length of the second one is 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant06cf3ef0b6f94b658304cc1613a9c4d4c0c2431bc95c86ccd563b480a7f5ff71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant06cf3ef0b6f94b658304cc1613a9c4d4c0c2431bc95c86ccd563b480a7f5ff71.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c3ea85cdd4a5d09eec44196e4290953411677c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
