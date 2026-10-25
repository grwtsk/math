# addRewriteSuggestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc1fd46dc48edf18986cc9fbc84c155dfd90de6e824ceb27929c29c68e2b89ea",
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
  "slug": "addrewritesuggestion--cbd47ef2064e54ba699e9570",
  "source": {
    "blob": "04ec345a1b666ab681b7a955732c2e1dc5106cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 398,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbd47ef2064e54ba699e9570d4db1db6e4e8538f863f70f8b1177763aa756c48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc1fd46dc48edf18986cc9fbc84c155dfd90de6e824ceb27929c29c68e2b89ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addRewriteSuggestion (ref : Syntax) (rules : List (Expr × Bool))
  (type? : LOption Expr := .undef) (loc? : Option Expr := none)
  (origSpan? : Option Syntax := none) (checkState? : Option Tactic.SavedState := none) :
    TacticM Unit := do
  let mut (tac, tacMsg, extraMsg) ← withExposedNames do
    let rulesStx := TSepArray.ofElems <| ← rules.toArray.mapM fun ⟨e, symm⟩ => do
      let t ← delabToRefinableSyntax e
      if symm then `(rwRule| ← $t:term) else `(rwRule| $t:term)
    -- The seemingly superfluous `:=` below is a workaround for issue #2663
    let mut tac := ← do
      let loc ← loc?.mapM fun loc => do `(location| at $(← delab loc):term)
      `(tactic| rw [$rulesStx,*] $(loc)?)

    -- We don't simply write `let mut tacMsg := m!"{tac}"` here
    -- but instead rebuild it, so that there are embedded `Expr`s in the message,
    -- thus giving more information in the hovers.
    -- Perhaps in future we will have a better way to attach elaboration information to
    -- `Syntax` embedded in a `MessageData`.
    let toMessageData (e : Expr) : MessageData := if e.isConst then .ofConst e else .ofExpr e
    let rulesMsg := MessageData.sbracket <| MessageData.joinSep
      (rules.map fun ⟨e, symm⟩ => (if symm then "← " else "") ++ toMessageData e) ", "
    let mut tacMsg ← addMessageContext <|
      if let some loc := loc? then
        m!"rw {rulesMsg} at {loc}"
      else
        m!"rw {rulesMsg}"

    let extraMsg ←
      match type? with
      | .some type =>
        pure <| ← addMessageContext m!"\n-- {type}"
      | .none => pure m!"\n-- no goals"
      | .undef => pure m!""
    return (tac, tacMsg, extraMsg)

  if let some checkState := checkState? then
    let type? := match type? with
      | .some type => some type
      | _ => none
    let some (tac', tacMsg') ← mkValidatedTactic tac tacMsg checkState type?
      | tacMsg := m!"(expose_names; {tacMsg})"
        logInfo <| mkFailedToMakeTacticMsg "an applicable rewrite lemma" (tacMsg ++ extraMsg)
        return
    tac := tac'
    tacMsg := tacMsg'
  addSuggestion ref (s := { suggestion := tac, messageData? := tacMsg ++ extraMsg })
    origSpan?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04ec345a1b666ab681b7a955732c2e1dc5106cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
