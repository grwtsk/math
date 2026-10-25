# withRWRulesSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25ff6907ea802440f22391fb379c29e287af2aa9b8effe7f5f7620f68c9e2fb7",
  "kind": "def",
  "lexical_name": "withRWRulesSeq",
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
  "slug": "withrwrulesseq--dbec974dabdb1b6e0029a596",
  "source": {
    "blob": "1b3cfa8902e2f3e11457f1b8e71f6a088f72432d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbec974dabdb1b6e0029a596bc9bab74c74cc148e451110499a6df0803de1aa8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25ff6907ea802440f22391fb379c29e287af2aa9b8effe7f5f7620f68c9e2fb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withRWRulesSeq (token : Syntax) (rwRulesSeqStx : Syntax) (x : (symm : Bool) → (term : Syntax) → TacticM Unit) : TacticM Unit := do
  let lbrak := rwRulesSeqStx[0]
  let rules := rwRulesSeqStx[1].getArgs
  -- show initial state up to (incl.) `[`
  withTacticInfoContext (mkNullNode #[token, lbrak]) (pure ())
  let numRules := (rules.size + 1) / 2
  for i in *...numRules do
    let rule := rules[i * 2]!
    let sep  := rules.getD (i * 2 + 1) Syntax.missing
    -- show rule state up to (incl.) next `,`
    withTacticInfoContext (mkNullNode #[rule, sep]) do
      -- show errors on rule
      withRef rule do
        let symm := !rule[0].isNone
        let term := rule[1]
        let processId (id : Syntax) : TacticM Unit := do
          -- See if we can interpret `id` as a hypothesis first.
          if (← withMainContext <| Term.isLocalIdent? id).isSome then
            x symm term
          else
            -- Try to get equation theorems for `id`.
            let declName ← try realizeGlobalConstNoOverload id catch _ => return (← x symm term)
            let some eqThms ← getEqnsFor? declName | x symm term
            let hint := if eqThms.size = 1 then m!"" else
              .hint' m!"Try rewriting with `{Name.str declName unfoldThmSuffix}`"
            let rec go : List Name →  TacticM Unit
              | [] => throwError m!"Failed to rewrite using equation theorems for `{.ofConstName declName}`" ++ hint
              | eqThm::eqThms => (x symm (mkCIdentFrom id eqThm)) <|> go eqThms
            discard <| Term.addTermInfo id (← mkConstWithFreshMVarLevels declName) (lctx? := ← getLCtx)
            go eqThms.toList
        match term with
        | `($id:ident)  => processId id
        | `(@$id:ident) => processId id
        | _ => x symm term


declare_config_elab elabRewriteConfig Rewrite.Config

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b3cfa8902e2f3e11457f1b8e71f6a088f72432d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
