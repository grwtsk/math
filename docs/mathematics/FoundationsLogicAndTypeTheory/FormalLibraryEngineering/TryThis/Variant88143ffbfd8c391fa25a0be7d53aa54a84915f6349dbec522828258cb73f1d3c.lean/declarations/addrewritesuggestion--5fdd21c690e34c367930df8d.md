# addRewriteSuggestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f2872050646e12e827cff3e5fca1169a6c7af2d320a87e43b3625031e1529ac",
  "kind": "def",
  "lexical_name": "addRewriteSuggestion",
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
  "slug": "addrewritesuggestion--5fdd21c690e34c367930df8d",
  "source": {
    "blob": "b2bafdecbc173a4f915858f7981273db522607fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant88143ffbfd8c391fa25a0be7d53aa54a84915f6349dbec522828258cb73f1d3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fdd21c690e34c367930df8ddb01aa91fafa970afdf4c464e7d98b7ed6d87d76",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant88143ffbfd8c391fa25a0be7d53aa54a84915f6349dbec522828258cb73f1d3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f2872050646e12e827cff3e5fca1169a6c7af2d320a87e43b3625031e1529ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addRewriteSuggestion (ref : Syntax) (rules : List (Expr × Bool))
  (type? : Option Expr := none) (loc? : Option Expr := none)
  (origSpan? : Option Syntax := none) :
    TermElabM Unit := do
  let rules_stx := TSepArray.ofElems <| ← rules.toArray.mapM fun ⟨e, symm⟩ => do
    let t ← delabToRefinableSyntax e
    if symm then `(rwRule| ← $t:term) else `(rwRule| $t:term)
  let tac ← do
    let loc ← loc?.mapM fun loc => do `(location| at $(← delab loc):term)
    `(tactic| rw [$rules_stx,*] $(loc)?)

  let mut tacMsg :=
    let rulesMsg := MessageData.sbracket <| MessageData.joinSep
      (rules.map fun ⟨e, symm⟩ => (if symm then "← " else "") ++ m!"{e}") ", "
    if let some loc := loc? then
      m!"rw {rulesMsg} at {loc}"
    else
      m!"rw {rulesMsg}"
  let mut extraMsg := ""
  if let some type := type? then
    tacMsg := tacMsg ++ m!"\n-- {type}"
    extraMsg := extraMsg ++ s!"\n-- {← PrettyPrinter.ppExpr type}"
  addSuggestion ref tac (suggestionForMessage? := tacMsg)
    (extraMsg := extraMsg) (origSpan? := origSpan?)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant88143ffbfd8c391fa25a0be7d53aa54a84915f6349dbec522828258cb73f1d3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant88143ffbfd8c391fa25a0be7d53aa54a84915f6349dbec522828258cb73f1d3c.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2bafdecbc173a4f915858f7981273db522607fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
