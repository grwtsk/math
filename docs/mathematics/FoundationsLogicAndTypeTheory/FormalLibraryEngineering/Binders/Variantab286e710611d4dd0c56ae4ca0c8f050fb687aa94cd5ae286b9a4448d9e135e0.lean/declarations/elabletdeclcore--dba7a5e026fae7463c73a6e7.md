# elabLetDeclCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ac1d7af381ef428f227331f2280206b2f8c9ad87406c26e6c13b3d15620d6f3",
  "kind": "def",
  "lexical_name": "elabLetDeclCore",
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
  "slug": "elabletdeclcore--dba7a5e026fae7463c73a6e7",
  "source": {
    "blob": "11f38a712a1b2233d5a315c2f28f444b04e00086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 938,
    "line": 891,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dba7a5e026fae7463c73a6e747fe3c7028eaea1890e4916c38e96c6ebcd834a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ac1d7af381ef428f227331f2280206b2f8c9ad87406c26e6c13b3d15620d6f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 891–938.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabLetDeclCore (stx : Syntax) (expectedType? : Option Expr) (initConfig : LetConfig) : TermElabM Expr := do
  let (config, declIdx) ← if stx[1].isOfKind ``Parser.Term.letConfig then
    pure (← mkLetConfig stx[1] initConfig, 2)
  else
    pure (initConfig, 1)
  let letDecl   := stx[declIdx][0]
  let body      := stx[declIdx + 2]
  if letDecl.getKind == ``Lean.Parser.Term.letIdDecl then
    let { id, binders, type, value } := mkLetIdDeclView letDecl
    let id ← if id.isIdent then pure id else mkFreshIdent id (canonical := true)
    elabLetDeclAux id binders type value body expectedType? config
  else if letDecl.getKind == ``Lean.Parser.Term.letPatDecl then
    -- node `Lean.Parser.Term.letPatDecl  $ try (termParser >> pushNone >> optType >> " := ") >> termParser
    let pat     := letDecl[0]
    let optType := letDecl[2]
    let val     := letDecl[4]
    if pat.getKind == ``Parser.Term.hole then
      -- `let _ := ...` should be treated as a `letIdDecl`
      let id   ← mkFreshIdent pat (canonical := true)
      let type := expandOptType id optType
      elabLetDeclAux id #[] type val body expectedType? config
    else
      if config.postponeValue then
        throwError "`+deferValue` with patterns is not allowed"
      if config.usedOnly then
        throwError "`+usedOnly` with patterns is not allowed"
      if config.zeta then
        throwError "`+zeta` with patterns is not allowed"
      -- We are currently ignore `config.nondep` when patterns are used.
      -- We are also currently ignoring `config.generalize`.
      let val ← if optType.isNone then
        `($val:term)
      else
        let type := optType[0][1]
        `(($val:term : $type))
      let stxNew ← if let some h := config.eq? then
        `(match $h:ident : $val:term with | $pat => $body)
      else
        `(match $val:term with | $pat => $body)
      withMacroExpansion stx stxNew <| elabTerm stxNew expectedType?
  else if letDecl.getKind == ``Lean.Parser.Term.letEqnsDecl then
    let letDeclIdNew ← liftMacroM <| expandLetEqnsDecl letDecl
    let declNew := stx[declIdx].setArg 0 letDeclIdNew
    let stxNew  := stx.setArg declIdx declNew
    withMacroExpansion stx stxNew <| elabTerm stxNew expectedType?
  else
    throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean#L891).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f38a712a1b2233d5a315c2f28f444b04e00086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
