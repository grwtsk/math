# constrToProp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5a54a0f40ce38a3bae01e5a5ba9f8e17461e1f12ca8b603fe9a697db7669d49",
  "kind": "def",
  "lexical_name": "constrToProp",
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
  "slug": "constrtoprop--116b407c793ae8a6bf911136",
  "source": {
    "blob": "068d112745a91e0800c116b795d31fe8c3265491",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:116b407c793ae8a6bf911136383cdd52e1b706b510f4ff2980a4aff793debe67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5a54a0f40ce38a3bae01e5a5ba9f8e17461e1f12ca8b603fe9a697db7669d49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def constrToProp (univs : List Level) (params : List Expr) (idxs : List Expr) (c : Name) :
    MetaM (Shape × Expr) := do
  let type := (← getConstInfo c).instantiateTypeLevelParams univs
  let type' ← Meta.forallBoundedTelescope type (params.length) fun fvars ty ↦ do
    pure <| ty.replaceFVars fvars params.toArray
  Meta.forallTelescope type' fun fvars ty ↦ do
    let idxs_inst := ty.getAppArgs.toList.drop params.length
    let (bs, eqs, subst) := compactRelation fvars.toList (idxs.zip idxs_inst)
    let eqs ← eqs.mapM (fun ⟨idx, inst⟩ ↦ do
      let ty ← idx.fvarId!.getType
      let instTy ← inferType inst
      let u := (← inferType ty).sortLevel!
      if ← isDefEq ty instTy
      then pure (mkApp3 (.const `Eq [u]) ty idx inst)
      else pure (mkApp4 (.const `HEq [u]) ty idx instTy inst))
    let (n, r) ← match bs.filterMap id, eqs with
    | [], [] => do
      pure (some 0, (mkConst `True))
    | bs', [] => do
      let t : Expr ← bs'.getLast!.fvarId!.getType
      let l := (← inferType t).sortLevel!
      if l == Level.zero then do
        let r ← mkExistsList (List.init bs') t
        pure (none, subst r)
      else do
        let r ← mkExistsList bs' (mkConst `True)
        pure (some 0, subst r)
    | bs', _ => do
      let r ← mkExistsList bs' (mkAndList eqs)
      pure (some eqs.length, subst r)
    pure (⟨bs.map Option.isSome, n⟩, r)

/-- Splits the goal `n` times via `refine ⟨?_,?_⟩`, and then applies `constructor` to
close the resulting subgoals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `068d112745a91e0800c116b795d31fe8c3265491` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
