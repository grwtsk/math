# makeMatchCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96f323af9c3f7e75ea2fc834052035bcf37b42a3e1044269c2de847b376150ed",
  "kind": "def",
  "lexical_name": "makeMatchCode",
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
  "slug": "makematchcode--49a76a23bcddffc0d639e714",
  "source": {
    "blob": "5282c3d9163e2bea7f38434eb7519de759ac252d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant5f6653076dca6b39d0a7c57e786033ce751a7fd8f5fa84571782ff250ff7c236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49a76a23bcddffc0d639e71474de0e91a32b9c69ebbd3bb3be355b6393b324fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant5f6653076dca6b39d0a7c57e786033ce751a7fd8f5fa84571782ff250ff7c236.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96f323af9c3f7e75ea2fc834052035bcf37b42a3e1044269c2de847b376150ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def makeMatchCode {γ : Q(Type)} {m : Q(Type → Type v)} (_instLift : Q(MonadLiftT MetaM $m)) (_instBind : Q(Bind $m))
    (decls : List PatVarDecl) (uTy : Q(Level)) (ty : Q(Quoted (.sort $uTy)))
    (pat discr : Q(Quoted $ty)) (alt : Q($m $γ)) (expectedType : Expr)
    (k : Expr → TermElabM Q($m $γ)) : TermElabM Q($m $γ) := do
  let nextDecls : List PatVarDecl :=
    decls.map fun decl => { decl with ty := decl.ty.map fun e => replaceTempExprsByQVars decls e }
  let next ← withLocalDecl (← mkFreshBinderName) default (mkIsDefEqType decls) (kind := .implDetail) fun fv => do
    let fv : Q($(mkIsDefEqType decls)) := fv
    -- note: cannot inline into `$body` due to leanprover/lean4#3827
    let body ← mkQqLets nextDecls fv do
      have pat : Q(Quoted $ty) := replaceTempExprsByQVars decls pat
      let (_, s) ← unquoteLCtx.run { mayPostpone := (← read).mayPostpone }
      let _discr' ← (unquoteExpr discr).run' s
      let _pat' ← (unquoteExpr pat).run' s
      withLocalDeclDQ (← mkFreshUserName `match_eq) q(QuotedDefEq $discr $pat) fun h => do
        let res ← k expectedType
        let res : Q($m $γ) ← instantiateMVars res
        let res : Q($m $γ) := (← res.abstractM #[h]).instantiate #[q(⟨⟩ : QuotedDefEq $discr $pat)]
        return res
    let next : Q($m $γ) :=
      q(if $(mkIsDefEqResultVal decls fv) then
          $body
        else
          $alt)
    return show Q($(mkIsDefEqType decls) → $m $γ) from
      Quoted.unsafeMk $ ← mkLambda' `__result fv (mkIsDefEqType decls) next
  pure q(Bind.bind $(← mkIsDefEq decls pat discr) $next)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant5f6653076dca6b39d0a7c57e786033ce751a7fd8f5fa84571782ff250ff7c236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant5f6653076dca6b39d0a7c57e786033ce751a7fd8f5fa84571782ff250ff7c236.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5282c3d9163e2bea7f38434eb7519de759ac252d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
