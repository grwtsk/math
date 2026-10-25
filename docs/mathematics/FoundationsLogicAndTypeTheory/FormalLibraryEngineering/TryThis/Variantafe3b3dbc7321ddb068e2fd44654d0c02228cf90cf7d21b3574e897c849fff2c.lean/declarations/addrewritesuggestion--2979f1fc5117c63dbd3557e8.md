# addRewriteSuggestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:657ae8432777140936b1dd1817badc9750fe40bb5c2c1b5e0c663d4e96ccfa36",
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
  "slug": "addrewritesuggestion--2979f1fc5117c63dbd3557e8",
  "source": {
    "blob": "4ef0f696ec77c0007a61f5f1878633211869a193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantafe3b3dbc7321ddb068e2fd44654d0c02228cf90cf7d21b3574e897c849fff2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2979f1fc5117c63dbd3557e8f4cb23b7d78d0fa0480b4b4fad9d58f601adcd06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantafe3b3dbc7321ddb068e2fd44654d0c02228cf90cf7d21b3574e897c849fff2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:657ae8432777140936b1dd1817badc9750fe40bb5c2c1b5e0c663d4e96ccfa36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–70.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantafe3b3dbc7321ddb068e2fd44654d0c02228cf90cf7d21b3574e897c849fff2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantafe3b3dbc7321ddb068e2fd44654d0c02228cf90cf7d21b3574e897c849fff2c.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ef0f696ec77c0007a61f5f1878633211869a193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
