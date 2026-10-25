# expandMacroArg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3c892ca4c9d32a5f9c083304c563615fc4c7eb85451b1c003615c93ac8eedfe",
  "kind": "def",
  "lexical_name": "expandMacroArg",
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
  "slug": "expandmacroarg--615f85ef53ecc14346324e2a",
  "source": {
    "blob": "fe4e7564b832c061ed850bba2d5a2cfa23662faf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MacroArgUtil/Variant3f106836a0942aef12ab445dfe728f2d6991fdbd978c5be6003bc457f24459d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:615f85ef53ecc14346324e2ae6c2d36b0212ff4367e4612213c00a78de68157b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MacroArgUtil/Variant3f106836a0942aef12ab445dfe728f2d6991fdbd978c5be6003bc457f24459d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3c892ca4c9d32a5f9c083304c563615fc4c7eb85451b1c003615c93ac8eedfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def expandMacroArg (stx : TSyntax ``macroArg) : CommandElabM (TSyntax `stx × Term) := do
  let (id?, id, stx) ← match (← liftMacroM <| expandMacros stx) with
    | `(macroArg| $id:ident:$stx) => pure (some id, (id : Term), stx)
    | `(macroArg| $stx:stx)       => pure (none, (← `(x)), stx)
    | _                           => throwUnsupportedSyntax
  mkSyntaxAndPat id? id stx
where
  mkSyntaxAndPat (id? : Option Ident) (id : Term) (stx : TSyntax `stx) := do
    let pat ← match stx with
    | `(stx| $s:str)
    | `(stx| &$s:str)        => pure ⟨mkNode `token_antiquot #[← liftMacroM <| strLitToPattern s, mkAtom "%", mkAtom "$", id]⟩
    | `(stx| optional($stx)) => mkSplicePat `optional stx id "?"
    | `(stx| many($stx))
    | `(stx| many1($stx))    => mkSplicePat `many stx id "*"
    | `(stx| sepBy($stx, $sep:str $[, $stxsep]? $[, allowTrailingSep]?))
    | `(stx| sepBy1($stx, $sep:str $[, $stxsep]? $[, allowTrailingSep]?)) =>
      mkSplicePat `sepBy stx id ((isStrLit? sep).get! ++ "*")
    -- NOTE: all `interpolatedStr(·)` reuse the same node kind
    | `(stx| interpolatedStr(term)) => pure ⟨Syntax.mkAntiquotNode interpolatedStrKind id⟩
    -- bind through withPosition
    | `(stx| withPosition($stx)) =>
      let (stx, pat) ← mkSyntaxAndPat id? id stx
      let stx ← `(stx| withPosition($stx))
      return (stx, pat)
    | _ => match id? with
      -- if there is a binding, we assume the user knows what they are doing
      | some id => mkAntiquotNode stx id
      -- otherwise `group` the syntax to enforce arity 1, e.g. for `noWs`
      | none    => return (← `(stx| group($stx)), (← mkAntiquotNode stx id))
    pure (stx, pat)
  mkSplicePat (kind : SyntaxNodeKind) (stx : TSyntax `stx) (id : Term) (suffix : String) : CommandElabM Term :=
    return ⟨mkNullNode #[mkAntiquotSuffixSpliceNode kind (← mkAntiquotNode stx id) suffix]⟩
  mkAntiquotNode : TSyntax `stx → Term → CommandElabM Term
    | `(stx| $id:ident$[:$_]?), term => do
      match (← liftTermElabM do Elab.Term.elabParserName? id) with
        | some (.parser n _) =>
          let kind := match n with
            | ``Parser.ident => identKind
            | ``Parser.Term.ident => identKind
            | ``Parser.strLit => strLitKind
            | _ => n -- assume kind == decl name
          return ⟨Syntax.mkAntiquotNode kind term⟩
        | some (.category cat) =>
          return ⟨Syntax.mkAntiquotNode cat term (isPseudoKind := true)⟩
        | some (.alias _) =>
          let id := id.getId.eraseMacroScopes
          let kind := (← Parser.getSyntaxKindOfParserAlias? id).getD Name.anonymous
          return ⟨Syntax.mkAntiquotNode kind term⟩
        | _ => throwError "unknown parser declaration/category/alias `{id}`"
    | stx, term => do
      -- can't match against `` `(stx| ($stxs*)) `` as `*` is interpreted as the `stx` operator
      if stx.raw.isOfKind ``Parser.Syntax.paren then
        -- translate argument `v:(p1 ... pn)` where all but one `pi` produce zero nodes to
        -- `v:pi` using that single `pi`
        let nonNullaryNodes ← stx.raw[1].getArgs.filterM fun
          | `(stx| $id:ident$[:$_]?) | `(stx| $id:ident($_)) => do
            let info ← Parser.getParserAliasInfo id.getId
            return info.stackSz? != some 0
          | _ => return true
        if let #[stx] := nonNullaryNodes then
          return (← mkAntiquotNode ⟨stx⟩ term)
      pure ⟨Syntax.mkAntiquotNode Name.anonymous term (isPseudoKind := true)⟩

end Lean.Elab.Command
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MacroArgUtil/Variant3f106836a0942aef12ab445dfe728f2d6991fdbd978c5be6003bc457f24459d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MacroArgUtil/Variant3f106836a0942aef12ab445dfe728f2d6991fdbd978c5be6003bc457f24459d7.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe4e7564b832c061ed850bba2d5a2cfa23662faf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
