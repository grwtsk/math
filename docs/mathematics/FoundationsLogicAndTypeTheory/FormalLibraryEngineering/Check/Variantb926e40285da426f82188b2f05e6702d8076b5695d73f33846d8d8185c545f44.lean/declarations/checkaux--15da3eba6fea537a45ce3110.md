# checkAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1bc95df48dd414336a23d2b3640d43bdff5bf008c37de7555e0fba9687cfa68",
  "kind": "def",
  "lexical_name": "checkAux",
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
  "slug": "checkaux--15da3eba6fea537a45ce3110",
  "source": {
    "blob": "3796de18422be472bddb3d8e6e7710ede519f4c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 288,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15da3eba6fea537a45ce31101dee600ef6178dcb2efe7982c017ffa5014aade9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1bc95df48dd414336a23d2b3640d43bdff5bf008c37de7555e0fba9687cfa68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def checkAux (e : Expr) : MetaM Unit := do
  check e |>.run
where
  check (e : Expr) : MonadCacheT ExprStructEq Unit MetaM Unit :=
    checkCache { val := e : ExprStructEq } fun _ => do
      match e with
      | .forallE ..      => checkForall e
      | .lam ..          => checkLambdaLet e
      | .letE ..         => checkLambdaLet e
      | .const c lvls    => checkConstant c lvls
      | .app f a         => check f; check a; checkApp f a
      | .mdata _ e       => check e
      | .proj s i e      => check e; checkProj s i e
      | _                => return ()

  checkLambdaLet (e : Expr) : MonadCacheT ExprStructEq Unit MetaM Unit :=
    lambdaLetTelescope e fun xs b => do
      xs.forM fun x => do
        let xDecl ← getFVarLocalDecl x;
        match xDecl with
        | .cdecl (type := t) .. =>
          ensureType t
          check t
        | .ldecl (type := t) (value := v) .. =>
          ensureType t
          check t
          let vType ← inferType v
          unless (← isDefEq t vType) do throwLetTypeMismatchMessage x.fvarId!
          check v
      check b

  checkForall (e : Expr) : MonadCacheT ExprStructEq Unit MetaM Unit :=
    forallTelescope e fun xs b => do
      xs.forM fun x => do
        let xDecl ← getFVarLocalDecl x
        ensureType xDecl.type
        check xDecl.type
      ensureType b
      check b

/--
Throw an exception if `e` is not type correct at the given transparency.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3796de18422be472bddb3d8e6e7710ede519f4c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
