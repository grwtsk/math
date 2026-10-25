# addHaveSuggestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b68956b67dec9096866fa22ba8b85a23278d5ec216eaf439e04fb015dc7a686",
  "kind": "def",
  "lexical_name": "addHaveSuggestion",
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
  "slug": "addhavesuggestion--b6aa09a1a84841437fe88bb7",
  "source": {
    "blob": "04ec345a1b666ab681b7a955732c2e1dc5106cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 350,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6aa09a1a84841437fe88bb7a6643754593de81a5ceb477dcdd4d6c5b9fd7db5",
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

Occurrence: `declaration:7b68956b67dec9096866fa22ba8b85a23278d5ec216eaf439e04fb015dc7a686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addHaveSuggestion (ref : Syntax) (h? : Option Name) (t? : Option Expr) (e : Expr)
    (origSpan? : Option Syntax := none) (checkState? : Option Tactic.SavedState := none) : TacticM Unit := do
  let prop ← isProp (← inferType e)
  -- We construct the tactic and message data separately to facilitate hover info
  let mut (tac, msg) ← withExposedNames do
    let estx ← delabToRefinableSyntax e
    let (tac, msg) ← if let some t := t? then
      let tstx ← delabToRefinableSyntax t
      if prop then
        match h? with
        | some h => pure (← `(tactic| have $(mkIdent h):ident : $tstx := $estx), m!"have {h} : {t} := {e}")
        | none => pure (← `(tactic| have : $tstx := $estx), m!"have : {t} := {e}")
      else
        let h := h?.getD `_
        pure (← `(tactic| let $(mkIdent h):ident : $tstx := $estx), m!"let {h} : {t} := {e}")
    else
      if prop then
        match h? with
        | some h => pure (← `(tactic| have $(mkIdent h):ident := $estx), m!"have {h} := {e}")
        | none => pure (← `(tactic| have := $estx), m!"have := {e}")
      else
        let h := h?.getD `_
        pure (← `(tactic| let $(mkIdent h):ident := $estx), m!"let {h} := {e}")
    pure (tac, ← addMessageContext msg)
  if let some checkState := checkState? then
    let some (tac', msg') ← mkValidatedTactic tac msg checkState
      | logInfo <| mkFailedToMakeTacticMsg "a proof" msg
        return
    tac := tac'
    msg := msg'
  addSuggestion ref (s := { suggestion := tac, messageData? := msg }) origSpan?

open Lean.Parser.Tactic
open Lean.Syntax

/-- Add a suggestion for `rw [h₁, ← h₂] at loc`.

Parameters:
* `ref`: the span of the widget diagnostic
* `rules`: a list of arguments to `rw`, with the second component `true` if the rewrite is reversed
* `type?`: the goal after the suggested rewrite, `.none` if the rewrite closes the goal, or `.undef`
  if the resulting goal is unknown
* `loc?`: the hypothesis at which the rewrite is performed, or `none` if the goal is targeted
* `origSpan?`: a syntax object whose span is the actual text to be replaced by `suggestion`.
  If not provided it defaults to `ref`.
* `checkState?`: if passed, the tactic state in which the generated tactic will be validated,
  inserting `expose_names` if necessary
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04ec345a1b666ab681b7a955732c2e1dc5106cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
