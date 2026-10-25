# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd7293ee8a8a93f1603074d7fa67e6b3e550f443eba3c02c445be5707c7059d4",
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
  "slug": "elab-rules--92f131a6dfb193f3ce1d9e34",
  "source": {
    "blob": "2fec077bd662b0dc3a5537da3e765544cafd42b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant111c86c66706f33a523f9686a26e1b2b6f7ee48d6b72f12b7fe819687cb48ed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92f131a6dfb193f3ce1d9e348a3b1291fab8608c638047262791245d5bc9e4a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant111c86c66706f33a523f9686a26e1b2b6f7ee48d6b72f12b7fe819687cb48ed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd7293ee8a8a93f1603074d7fa67e6b3e550f443eba3c02c445be5707c7059d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
| `(tactic| field_simp $[$cfg:config]? $[$dis:discharger]? $[only%$only?]?
    $[$sa:simpArgs]? $[$loc:location]?) => withMainContext do
  let cfg ← elabSimpConfig (cfg.getD ⟨.missing⟩) .simp
  let loc := expandOptLocation (mkOptionalNode loc)

  let dis ← match dis with
  | none => pure discharge
  | some d => do
     let ⟨_,d⟩ ← tacticToDischarge d
     pure d

  let thms0 ← if only?.isSome then
    simpOnlyBuiltins.foldlM (·.addConst ·) ({} : SimpTheorems)
  else do
    let thms0 ← getSimpTheorems
    let thms0 ← thms0.erase (.decl ``one_div)
    let thms0 ← thms0.erase (.decl `mul_eq_zero)
    thms0.erase (.decl ``one_divp)

  let some ext ← getSimpExtension? `field_simps | throwError "field_simps not found"
  let thms ← ext.getTheorems

  let ctx : Simp.Context := {
     simpTheorems := #[thms, thms0]
     congrTheorems := (← getSimpCongrTheorems)
     config := cfg
  }
  let mut r ← elabSimpArgs (sa.getD ⟨.missing⟩) ctx (eraseLocal := false) .simp
  if r.starArg then
    r ← do
      let ctx := r.ctx
      let mut simpTheorems := ctx.simpTheorems
      let hs ← getPropHyps
      for h in hs do
        unless simpTheorems.isErased (.fvar h) do
          simpTheorems ← simpTheorems.addTheorem (.fvar h) (← h.getDecl).toExpr
      let ctx := { ctx with simpTheorems }
      pure { ctx }

  _ ← simpLocation r.ctx dis loc
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant111c86c66706f33a523f9686a26e1b2b6f7ee48d6b72f12b7fe819687cb48ed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant111c86c66706f33a523f9686a26e1b2b6f7ee48d6b72f12b7fe819687cb48ed0.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fec077bd662b0dc3a5537da3e765544cafd42b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
