# dsimpForall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a84f778b3cc36c0744309693a33b1f9c1a4507ca3826ea90c4e1009f9a05beb",
  "kind": "def",
  "lexical_name": "dsimpForall",
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
  "slug": "dsimpforall--706c349dc712312115adf9ee",
  "source": {
    "blob": "9bd79fb978642719a88c49424414e3193381fbbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant0f903514c055f97eeb34a6274df07c0b11a3a20be6ce585720180fba74b9d39d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:706c349dc712312115adf9ee10c6c1a3ce63e6875e0842153677b4a1b8ad0df1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant0f903514c055f97eeb34a6274df07c0b11a3a20be6ce585720180fba74b9d39d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a84f778b3cc36c0744309693a33b1f9c1a4507ca3826ea90c4e1009f9a05beb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def dsimpForall : DSimproc := fun e =>
  go e #[] false
where
  go (e : Expr) (fvars : Array Expr) (modified : Bool) : DSimpM Result := do
    match e with
    | .forallE n d b c =>
      -- Instantiate the binder domain against the already-introduced `fvars` *before* creating
      -- the local declaration, otherwise the decl retains loose bound variables referring to
      -- earlier binders in this telescope.
      let d ← instantiateRevBetaS d fvars
      match (← dsimp d) with
      | .rfl _ => withLocalDecl n c d fun x => go b (fvars.push x) modified
      | .step d' _ => withLocalDecl n c d' fun x => go b (fvars.push x) true
    | _ =>
      let r ← dsimp (← instantiateRevBetaS e fvars)
      match r with
      | .rfl _ =>
        if modified then
          return .step (← mkForallFVarsS fvars e)
        else
          return .rfl
      | .step e' _ =>
        return .step (← mkForallFVarsS fvars e')

end Lean.Meta.Sym.DSimp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant0f903514c055f97eeb34a6274df07c0b11a3a20be6ce585720180fba74b9d39d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant0f903514c055f97eeb34a6274df07c0b11a3a20be6ce585720180fba74b9d39d.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bd79fb978642719a88c49424414e3193381fbbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
