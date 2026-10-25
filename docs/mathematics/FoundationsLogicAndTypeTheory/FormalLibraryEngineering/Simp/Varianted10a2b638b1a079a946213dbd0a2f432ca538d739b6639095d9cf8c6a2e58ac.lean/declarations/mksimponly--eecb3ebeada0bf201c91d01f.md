# mkSimpOnly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4702ba6d3e156fa1c428a0cd5ec488e557476e57c389979c3a7f999d20ed0d90",
  "kind": "def",
  "lexical_name": "mkSimpOnly",
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
  "slug": "mksimponly--eecb3ebeada0bf201c91d01f",
  "source": {
    "blob": "379beba19a25407004e5570bc892cf0e8327798b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 626,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eecb3ebeada0bf201c91d01fd2c262045e903440d44fd97533bb2cc01b784757",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4702ba6d3e156fa1c428a0cd5ec488e557476e57c389979c3a7f999d20ed0d90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkSimpOnly (stx : Syntax) (usedSimps : Simp.UsedSimps) : MetaM Syntax := do
  let isSimpAll := stx.isOfKind ``Parser.Tactic.simpAll
  let mut stx := stx
  if stx[3].isNone then
    stx := stx.setArg 3 (mkNullNode #[mkAtom "only"])
  let mut args := #[]
  let mut localsOrStar := some #[]
  let lctx ← getLCtx
  let env ← getEnv
  for thm in usedSimps.toArray do
    match thm with
    | .decl declName post inv => -- global definitions in the environment
      if env.contains declName
         && (inv || !simpOnlyBuiltins.contains declName)
         && !Match.isMatchEqnTheorem env declName then
        let decl : Term ← `($(mkIdent (← unresolveNameGlobalAvoidingLocals declName)):ident)
        let arg ← match post, inv with
          | true,  true  => `(Parser.Tactic.simpLemma| ← $decl:term)
          | true,  false => `(Parser.Tactic.simpLemma| $decl:term)
          | false, true  => `(Parser.Tactic.simpLemma| ↓ ← $decl:term)
          | false, false => `(Parser.Tactic.simpLemma| ↓ $decl:term)
        args := args.push arg
      else if (← Simp.isBuiltinSimproc declName) then
        let decl := mkIdent declName
        let arg ← match post with
          | true  => `(Parser.Tactic.simpLemma| $decl:term)
          | false => `(Parser.Tactic.simpLemma| ↓ $decl:term)
        args := args.push arg
    | .fvar fvarId =>
      -- local hypotheses in the context
      if let some ldecl := lctx.find? fvarId then
        -- `simp_all` always uses all propositional hypotheses.
        -- So `simp_all only [x]`, only makes sense if `ldecl` is a let-variable.
        if isSimpAll && !ldecl.hasValue then
          continue
        localsOrStar := localsOrStar.bind fun locals =>
          if !ldecl.userName.isInaccessibleUserName && !ldecl.userName.hasMacroScopes &&
              (lctx.findFromUserName? ldecl.userName).get!.fvarId == ldecl.fvarId then
            some (locals.push ldecl.userName)
          else
            none
      -- Note: the `if let` can fail for `simp (config := {contextual := true})` when
      -- rewriting with a variable that was introduced in a scope. In that case we just ignore.
    | .stx _ thmStx => -- simp theorems provided in the local invocation
      args := args.push thmStx
    | .other _ => -- Ignore "special" simp lemmas such as constructed by `simp_all`.
      pure ()     -- We can't display them anyway.
  if let some locals := localsOrStar then
    args := args ++ (← locals.mapM fun id => `(Parser.Tactic.simpLemma| $(mkIdent id):ident))
  else
    args := args.push (← `(Parser.Tactic.simpStar| *))
  return setSimpParams stx args

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `379beba19a25407004e5570bc892cf0e8327798b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
