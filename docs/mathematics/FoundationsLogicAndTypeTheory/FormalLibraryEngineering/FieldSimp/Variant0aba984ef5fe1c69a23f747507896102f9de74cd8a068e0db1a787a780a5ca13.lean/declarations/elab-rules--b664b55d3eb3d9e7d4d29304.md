# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f6b54e7d30f04236f81b64794769bb58174cca26a737c081d89dbcaedc58359",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--b664b55d3eb3d9e7d4d29304",
  "source": {
    "blob": "52bf569939d8d84eba767df1161fd8d2433a0f39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b664b55d3eb3d9e7d4d29304f168910869cd8f7da95d903bc9547391fd13836d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f6b54e7d30f04236f81b64794769bb58174cca26a737c081d89dbcaedc58359`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
| `(tactic| field_simp $cfg:optConfig $[(discharger := $dis)]? $[only%$only?]?
    $[$sa:simpArgs]? $[$loc:location]?) => withMainContext do
  let cfg ← elabSimpConfig cfg .simp
  -- The `field_simp` discharger relies on recursively calling the discharger.
  -- Prior to https://github.com/leanprover/lean4/pull/3523,
  -- the maxDischargeDepth wasn't actually being checked: now we have to set it higher.
  let cfg := { cfg with maxDischargeDepth := max cfg.maxDischargeDepth 7 }
  let loc := expandOptLocation (mkOptionalNode loc)

  let dis ← match dis with
  | none => pure discharge
  | some d => do
    let ⟨_, d⟩ ← tacticToDischarge d
    pure d

  let thms0 ← if only?.isSome then
    simpOnlyBuiltins.foldlM (·.addConst ·) ({} : SimpTheorems)
  else do
    let thms0 ← getSimpTheorems
    fieldSimpExcluded.foldlM (init := thms0) fun thms0 name => thms0.erase (.decl name)

  let some ext ← getSimpExtension? `field_simps | throwError "field_simps not found"
  let thms ← ext.getTheorems

  let ctx ← Simp.mkContext cfg
    (simpTheorems := #[thms, thms0])
    (congrTheorems := ← getSimpCongrTheorems)

  let mut r ← elabSimpArgs (sa.getD ⟨.missing⟩) ctx (simprocs := {}) (eraseLocal := false) .simp
  if r.starArg then
    r ← do
      let ctx := r.ctx
      let mut simpTheorems := ctx.simpTheorems
      let hs ← getPropHyps
      for h in hs do
        unless simpTheorems.isErased (.fvar h) do
          simpTheorems ← simpTheorems.addTheorem (.fvar h) (← h.getDecl).toExpr
      let ctx := ctx.setSimpTheorems simpTheorems
      pure { ctx, simprocs := {} }

  _ ← simpLocation r.ctx {} dis loc

end Mathlib.Tactic.FieldSimp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52bf569939d8d84eba767df1161fd8d2433a0f39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
