# evalExtractLet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfa3c406641a58835ac147b4e90d5c717b3ec33116bdbabd3119e1553de7a5cd",
  "kind": "def",
  "lexical_name": "evalExtractLet",
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
  "slug": "evalextractlet--8bb7926952e05dce8131103e",
  "source": {
    "blob": "416ef8d200992bd384bdede596becc9654efd992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bb7926952e05dce8131103e9202b121385f29ab0685cdd48d48139342df45f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfa3c406641a58835ac147b4e90d5c717b3ec33116bdbabd3119e1553de7a5cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[tactic Mathlib.extractLets] def evalExtractLet : Tactic := fun stx => do
  match stx with
  | `(tactic| extract_lets $loc:location)         => doExtract none loc
  | `(tactic| extract_lets $hs* $loc:location)    => doExtract hs loc
  | _ => throwUnsupportedSyntax
where
  setupNames (ids? : Option (TSyntaxArray [`ident, `Lean.Parser.Term.hole])) (ty : Expr) :
      MetaM (Array Name) := do
    if let some ids := ids? then
      return ids.map getNameOfIdent'
    else
      return Array.mkArray (← instantiateMVars ty).cleanupAnnotations.letDepth `_
  doExtract (ids? : Option (TSyntaxArray [`ident, `Lean.Parser.Term.hole]))
      (loc : TSyntax `Lean.Parser.Tactic.location) :
      TacticM Unit := do
    let process (f : MVarId → Array Name → MetaM (Array FVarId × MVarId))
        (ty : MVarId → MetaM Expr) : TacticM Unit := do
      let fvarIds ← liftMetaTacticAux fun mvarId => do
        let ids ← setupNames ids? (← ty mvarId)
        let (fvarIds, mvarId) ← f mvarId ids
        return (fvarIds, [mvarId])
      if let some ids := ids? then
        withMainContext do
          for stx in ids, fvarId in fvarIds do
            Term.addLocalVarInfo stx (.fvar fvarId)
    withLocation (expandOptLocation (mkOptionalNode loc))
      (atLocal := fun h ↦ do
        process (fun mvarId ids => mvarId.extractLetsAt h ids) (fun _ => h.getType))
      (atTarget := do
        process (fun mvarId ids => mvarId.extractLets ids) (fun mvarId => mvarId.getType))
      (failed := fun _ ↦ throwError "extract_let tactic failed")

end Mathlib
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416ef8d200992bd384bdede596becc9654efd992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
