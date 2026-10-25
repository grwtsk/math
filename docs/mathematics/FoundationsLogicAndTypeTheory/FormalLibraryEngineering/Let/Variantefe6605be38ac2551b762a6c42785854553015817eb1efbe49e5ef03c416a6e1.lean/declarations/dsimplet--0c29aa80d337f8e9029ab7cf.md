# dsimpLet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28d60cb35a971e6bab02e67e06ddee265f68171327d5ca60f1cc602284c93265",
  "kind": "def",
  "lexical_name": "dsimpLet",
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
  "slug": "dsimplet--0c29aa80d337f8e9029ab7cf",
  "source": {
    "blob": "b40ac4be3688e5e8cda6b397bd4b2cb0282f920e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variantefe6605be38ac2551b762a6c42785854553015817eb1efbe49e5ef03c416a6e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c29aa80d337f8e9029ab7cf7e3fd6eb688b7edb7f7e2cbff84c94191874dede",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variantefe6605be38ac2551b762a6c42785854553015817eb1efbe49e5ef03c416a6e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28d60cb35a971e6bab02e67e06ddee265f68171327d5ca60f1cc602284c93265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def dsimpLet : DSimproc := fun e =>
  go e #[] false
where
  go (e : Expr) (fvars : Array Expr) (modified : Bool) : DSimpM Result := do
    match e with
    | .letE n t v b nd =>
      -- Instantiate the binder type and value against the already-introduced `fvars` *before*
      -- creating the local declaration. Using the raw `t`/`v` would leave loose bound variables
      -- (referring to earlier binders in this telescope) in the decl, which get misinterpreted
      -- once the decl is zeta-expanded under a different binder.
      let t ← instantiateRevBetaS t fvars
      let v ← instantiateRevBetaS v fvars
      match (← dsimp t), (← dsimp v) with
      | .rfl _, .rfl _ =>
        withLetDecl n t v (nondep := nd) fun x => go b (fvars.push x) modified
      | .step t' _, .rfl _ =>
        withLetDecl n t' v (nondep := nd) fun x => go b (fvars.push x) true
      | .rfl _, .step v' _ =>
        withLetDecl n t v' (nondep := nd) fun x => go b (fvars.push x) true
      | .step t' _, .step v' _ =>
        withLetDecl n t' v' (nondep := nd) fun x => go b (fvars.push x) true
    | _ =>
      let r ← dsimp (← instantiateRevBetaS e fvars)
      match r with
      | .rfl _ =>
        if modified then
          return .step (← mkLetFVars (generalizeNondepLet := false) (usedLetOnly := false) fvars e)
        else
          return .rfl
      | .step e' _ =>
        return .step (← mkLetFVars (generalizeNondepLet := false) (usedLetOnly := false) fvars e')

end Lean.Meta.Sym.DSimp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variantefe6605be38ac2551b762a6c42785854553015817eb1efbe49e5ef03c416a6e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variantefe6605be38ac2551b762a6c42785854553015817eb1efbe49e5ef03c416a6e1.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b40ac4be3688e5e8cda6b397bd4b2cb0282f920e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
