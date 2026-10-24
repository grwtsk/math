# mkFintypeEnum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2306a06f27a56e6ce811ed414d0255704c674dd1617a8057016dd8b1d0659079",
  "kind": "def",
  "lexical_name": "mkFintypeEnum",
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
  "slug": "mkfintypeenum--247e2471bafbfaf7714bce75",
  "source": {
    "blob": "8734039b01543842e6e44aef6e5a2d31c6406bc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:247e2471bafbfaf7714bce756dc30abc53f0ae0372b485748a459af900758b92",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2306a06f27a56e6ce811ed414d0255704c674dd1617a8057016dd8b1d0659079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFintypeEnum (declName : Name) : CommandElabM Unit := do
  let indVal ← getConstInfoInduct declName
  let levels := indVal.levelParams.map Level.param
  let toCtorIdxName := declName.mkStr "toCtorIdx"
  let enumListName := declName.mkStr "enumList"
  let toCtorThmName := declName.mkStr "enumList_get?_to_CtorIdx_eq"
  let enumListNodupName := declName.mkStr "enumList_nodup"
  liftTermElabM <| Term.withoutErrToSorry do
    do -- Define `enumList` enumerating all constructors
      trace[Elab.Deriving.fintype] "defining {enumListName}"
      let type := mkConst declName levels
      let listType ← mkAppM ``List #[type]
      let listNil ← mkAppOptM ``List.nil #[some type]
      let listCons name xs := mkAppM ``List.cons #[mkConst name levels, xs]
      let enumList ← indVal.ctors.foldrM (listCons · ·) listNil
      addAndCompile <| Declaration.defnDecl
        { name := enumListName
          levelParams := indVal.levelParams
          safety := DefinitionSafety.safe
          hints := ReducibilityHints.abbrev
          type := listType
          value := enumList }
      setProtected enumListName
    do -- Prove that this list is in `toCtorIdx` order
      trace[Elab.Deriving.fintype] "proving {toCtorThmName}"
      let goalStx ← `(term| ∀ (x : $(← Term.exprToSyntax <| mkConst declName levels)),
        List.get? $(mkIdent enumListName) ($(mkIdent toCtorIdxName) x) = some x)
      let goal ← Term.elabTerm goalStx (mkSort .zero)
      let pf ← Term.elabTerm (← `(term| by intro x; cases x <;> rfl)) goal
      Term.synthesizeSyntheticMVarsNoPostponing
      addAndCompile <| Declaration.thmDecl
        { name := toCtorThmName
          levelParams := indVal.levelParams
          type := ← instantiateMVars goal
          value := ← instantiateMVars pf }
      setProtected toCtorThmName
    do -- Use this theorem to prove `enumList` has no duplicates
      trace[Elab.Deriving.fintype] "proving {enumListNodupName}"
      let enum ← Term.exprToSyntax <| mkConst enumListName levels
      let goal ← Term.elabTerm (← `(term| List.Nodup $enum)) (mkSort .zero)
      let n : TSyntax `term := quote indVal.numCtors
      let pf ← Term.elabTerm (← `(term| by
                  apply List.Nodup.of_map $(mkIdent toCtorIdxName)
                  have h : List.map $(mkIdent toCtorIdxName) $(mkIdent enumListName)
                            = List.range $n := rfl
                  exact h ▸ List.nodup_range $n)) goal
      Term.synthesizeSyntheticMVarsNoPostponing
      addAndCompile <| Declaration.thmDecl
        { name := enumListNodupName
          levelParams := indVal.levelParams
          type := ← instantiateMVars goal
          value := ← instantiateMVars pf }
      setProtected enumListNodupName
  -- Make the Fintype instance
  trace[Elab.Deriving.fintype] "defining fintype instance"
  let cmd ← `(command|
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant01c14d7650a2ed993a1d5a5d7a4fd4e961fbea92b7735ae3022b09f91e57bd3e.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8734039b01543842e6e44aef6e5a2d31c6406bc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
