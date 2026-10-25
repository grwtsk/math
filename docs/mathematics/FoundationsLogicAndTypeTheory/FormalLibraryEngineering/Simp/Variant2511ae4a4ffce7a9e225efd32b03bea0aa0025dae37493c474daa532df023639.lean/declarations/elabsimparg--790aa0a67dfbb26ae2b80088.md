# elabSimpArg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a798912fcc9f41fa34857821ad2dc0c724839b958c8cfb0bc89048a79d32cd5a",
  "kind": "def",
  "lexical_name": "elabSimpArg",
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
  "slug": "elabsimparg--790aa0a67dfbb26ae2b80088",
  "source": {
    "blob": "cffbc13f8248bf6f6ddb2b9cedae8af638ab4c0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 322,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:790aa0a67dfbb26ae2b800880161181802ce67857ed807b84971bbf0aa758d29",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a798912fcc9f41fa34857821ad2dc0c724839b958c8cfb0bc89048a79d32cd5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabSimpArg (indexConfig : Meta.ConfigWithKey) (eraseLocal : Bool) (kind : SimpKind)
    (arg : Syntax) : TacticM ElabSimpArgResult := withRef arg do
  try
    /-
    syntax simpPre := "↓"
    syntax simpPost := "↑"
    syntax simpLemma := (simpPre <|> simpPost)? "← "? term

    syntax simpErase := "-" ident
    -/
    if arg.getKind == ``Lean.Parser.Tactic.simpErase then
      let fvar? ← if eraseLocal then Term.isLocalIdent? arg[1] else pure none
      if let some fvar := fvar? then
        -- We use `eraseCore` because the simp theorem for the hypothesis was not added yet
        return .erase (.fvar fvar.fvarId!)
      else
        let id := arg[1]
        if let .ok declName ← observing (realizeGlobalConstNoOverloadWithInfo id) then
          if (← Simp.isSimproc declName) then
            return .eraseSimproc declName
          else
            return .erase (.decl declName)
        else
          -- If `id` could not be resolved, we should check whether it is a builtin simproc.
          -- before returning error.
          let name := id.getId.eraseMacroScopes
          if (← Simp.isBuiltinSimproc name) then
            return .eraseSimproc name
          else
            throwUnknownConstantAt id name
    else if arg.getKind == ``Lean.Parser.Tactic.simpLemma then
      let post :=
        if arg[0].isNone then
          true
        else
          arg[0][0].getKind == ``Parser.Tactic.simpPost
      let inv  := !arg[1].isNone
      let term := arg[2]
      match (← resolveSimpIdTheorem? term) with
      | .expr e  =>
        let name ← mkFreshId
        elabDeclToUnfoldOrTheorem indexConfig (.stx name arg) e post inv kind
      | .simproc declName =>
        return .addSimproc declName post
      | .ext ext₁? ext₂? h =>
        return .ext ext₁? ext₂? h
      | .none    =>
        let name ← mkFreshId
        elabSimpTheorem indexConfig (.stx name arg) term post inv
    else if arg.getKind == ``Lean.Parser.Tactic.simpStar then
      return .star
    else
      throwUnsupportedSyntax
  catch ex =>
    if (← read).recover then
      logException ex
      return .none
    else
      throw ex

/--
The result of elaborating a full array of simp arguments and applying them to the simp context.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cffbc13f8248bf6f6ddb2b9cedae8af638ab4c0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
