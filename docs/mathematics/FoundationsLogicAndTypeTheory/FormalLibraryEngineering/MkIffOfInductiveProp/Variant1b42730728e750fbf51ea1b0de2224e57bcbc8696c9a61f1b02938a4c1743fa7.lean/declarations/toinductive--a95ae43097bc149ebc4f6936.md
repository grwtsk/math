# toInductive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99211e83f66798f04150278d699485de9b82720caa72b9d8788aadd983d16e37",
  "kind": "def",
  "lexical_name": "toInductive",
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
  "slug": "toinductive--a95ae43097bc149ebc4f6936",
  "source": {
    "blob": "f2d32632fd7a4eb1a9e6cdd00cec0d9bf672693f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant1b42730728e750fbf51ea1b0de2224e57bcbc8696c9a61f1b02938a4c1743fa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a95ae43097bc149ebc4f6936df0ecfddcec0c96667a76f6b96f3a24d48ebc31f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant1b42730728e750fbf51ea1b0de2224e57bcbc8696c9a61f1b02938a4c1743fa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99211e83f66798f04150278d699485de9b82720caa72b9d8788aadd983d16e37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toInductive (mvar : MVarId) (cs : List Name)
  (gs : List Expr) (s : List Shape) (h : FVarId) :
  MetaM Unit := do
  match s.length with
  | 0       => do let _ ← mvar.cases h
                  pure ()
  | (n + 1) => do
      let subgoals ← nCasesSum n mvar h
      let _ ← (cs.zip (subgoals.zip s)).mapM $ λ⟨constr_name, ⟨h, mv⟩, bs, e⟩ => do
        let n := (bs.filter id).length
        let (mvar', _fvars) ← match e with
        | none => nCasesProd (n-1) mv h
        | some 0 => do let ⟨mvar', fvars⟩ ← nCasesProd n mv h
                          let mvar'' ← mvar'.tryClear fvars.getLast!
                          pure ⟨mvar'', fvars⟩
        | some (e + 1) => do
           let (mv', fvars) ← nCasesProd n mv h
           let lastfv := fvars.getLast!
           let (mv2, fvars') ← nCasesProd e mv' lastfv

           /- `fvars'.foldlM subst mv2` fails when we have dependent equalities (`HEq`).
           `subst` will change the dependent hypotheses, so that the `uniq` local names
           are wrong afterwards. Instead we revert them and pull them out one-by-one. -/
           let (_, mv3) ← mv2.revert fvars'.toArray
           let mv4 ← fvars'.foldlM (λ mv _ => do let ⟨fv, mv'⟩ ← mv.intro1
                                                 subst mv' fv
                                   ) mv3
           pure (mv4, fvars)
        mvar'.withContext do
          let fvarIds := (←getLCtx).getFVarIds.toList
          let gs := fvarIds.take gs.length
          let hs := (fvarIds.reverse.take n).reverse
          let m := gs.map some ++ listBoolMerge bs hs
          let args ← m.mapM (λa => match a with
                                   | some v => pure $ mkFVar v
                                   | none => mkFreshExprMVar none)
          let c ← mkConstWithFreshMVarLevels constr_name
          let e := mkAppN c args.toArray
          let t ← inferType e
          let mt ← mvar'.getType
          let _ ← isDefEq t mt -- infer values for those mvars we just made
          mvar'.assign e

/-- Implementation for both `mk_iff` and `mk_iff_of_inductive_prop`.y
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant1b42730728e750fbf51ea1b0de2224e57bcbc8696c9a61f1b02938a4c1743fa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant1b42730728e750fbf51ea1b0de2224e57bcbc8696c9a61f1b02938a4c1743fa7.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2d32632fd7a4eb1a9e6cdd00cec0d9bf672693f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
