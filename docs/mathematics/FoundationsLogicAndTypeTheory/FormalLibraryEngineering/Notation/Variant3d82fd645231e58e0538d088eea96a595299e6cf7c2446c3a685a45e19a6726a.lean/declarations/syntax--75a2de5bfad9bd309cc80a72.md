# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50e8f28449f60b146ff38156fe5d349bdf4f32cba67aab7857abcabed3342af8",
  "kind": "syntax",
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
  "slug": "syntax--75a2de5bfad9bd309cc80a72",
  "source": {
    "blob": "72e9eb1e0540644c31b831b52b9a8558bb2fcfd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 511,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant3d82fd645231e58e0538d088eea96a595299e6cf7c2446c3a685a45e19a6726a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75a2de5bfad9bd309cc80a7228e322cc9d095fde9993ecd1af9ca377d3a02730",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant3d82fd645231e58e0538d088eea96a595299e6cf7c2446c3a685a45e19a6726a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50e8f28449f60b146ff38156fe5d349bdf4f32cba67aab7857abcabed3342af8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
    syntax $(prec?)? (name := $(Lean.mkIdent name)) $(prio?)? $[$syntaxArgs]* : term)

  -- 2. The `macro_rules`
  let currNamespace : Name ← getCurrNamespace
  -- The `syntax` command puts definitions into the current namespace; we need this
  -- to make the syntax `pat`.
  let fullName := currNamespace ++ name
  trace[notation3] "syntax declaration has name {fullName}"
  let pat : Term := ⟨mkNode fullName pattArgs⟩
  let val' ← val.replaceM fun s => pure (boundValues.find? s.getId)
  let mut macroDecl ← `(macro_rules | `($pat) => `($val'))
  if isLocalAttrKind attrKind then
    -- For local notation, take section variables into account
    macroDecl ← `(section set_option quotPrecheck.allowSectionVars true $macroDecl end)
  elabCommand macroDecl

  -- 3. Create a delaborator
  if getPrettyPrintOpt pp? then
    matchers := matchers.push <| Mathlib.Notation3.mkExprMatcher val (getBoundNames boundValues)
    -- The matchers need to run in reverse order, so may as well reverse them here.
    let matchersM? := (matchers.reverse.mapM id).run
    -- We let local notations have access to `variable` declarations
    let matchers? ← if isLocalAttrKind attrKind then
      runTermElabM fun _ => matchersM?
    else
      liftTermElabM matchersM?
    if let some ms := matchers? then
      trace[notation3] "Matcher creation succeeded; assembling delaborator"
      let delabName := name ++ `delab
      let matcher ← ms.foldrM (fun m t => `($(m.2) >=> $t)) (← `(pure))
      trace[notation3] "matcher: {indentD matcher}"
      let mut result ← `(`($pat))
      for (name, id) in boundIdents.toArray do
        match boundType.findD name .normal with
        | .normal => result ← `(MatchState.delabVar s $(quote name) (some e) >>= fun $id => $result)
        | .foldl => result ←
          `(let $id := (MatchState.getFoldArray s $(quote name)).reverse; $result)
        | .foldr => result ←
          `(let $id := MatchState.getFoldArray s $(quote name); $result)
      if hasBindersItem then
        result ← `(`(extBinders| $$(MatchState.getBinders s)*) >>= fun binders => $result)
      elabCommand <| ← `(command|
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant3d82fd645231e58e0538d088eea96a595299e6cf7c2446c3a685a45e19a6726a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant3d82fd645231e58e0538d088eea96a595299e6cf7c2446c3a685a45e19a6726a.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72e9eb1e0540644c31b831b52b9a8558bb2fcfd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
