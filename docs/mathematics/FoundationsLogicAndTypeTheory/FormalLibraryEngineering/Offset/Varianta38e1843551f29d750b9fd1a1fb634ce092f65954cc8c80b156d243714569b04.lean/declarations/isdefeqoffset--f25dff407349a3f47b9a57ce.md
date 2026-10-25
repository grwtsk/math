# isDefEqOffset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ce4bbb99dc544397499916aea8e6573456b86f8bd9dd2f103d882de327605ca",
  "kind": "def",
  "lexical_name": "isDefEqOffset",
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
  "slug": "isdefeqoffset--f25dff407349a3f47b9a57ce",
  "source": {
    "blob": "aff0cf21f0219e2965a5bc227c88228a137ecd96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f25dff407349a3f47b9a57ceb6968619dae2b87aba1c2aa92655d03b6076dc1f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ce4bbb99dc544397499916aea8e6573456b86f8bd9dd2f103d882de327605ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isDefEqOffset (s t : Expr) : MetaM LBool := do
  let ifNatExpr (x : MetaM LBool) : MetaM LBool := do
    let type ← inferType s
    -- Remark: we use `withNewMCtxDepth` to make sure we don't assign metavariables when performing the `isDefEq` test
    if (← withNewMCtxDepth <| Meta.isExprDefEqAux type (mkConst ``Nat)) then
      x
    else
      return LBool.undef
  let isDefEq (s t) : MetaM LBool :=
    ifNatExpr <| toLBoolM <| Meta.isExprDefEqAux s t
  if !(← getConfig).offsetCnstrs then
    return LBool.undef
  else
    match (← isOffset? s) with
    | some (s, k₁) =>
      match (← isOffset? t) with
      | some (t, k₂) => -- s+k₁ =?= t+k₂
        if k₁ == k₂ then
          isDefEq s t
        else if k₁ < k₂ then
          isDefEq s (← mkOffset t (k₂ - k₁))
        else
          isDefEq (← mkOffset s (k₁ - k₂)) t
      | none =>
        match (← evalNat t) with
        | some v₂ => -- s+k₁ =?= v₂
          if v₂ ≥ k₁ then
            isDefEq s (mkNatLit <| v₂ - k₁)
          else
            ifNatExpr <| return LBool.false
        | none =>
          return LBool.undef
    | none =>
      match (← evalNat s) with
      | some v₁ =>
        match (← isOffset? t) with
        | some (t, k₂) => -- v₁ =?= t+k₂
          if v₁ ≥ k₂ then
            isDefEq (mkNatLit <| v₁ - k₂) t
          else
            ifNatExpr <| return LBool.false
        | none =>
          match (← evalNat t) with
          | some v₂ => ifNatExpr <| return (v₁ == v₂).toLBool -- v₁ =?= v₂
          | none    => return LBool.undef
      | none => return LBool.undef

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aff0cf21f0219e2965a5bc227c88228a137ecd96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
