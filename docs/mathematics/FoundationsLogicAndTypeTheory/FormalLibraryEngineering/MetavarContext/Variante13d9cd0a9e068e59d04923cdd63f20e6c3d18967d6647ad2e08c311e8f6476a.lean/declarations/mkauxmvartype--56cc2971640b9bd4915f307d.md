# mkAuxMVarType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2f4a077d102ab9fc2b4fc4c70bc50ca61e69eb82cdd8254d119dab12714b5f9",
  "kind": "def",
  "lexical_name": "mkAuxMVarType",
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
  "slug": "mkauxmvartype--56cc2971640b9bd4915f307d",
  "source": {
    "blob": "7cc887a99e6fe7674299b71e0cc65b26fc6bd4cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1183,
    "line": 1131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56cc2971640b9bd4915f307d581d1bbc5e926f09eaf6632510bfadc3c66bde32",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2f4a077d102ab9fc2b4fc4c70bc50ca61e69eb82cdd8254d119dab12714b5f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1131–1183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def mkAuxMVarType (lctx : LocalContext) (xs : Array Expr) (kind : MetavarKind) (e : Expr) (usedLetOnly : Bool) : M Expr := do
    let e ← abstractRangeAux xs xs.size e
    xs.size.foldRevM (init := e) fun i _ e => do
      let x := xs[i]
      if x.isFVar then
        match lctx.getFVar! x with
        | LocalDecl.cdecl _ _ n type bi _ =>
          let type := type.headBeta
          let type ← abstractRangeAux xs i type
          return Lean.mkForall n bi type e
        | LocalDecl.ldecl (nondep := true) _ _ n type _ _ =>
          let type := type.headBeta
          let type ← abstractRangeAux xs i type
          return Lean.mkForall n .default type e
        | LocalDecl.ldecl (nondep := false) _ _ n type value _ =>
          if !usedLetOnly || e.hasLooseBVar 0 then
            let type := type.headBeta
            let type  ← abstractRangeAux xs i type
            let value ← abstractRangeAux xs i value
            let e := mkLet n type value e false
            match kind with
            | MetavarKind.syntheticOpaque =>
              -- See "Gruesome details" section in the beginning of the file
              let e := e.liftLooseBVars 0 1
              return mkForall n BinderInfo.default type e
            | _ => pure e
          else
            match kind with
            | MetavarKind.syntheticOpaque =>
              let type := type.headBeta
              let type  ← abstractRangeAux xs i type
              return mkForall n BinderInfo.default type e
            | _ =>
              return e.lowerLooseBVars 1 1
      else
        -- `xs` may contain metavariables as "may dependencies" (see `findExprDependsOn`)
        let mvarDecl := (← get).mctx.getDecl x.mvarId!
        let type := mvarDecl.type.headBeta
        let type ← abstractRangeAux xs i type
        let id ← if mvarDecl.userName.isAnonymous then mkFreshBinderName else pure mvarDecl.userName
        return Lean.mkForall id (← read).binderInfoForMVars type e
  where
    abstractRangeAux (xs : Array Expr) (i : Nat) (e : Expr) : M Expr := do
      let e ← elim xs e
      pure (e.abstractRange i xs)

  /--
    "Eliminate" the given variables `xs` from the context of the metavariable represented `mvarId`
    by returning the application of a new metavariable whose type abstracts the forward dependencies
    on `xs` after restricting it to the free variables in the local context of `mvarId`.

    See details in the comment at the top of the file.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean#L1131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cc887a99e6fe7674299b71e0cc65b26fc6bd4cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
